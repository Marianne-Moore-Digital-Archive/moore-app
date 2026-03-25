xquery version "3.1";

(:~
 : This is the place to import your own XQuery modules for either:
 :
 : 1. custom API request handling functions
 : 2. custom templating functions to be called from one of the HTML templates
 :)
module namespace api="http://teipublisher.com/api/custom";

(: Add your own module imports here :)
import module namespace rutil="http://e-editiones.org/roaster/util";
import module namespace config="http://www.tei-c.org/tei-simple/config" at "config.xqm";
import module namespace pm-config="http://www.tei-c.org/tei-simple/pm-config" at "pm-config.xql";
import module namespace pages="http://www.tei-c.org/tei-simple/pages" at "lib/pages.xql";
import module namespace cutil="http://teipublisher.com/api/cache" at "lib/api/caching.xql";
import module namespace router="http://e-editiones.org/roaster";
import module namespace errors = "http://e-editiones.org/roaster/errors";


declare namespace tei="http://www.tei-c.org/ns/1.0";


(:~
 : Keep this. This function does the actual lookup in the imported modules.
 :)
declare function api:lookup($name as xs:string, $arity as xs:integer) {
    try {
        function-lookup(xs:QName($name), $arity)
    } catch * {
        ()
    }
};

declare function api:sections($request as map(*)) {
    <ul>{
        let $doc := config:get-document($request?parameters?id)
        let $category := $doc//tei:catDesc
        let $collection := collection($config:data-root || '/about')//tei:teiHeader[ft:query(., 'category:' || $category)]
        for $section in $collection
        order by $section//tei:catDesc/@n
        return 
            <li><a href="{util:document-name($section)}" style="text-decoration:none;color:inherit">{$section//tei:title[1]/string()}</a></li>
    }</ul>
};

declare function api:table($request as map(*)) {
    let $table := collection($config:data-root)/id($request?parameters?id)
    let $columns := number($table/@cols) cast as xs:integer
    (: it assumes that the first row will always contain the column headers :)
    let $rows := $table/tei:row[@role = 'data']
    let $keys := $table/tei:row[@role = 'label']/tei:cell/replace(., '\s+', '_')
    let $sort := $request?parameters?order
    let $sortKey := if ($sort) then index-of($keys, $sort) else ()
    return
        map{
            "count": count($rows),
            "results": array{
              for $row in $rows
              order by if ($sortKey) then $row/tei:cell[$sortKey] else $row/position()
              return
                      map:merge (
                      for $column in 1 to $columns
                      let $key := $keys[$column]
                      let $value := $pm-config:web-transform($row/tei:cell[$column], map { "mode": "table-data" }, 'about.odd')
                      return 
                          map:entry($key,$value))
                    
                }
            }
    };

declare function api:toc-pages($request as map(*)) {
    let $collapse := $request?parameters?collapse
    let $doc := xmldb:decode-uri($request?parameters?id)
    let $documents := config:get-document($doc)
    return
        if($documents)
        then (
            cutil:check-last-modified($request, $documents, function($request as map(*), $documents as node()*) {
                let $xml := pages:load-xml($documents, $request?parameters?view, (), $doc)
                return
                if (exists($xml)) then
                    api:list-of-pages(root($xml?data), $xml, $request?parameters?target, $collapse)
                else
                    error($errors:NOT_FOUND, "Document " || $doc || " not found")
                })
        ) else (
            router:response(404, "text/text", $doc)        
        )
    };

declare function api:list-of-pages($node, $model as map(*), $target as xs:string?,
    $collapse as xs:boolean?) {
        <ul>
        {
            let $pbs := $node/descendant::tei:pb
            for $pb in $pbs
            let $nodeId :=  util:node-id($pb)
            let $html := $pm-config:web-transform($pb, map { "mode": "toc", "root": $pb }, $model?config?odd)
            return 
                <li><pb-link node-id="{$nodeId}" emit="{$target}" subscribe="{$target}">{$html}</pb-link></li>
        }
        </ul>
};

declare function api:metadata($request as map(*)) {
        let $doc := xmldb:decode-uri($request?parameters?id) => config:get-document()
        let $html := $pm-config:web-transform($doc//tei:teiHeader, map { "mode": "metadata-doc", "root": $doc//tei:teiHeader}, "moore.odd")
        return
            $html
    };
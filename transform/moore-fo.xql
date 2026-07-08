(:~

    Transformation module generated from TEI ODD extensions for processing models.
    ODD: /db/apps/moore/resources/odd/moore.odd
 :)
xquery version "3.1";

module namespace model="http://www.tei-c.org/pm/models/moore/fo";

declare default element namespace "http://www.tei-c.org/ns/1.0";

declare namespace xhtml='http://www.w3.org/1999/xhtml';

declare namespace mei='http://www.music-encoding.org/ns/mei';

declare namespace tei='http://www.tei-c.org/ns/1.0';

declare namespace pb='http://teipublisher.com/1.0';

import module namespace css="http://www.tei-c.org/tei-simple/xquery/css";

import module namespace fo="http://www.tei-c.org/tei-simple/xquery/functions/fo";

import module namespace ext-html="https://teipublisher.com/apps/marianne-moore/custom" at "xmldb:exist:///db/apps/moore/modules/ext-html.xql";

import module namespace global="http://e-editiones.org/tei-publisher/odd-global" at "../modules/odd-global.xqm";

(: generated template function for element spec: supplied :)
declare %private function model:template-supplied2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><span class="tei-supplied {$config?apply-children($config, $node, $params?reason)}">{$config?apply-children($config, $node, $params? content )}</span></t>/*
};
(: generated template function for element spec: ptr :)
declare %private function model:template-ptr1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-mei url="{$config?apply-children($config, $node, $params?url)}" player="player">
                                        <pb-option name="appXPath" on="./rdg[contains(@label, 'original')]" off="">Original Clefs</pb-option>
                                        </pb-mei></t>/*
};
(: generated template function for element spec: ptr :)
declare %private function model:template-ptr2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?target)}" target="_blank">{$config?apply-children($config, $node, $params?content)}</a></t>/*
};
(: generated template function for element spec: TEI :)
declare %private function model:template-TEI3($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><div class="register">
<h3>People</h3>
<ul>
{$config?apply-children($config, $node, $params?people)}
</ul>

<h3>Places</h3>
<ul>
{$config?apply-children($config, $node, $params?places)}
</ul>
</div></t>/*
};
(: generated template function for element spec: hi :)
declare %private function model:template-hi1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><span class="{$config?apply-children($config, $node, $params?classes)} nowrap">{$config?apply-children($config, $node, $params?content)}</span></t>/*
};
(: generated template function for element spec: correspContext :)
declare %private function model:template-correspContext1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><ul class="correspContext light" role="group">
                            <li>
                                <pb-popover>
                                    <a href="{$config?apply-children($config, $node, $params?context)}/{$config?apply-children($config, $node, $params?previous-target)}/1/index.html" slot="default" class="correspRef">
                                        <svg class="icon">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="{$config?apply-children($config, $node, $params?svg)}#previous"/>
                                        </svg>
                                    </a>
                                    <template slot="alternate">{$config?apply-children($config, $node, $params? previous )}</template>
                                </pb-popover>
                            </li>
                            <li>
                                <pb-popover>
                                    <a href="{$config?apply-children($config, $node, $params?context)}/{$config?apply-children($config, $node, $params?previous-in-correspondence-target)}/1/index.html" slot="default" class="correspRef">
                                        <svg class="icon">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="{$config?apply-children($config, $node, $params?svg)}#previous-in-correspondence"/>
                                        </svg>
                                    </a>
                                    <template slot="alternate">{$config?apply-children($config, $node, $params? previous-in-correspondence )}</template>
                                </pb-popover>
                            </li>
                            <li>
                                <pb-popover>
                                    <a href="{$config?apply-children($config, $node, $params?context)}/{$config?apply-children($config, $node, $params?next-in-correspondence-target)}/1/index.html" emit="transcription" subscribe="transcription" slot="default" class="correspRef">
                                        <svg class="icon">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="{$config?apply-children($config, $node, $params?svg)}#next-in-correspondence"/>
                                        </svg>
                                    </a>
                                    <template slot="alternate">{$config?apply-children($config, $node, $params? next-in-correspondence )}</template>
                                </pb-popover>
                            </li>
                            <li>
                                <pb-popover>
                                    <a href="{$config?apply-children($config, $node, $params?context)}/{$config?apply-children($config, $node, $params?next-target)}/1/index.html" emit="transcription" subscribe="transcription" slot="default" class="correspRef">
                                        <svg class="icon">
                                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="{$config?apply-children($config, $node, $params?svg)}#next"/>
                                        </svg>
                                    </a>
                                    <template slot="alternate">{$config?apply-children($config, $node, $params? next )}</template>
                                </pb-popover>
                            </li>
                            </ul></t>/*
};
(: generated template function for element spec: correspContext :)
declare %private function model:template-correspContext2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><ul class="correspContext light" role="group">
                        {$config?apply-children($config, $node, $params?previous)}
                        {$config?apply-children($config, $node, $params?previous-in-correspondence)}
                        {$config?apply-children($config, $node, $params?next-in-correspondence)}
                        {$config?apply-children($config, $node, $params?next)}
                        </ul></t>/*
};
(: generated template function for element spec: mei:mdiv :)
declare %private function model:template-mei_mdiv1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-mei player="player" data="{$config?apply-children($config, $node, $params?data)}"/></t>/*
};
(: generated template function for element spec: place :)
declare %private function model:template-place1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><header>
    <a href="places/{$config?apply-children($config, $node, $params?id)}">
        {$config?apply-children($config, $node, $params? label )}
    </a>
    <pb-geolocation latitude="{$config?apply-children($config, $node, $params? latitude )}" longitude="{$config?apply-children($config, $node, $params? longitude )}" label="{$config?apply-children($config, $node, $params? label )}" emit="map" event="click" zoom="{$config?apply-children($config, $node, $params? zoom )}">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-map" viewBox="0 0 16 16">
        <path fill-rule="evenodd" d="M15.817.113A.5.5 0 0 1 16 .5v14a.5.5 0 0 1-.402.49l-5 1a.5.5 0 0 1-.196 0L5.5 15.01l-4.902.98A.5.5 0 0 1 0 15.5v-14a.5.5 0 0 1 .402-.49l5-1a.5.5 0 0 1 .196 0L10.5.99l4.902-.98a.5.5 0 0 1 .415.103M10 1.91l-4-.8v12.98l4 .8zm1 12.98 4-.8V1.11l-4 .8zm-6-.8V1.11l-4 .8v12.98z"/>
      </svg>
    </pb-geolocation>
</header><p>{$config?apply-children($config, $node, $params? description )}</p></t>/*
};
(: generated template function for element spec: place :)
declare %private function model:template-place2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-geolocation event="mouseover" longitude="{$config?apply-children($config, $node, $params?longitude)}" latitude="{$config?apply-children($config, $node, $params?latitude)}" label="{$config?apply-children($config, $node, $params?label)}" auto="auto" wait-for="pb-leaflet-map" zoom="11" emit="map">{$config?apply-children($config, $node, $params?content)}</pb-geolocation></t>/*
};
(: generated template function for element spec: place :)
declare %private function model:template-place3($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><pb-geolocation event="click" longitude="{$config?apply-children($config, $node, $params?longitude)}" latitude="{$config?apply-children($config, $node, $params?latitude)}" label="{$config?apply-children($config, $node, $params?label)}" auto="auto" wait-for="#map" subscribe="map" emit="map" zoom="11">{$config?apply-children($config, $node, $params?content)} <small>{$config?apply-children($config, $node, $params?location)}</small></pb-geolocation></t>/*
};
(: generated template function for element spec: place :)
declare %private function model:template-place6($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><div>
  <h2>Documents</h2>
  <ul>
  {$config?apply-children($config, $node, $params?content)}
  </ul>
</div></t>/*
};
(: generated template function for element spec: orgName :)
declare %private function model:template-orgName5($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}" class="orgName context">
            <pb-popover>
                <span slot="default">{$config?apply-children($config, $node, $params?content)}</span>
                <template slot="alternate">{$config?apply-children($config, $node, $params?alternate)}</template>
            </pb-popover>
            </a></t>/*
};
(: generated template function for element spec: l :)
declare %private function model:template-l2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><span class="genre">{$config?apply-children($config, $node, $params?genres)}</span><span class="nowrap">{$config?apply-children($config, $node, $params?content)}</span></t>/*
};
(: generated template function for element spec: l :)
declare %private function model:template-l3($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><span class="genre"/><span class="nowrap">{$config?apply-children($config, $node, $params?content)}</span></t>/*
};
(: generated template function for element spec: p :)
declare %private function model:template-p1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><span><strong>Notebook Description</strong>: {$config?apply-children($config, $node, $params?content)}</span></t>/*
};
(: generated template function for element spec: person :)
declare %private function model:template-person1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><header>
    <a href="people/{$config?apply-children($config, $node, $params? id )}">{$config?apply-children($config, $node, $params? label )}</a>
</header><p>{$config?apply-children($config, $node, $params? description )}</p></t>/*
};
(: generated template function for element spec: person :)
declare %private function model:template-person3($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><h3>{$config?apply-children($config, $node, $params?content)} <span class="dates">{$config?apply-children($config, $node, $params?dates)}</span></h3></t>/*
};
(: generated template function for element spec: person :)
declare %private function model:template-person8($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><div>
  <h2>Documents</h2>
  <ul>
  {$config?apply-children($config, $node, $params?content)}
  </ul>
</div></t>/*
};
(: generated template function for element spec: persName :)
declare %private function model:template-persName5($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}" class="persName">
                        <pb-popover>
                            <span slot="default">{$config?apply-children($config, $node, $params?content)}</span>
                            <template slot="alternate">{$config?apply-children($config, $node, $params?alternate)}</template>
                        </pb-popover>
                        </a></t>/*
};
(: generated template function for element spec: placeName :)
declare %private function model:template-placeName5($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><a href="{$config?apply-children($config, $node, $params?uri)}" class="placeName context">
            <pb-popover>
                <span slot="default">{$config?apply-children($config, $node, $params?content)}</span>
                <template slot="alternate">{$config?apply-children($config, $node, $params?alternate)}</template>
            </pb-popover>
            </a></t>/*
};
(: generated template function for element spec: ref :)
declare %private function model:template-ref1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><li class="unavailable">
                                            <svg class="icon">
                                            <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="{$config?apply-children($config, $node, $params?svg)}#{$config?apply-children($config, $node, $params?type)}"/>
                                            </svg>
                            </li></t>/*
};
(: generated template function for element spec: ref :)
declare %private function model:template-ref2($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><li><pb-popover>
                            <a href="{$config?apply-children($config, $node, $params?target)}" emit="transcription" subscribe="transcription" slot="default">
                                <svg class="icon">
                                <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="{$config?apply-children($config, $node, $params?svg)}#{$config?apply-children($config, $node, $params?type)}"/>
                                </svg>
                            </a>
                            <template slot="alternate">{$config?apply-children($config, $node, $params?type)}:  {$config?apply-children($config, $node, $params? content )}</template>
            </pb-popover></li></t>/*
};
(: generated template function for element spec: date :)
declare %private function model:template-date1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><span><strong>Digital Edition First Published</strong>: {$config?apply-children($config, $node, $params?content)}</span></t>/*
};
(: generated template function for element spec: editor :)
declare %private function model:template-editor1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><span><strong>Notebook Editor</strong>: {$config?apply-children($config, $node, $params?content)}</span></t>/*
};
(: generated template function for element spec: msDesc :)
declare %private function model:template-msDesc1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><details><summary>Show more</summary> {$config?apply-children($config, $node, $params?content)} </details></t>/*
};
(: generated template function for element spec: repository :)
declare %private function model:template-repository1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><span><strong>Repository</strong>: {$config?apply-children($config, $node, $params?content)}</span></t>/*
};
(: generated template function for element spec: idno :)
declare %private function model:template-idno1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><span><strong>Repository ID</strong>: {$config?apply-children($config, $node, $params?content)}</span></t>/*
};
(: generated template function for element spec: respStmt :)
declare %private function model:template-respStmt1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><span><strong>{$config?apply-children($config, $node, $params?role)}</strong>: {$config?apply-children($config, $node, $params?name)}</span></t>/*
};
(: generated template function for element spec: origDate :)
declare %private function model:template-origDate1($config as map(*), $node as node()*, $params as map(*)) {
    <t xmlns=""><span><strong>Dates</strong>: {$config?apply-children($config, $node, $params?content)}</span></t>/*
};
(:~

    Main entry point for the transformation.
    
 :)
declare function model:transform($options as map(*), $input as node()*) {
        
    let $config :=
        map:merge(($options,
            map {
                "output": ["fo"],
                "odd": "/db/apps/moore/resources/odd/moore.odd",
                "apply": model:apply#2,
                "apply-children": model:apply-children#3
            }
        ))
    let $config := fo:init($config, $input)
    
    return (
        
        let $output := model:apply($config, $input)
        return
            $output
    )
};

declare function model:apply($config as map(*), $input as node()*) {
        let $parameters := 
        if (exists($config?parameters)) then $config?parameters else map {}
        let $mode := 
        if (exists($config?mode)) then $config?mode else ()
        let $trackIds := 
        $parameters?track-ids
        let $get := 
        model:source($parameters, ?)
    return
    $input !         (
            let $node := 
                .
            return
                            typeswitch(.)
                    case element(castItem) return
                        (: Treat as a list item :)
                        fo:listItem($config, ., ("tei-castItem", "tei-castItem1", css:map-rend-to-class(.)), ., ())
                    case element(item) return
                        fo:listItem($config, ., ("tei-item", "tei-item1", css:map-rend-to-class(.)), ., ())
                    case element(teiHeader) return
                        if ($parameters?mode eq 'metadata-doc') then
                            fo:pass-through($config, ., ("tei-teiHeader", "tei-teiHeader1", css:map-rend-to-class(.)), (//fileDesc/titleStmt/editor[1], //origDate, //msDesc))
                        else
                            fo:omit($config, ., ("tei-teiHeader", "tei-teiHeader3", css:map-rend-to-class(.)), .)
                    case element(figure) return
                        if (head or @rendition='simple:display') then
                            fo:block($config, ., ("tei-figure", "tei-figure1", css:map-rend-to-class(.)), .)
                        else
                            fo:inline($config, ., ("tei-figure", "tei-figure2", css:map-rend-to-class(.)), .)
                    case element(supplied) return
                        if (parent::choice) then
                            fo:inline($config, ., ("tei-supplied", "tei-supplied1", css:map-rend-to-class(.)), .)
                        else
                            if (@reason) then
                                let $params := 
                                    map {
                                        "reason": @reason,
                                        "content": .
                                    }

                                                                let $content := 
                                    model:template-supplied2($config, ., $params)
                                return
                                                                fo:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-supplied", "tei-supplied2", css:map-rend-to-class(.)), $content)
                            else
                                fo:inline($config, ., ("tei-supplied", "tei-supplied3", css:map-rend-to-class(.)), .)
                    case element(ptr) return
                        if (parent::notatedMusic) then
                            (: Load and display external MEI :)
                            let $params := 
                                map {
                                    "url": @target,
                                    "content": .
                                }

                                                        let $content := 
                                model:template-ptr1($config, ., $params)
                            return
                                                        fo:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-ptr", "tei-ptr1", css:map-rend-to-class(.)), $content)
                        else
                            if ((parent::place or parent::person) and @target) then
                                (: Output as list item in register view :)
                                let $params := 
                                    map {
                                        "target": @target,
                                        "content": @type
                                    }

                                                                let $content := 
                                    model:template-ptr2($config, ., $params)
                                return
                                                                fo:listItem(map:merge(($config, map:entry("template", true()))), ., ("tei-ptr", "tei-ptr2", css:map-rend-to-class(.)), $content, ())
                            else
                                if (@target) then
                                    fo:link($config, ., ("tei-ptr", "tei-ptr3", css:map-rend-to-class(.)), if (@type) then @type else ., @target, map {})
                                else
                                    $config?apply($config, ./node())
                    case element(signed) return
                        if (parent::closer) then
                            fo:block($config, ., ("tei-signed", "tei-signed1", "signed", css:map-rend-to-class(.)), .)
                        else
                            fo:inline($config, ., ("tei-signed", "tei-signed2", css:map-rend-to-class(.)), .)
                    case element(pb) return
                        if ($parameters?mode= ('toc', 'title')) then
                            fo:inline($config, ., ("tei-pb", "tei-pb1", css:map-rend-to-class(.)), ext-html:page-number(.))
                        else
                            if (@facs) then
                                (: No function found for behavior: webcomponent :)
                                $config?apply($config, ./node())
                            else
                                if (starts-with(@facs, 'iiif:')) then
                                    (: No function found for behavior: webcomponent :)
                                    $config?apply($config, ./node())
                                else
                                    fo:break($config, ., css:get-rendition(., ("tei-pb", "tei-pb4", css:map-rend-to-class(.))), ., 'page', (concat(if(@n) then concat(@n,' ') else '',if(@facs) then                   concat('@',@facs) else '')))
                    case element(TEI) return
                        if ($parameters?mode='breadcrumb') then
                            fo:pass-through($config, ., ("tei-TEI", "tei-TEI1", css:map-rend-to-class(.)), teiHeader)
                        else
                            if ($parameters?mode='edition-navigation' and descendant::correspContext) then
                                (: process correspContext to provide in-edition navigation buttons to move between documents :)
                                fo:pass-through($config, ., ("tei-TEI", "tei-TEI2", css:map-rend-to-class(.)), descendant::correspContext)
                            else
                                if ($parameters?mode = 'register') then
                                    (: Output register data if register profile is enabled :)
                                    let $params := 
                                        map {
                                            "people": for $key in distinct-values((root(.)//persName/@key, root(.)//persName/@ref)) return collection($global:register-root)/id($key)[self::person],
                                            "places": for $key in distinct-values((root(.)//placeName/@key, root(.)//placeName/@ref)) return collection($global:register-root)/id($key)[self::place],
                                            "content": .
                                        }

                                                                        let $content := 
                                        model:template-TEI3($config, ., $params)
                                    return
                                                                        fo:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-TEI", "tei-TEI3", css:map-rend-to-class(.)), $content)
                                else
                                    fo:document($config, ., ("tei-TEI", "tei-TEI4", css:map-rend-to-class(.)), .)
                    case element(anchor) return
                        if ($parameters?mode=('toc', 'breadcrumb')) then
                            fo:omit($config, ., ("tei-anchor", "tei-anchor1", css:map-rend-to-class(.)), .)
                        else
                            if (@corresp) then
                                (: Process notes with corresp attribute (assuming the note is stand off, somewhere in the same document) :)
                                fo:note($config, ., ("tei-anchor", "tei-anchor2", css:map-rend-to-class(.)), let $target := @corresp return root($parameters?root)/id($target)/node(), (), @n)
                            else
                                if (@type='note') then
                                    (: Process notes with @type=note (assuming the note is stand off, in the listAnnotation section in the same document) :)
                                    fo:note($config, ., ("tei-anchor", "tei-anchor3", css:map-rend-to-class(.)), let $target := '#' || @xml:id return root($parameters?root)//listAnnotation/note[@target=$target]/node(), (), let $target := '#' || @xml:id return root($parameters?root)//listAnnotation/note[@target=$target]/@n/string())
                                else
                                    if (@xml:id) then
                                        fo:anchor($config, ., ("tei-anchor", "tei-anchor4", css:map-rend-to-class(.)), ., @xml:id)
                                    else
                                        $config?apply($config, ./node())
                    case element(formula) return
                        if (@rendition='simple:display') then
                            fo:block($config, ., ("tei-formula", "tei-formula1", css:map-rend-to-class(.)), .)
                        else
                            if (@rend='display') then
                                (: No function found for behavior: webcomponent :)
                                $config?apply($config, ./node())
                            else
                                (: No function found for behavior: webcomponent :)
                                $config?apply($config, ./node())
                    case element(choice) return
                        if (sic and corr) then
                            fo:alternate($config, ., ("tei-choice", "tei-choice1", css:map-rend-to-class(.)), ., corr[1], sic[1])
                        else
                            if (abbr and expan) then
                                fo:alternate($config, ., ("tei-choice", "tei-choice2", css:map-rend-to-class(.)), ., expan[1], abbr[1])
                            else
                                if (orig and reg) then
                                    fo:alternate($config, ., ("tei-choice", "tei-choice3", css:map-rend-to-class(.)), ., reg[1], orig[1])
                                else
                                    $config?apply($config, ./node())
                    case element(hi) return
                        let $params := 
                            map {
                                "classes": @rend,
                                "content": for $x in ./node() return if (contains(path($x), 'text()')) then ext-html:replaces-spaces($x) else if (contains(path($x), 'comment()')) then () else $x
                            }

                                                let $content := 
                            model:template-hi1($config, ., $params)
                        return
                                                fo:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-hi", "tei-hi1", css:map-rend-to-class(.)), $content)
                    case element(note) return
                        if (@target) then
                            fo:note($config, ., ("tei-note", "tei-note1", css:map-rend-to-class(.)), ., (), 'g')
                        else
                            if (not($parameters?mode eq 'metadata-doc')) then
                                fo:note($config, ., ("tei-note", "tei-note2", css:map-rend-to-class(.)), ., @place, 'n')
                            else
                                $config?apply($config, ./node())
                    case element(code) return
                        fo:inline($config, ., ("tei-code", "tei-code1", css:map-rend-to-class(.)), .)
                    case element(death) return
                        fo:inline($config, ., ("tei-death", "tei-death1", css:map-rend-to-class(.)), .)
                    case element(dateline) return
                        fo:block($config, ., ("tei-dateline", "tei-dateline1", css:map-rend-to-class(.)), .)
                    case element(back) return
                        fo:block($config, ., ("tei-back", "tei-back1", css:map-rend-to-class(.)), .)
                    case element(correspContext) return
                        if ($parameters?static) then
                            (: Outputs links to next/previous letter within entire and current correspondence (static mode) :)
                            let $params := 
                                map {
                                    "previous-in-correspondence-target": ref[@type = 'previous-in-correspondence']/@target,
                                    "previous-target": ref[@type = 'previous']/@target,
                                    "next-target": ref[@type = 'next']/@target,
                                    "next-in-correspondence-target": ref[@type = 'next-in-correspondence']/@target,
                                    "svg": $parameters?context-path || '/resources/css/correspondence-icons.svg',
                                    "previous-in-correspondence": ref[@type = 'previous-in-correspondence'],
                                    "previous": ref[@type = 'previous'],
                                    "next-in-correspondence": ref[@type = 'next-in-correspondence'],
                                    "next": ref[@type = 'next'],
                                    "context": $parameters?context-path || '/' || substring-after(util:collection-name($parameters?root), $global:data-root || "/"),
                                    "content": .
                                }

                                                        let $content := 
                                model:template-correspContext1($config, ., $params)
                            return
                                                        fo:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-correspContext", "tei-correspContext1", css:map-rend-to-class(.)), $content)
                        else
                            (: Outputs links to next/previous letter within entire corpus and current correspondence :)
                            let $params := 
                                map {
                                    "previous-in-correspondence": if ($parameters?in-correspondence = 'true') then head((ref[@type = 'previous-in-correspondence'], <ref type="previous-in-correspondence" subtype="placeholder"/>)) else (),
                                    "previous": head((ref[@type = ('previous', 'prev')], <ref type="previous" subtype="placeholder"/>)),
                                    "next-in-correspondence": if ($parameters?in-correspondence = 'true') then head((ref[@type = 'next-in-correspondence'], <ref type="next-in-correspondence" subtype="placeholder"/>)) else (),
                                    "next": head((ref[@type = 'next'], <ref type="next" subtype="placeholder"/>)),
                                    "content": .
                                }

                                                        let $content := 
                                model:template-correspContext2($config, ., $params)
                            return
                                                        fo:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-correspContext", "tei-correspContext2", css:map-rend-to-class(.)), $content)
                    case element(del) return
                        fo:inline($config, ., ("tei-del", "tei-del1", "nowrap", css:map-rend-to-class(.)), for $x in ./node() return if (contains(path($x), 'text()')) then ext-html:replaces-spaces($x) else if (contains(path($x), 'comment()')) then () else $x)
                    case element(trailer) return
                        fo:block($config, ., ("tei-trailer", "tei-trailer1", css:map-rend-to-class(.)), .)
                    case element(titlePart) return
                        fo:block($config, ., css:get-rendition(., ("tei-titlePart", "tei-titlePart1", css:map-rend-to-class(.))), .)
                    case element(ab) return
                        fo:paragraph($config, ., ("tei-ab", "tei-ab1", css:map-rend-to-class(.)), .)
                    case element(app) return
                        if ($parameters?mode='toc') then
                            fo:inline($config, ., ("tei-app", "tei-app1", css:map-rend-to-class(.)), lem)
                        else
                            fo:alternate($config, ., ("tei-app", "tei-app2", css:map-rend-to-class(.)), ., lem, rdg)
                    case element(revisionDesc) return
                        if ($parameters?display='browse') then
                            fo:omit($config, ., ("tei-revisionDesc", "tei-revisionDesc1", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(birth) return
                        fo:inline($config, ., ("tei-birth", "tei-birth1", css:map-rend-to-class(.)), .)
                    case element(subst) return
                        (: explicitly set content to avoid whitespace issues :)
                        fo:inline($config, ., ("tei-subst", "tei-subst1", css:map-rend-to-class(.)), (del, add))
                    case element(roleDesc) return
                        fo:block($config, ., ("tei-roleDesc", "tei-roleDesc1", css:map-rend-to-class(.)), .)
                    case element(opener) return
                        fo:block($config, ., ("tei-opener", "tei-opener1", css:map-rend-to-class(.)), .)
                    case element(speaker) return
                        fo:block($config, ., ("tei-speaker", "tei-speaker1", css:map-rend-to-class(.)), .)
                    case element(region) return
                        fo:inline($config, ., ("tei-region", "tei-region1", css:map-rend-to-class(.)), .)
                    case element(imprimatur) return
                        fo:block($config, ., ("tei-imprimatur", "tei-imprimatur1", css:map-rend-to-class(.)), .)
                    case element(foreign) return
                        fo:inline($config, ., ("tei-foreign", "tei-foreign1", "nowrap", css:map-rend-to-class(.)), for $x in ./node() return if (contains(path($x), 'text()')) then ext-html:replaces-spaces($x) else if (contains(path($x), 'comment()')) then () else $x)
                    case element(mei:mdiv) return
                        (: Single MEI mdiv needs to be wrapped to create complete MEI document :)
                        let $params := 
                            map {
                                "data": let $title := root($parameters?root)//titleStmt/title let $data :=   <mei xmlns="http://www.music-encoding.org/ns/mei" meiversion="4.0.0">     <meiHead>         <fileDesc>             <titleStmt>                 <title></title>             </titleStmt>             <pubStmt></pubStmt>         </fileDesc>     </meiHead>     <music>         <body>{.}</body>     </music>   </mei> return   serialize($data),
                                "content": .
                            }

                                                let $content := 
                            model:template-mei_mdiv1($config, ., $params)
                        return
                                                fo:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-mei_mdiv", "tei-mei_mdiv1", css:map-rend-to-class(.)), $content)
                    case element(fileDesc) return
                        if ($parameters?display='browse') then
                            (
                                fo:block($config, ., ("tei-fileDesc", "tei-fileDesc1", css:map-rend-to-class(.)), (titleStmt, editionStmt, publicationStmt)),
                                (: Output abstract containing demo description :)
                                fo:block($config, ., ("tei-fileDesc", "tei-fileDesc2", "sample-description", css:map-rend-to-class(.)), ../profileDesc/abstract)
                            )

                        else
                            fo:block($config, ., ("tei-fileDesc", "tei-fileDesc3", css:map-rend-to-class(.)), .)
                    case element(seg) return
                        fo:inline($config, ., css:get-rendition(., ("tei-seg", "tei-seg1", css:map-rend-to-class(.))), .)
                    case element(notatedMusic) return
                        fo:figure($config, ., ("tei-notatedMusic", "tei-notatedMusic1", css:map-rend-to-class(.)), (ptr, mei:mdiv), label)
                    case element(profileDesc) return
                        if ($parameters?display='browse') then
                            fo:omit($config, ., ("tei-profileDesc", "tei-profileDesc1", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(place) return
                        if ($parameters?mode='register-overview') then
                            (: Register entry overview in list :)
                            let $params := 
                                map {
                                    "id": @xml:id,
                                    "label": placeName[1]/string(),
                                    "longitude": tokenize(location/geo)[2],
                                    "latitude": tokenize(location/geo)[1],
                                    "zoom": if (@type != 'approximate') then 12 else 9,
                                    "description": note/string(),
                                    "content": .
                                }

                                                        let $content := 
                                model:template-place1($config, ., $params)
                            return
                                                        fo:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-place", "tei-place1", css:map-rend-to-class(.)), $content)
                        else
                            if ($parameters?mode='register') then
                                (: Register sidebar: add pb-geolocation, which emits to channel 'map' to avoid interference with other pb-view :)
                                let $params := 
                                    map {
                                        "content": placeName[@type='main'],
                                        "longitude": tokenize(location/geo, ' ')[2],
                                        "latitude": tokenize(location/geo, ' ')[1],
                                        "label": placeName[@type='main']/node()
                                    }

                                                                let $content := 
                                    model:template-place2($config, ., $params)
                                return
                                                                fo:listItem(map:merge(($config, map:entry("template", true()))), ., ("tei-place", "tei-place2", css:map-rend-to-class(.)), $content, ())
                            else
                                (
                                    let $params := 
                                        map {
                                            "longitude": tokenize(location/geo, ' ')[2],
                                            "latitude": tokenize(location/geo, ' ')[1],
                                            "label": placeName[@type='main']/node(),
                                            "content": placeName[@type='main'],
                                            "location": string-join((country, region), ', ')
                                        }

                                                                        let $content := 
                                        model:template-place3($config, ., $params)
                                    return
                                                                        fo:heading(map:merge(($config, map:entry("template", true()))), ., ("tei-place", "tei-place3", css:map-rend-to-class(.)), $content, ()),
                                    (: Additional notes :)
                                    fo:paragraph($config, ., ("tei-place", "tei-place4", css:map-rend-to-class(.)), note),
                                    (: Links to wikidata, wikipedia etc. :)
                                    fo:list($config, ., ("tei-place", "tei-place5", "links", css:map-rend-to-class(.)), ptr, ()),
                                    if ($parameters?mode='register-details') then
                                        (: List of letters (in register details only); trying to match by key or ref attributes :)
                                        let $params := 
                                            map {
                                                "content": let $id := @xml:id return collection($global:data-root)//placeName[@key = $id or @ref = $id]/ancestor::TEI/teiHeader//titleStmt
                                            }

                                                                                let $content := 
                                            model:template-place6($config, ., $params)
                                        return
                                                                                fo:block(map:merge(($config, map:entry("template", true()))), ., ("tei-place", "tei-place6", css:map-rend-to-class(.)), $content)
                                    else
                                        ()
                                )

                    case element(text) return
                        fo:body($config, ., ("tei-text", "tei-text1", css:map-rend-to-class(.)), .)
                    case element(floatingText) return
                        fo:block($config, ., ("tei-floatingText", "tei-floatingText1", css:map-rend-to-class(.)), .)
                    case element(sp) return
                        fo:block($config, ., ("tei-sp", "tei-sp1", css:map-rend-to-class(.)), .)
                    case element(table) return
                        fo:table($config, ., ("tei-table", "tei-table1", css:map-rend-to-class(.)), .)
                    case element(group) return
                        fo:block($config, ., ("tei-group", "tei-group1", css:map-rend-to-class(.)), .)
                    case element(cb) return
                        fo:break($config, ., ("tei-cb", "tei-cb1", css:map-rend-to-class(.)), ., 'column', @n)
                    case element(licence) return
                        if (@target) then
                            fo:link($config, ., ("tei-licence", "tei-licence1", "licence", css:map-rend-to-class(.)), 'Licence', @target, map {})
                        else
                            $config?apply($config, ./node())
                    case element(orgName) return
                        fo:inline($config, ., ("tei-orgName", "tei-orgName1", css:map-rend-to-class(.)), .)
                    case element(listBibl) return
                        if (bibl) then
                            fo:list($config, ., ("tei-listBibl", "tei-listBibl1", css:map-rend-to-class(.)), ., ())
                        else
                            fo:block($config, ., ("tei-listBibl", "tei-listBibl2", css:map-rend-to-class(.)), .)
                    case element(g) return
                        if (not(text())) then
                            fo:glyph($config, ., ("tei-g", "tei-g1", css:map-rend-to-class(.)), .)
                        else
                            fo:inline($config, ., ("tei-g", "tei-g2", css:map-rend-to-class(.)), .)
                    case element(author) return
                        if (ancestor::teiHeader) then
                            fo:block($config, ., ("tei-author", "tei-author1", css:map-rend-to-class(.)), .)
                        else
                            fo:inline($config, ., ("tei-author", "tei-author2", css:map-rend-to-class(.)), .)
                    case element(castList) return
                        if (child::*) then
                            fo:list($config, ., css:get-rendition(., ("tei-castList", "tei-castList1", css:map-rend-to-class(.))), castItem, ())
                        else
                            $config?apply($config, ./node())
                    case element(l) return
                        if (not(node())) then
                            (: Create line break for empty lines :)
                            fo:break($config, ., ("tei-l", "tei-l1", css:map-rend-to-class(.)), ., 'line', ())
                        else
                            if (@rend) then
                                let $params := 
                                    map {
                                        "genres": ext-html:display-genres(@rend, $parameters?root/ancestor::text),
                                        "content": for $x in ./node() return if (contains(path($x), 'text()')) then ext-html:replaces-spaces($x) else if (contains(path($x), 'comment()')) then () else $x
                                    }

                                                                let $content := 
                                    model:template-l2($config, ., $params)
                                return
                                                                fo:block(map:merge(($config, map:entry("template", true()))), ., css:get-rendition(., ("tei-l", "tei-l2", "line", css:map-rend-to-class(.))), $content)
                            else
                                let $params := 
                                    map {
                                        "content": for $x in ./node() return if (contains(path($x), 'text()')) then ext-html:replaces-spaces($x) else if (contains(path($x), 'comment()')) then () else $x
                                    }

                                                                let $content := 
                                    model:template-l3($config, ., $params)
                                return
                                                                fo:block(map:merge(($config, map:entry("template", true()))), ., ("tei-l", "tei-l3", "line", css:map-rend-to-class(.)), $content)
                    case element(closer) return
                        fo:block($config, ., ("tei-closer", "tei-closer1", css:map-rend-to-class(.)), .)
                    case element(p) return
                        if (parent::msDesc and not(preceding-sibling::p)) then
                            let $params := 
                                map {
                                    "content": .
                                }

                                                        let $content := 
                                model:template-p1($config, ., $params)
                            return
                                                        fo:paragraph(map:merge(($config, map:entry("template", true()))), ., ("tei-p", "tei-p1", css:map-rend-to-class(.)), $content)
                        else
                            fo:paragraph($config, ., css:get-rendition(., ("tei-p", "tei-p3", css:map-rend-to-class(.))), .)
                    case element(list) return
                        fo:list($config, ., css:get-rendition(., ("tei-list", "tei-list1", css:map-rend-to-class(.))), item, ())
                    case element(q) return
                        if (l) then
                            fo:block($config, ., css:get-rendition(., ("tei-q", "tei-q1", "block-quote", css:map-rend-to-class(.))), .)
                        else
                            if (ancestor::p or ancestor::cell or ancestor::cit) then
                                (: If inside a paragraph, table cell or citation then rendered inline :)
                                fo:inline($config, ., css:get-rendition(., ("tei-q", "tei-q2", "inline-quote", css:map-rend-to-class(.))), .)
                            else
                                fo:block($config, ., css:get-rendition(., ("tei-q", "tei-q3", "block-quote", css:map-rend-to-class(.))), .)
                    case element(epigraph) return
                        fo:block($config, ., ("tei-epigraph", "tei-epigraph1", css:map-rend-to-class(.)), .)
                    case element(lb) return
                        fo:break($config, ., css:get-rendition(., ("tei-lb", "tei-lb1", css:map-rend-to-class(.))), ., 'line', @n)
                    case element(docTitle) return
                        fo:block($config, ., css:get-rendition(., ("tei-docTitle", "tei-docTitle1", css:map-rend-to-class(.))), .)
                    case element(w) return
                        fo:inline($config, ., ("tei-w", "tei-w1", css:map-rend-to-class(.)), .)
                    case element(person) return
                        if (parent::listPerson and $parameters?mode='register-overview') then
                            (: Register entry overview in list :)
                            let $params := 
                                map {
                                    "id": @xml:id,
                                    "label": head((persName[@type='sort'], persName[@type='main'], persName[1])),
                                    "description": note[@type='bio'],
                                    "content": .
                                }

                                                        let $content := 
                                model:template-person1($config, ., $params)
                            return
                                                        fo:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-person", "tei-person1", css:map-rend-to-class(.)), $content)
                        else
                            if (parent::listPerson and $parameters?mode='register') then
                                (: Register sidebar :)
                                fo:listItem($config, ., ("tei-person", "tei-person2", css:map-rend-to-class(.)), persName[@type=('main', 'full')], ())
                            else
                                if (parent::listPerson) then
                                    (
                                        (: Heading with full name and dates :)
                                        let $params := 
                                            map {
                                                "content": persName[@type=('main', 'full')]/node(),
                                                "dates": (birth, death)
                                            }

                                                                                let $content := 
                                            model:template-person3($config, ., $params)
                                        return
                                                                                fo:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-person", "tei-person3", css:map-rend-to-class(.)), $content),
                                        (: Variant names :)
                                        fo:block($config, ., ("tei-person", "tei-person4", css:map-rend-to-class(.)), persName[@type='variant']),
                                        (: Images :)
                                        fo:block($config, ., ("tei-person", "tei-person5", css:map-rend-to-class(.)), figure),
                                        (: Additional notes :)
                                        fo:paragraph($config, ., ("tei-person", "tei-person6", css:map-rend-to-class(.)), note),
                                        (: Links to wikidata, wikipedia etc. :)
                                        fo:list($config, ., ("tei-person", "tei-person7", css:map-rend-to-class(.)), ptr, ()),
                                        if ($parameters?mode='register-details') then
                                            (: List of letters (in register details only); trying to match by key or ref attributes :)
                                            let $params := 
                                                map {
                                                    "content": let $id := @xml:id return collection($global:data-root)//persName[@key = $id or @ref = $id]/ancestor::TEI/teiHeader//titleStmt
                                                }

                                                                                        let $content := 
                                                model:template-person8($config, ., $params)
                                            return
                                                                                        fo:block(map:merge(($config, map:entry("template", true()))), ., ("tei-person", "tei-person8", css:map-rend-to-class(.)), $content)
                                        else
                                            ()
                                    )

                                else
                                    $config?apply($config, ./node())
                    case element(titlePage) return
                        fo:block($config, ., css:get-rendition(., ("tei-titlePage", "tei-titlePage1", css:map-rend-to-class(.))), .)
                    case element(stage) return
                        fo:block($config, ., ("tei-stage", "tei-stage1", css:map-rend-to-class(.)), .)
                    case element(persName) return
                        fo:inline($config, ., ("tei-persName", "tei-persName1", css:map-rend-to-class(.)), .)
                    case element(lg) return
                        if (@type eq 'sideways') then
                            fo:block($config, ., ("tei-lg", "tei-lg1", css:map-rend-to-class(.)), .)
                        else
                            if (@type eq 'vertical') then
                                fo:block($config, ., ("tei-lg", "tei-lg2", css:map-rend-to-class(.)), .)
                            else
                                fo:block($config, ., ("tei-lg", "tei-lg3", css:map-rend-to-class(.)), .)
                    case element(front) return
                        fo:block($config, ., ("tei-front", "tei-front1", css:map-rend-to-class(.)), .)
                    case element(publicationStmt) return
                        if ($parameters?display='browse') then
                            fo:block($config, ., ("tei-publicationStmt", "tei-publicationStmt1", css:map-rend-to-class(.)), .//availability)
                        else
                            fo:block($config, ., ("tei-publicationStmt", "tei-publicationStmt2", css:map-rend-to-class(.)), .)
                    case element(placeName) return
                        fo:inline($config, ., ("tei-placeName", "tei-placeName1", css:map-rend-to-class(.)), .)
                    case element(role) return
                        fo:block($config, ., ("tei-role", "tei-role1", css:map-rend-to-class(.)), .)
                    case element(damage) return
                        fo:inline($config, ., ("tei-damage", "tei-damage1", css:map-rend-to-class(.)), .)
                    case element(country) return
                        fo:inline($config, ., ("tei-country", "tei-country1", css:map-rend-to-class(.)), .)
                    case element(postscript) return
                        fo:block($config, ., ("tei-postscript", "tei-postscript1", css:map-rend-to-class(.)), .)
                    case element(edition) return
                        if (ancestor::teiHeader) then
                            fo:block($config, ., ("tei-edition", "tei-edition1", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(cell) return
                        (: Insert table cell. :)
                        fo:cell($config, ., ("tei-cell", "tei-cell1", css:map-rend-to-class(.)), ., ())
                    case element(div) return
                        if ($parameters?mode='title') then
                            fo:pass-through($config, ., ("tei-div", "tei-div1", css:map-rend-to-class(.)), descendant::pb)
                        else
                            if (lg[@type = ('vertical', 'sideways')]) then
                                fo:block($config, ., ("tei-div", "tei-div2", css:map-rend-to-class(.)), .)
                            else
                                fo:block($config, ., ("tei-div", "tei-div3", css:map-rend-to-class(.)), .)
                    case element(graphic) return
                        fo:graphic($config, ., ("tei-graphic", "tei-graphic1", css:map-rend-to-class(.)), ., @url, @width, @height, @scale, desc)
                    case element(ref) return
                        if (@subtype='placeholder') then
                            (: placeholder for unavailable next/prev links :)
                            let $params := 
                                map {
                                    "type": if (@type='prev') then 'previous' else @type,
                                    "svg": $parameters?context-path || '/resources/css/correspondence-icons.svg',
                                    "content": .
                                }

                                                        let $content := 
                                model:template-ref1($config, ., $params)
                            return
                                                        fo:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-ref", "tei-ref1", css:map-rend-to-class(.)), $content)
                        else
                            if (parent::correspContext and @type) then
                                (: refs inside the correspContext are interpreted as links for next/previous elements in the corpus; type attribute is used to determine what navigation structure it is: known values are - in the entire corpus (type='next' or type='previous') ('prev' is mapped to 'previous') - next in the correspondence subcorpus between two correspondents (type='next-in-correspondence' or type='prev-in-correspondence') for which relevant svg icons are provided :)
                                let $params := 
                                    map {
                                        "type": if (@type='prev') then 'previous' else @type,
                                        "target": @target,
                                        "svg": $parameters?context-path || '/resources/css/correspondence-icons.svg',
                                        "content": .
                                    }

                                                                let $content := 
                                    model:template-ref2($config, ., $params)
                                return
                                                                fo:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-ref", "tei-ref2", css:map-rend-to-class(.)), $content)
                            else
                                if (@target) then
                                    fo:link($config, ., ("tei-ref", "tei-ref3", css:map-rend-to-class(.)), ., @target, map {})
                                else
                                    fo:inline($config, ., ("tei-ref", "tei-ref4", css:map-rend-to-class(.)), .)
                    case element(add) return
                        fo:inline($config, ., ("tei-add", "tei-add1", css:map-rend-to-class(.)), .)
                    case element(head) return
                        if ($parameters?display='browse' or $parameters?mode='toc') then
                            (: For browse view and table of contents, just output inline text :)
                            fo:inline($config, ., ("tei-head", "tei-head1", css:map-rend-to-class(.)), replace(string-join(.//text()[not(parent::ref)]), '^(.+?)[^\w]*$', '$1'))
                        else
                            if (parent::figure) then
                                fo:block($config, ., ("tei-head", "tei-head2", "figure-head", css:map-rend-to-class(.)), .)
                            else
                                if (parent::table) then
                                    fo:block($config, ., ("tei-head", "tei-head3", "table-head", css:map-rend-to-class(.)), .)
                                else
                                    if (parent::lg) then
                                        fo:block($config, ., ("tei-head", "tei-head4", "lg-head", css:map-rend-to-class(.)), .)
                                    else
                                        if (parent::list) then
                                            fo:block($config, ., ("tei-head", "tei-head5", "list-head", css:map-rend-to-class(.)), .)
                                        else
                                            if (parent::div) then
                                                fo:heading($config, ., ("tei-head", "tei-head6", css:map-rend-to-class(.)), ., count(ancestor::div))
                                            else
                                                fo:block($config, ., ("tei-head", "tei-head7", css:map-rend-to-class(.)), .)
                    case element(ex) return
                        if (ancestor::expan) then
                            fo:inline($config, ., ("tei-ex", "tei-ex1", css:map-rend-to-class(.)), ('(', ., ')'))
                        else
                            $config?apply($config, ./node())
                    case element(time) return
                        fo:inline($config, ., ("tei-time", "tei-time1", css:map-rend-to-class(.)), .)
                    case element(castGroup) return
                        if (child::*) then
                            (: Treat as a list :)
                            fo:list($config, ., ("tei-castGroup", "tei-castGroup1", css:map-rend-to-class(.)), castItem|castGroup, ())
                        else
                            $config?apply($config, ./node())
                    case element(bibl) return
                        if (parent::listBibl) then
                            fo:listItem($config, ., ("tei-bibl", "tei-bibl1", css:map-rend-to-class(.)), ., ())
                        else
                            if (@type = ('start', 'end')) then
                                fo:omit($config, ., ("tei-bibl", "tei-bibl2", css:map-rend-to-class(.)), .)
                            else
                                fo:inline($config, ., ("tei-bibl", "tei-bibl3", css:map-rend-to-class(.)), .)
                    case element(unclear) return
                        fo:inline($config, ., ("tei-unclear", "tei-unclear1", "unclear", "nowrap", css:map-rend-to-class(.)), for $x in ./node() return if (contains(path($x), 'text()')) then ext-html:replaces-spaces($x) else if (contains(path($x), 'comment()')) then () else $x)
                    case element(salute) return
                        if (parent::closer) then
                            fo:inline($config, ., ("tei-salute", "tei-salute1", css:map-rend-to-class(.)), .)
                        else
                            fo:block($config, ., ("tei-salute", "tei-salute2", css:map-rend-to-class(.)), .)
                    case element(title) return
                        if (@type) then
                            fo:omit($config, ., ("tei-title", "tei-title1", css:map-rend-to-class(.)), .)
                        else
                            if ($parameters?display='browse') then
                                fo:heading($config, ., ("tei-title", "tei-title2", css:map-rend-to-class(.)), ., 5)
                            else
                                if (parent::titleStmt/parent::fileDesc) then
                                    (
                                        if (preceding-sibling::title) then
                                            fo:text($config, ., ("tei-title", "tei-title3", css:map-rend-to-class(.)), ' — ')
                                        else
                                            (),
                                        fo:inline($config, ., ("tei-title", "tei-title4", css:map-rend-to-class(.)), .)
                                    )

                                else
                                    if (not(@level) and parent::bibl) then
                                        fo:inline($config, ., ("tei-title", "tei-title5", css:map-rend-to-class(.)), .)
                                    else
                                        if (@level='m' or not(@level)) then
                                            (
                                                fo:inline($config, ., ("tei-title", "tei-title6", css:map-rend-to-class(.)), .),
                                                if (ancestor::biblFull) then
                                                    fo:text($config, ., ("tei-title", "tei-title7", css:map-rend-to-class(.)), ', ')
                                                else
                                                    ()
                                            )

                                        else
                                            if (@level='s' or @level='j') then
                                                (
                                                    fo:inline($config, ., ("tei-title", "tei-title8", css:map-rend-to-class(.)), .),
                                                    if (following-sibling::* and     (  ancestor::biblFull)) then
                                                        fo:text($config, ., ("tei-title", "tei-title9", css:map-rend-to-class(.)), ', ')
                                                    else
                                                        ()
                                                )

                                            else
                                                if (@level='u' or @level='a') then
                                                    (
                                                        fo:inline($config, ., ("tei-title", "tei-title10", css:map-rend-to-class(.)), .),
                                                        if (following-sibling::* and     (    ancestor::biblFull)) then
                                                            fo:text($config, ., ("tei-title", "tei-title11", css:map-rend-to-class(.)), '. ')
                                                        else
                                                            ()
                                                    )

                                                else
                                                    fo:inline($config, ., ("tei-title", "tei-title12", css:map-rend-to-class(.)), .)
                    case element(date) return
                        if (($parameters?mode eq 'metadata-doc') and (ancestor::publicationStmt)) then
                            let $params := 
                                map {
                                    "content": .
                                }

                                                        let $content := 
                                model:template-date1($config, ., $params)
                            return
                                                        fo:paragraph(map:merge(($config, map:entry("template", true()))), ., ("tei-date", "tei-date1", css:map-rend-to-class(.)), $content)
                        else
                            if ($parameters?mode eq 'metadata-doc') then
                                fo:paragraph($config, ., ("tei-date", "tei-date2", css:map-rend-to-class(.)), .)
                            else
                                fo:inline($config, ., ("tei-date", "tei-date4", css:map-rend-to-class(.)), .)
                    case element(argument) return
                        fo:block($config, ., ("tei-argument", "tei-argument1", css:map-rend-to-class(.)), .)
                    case element(corr) return
                        if (parent::choice and count(parent::*/*) gt 1) then
                            (: simple inline, if in parent choice. :)
                            fo:inline($config, ., ("tei-corr", "tei-corr1", css:map-rend-to-class(.)), .)
                        else
                            fo:inline($config, ., ("tei-corr", "tei-corr2", css:map-rend-to-class(.)), .)
                    case element(cit) return
                        if (child::quote and child::bibl) then
                            (: Insert citation :)
                            fo:cit($config, ., ("tei-cit", "tei-cit1", css:map-rend-to-class(.)), ., ())
                        else
                            $config?apply($config, ./node())
                    case element(titleStmt) return
                        if ($parameters?mode eq 'breadcrumb') then
                            fo:inline($config, ., ("tei-titleStmt", "tei-titleStmt1", css:map-rend-to-class(.)), head(title)/string())
                        else
                            fo:heading($config, ., ("tei-titleStmt", "tei-titleStmt3", css:map-rend-to-class(.)), ., ())
                    case element(sic) return
                        if (parent::choice) then
                            fo:inline($config, ., ("tei-sic", "tei-sic1", css:map-rend-to-class(.)), .)
                        else
                            fo:inline($config, ., ("tei-sic", "tei-sic2", "sic", css:map-rend-to-class(.)), .)
                    case element(spGrp) return
                        fo:block($config, ., ("tei-spGrp", "tei-spGrp1", css:map-rend-to-class(.)), .)
                    case element(body) return
                        (
                            fo:index($config, ., ("tei-body", "tei-body1", css:map-rend-to-class(.)), ., 'toc'),
                            fo:block($config, ., ("tei-body", "tei-body2", css:map-rend-to-class(.)), .)
                        )

                    case element(fw) return
                        if (ancestor::p or ancestor::ab) then
                            fo:inline($config, ., ("tei-fw", "tei-fw1", css:map-rend-to-class(.)), .)
                        else
                            fo:block($config, ., ("tei-fw", "tei-fw2", css:map-rend-to-class(.)), .)
                    case element(encodingDesc) return
                        if ($parameters?display='browse') then
                            fo:omit($config, ., ("tei-encodingDesc", "tei-encodingDesc1", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(quote) return
                        if (@type = ('start', 'end')) then
                            fo:omit($config, ., css:get-rendition(., ("tei-quote", "tei-quote1", css:map-rend-to-class(.))), .)
                        else
                            fo:inline($config, ., ("tei-quote", "tei-quote2", "nowrap", css:map-rend-to-class(.)), for $x in ./node() return if (contains(path($x), 'text()')) then ext-html:replaces-spaces($x) else if (contains(path($x), 'comment()')) then () else $x)
                    case element(gap) return
                        if (desc) then
                            fo:inline($config, ., ("tei-gap", "tei-gap1", css:map-rend-to-class(.)), .)
                        else
                            if (@extent) then
                                fo:inline($config, ., ("tei-gap", "tei-gap2", css:map-rend-to-class(.)), for $x in 1 to xs:integer(number(@extent)) return '⍰')
                            else
                                fo:inline($config, ., ("tei-gap", "tei-gap3", css:map-rend-to-class(.)), .)
                    case element(correspAction) return
                        if (@type='sent') then
                            fo:inline($config, ., ("tei-correspAction", "tei-correspAction1", css:map-rend-to-class(.)), .)
                        else
                            $config?apply($config, ./node())
                    case element(row) return
                        if (@role='label') then
                            fo:row($config, ., ("tei-row", "tei-row1", "row-label", css:map-rend-to-class(.)), .)
                        else
                            fo:row($config, ., ("tei-row", "tei-row2", css:map-rend-to-class(.)), .)
                    case element(byline) return
                        fo:block($config, ., ("tei-byline", "tei-byline1", css:map-rend-to-class(.)), .)
                    case element(editor) return
                        if ($parameters?mode eq 'metadata-doc') then
                            let $params := 
                                map {
                                    "content": persName
                                }

                                                        let $content := 
                                model:template-editor1($config, ., $params)
                            return
                                                        fo:listItem(map:merge(($config, map:entry("template", true()))), ., ("tei-editor", "tei-editor1", css:map-rend-to-class(.)), $content, ())
                        else
                            $config?apply($config, ./node())
                    case element(msDesc) return
                        if ($parameters?mode eq 'metadata-doc') then
                            let $params := 
                                map {
                                    "content": (msIdentifier/repository, msIdentifier/idno, p[1], tail(p), ancestor::teiHeader//publicationStmt//date, ancestor::teiHeader//respStmt)
                                }

                                                        let $content := 
                                model:template-msDesc1($config, ., $params)
                            return
                                                        fo:listItem(map:merge(($config, map:entry("template", true()))), ., ("tei-msDesc", "tei-msDesc1", css:map-rend-to-class(.)), $content, ())
                        else
                            $config?apply($config, ./node())
                    case element(repository) return
                        if ($parameters?mode eq 'metadata-doc') then
                            let $params := 
                                map {
                                    "content": .
                                }

                                                        let $content := 
                                model:template-repository1($config, ., $params)
                            return
                                                        fo:paragraph(map:merge(($config, map:entry("template", true()))), ., ("tei-repository", "tei-repository1", css:map-rend-to-class(.)), $content)
                        else
                            $config?apply($config, ./node())
                    case element(idno) return
                        if ($parameters?mode eq 'metadata-doc') then
                            let $params := 
                                map {
                                    "content": .
                                }

                                                        let $content := 
                                model:template-idno1($config, ., $params)
                            return
                                                        fo:paragraph(map:merge(($config, map:entry("template", true()))), ., ("tei-idno", "tei-idno1", css:map-rend-to-class(.)), $content)
                        else
                            $config?apply($config, ./node())
                    case element(respStmt) return
                        if ($parameters?mode eq 'metadata-doc') then
                            let $params := 
                                map {
                                    "role": resp,
                                    "name": persName,
                                    "content": .
                                }

                                                        let $content := 
                                model:template-respStmt1($config, ., $params)
                            return
                                                        fo:paragraph(map:merge(($config, map:entry("template", true()))), ., ("tei-respStmt", "tei-respStmt1", css:map-rend-to-class(.)), $content)
                        else
                            $config?apply($config, ./node())
                    case element(origDate) return
                        if ($parameters?mode eq 'metadata-doc') then
                            let $params := 
                                map {
                                    "content": .
                                }

                                                        let $content := 
                                model:template-origDate1($config, ., $params)
                            return
                                                        fo:listItem(map:merge(($config, map:entry("template", true()))), ., ("tei-origDate", "tei-origDate1", css:map-rend-to-class(.)), $content, ())
                        else
                            $config?apply($config, ./node())
                    case element() return
                        if (namespace-uri(.) = 'http://www.tei-c.org/ns/1.0') then
                            $config?apply($config, ./node())
                        else
                            .
                    case text() | xs:anyAtomicType return
                        fo:escapeChars(.)
                    default return 
                        $config?apply($config, ./node())

        )

};

declare function model:apply-children($config as map(*), $node as element(), $content as item()*) {
        
    if ($config?template) then
        $content
    else
        $content ! (
            typeswitch(.)
                case element() return
                    if (. is $node) then
                        $config?apply($config, ./node())
                    else
                        $config?apply($config, .)
                default return
                    fo:escapeChars(.)
        )
};

declare function model:source($parameters as map(*), $elem as element()) {
        
    let $id := $elem/@exist:id
    return
        if ($id and $parameters?root) then
            util:node-by-id($parameters?root, $id)
        else
            $elem
};

declare function model:process-annotation($html, $context as node()) {
        
    let $classRegex := analyze-string($html/@class, '\s?annotation-([^\s]+)\s?')
    return
        if ($classRegex//fn:match) then (
            if ($html/@data-type) then
                ()
            else
                attribute data-type { ($classRegex//fn:group)[1]/string() },
            if ($html/@data-annotation) then
                ()
            else
                attribute data-annotation {
                    map:merge($context/@* ! map:entry(node-name(.), ./string()))
                    => serialize(map { "method": "json" })
                }
        ) else
            ()
                    
};

declare function model:map($html, $context as node(), $trackIds as item()?) {
        
    if ($trackIds) then
        for $node in $html
        return
            typeswitch ($node)
                case document-node() | comment() | processing-instruction() return 
                    $node
                case element() return
                    if ($node/@class = ("footnote")) then
                        if (local-name($node) = 'pb-popover') then
                            ()
                        else
                            element { node-name($node) }{
                                $node/@*,
                                $node/*[@class="fn-number"],
                                model:map($node/*[@class="fn-content"], $context, $trackIds)
                            }
                    else
                        element { node-name($node) }{
                            attribute data-tei { util:node-id($context) },
                            $node/@*,
                            model:process-annotation($node, $context),
                            $node/node()
                        }
                default return
                    <pb-anchor data-tei="{ util:node-id($context) }">{$node}</pb-anchor>
    else
        $html
                    
};


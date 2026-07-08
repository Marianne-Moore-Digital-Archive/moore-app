(:~

    Transformation module generated from TEI ODD extensions for processing models.
    ODD: /db/apps/moore/resources/odd/moore.odd
 :)
xquery version "3.1";

module namespace model="http://www.tei-c.org/pm/models/moore/web";

declare default element namespace "http://www.tei-c.org/ns/1.0";

declare namespace xhtml='http://www.w3.org/1999/xhtml';

declare namespace mei='http://www.music-encoding.org/ns/mei';

declare namespace tei='http://www.tei-c.org/ns/1.0';

declare namespace pb='http://teipublisher.com/1.0';

import module namespace css="http://www.tei-c.org/tei-simple/xquery/css";

import module namespace html="http://www.tei-c.org/tei-simple/xquery/functions";

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
                "output": ["web"],
                "odd": "/db/apps/moore/resources/odd/moore.odd",
                "apply": model:apply#2,
                "apply-children": model:apply-children#3
            }
        ))
    
    return (
        html:prepare($config, $input),
    
        let $output := model:apply($config, $input)
        return
            html:finish($config, $output)
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
                        html:listItem($config, ., ("tei-castItem", "tei-castItem1", css:map-rend-to-class(.)), ., ())                        => model:map($node, $trackIds)
                    case element(item) return
                        html:listItem($config, ., ("tei-item", "tei-item1", css:map-rend-to-class(.)), ., ())                        => model:map($node, $trackIds)
                    case element(teiHeader) return
                        if ($parameters?mode eq 'metadata-doc') then
                            html:pass-through($config, ., ("tei-teiHeader", "tei-teiHeader1", css:map-rend-to-class(.)), (//fileDesc/titleStmt/editor[1], //origDate, //msDesc))                            => model:map($node, $trackIds)
                        else
                            if ($parameters?display='browse' or $parameters?mode='breadcrumb') then
                                html:block($config, ., ("tei-teiHeader", "tei-teiHeader4", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                            else
                                html:metadata($config, ., ("tei-teiHeader", "tei-teiHeader5", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                    case element(figure) return
                        if (head or @rendition='simple:display') then
                            html:block($config, ., ("tei-figure", "tei-figure1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            html:inline($config, ., ("tei-figure", "tei-figure2", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                    case element(supplied) return
                        if (parent::choice) then
                            html:inline($config, ., ("tei-supplied", "tei-supplied1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
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
                                                                html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-supplied", "tei-supplied2", css:map-rend-to-class(.)), $content)                                => model:map($node, $trackIds)
                            else
                                html:inline($config, ., ("tei-supplied", "tei-supplied3", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
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
                                                        html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-ptr", "tei-ptr1", css:map-rend-to-class(.)), $content)                            => model:map($node, $trackIds)
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
                                                                html:listItem(map:merge(($config, map:entry("template", true()))), ., ("tei-ptr", "tei-ptr2", css:map-rend-to-class(.)), $content, ())                                => model:map($node, $trackIds)
                            else
                                if (@target) then
                                    html:link($config, ., ("tei-ptr", "tei-ptr3", css:map-rend-to-class(.)), if (@type) then @type else ., @target, (), map {})                                    => model:map($node, $trackIds)
                                else
                                    $config?apply($config, ./node())
                    case element(signed) return
                        if (parent::closer) then
                            html:block($config, ., ("tei-signed", "tei-signed1", "signed", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            html:inline($config, ., ("tei-signed", "tei-signed2", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                    case element(pb) return
                        if ($parameters?mode= ('toc', 'title')) then
                            html:inline($config, ., ("tei-pb", "tei-pb1", css:map-rend-to-class(.)), ext-html:page-number(.))                            => model:map($node, $trackIds)
                        else
                            if (@facs) then
                                (: Use the url from the facs attribute to link with image :)
                                html:webcomponent($config, ., ("tei-pb", "tei-pb2", css:map-rend-to-class(.)), ., 'pb-facs-link', map {"facs": 'resources/images/notebooks/' || @facs, "label": @n, "emit": 'transcription'})                                => model:map($node, $trackIds)
                            else
                                if (starts-with(@facs, 'iiif:')) then
                                    (: If facs attribute starts with iiif prefix, use the trailing part as a link to the IIIF image :)
                                    html:webcomponent($config, ., ("tei-pb", "tei-pb3", css:map-rend-to-class(.)), ., 'pb-facs-link', map {"facs": replace(@facs, '^iiif:(.*)$', '$1'), "label": 'Page', "emit": 'transcription'})                                    => model:map($node, $trackIds)
                                else
                                    html:break($config, ., css:get-rendition(., ("tei-pb", "tei-pb4", css:map-rend-to-class(.))), ., 'page', (concat(if(@n) then concat(@n,' ') else '',if(@facs) then                   concat('@',@facs) else '')))                                    => model:map($node, $trackIds)
                    case element(TEI) return
                        if ($parameters?mode='breadcrumb') then
                            html:pass-through($config, ., ("tei-TEI", "tei-TEI1", css:map-rend-to-class(.)), teiHeader)                            => model:map($node, $trackIds)
                        else
                            if ($parameters?mode='edition-navigation' and descendant::correspContext) then
                                (: process correspContext to provide in-edition navigation buttons to move between documents :)
                                html:pass-through($config, ., ("tei-TEI", "tei-TEI2", css:map-rend-to-class(.)), descendant::correspContext)                                => model:map($node, $trackIds)
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
                                                                        html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-TEI", "tei-TEI3", css:map-rend-to-class(.)), $content)                                    => model:map($node, $trackIds)
                                else
                                    html:document($config, ., ("tei-TEI", "tei-TEI4", css:map-rend-to-class(.)), .)                                    => model:map($node, $trackIds)
                    case element(anchor) return
                        if ($parameters?mode=('toc', 'breadcrumb')) then
                            html:omit($config, ., ("tei-anchor", "tei-anchor1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            if (@corresp) then
                                (: Process notes with corresp attribute (assuming the note is stand off, somewhere in the same document) :)
                                html:note($config, ., ("tei-anchor", "tei-anchor2", css:map-rend-to-class(.)), let $target := @corresp return root($parameters?root)/id($target)/node(), (), @n)                                => model:map($node, $trackIds)
                            else
                                if (@type='note') then
                                    (: Process notes with @type=note (assuming the note is stand off, in the listAnnotation section in the same document) :)
                                    html:note($config, ., ("tei-anchor", "tei-anchor3", css:map-rend-to-class(.)), let $target := '#' || @xml:id return root($parameters?root)//listAnnotation/note[@target=$target]/node(), (), let $target := '#' || @xml:id return root($parameters?root)//listAnnotation/note[@target=$target]/@n/string())                                    => model:map($node, $trackIds)
                                else
                                    if (@xml:id) then
                                        html:anchor($config, ., ("tei-anchor", "tei-anchor4", css:map-rend-to-class(.)), ., @xml:id)                                        => model:map($node, $trackIds)
                                    else
                                        $config?apply($config, ./node())
                    case element(formula) return
                        if (@rendition='simple:display') then
                            html:block($config, ., ("tei-formula", "tei-formula1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            if (@rend='display') then
                                html:webcomponent($config, ., ("tei-formula", "tei-formula4", css:map-rend-to-class(.)), ., 'pb-formula', map {"display": true()})                                => model:map($node, $trackIds)
                            else
                                html:webcomponent($config, ., ("tei-formula", "tei-formula5", css:map-rend-to-class(.)), ., 'pb-formula', map {})                                => model:map($node, $trackIds)
                    case element(choice) return
                        if (sic and corr) then
                            html:alternate($config, ., ("tei-choice", "tei-choice1", css:map-rend-to-class(.)), ., corr[1], sic[1], map {})                            => model:map($node, $trackIds)
                        else
                            if (abbr and expan) then
                                html:alternate($config, ., ("tei-choice", "tei-choice2", css:map-rend-to-class(.)), ., expan[1], abbr[1], map {})                                => model:map($node, $trackIds)
                            else
                                if (orig and reg) then
                                    html:alternate($config, ., ("tei-choice", "tei-choice3", css:map-rend-to-class(.)), ., reg[1], orig[1], map {})                                    => model:map($node, $trackIds)
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
                                                html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-hi", "tei-hi1", css:map-rend-to-class(.)), $content)                        => model:map($node, $trackIds)
                    case element(note) return
                        if (@target) then
                            html:note($config, ., ("tei-note", "tei-note1", css:map-rend-to-class(.)), ., (), 'g')                            => model:map($node, $trackIds)
                        else
                            if (not($parameters?mode eq 'metadata-doc')) then
                                html:note($config, ., ("tei-note", "tei-note2", css:map-rend-to-class(.)), ., @place, 'n')                                => model:map($node, $trackIds)
                            else
                                $config?apply($config, ./node())
                    case element(code) return
                        html:inline($config, ., ("tei-code", "tei-code1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(death) return
                        html:inline($config, ., ("tei-death", "tei-death1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(dateline) return
                        html:block($config, ., ("tei-dateline", "tei-dateline1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(back) return
                        html:block($config, ., ("tei-back", "tei-back1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
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
                                                        html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-correspContext", "tei-correspContext1", css:map-rend-to-class(.)), $content)                            => model:map($node, $trackIds)
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
                                                        html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-correspContext", "tei-correspContext2", css:map-rend-to-class(.)), $content)                            => model:map($node, $trackIds)
                    case element(del) return
                        html:inline($config, ., ("tei-del", "tei-del1", "nowrap", css:map-rend-to-class(.)), for $x in ./node() return if (contains(path($x), 'text()')) then ext-html:replaces-spaces($x) else if (contains(path($x), 'comment()')) then () else $x)                        => model:map($node, $trackIds)
                    case element(trailer) return
                        html:block($config, ., ("tei-trailer", "tei-trailer1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(titlePart) return
                        html:block($config, ., css:get-rendition(., ("tei-titlePart", "tei-titlePart1", css:map-rend-to-class(.))), .)                        => model:map($node, $trackIds)
                    case element(ab) return
                        html:paragraph($config, ., ("tei-ab", "tei-ab1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(app) return
                        if ($parameters?mode='toc') then
                            html:inline($config, ., ("tei-app", "tei-app1", css:map-rend-to-class(.)), lem)                            => model:map($node, $trackIds)
                        else
                            html:alternate($config, ., ("tei-app", "tei-app2", css:map-rend-to-class(.)), ., lem, rdg, map {})                            => model:map($node, $trackIds)
                    case element(revisionDesc) return
                        if ($parameters?display='browse') then
                            html:omit($config, ., ("tei-revisionDesc", "tei-revisionDesc1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            $config?apply($config, ./node())
                    case element(birth) return
                        html:inline($config, ., ("tei-birth", "tei-birth1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(subst) return
                        (: explicitly set content to avoid whitespace issues :)
                        html:inline($config, ., ("tei-subst", "tei-subst1", css:map-rend-to-class(.)), (del, add))                        => model:map($node, $trackIds)
                    case element(roleDesc) return
                        html:block($config, ., ("tei-roleDesc", "tei-roleDesc1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(opener) return
                        html:block($config, ., ("tei-opener", "tei-opener1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(speaker) return
                        html:block($config, ., ("tei-speaker", "tei-speaker1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(region) return
                        html:inline($config, ., ("tei-region", "tei-region1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(imprimatur) return
                        html:block($config, ., ("tei-imprimatur", "tei-imprimatur1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(foreign) return
                        html:inline($config, ., ("tei-foreign", "tei-foreign1", "nowrap", css:map-rend-to-class(.)), for $x in ./node() return if (contains(path($x), 'text()')) then ext-html:replaces-spaces($x) else if (contains(path($x), 'comment()')) then () else $x)                        => model:map($node, $trackIds)
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
                                                html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-mei_mdiv", "tei-mei_mdiv1", css:map-rend-to-class(.)), $content)                        => model:map($node, $trackIds)
                    case element(fileDesc) return
                        if ($parameters?display='browse') then
                            (
                                html:block($config, ., ("tei-fileDesc", "tei-fileDesc1", css:map-rend-to-class(.)), (titleStmt, editionStmt, publicationStmt))                                => model:map($node, $trackIds),
                                (: Output abstract containing demo description :)
                                html:block($config, ., ("tei-fileDesc", "tei-fileDesc2", "sample-description", css:map-rend-to-class(.)), ../profileDesc/abstract)                                => model:map($node, $trackIds)
                            )

                        else
                            html:block($config, ., ("tei-fileDesc", "tei-fileDesc3", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                    case element(seg) return
                        html:inline($config, ., css:get-rendition(., ("tei-seg", "tei-seg1", css:map-rend-to-class(.))), .)                        => model:map($node, $trackIds)
                    case element(notatedMusic) return
                        html:figure($config, ., ("tei-notatedMusic", "tei-notatedMusic1", css:map-rend-to-class(.)), (ptr, mei:mdiv), label)                        => model:map($node, $trackIds)
                    case element(profileDesc) return
                        if ($parameters?display='browse') then
                            html:omit($config, ., ("tei-profileDesc", "tei-profileDesc1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
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
                                                        html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-place", "tei-place1", css:map-rend-to-class(.)), $content)                            => model:map($node, $trackIds)
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
                                                                html:listItem(map:merge(($config, map:entry("template", true()))), ., ("tei-place", "tei-place2", css:map-rend-to-class(.)), $content, ())                                => model:map($node, $trackIds)
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
                                                                        html:heading(map:merge(($config, map:entry("template", true()))), ., ("tei-place", "tei-place3", css:map-rend-to-class(.)), $content, ())                                    => model:map($node, $trackIds),
                                    (: Additional notes :)
                                    html:paragraph($config, ., ("tei-place", "tei-place4", css:map-rend-to-class(.)), note)                                    => model:map($node, $trackIds),
                                    (: Links to wikidata, wikipedia etc. :)
                                    html:list($config, ., ("tei-place", "tei-place5", "links", css:map-rend-to-class(.)), ptr, ())                                    => model:map($node, $trackIds),
                                    if ($parameters?mode='register-details') then
                                        (: List of letters (in register details only); trying to match by key or ref attributes :)
                                        let $params := 
                                            map {
                                                "content": let $id := @xml:id return collection($global:data-root)//placeName[@key = $id or @ref = $id]/ancestor::TEI/teiHeader//titleStmt
                                            }

                                                                                let $content := 
                                            model:template-place6($config, ., $params)
                                        return
                                                                                html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-place", "tei-place6", css:map-rend-to-class(.)), $content)                                        => model:map($node, $trackIds)
                                    else
                                        ()
                                )

                    case element(text) return
                        html:body($config, ., ("tei-text", "tei-text1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(floatingText) return
                        html:block($config, ., ("tei-floatingText", "tei-floatingText1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(sp) return
                        html:block($config, ., ("tei-sp", "tei-sp1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(table) return
                        html:table($config, ., ("tei-table", "tei-table1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(group) return
                        html:block($config, ., ("tei-group", "tei-group1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(cb) return
                        html:break($config, ., ("tei-cb", "tei-cb1", css:map-rend-to-class(.)), ., 'column', @n)                        => model:map($node, $trackIds)
                    case element(licence) return
                        if (@target) then
                            html:link($config, ., ("tei-licence", "tei-licence1", "licence", css:map-rend-to-class(.)), 'Licence', @target, (), map {})                            => model:map($node, $trackIds)
                        else
                            $config?apply($config, ./node())
                    case element(orgName) return
                        if (@key and $parameters?mode='register-details') then
                            html:inline($config, ., ("tei-orgName", "tei-orgName3", css:map-rend-to-class(.)), let $key:= head((@key, @ref)) return id($key, collection($global:register-root)/id('pb-organizations'))/placeName[@type='main']/string())                            => model:map($node, $trackIds)
                        else
                            if ($parameters?display='browse' or $parameters?mode='breadcrumb' or $parameters?mode='toc') then
                                html:inline($config, ., ("tei-orgName", "tei-orgName4", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                            else
                                if ($parameters?mode='register') then
                                    (: Register sidebar :)
                                    let $params := 
                                        map {
                                            "default": .,
                                            "alternate": parent::org/note,
                                            "uri": $parameters?context-path || '/organizations/' || parent::org/@xml:id,
                                            "content": .
                                        }

                                                                        let $content := 
                                        model:template-orgName5($config, ., $params)
                                    return
                                                                        html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-orgName", "tei-orgName5", css:map-rend-to-class(.)), $content)                                    => model:map($node, $trackIds)
                                else
                                    if (@type='variant') then
                                        html:inline($config, ., ("tei-orgName", "tei-orgName6", "name", "variant", css:map-rend-to-class(.)), .)                                        => model:map($node, $trackIds)
                                    else
                                        if (parent::org) then
                                            html:inline($config, ., ("tei-orgName", "tei-orgName7", css:map-rend-to-class(.)), .)                                            => model:map($node, $trackIds)
                                        else
                                            if (ancestor::correspContext) then
                                                html:inline($config, ., ("tei-orgName", "tei-orgName8", css:map-rend-to-class(.)), .)                                                => model:map($node, $trackIds)
                                            else
                                                if (@key or @ref) then
                                                    html:alternate($config, ., ("tei-orgName", "tei-orgName9", "orgName", "context", css:map-rend-to-class(.)), ., ., let $key:= head((@key, @ref)) return id($key, collection($global:register-root)/id('pb-organizations')), map {})                                                    => model:map($node, $trackIds)
                                                else
                                                    html:inline($config, ., ("tei-orgName", "tei-orgName10", css:map-rend-to-class(.)), .)                                                    => model:map($node, $trackIds)
                    case element(listBibl) return
                        if (bibl) then
                            html:list($config, ., ("tei-listBibl", "tei-listBibl1", css:map-rend-to-class(.)), ., ())                            => model:map($node, $trackIds)
                        else
                            html:block($config, ., ("tei-listBibl", "tei-listBibl2", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                    case element(g) return
                        if (not(text())) then
                            html:glyph($config, ., ("tei-g", "tei-g1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            html:inline($config, ., ("tei-g", "tei-g2", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                    case element(author) return
                        if (ancestor::teiHeader) then
                            html:block($config, ., ("tei-author", "tei-author1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            html:inline($config, ., ("tei-author", "tei-author2", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                    case element(castList) return
                        if (child::*) then
                            html:list($config, ., css:get-rendition(., ("tei-castList", "tei-castList1", css:map-rend-to-class(.))), castItem, ())                            => model:map($node, $trackIds)
                        else
                            $config?apply($config, ./node())
                    case element(l) return
                        if (not(node())) then
                            (: Create line break for empty lines :)
                            html:break($config, ., ("tei-l", "tei-l1", css:map-rend-to-class(.)), ., 'line', ())                            => model:map($node, $trackIds)
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
                                                                html:block(map:merge(($config, map:entry("template", true()))), ., css:get-rendition(., ("tei-l", "tei-l2", "line", css:map-rend-to-class(.))), $content)                                => model:map($node, $trackIds)
                            else
                                let $params := 
                                    map {
                                        "content": for $x in ./node() return if (contains(path($x), 'text()')) then ext-html:replaces-spaces($x) else if (contains(path($x), 'comment()')) then () else $x
                                    }

                                                                let $content := 
                                    model:template-l3($config, ., $params)
                                return
                                                                html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-l", "tei-l3", "line", css:map-rend-to-class(.)), $content)                                => model:map($node, $trackIds)
                    case element(closer) return
                        html:block($config, ., ("tei-closer", "tei-closer1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(p) return
                        if (parent::msDesc and not(preceding-sibling::p)) then
                            let $params := 
                                map {
                                    "content": .
                                }

                                                        let $content := 
                                model:template-p1($config, ., $params)
                            return
                                                        html:paragraph(map:merge(($config, map:entry("template", true()))), ., ("tei-p", "tei-p1", css:map-rend-to-class(.)), $content)                            => model:map($node, $trackIds)
                        else
                            html:paragraph($config, ., css:get-rendition(., ("tei-p", "tei-p3", css:map-rend-to-class(.))), .)                            => model:map($node, $trackIds)
                    case element(list) return
                        html:list($config, ., css:get-rendition(., ("tei-list", "tei-list1", css:map-rend-to-class(.))), item, ())                        => model:map($node, $trackIds)
                    case element(q) return
                        if (l) then
                            html:block($config, ., css:get-rendition(., ("tei-q", "tei-q1", "block-quote", css:map-rend-to-class(.))), .)                            => model:map($node, $trackIds)
                        else
                            if (ancestor::p or ancestor::cell or ancestor::cit) then
                                (: If inside a paragraph, table cell or citation then rendered inline :)
                                html:inline($config, ., css:get-rendition(., ("tei-q", "tei-q2", "inline-quote", css:map-rend-to-class(.))), .)                                => model:map($node, $trackIds)
                            else
                                html:block($config, ., css:get-rendition(., ("tei-q", "tei-q3", "block-quote", css:map-rend-to-class(.))), .)                                => model:map($node, $trackIds)
                    case element(epigraph) return
                        html:block($config, ., ("tei-epigraph", "tei-epigraph1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(lb) return
                        html:break($config, ., css:get-rendition(., ("tei-lb", "tei-lb1", css:map-rend-to-class(.))), ., 'line', @n)                        => model:map($node, $trackIds)
                    case element(docTitle) return
                        html:block($config, ., css:get-rendition(., ("tei-docTitle", "tei-docTitle1", css:map-rend-to-class(.))), .)                        => model:map($node, $trackIds)
                    case element(w) return
                        html:inline($config, ., ("tei-w", "tei-w1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
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
                                                        html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-person", "tei-person1", css:map-rend-to-class(.)), $content)                            => model:map($node, $trackIds)
                        else
                            if (parent::listPerson and $parameters?mode='register') then
                                (: Register sidebar :)
                                html:listItem($config, ., ("tei-person", "tei-person2", css:map-rend-to-class(.)), persName[@type=('main', 'full')], ())                                => model:map($node, $trackIds)
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
                                                                                html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-person", "tei-person3", css:map-rend-to-class(.)), $content)                                        => model:map($node, $trackIds),
                                        (: Variant names :)
                                        html:block($config, ., ("tei-person", "tei-person4", css:map-rend-to-class(.)), persName[@type='variant'])                                        => model:map($node, $trackIds),
                                        (: Images :)
                                        html:block($config, ., ("tei-person", "tei-person5", css:map-rend-to-class(.)), figure)                                        => model:map($node, $trackIds),
                                        (: Additional notes :)
                                        html:paragraph($config, ., ("tei-person", "tei-person6", css:map-rend-to-class(.)), note)                                        => model:map($node, $trackIds),
                                        (: Links to wikidata, wikipedia etc. :)
                                        html:list($config, ., ("tei-person", "tei-person7", css:map-rend-to-class(.)), ptr, ())                                        => model:map($node, $trackIds),
                                        if ($parameters?mode='register-details') then
                                            (: List of letters (in register details only); trying to match by key or ref attributes :)
                                            let $params := 
                                                map {
                                                    "content": let $id := @xml:id return collection($global:data-root)//persName[@key = $id or @ref = $id]/ancestor::TEI/teiHeader//titleStmt
                                                }

                                                                                        let $content := 
                                                model:template-person8($config, ., $params)
                                            return
                                                                                        html:block(map:merge(($config, map:entry("template", true()))), ., ("tei-person", "tei-person8", css:map-rend-to-class(.)), $content)                                            => model:map($node, $trackIds)
                                        else
                                            ()
                                    )

                                else
                                    $config?apply($config, ./node())
                    case element(titlePage) return
                        html:block($config, ., css:get-rendition(., ("tei-titlePage", "tei-titlePage1", css:map-rend-to-class(.))), .)                        => model:map($node, $trackIds)
                    case element(stage) return
                        html:block($config, ., ("tei-stage", "tei-stage1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(persName) return
                        if (@key and $parameters?mode='register-details') then
                            html:inline($config, ., ("tei-persName", "tei-persName3", css:map-rend-to-class(.)), let $key:= head((@key, @ref)) return id($key, collection($global:register-root)/id('pb-persons'))/persName[@type='main']/string())                            => model:map($node, $trackIds)
                        else
                            if ($parameters?display='browse' or $parameters?mode='breadcrumb' or $parameters?mode='toc') then
                                html:inline($config, ., ("tei-persName", "tei-persName4", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                            else
                                if ($parameters?mode='register') then
                                    (: Register sidebar :)
                                    let $params := 
                                        map {
                                            "content": .,
                                            "alternate": parent::person/note,
                                            "uri": $parameters?context-path || '/people/' || parent::person/@xml:id
                                        }

                                                                        let $content := 
                                        model:template-persName5($config, ., $params)
                                    return
                                                                        html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-persName", "tei-persName5", css:map-rend-to-class(.)), $content)                                    => model:map($node, $trackIds)
                                else
                                    if (@type='variant') then
                                        html:inline($config, ., ("tei-persName", "tei-persName6", "name", "variant", css:map-rend-to-class(.)), .)                                        => model:map($node, $trackIds)
                                    else
                                        if (parent::person) then
                                            html:inline($config, ., ("tei-persName", "tei-persName7", css:map-rend-to-class(.)), .)                                            => model:map($node, $trackIds)
                                        else
                                            if (ancestor::correspContext) then
                                                (: do not resolve correspContext descriptions :)
                                                html:inline($config, ., ("tei-persName", "tei-persName8", css:map-rend-to-class(.)), .)                                                => model:map($node, $trackIds)
                                            else
                                                if (@key or @ref) then
                                                    html:alternate($config, ., ("tei-persName", "tei-persName9", "persName", "context", css:map-rend-to-class(.)), ., ., let $key:= head((@key, @ref))                          let $resolved := id($key, collection($global:register-root)/id('pb-persons')) return if (count($resolved)) then $resolved else $key, map {})                                                    => model:map($node, $trackIds)
                                                else
                                                    html:inline($config, ., ("tei-persName", "tei-persName10", css:map-rend-to-class(.)), .)                                                    => model:map($node, $trackIds)
                    case element(lg) return
                        if (@type eq 'sideways') then
                            html:block($config, ., ("tei-lg", "tei-lg1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            if (@type eq 'vertical') then
                                html:block($config, ., ("tei-lg", "tei-lg2", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                            else
                                html:block($config, ., ("tei-lg", "tei-lg3", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                    case element(front) return
                        html:block($config, ., ("tei-front", "tei-front1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(publicationStmt) return
                        if ($parameters?display='browse') then
                            html:block($config, ., ("tei-publicationStmt", "tei-publicationStmt1", css:map-rend-to-class(.)), .//availability)                            => model:map($node, $trackIds)
                        else
                            html:block($config, ., ("tei-publicationStmt", "tei-publicationStmt2", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                    case element(placeName) return
                        if (@key and $parameters?mode='register-details') then
                            html:inline($config, ., ("tei-placeName", "tei-placeName3", css:map-rend-to-class(.)), let $key:= head((@key, @ref)) return id($key, collection($global:register-root)/id('pb-places'))/placeName[@type='main']/string())                            => model:map($node, $trackIds)
                        else
                            if ($parameters?display='browse' or $parameters?mode='breadcrumb' or $parameters?mode='toc') then
                                html:inline($config, ., ("tei-placeName", "tei-placeName4", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                            else
                                if ($parameters?mode='register') then
                                    (: Register sidebar :)
                                    let $params := 
                                        map {
                                            "default": .,
                                            "alternate": parent::place/note,
                                            "uri": $parameters?context-path || '/places/' || parent::place/@xml:id,
                                            "content": .
                                        }

                                                                        let $content := 
                                        model:template-placeName5($config, ., $params)
                                    return
                                                                        html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-placeName", "tei-placeName5", css:map-rend-to-class(.)), $content)                                    => model:map($node, $trackIds)
                                else
                                    if (@type='variant') then
                                        html:inline($config, ., ("tei-placeName", "tei-placeName6", "name", "variant", css:map-rend-to-class(.)), .)                                        => model:map($node, $trackIds)
                                    else
                                        if (parent::place) then
                                            html:inline($config, ., ("tei-placeName", "tei-placeName7", css:map-rend-to-class(.)), .)                                            => model:map($node, $trackIds)
                                        else
                                            if (ancestor::correspContext) then
                                                html:inline($config, ., ("tei-placeName", "tei-placeName8", css:map-rend-to-class(.)), .)                                                => model:map($node, $trackIds)
                                            else
                                                if (@key or @ref) then
                                                    html:alternate($config, ., ("tei-placeName", "tei-placeName9", "placeName", "context", css:map-rend-to-class(.)), ., ., let $key:= head((@key, @ref))                          let $resolved := id($key, collection($global:register-root)/id('pb-places')) return if (count($resolved)) then $resolved else $key, map {})                                                    => model:map($node, $trackIds)
                                                else
                                                    html:inline($config, ., ("tei-placeName", "tei-placeName10", css:map-rend-to-class(.)), .)                                                    => model:map($node, $trackIds)
                    case element(role) return
                        html:block($config, ., ("tei-role", "tei-role1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(damage) return
                        html:inline($config, ., ("tei-damage", "tei-damage1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(country) return
                        html:inline($config, ., ("tei-country", "tei-country1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(postscript) return
                        html:block($config, ., ("tei-postscript", "tei-postscript1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(edition) return
                        if (ancestor::teiHeader) then
                            html:block($config, ., ("tei-edition", "tei-edition1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            $config?apply($config, ./node())
                    case element(cell) return
                        (: Insert table cell. :)
                        html:cell($config, ., ("tei-cell", "tei-cell1", css:map-rend-to-class(.)), ., ())                        => model:map($node, $trackIds)
                    case element(div) return
                        if ($parameters?mode='title') then
                            html:pass-through($config, ., ("tei-div", "tei-div1", css:map-rend-to-class(.)), descendant::pb)                            => model:map($node, $trackIds)
                        else
                            if (lg[@type = ('vertical', 'sideways')]) then
                                html:block($config, ., ("tei-div", "tei-div2", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                            else
                                html:block($config, ., ("tei-div", "tei-div3", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                    case element(graphic) return
                        html:graphic($config, ., ("tei-graphic", "tei-graphic1", css:map-rend-to-class(.)), ., @url, @width, @height, @scale, desc)                        => model:map($node, $trackIds)
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
                                                        html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-ref", "tei-ref1", css:map-rend-to-class(.)), $content)                            => model:map($node, $trackIds)
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
                                                                html:pass-through(map:merge(($config, map:entry("template", true()))), ., ("tei-ref", "tei-ref2", css:map-rend-to-class(.)), $content)                                => model:map($node, $trackIds)
                            else
                                if (@target) then
                                    html:link($config, ., ("tei-ref", "tei-ref3", css:map-rend-to-class(.)), ., @target, (), map {})                                    => model:map($node, $trackIds)
                                else
                                    html:inline($config, ., ("tei-ref", "tei-ref4", css:map-rend-to-class(.)), .)                                    => model:map($node, $trackIds)
                    case element(add) return
                        html:inline($config, ., ("tei-add", "tei-add1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(head) return
                        if ($parameters?display='browse' or $parameters?mode='toc') then
                            (: For browse view and table of contents, just output inline text :)
                            html:inline($config, ., ("tei-head", "tei-head1", css:map-rend-to-class(.)), replace(string-join(.//text()[not(parent::ref)]), '^(.+?)[^\w]*$', '$1'))                            => model:map($node, $trackIds)
                        else
                            if (parent::figure) then
                                html:block($config, ., ("tei-head", "tei-head2", "figure-head", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                            else
                                if (parent::table) then
                                    html:block($config, ., ("tei-head", "tei-head3", "table-head", css:map-rend-to-class(.)), .)                                    => model:map($node, $trackIds)
                                else
                                    if (parent::lg) then
                                        html:block($config, ., ("tei-head", "tei-head4", "lg-head", css:map-rend-to-class(.)), .)                                        => model:map($node, $trackIds)
                                    else
                                        if (parent::list) then
                                            html:block($config, ., ("tei-head", "tei-head5", "list-head", css:map-rend-to-class(.)), .)                                            => model:map($node, $trackIds)
                                        else
                                            if (parent::div) then
                                                html:heading($config, ., ("tei-head", "tei-head6", css:map-rend-to-class(.)), ., count(ancestor::div))                                                => model:map($node, $trackIds)
                                            else
                                                html:block($config, ., ("tei-head", "tei-head7", css:map-rend-to-class(.)), .)                                                => model:map($node, $trackIds)
                    case element(ex) return
                        if (ancestor::expan) then
                            html:inline($config, ., ("tei-ex", "tei-ex1", css:map-rend-to-class(.)), ('(', ., ')'))                            => model:map($node, $trackIds)
                        else
                            $config?apply($config, ./node())
                    case element(time) return
                        html:inline($config, ., ("tei-time", "tei-time1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(castGroup) return
                        if (child::*) then
                            (: Treat as a list :)
                            html:list($config, ., ("tei-castGroup", "tei-castGroup1", css:map-rend-to-class(.)), castItem|castGroup, ())                            => model:map($node, $trackIds)
                        else
                            $config?apply($config, ./node())
                    case element(bibl) return
                        if (parent::listBibl) then
                            html:listItem($config, ., ("tei-bibl", "tei-bibl1", css:map-rend-to-class(.)), ., ())                            => model:map($node, $trackIds)
                        else
                            if (@type = ('start', 'end')) then
                                html:omit($config, ., ("tei-bibl", "tei-bibl2", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                            else
                                html:inline($config, ., ("tei-bibl", "tei-bibl3", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                    case element(unclear) return
                        html:inline($config, ., ("tei-unclear", "tei-unclear1", "unclear", "nowrap", css:map-rend-to-class(.)), for $x in ./node() return if (contains(path($x), 'text()')) then ext-html:replaces-spaces($x) else if (contains(path($x), 'comment()')) then () else $x)                        => model:map($node, $trackIds)
                    case element(salute) return
                        if (parent::closer) then
                            html:inline($config, ., ("tei-salute", "tei-salute1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            html:block($config, ., ("tei-salute", "tei-salute2", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                    case element(title) return
                        if (@type) then
                            html:omit($config, ., ("tei-title", "tei-title1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            if ($parameters?display='browse') then
                                html:heading($config, ., ("tei-title", "tei-title2", css:map-rend-to-class(.)), ., 5)                                => model:map($node, $trackIds)
                            else
                                if (parent::titleStmt/parent::fileDesc) then
                                    (
                                        if (preceding-sibling::title) then
                                            html:text($config, ., ("tei-title", "tei-title3", css:map-rend-to-class(.)), ' — ')                                            => model:map($node, $trackIds)
                                        else
                                            (),
                                        html:inline($config, ., ("tei-title", "tei-title4", css:map-rend-to-class(.)), .)                                        => model:map($node, $trackIds)
                                    )

                                else
                                    if (not(@level) and parent::bibl) then
                                        html:inline($config, ., ("tei-title", "tei-title5", css:map-rend-to-class(.)), .)                                        => model:map($node, $trackIds)
                                    else
                                        if (@level='m' or not(@level)) then
                                            (
                                                html:inline($config, ., ("tei-title", "tei-title6", css:map-rend-to-class(.)), .)                                                => model:map($node, $trackIds),
                                                if (ancestor::biblFull) then
                                                    html:text($config, ., ("tei-title", "tei-title7", css:map-rend-to-class(.)), ', ')                                                    => model:map($node, $trackIds)
                                                else
                                                    ()
                                            )

                                        else
                                            if (@level='s' or @level='j') then
                                                (
                                                    html:inline($config, ., ("tei-title", "tei-title8", css:map-rend-to-class(.)), .)                                                    => model:map($node, $trackIds),
                                                    if (following-sibling::* and     (  ancestor::biblFull)) then
                                                        html:text($config, ., ("tei-title", "tei-title9", css:map-rend-to-class(.)), ', ')                                                        => model:map($node, $trackIds)
                                                    else
                                                        ()
                                                )

                                            else
                                                if (@level='u' or @level='a') then
                                                    (
                                                        html:inline($config, ., ("tei-title", "tei-title10", css:map-rend-to-class(.)), .)                                                        => model:map($node, $trackIds),
                                                        if (following-sibling::* and     (    ancestor::biblFull)) then
                                                            html:text($config, ., ("tei-title", "tei-title11", css:map-rend-to-class(.)), '. ')                                                            => model:map($node, $trackIds)
                                                        else
                                                            ()
                                                    )

                                                else
                                                    html:inline($config, ., ("tei-title", "tei-title12", css:map-rend-to-class(.)), .)                                                    => model:map($node, $trackIds)
                    case element(date) return
                        if (($parameters?mode eq 'metadata-doc') and (ancestor::publicationStmt)) then
                            let $params := 
                                map {
                                    "content": .
                                }

                                                        let $content := 
                                model:template-date1($config, ., $params)
                            return
                                                        html:paragraph(map:merge(($config, map:entry("template", true()))), ., ("tei-date", "tei-date1", css:map-rend-to-class(.)), $content)                            => model:map($node, $trackIds)
                        else
                            if ($parameters?mode eq 'metadata-doc') then
                                html:paragraph($config, ., ("tei-date", "tei-date2", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                            else
                                if (@when) then
                                    html:alternate($config, ., ("tei-date", "tei-date3", css:map-rend-to-class(.)), ., ., @when, map {})                                    => model:map($node, $trackIds)
                                else
                                    html:inline($config, ., ("tei-date", "tei-date4", css:map-rend-to-class(.)), .)                                    => model:map($node, $trackIds)
                    case element(argument) return
                        html:block($config, ., ("tei-argument", "tei-argument1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(corr) return
                        if (parent::choice and count(parent::*/*) gt 1) then
                            (: simple inline, if in parent choice. :)
                            html:inline($config, ., ("tei-corr", "tei-corr1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            html:inline($config, ., ("tei-corr", "tei-corr2", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                    case element(cit) return
                        if (child::quote and child::bibl) then
                            (: Insert citation :)
                            html:cit($config, ., ("tei-cit", "tei-cit1", css:map-rend-to-class(.)), ., ())                            => model:map($node, $trackIds)
                        else
                            $config?apply($config, ./node())
                    case element(titleStmt) return
                        if ($parameters?mode eq 'breadcrumb') then
                            html:inline($config, ., ("tei-titleStmt", "tei-titleStmt1", css:map-rend-to-class(.)), head(title)/string())                            => model:map($node, $trackIds)
                        else
                            if ($parameters?display='browse') then
                                (
                                    html:link($config, ., ("tei-titleStmt", "tei-titleStmt4", css:map-rend-to-class(.)), title[1], $parameters?doc, (), map {})                                    => model:map($node, $trackIds),
                                    html:block($config, ., ("tei-titleStmt", "tei-titleStmt5", css:map-rend-to-class(.)), subsequence(title, 2))                                    => model:map($node, $trackIds),
                                    html:block($config, ., ("tei-titleStmt", "tei-titleStmt6", css:map-rend-to-class(.)), author)                                    => model:map($node, $trackIds)
                                )

                            else
                                html:block($config, ., ("tei-titleStmt", "tei-titleStmt7", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                    case element(sic) return
                        if (parent::choice) then
                            html:inline($config, ., ("tei-sic", "tei-sic1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            html:inline($config, ., ("tei-sic", "tei-sic2", "sic", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                    case element(spGrp) return
                        html:block($config, ., ("tei-spGrp", "tei-spGrp1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(body) return
                        (
                            html:index($config, ., ("tei-body", "tei-body1", css:map-rend-to-class(.)), 'toc', .)                            => model:map($node, $trackIds),
                            html:block($config, ., ("tei-body", "tei-body2", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        )

                    case element(fw) return
                        if (ancestor::p or ancestor::ab) then
                            html:inline($config, ., ("tei-fw", "tei-fw1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            html:block($config, ., ("tei-fw", "tei-fw2", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                    case element(encodingDesc) return
                        if ($parameters?display='browse') then
                            html:omit($config, ., ("tei-encodingDesc", "tei-encodingDesc1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            $config?apply($config, ./node())
                    case element(quote) return
                        if (@type = ('start', 'end')) then
                            html:omit($config, ., css:get-rendition(., ("tei-quote", "tei-quote1", css:map-rend-to-class(.))), .)                            => model:map($node, $trackIds)
                        else
                            html:inline($config, ., ("tei-quote", "tei-quote2", "nowrap", css:map-rend-to-class(.)), for $x in ./node() return if (contains(path($x), 'text()')) then ext-html:replaces-spaces($x) else if (contains(path($x), 'comment()')) then () else $x)                            => model:map($node, $trackIds)
                    case element(gap) return
                        if (desc) then
                            html:inline($config, ., ("tei-gap", "tei-gap1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            if (@extent) then
                                html:inline($config, ., ("tei-gap", "tei-gap2", css:map-rend-to-class(.)), for $x in 1 to xs:integer(number(@extent)) return '⍰')                                => model:map($node, $trackIds)
                            else
                                html:inline($config, ., ("tei-gap", "tei-gap3", css:map-rend-to-class(.)), .)                                => model:map($node, $trackIds)
                    case element(correspAction) return
                        if (@type='sent') then
                            html:inline($config, ., ("tei-correspAction", "tei-correspAction1", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            $config?apply($config, ./node())
                    case element(row) return
                        if (@role='label') then
                            html:row($config, ., ("tei-row", "tei-row1", "row-label", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                        else
                            html:row($config, ., ("tei-row", "tei-row2", css:map-rend-to-class(.)), .)                            => model:map($node, $trackIds)
                    case element(byline) return
                        html:block($config, ., ("tei-byline", "tei-byline1", css:map-rend-to-class(.)), .)                        => model:map($node, $trackIds)
                    case element(editor) return
                        if ($parameters?mode eq 'metadata-doc') then
                            let $params := 
                                map {
                                    "content": persName
                                }

                                                        let $content := 
                                model:template-editor1($config, ., $params)
                            return
                                                        html:listItem(map:merge(($config, map:entry("template", true()))), ., ("tei-editor", "tei-editor1", css:map-rend-to-class(.)), $content, ())                            => model:map($node, $trackIds)
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
                                                        html:listItem(map:merge(($config, map:entry("template", true()))), ., ("tei-msDesc", "tei-msDesc1", css:map-rend-to-class(.)), $content, ())                            => model:map($node, $trackIds)
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
                                                        html:paragraph(map:merge(($config, map:entry("template", true()))), ., ("tei-repository", "tei-repository1", css:map-rend-to-class(.)), $content)                            => model:map($node, $trackIds)
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
                                                        html:paragraph(map:merge(($config, map:entry("template", true()))), ., ("tei-idno", "tei-idno1", css:map-rend-to-class(.)), $content)                            => model:map($node, $trackIds)
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
                                                        html:paragraph(map:merge(($config, map:entry("template", true()))), ., ("tei-respStmt", "tei-respStmt1", css:map-rend-to-class(.)), $content)                            => model:map($node, $trackIds)
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
                                                        html:listItem(map:merge(($config, map:entry("template", true()))), ., ("tei-origDate", "tei-origDate1", css:map-rend-to-class(.)), $content, ())                            => model:map($node, $trackIds)
                        else
                            $config?apply($config, ./node())
                    case element(exist:match) return
                        html:match($config, ., .)
                    case element() return
                        if (namespace-uri(.) = 'http://www.tei-c.org/ns/1.0') then
                            $config?apply($config, ./node())
                        else
                            .
                    case text() | xs:anyAtomicType return
                        html:escapeChars(.)
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
                    html:escapeChars(.)
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


import module namespace m='http://www.tei-c.org/pm/models/about/web' at 'about-web.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "styles": ["transform/about.css"],
    "collection": "/db/apps/moore/transform",
    "parameters": if (exists($parameters)) then $parameters else map {}
}
return m:transform($options, $xml)
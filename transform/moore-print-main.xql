import module namespace m='http://www.tei-c.org/pm/models/moore/print' at 'moore-print.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "styles": ["transform/moore.css"],
    "collection": "/db/apps/moore/transform",
    "parameters": if (exists($parameters)) then $parameters else map {}
}
return m:transform($options, $xml)
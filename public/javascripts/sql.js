CodeHighlighter.addStyle("sql",{
        comment : {
                exp  : /(--[^\n]+)|(\/\*[^*]*\*+([^\/][^*]*\*+)*\/)/
        },
        brackets : {
                exp  : /\(|\)/
        },
        string : {
                exp  : /'[^']*'|"[^"]*"/
        },
        symbol : {
                exp  : /\b(SELECT|INSERT|UPDATE|DELETE|MERGE|WHERE|AND|OR|FROM|CREATE|TABLE|NUMBER|VARCHAR2|RAW|DATE|TABLESPACE|INDEX|VIEW|AS|GROUP|ORDER|BY|MAX|MIN|AVG|COUNT|ABS|UNION|COLUMN|FORMAT|SET|RULES)\b/
        }
});

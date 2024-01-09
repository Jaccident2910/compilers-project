type token =
  | IDENT of (Dict.ident)
  | MULOP of (Optree.op)
  | ADDOP of (Optree.op)
  | RELOP of (Optree.op)
  | NUMBER of (int)
  | CHAR of (char)
  | STRING of (Optree.symbol * int)
  | SEMI
  | DOT
  | COLON
  | LPAR
  | RPAR
  | COMMA
  | SUB
  | BUS
  | EQUAL
  | MINUS
  | ASSIGN
  | VBAR
  | ARROW
  | BADTOK
  | IMPOSSIBLE
  | ARRAY
  | BEGIN
  | CONST
  | DO
  | ELSE
  | END
  | IF
  | OF
  | PROC
  | RECORD
  | RETURN
  | THEN
  | TO
  | TYPE
  | LEN
  | VAR
  | WHILE
  | NOT
  | POINTER
  | NIL
  | REPEAT
  | UNTIL
  | FOR
  | ELSIF
  | CASE

open Parsing;;
let _ = parse_error;;
# 5 "parser.mly"
open Optree
open Dict
open Tree
# 31 "parser.mly"
let const n t = make_expr (Constant (n, t))
# 59 "parser.ml"
let yytransl_const = [|
  264 (* SEMI *);
  265 (* DOT *);
  266 (* COLON *);
  267 (* LPAR *);
  268 (* RPAR *);
  269 (* COMMA *);
  270 (* SUB *);
  271 (* BUS *);
  272 (* EQUAL *);
  273 (* MINUS *);
  274 (* ASSIGN *);
  275 (* VBAR *);
  276 (* ARROW *);
  277 (* BADTOK *);
  278 (* IMPOSSIBLE *);
  279 (* ARRAY *);
  280 (* BEGIN *);
  281 (* CONST *);
  282 (* DO *);
  283 (* ELSE *);
  284 (* END *);
  285 (* IF *);
  286 (* OF *);
  287 (* PROC *);
  288 (* RECORD *);
  289 (* RETURN *);
  290 (* THEN *);
  291 (* TO *);
  292 (* TYPE *);
  293 (* LEN *);
  294 (* VAR *);
  295 (* WHILE *);
  296 (* NOT *);
  297 (* POINTER *);
  298 (* NIL *);
  299 (* REPEAT *);
  300 (* UNTIL *);
  301 (* FOR *);
  302 (* ELSIF *);
  303 (* CASE *);
    0|]

let yytransl_block = [|
  257 (* IDENT *);
  258 (* MULOP *);
  259 (* ADDOP *);
  260 (* RELOP *);
  261 (* NUMBER *);
  262 (* CHAR *);
  263 (* STRING *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\003\000\003\000\005\000\005\000\005\000\005\000\
\006\000\006\000\010\000\009\000\009\000\012\000\007\000\007\000\
\014\000\008\000\016\000\018\000\018\000\020\000\020\000\021\000\
\021\000\021\000\019\000\019\000\004\000\022\000\022\000\023\000\
\023\000\024\000\025\000\025\000\025\000\025\000\025\000\025\000\
\025\000\025\000\025\000\029\000\029\000\029\000\030\000\030\000\
\032\000\031\000\031\000\015\000\015\000\028\000\028\000\011\000\
\011\000\011\000\033\000\033\000\033\000\034\000\034\000\035\000\
\035\000\035\000\035\000\035\000\035\000\035\000\035\000\035\000\
\035\000\027\000\027\000\036\000\036\000\026\000\026\000\026\000\
\026\000\013\000\013\000\013\000\013\000\037\000\037\000\038\000\
\039\000\039\000\017\000\000\000"

let yylen = "\002\000\
\002\000\004\000\000\000\002\000\002\000\002\000\001\000\002\000\
\001\000\002\000\004\000\001\000\002\000\004\000\001\000\002\000\
\004\000\004\000\004\000\002\000\003\000\001\000\003\000\003\000\
\004\000\001\000\000\000\002\000\001\000\001\000\003\000\002\000\
\001\000\000\000\000\000\003\000\002\000\002\000\006\000\005\000\
\004\000\009\000\006\000\000\000\002\000\006\000\001\000\003\000\
\003\000\000\000\002\000\001\000\003\000\000\000\001\000\001\000\
\003\000\003\000\001\000\003\000\003\000\001\000\003\000\001\000\
\001\000\001\000\001\000\001\000\002\000\002\000\002\000\003\000\
\002\000\002\000\003\000\001\000\003\000\001\000\004\000\003\000\
\002\000\001\000\004\000\003\000\003\000\002\000\003\000\003\000\
\001\000\000\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\092\000\000\000\
\000\000\000\000\007\000\000\000\000\000\005\000\000\000\091\000\
\000\000\000\000\008\000\000\000\000\000\006\000\000\000\000\000\
\001\000\000\000\004\000\000\000\000\000\010\000\000\000\000\000\
\000\000\013\000\000\000\016\000\000\000\033\000\000\000\029\000\
\000\000\000\000\000\000\065\000\067\000\066\000\000\000\000\000\
\000\000\000\000\068\000\000\000\000\000\000\000\000\000\000\000\
\062\000\020\000\000\000\000\000\026\000\000\000\000\000\000\000\
\019\000\000\000\000\000\000\000\000\000\082\000\053\000\000\000\
\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\032\000\000\000\018\000\000\000\071\000\000\000\070\000\
\000\000\011\000\000\000\000\000\069\000\000\000\000\000\081\000\
\000\000\000\000\000\000\000\000\000\000\021\000\000\000\028\000\
\000\000\000\000\000\000\000\000\000\000\014\000\017\000\031\000\
\000\000\000\000\038\000\000\000\000\000\000\000\000\000\037\000\
\000\000\072\000\000\000\000\000\074\000\000\000\000\000\080\000\
\000\000\000\000\000\000\063\000\000\000\024\000\023\000\000\000\
\000\000\084\000\000\000\086\000\085\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\075\000\079\000\025\000\083\000\
\088\000\087\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\077\000\000\000\034\000\000\000\040\000\000\000\000\000\
\000\000\000\000\000\000\045\000\000\000\039\000\000\000\049\000\
\051\000\043\000\048\000\000\000\000\000\000\000\000\000\000\000\
\042\000\046\000"

let yydgoto = "\002\000\
\007\000\008\000\009\000\039\000\010\000\014\000\022\000\011\000\
\019\000\015\000\126\000\020\000\069\000\023\000\024\000\012\000\
\053\000\032\000\065\000\062\000\063\000\040\000\041\000\042\000\
\082\000\054\000\093\000\115\000\165\000\160\000\170\000\161\000\
\055\000\056\000\057\000\127\000\107\000\108\000\140\000"

let yysindex = "\030\000\
\042\255\000\000\016\255\058\255\063\255\069\255\000\000\079\255\
\081\255\042\255\000\000\103\255\102\255\000\000\016\255\000\000\
\110\255\115\255\000\000\063\255\130\255\000\000\069\255\139\255\
\000\000\136\255\000\000\042\255\149\255\000\000\011\255\161\255\
\012\255\000\000\069\255\000\000\012\255\000\000\146\255\000\000\
\180\255\191\255\185\255\000\000\000\000\000\000\149\255\149\255\
\149\255\149\255\000\000\106\255\165\255\007\255\008\255\202\255\
\000\000\000\000\069\255\199\255\000\000\203\255\197\255\012\255\
\000\000\149\255\069\255\187\255\215\255\000\000\000\000\217\255\
\000\000\136\255\149\255\149\255\149\255\136\255\058\255\149\255\
\165\255\000\000\027\000\000\000\108\255\000\000\123\255\000\000\
\149\255\000\000\149\255\189\255\000\000\058\255\149\255\000\000\
\149\255\149\255\149\255\218\255\012\255\000\000\014\255\000\000\
\020\255\222\255\205\255\219\255\012\255\000\000\000\000\000\000\
\254\254\123\255\000\000\056\255\198\255\241\255\067\255\000\000\
\149\255\000\000\008\255\008\255\000\000\119\255\225\255\000\000\
\195\255\202\255\202\255\000\000\012\255\000\000\000\000\012\255\
\012\255\000\000\069\255\000\000\000\000\136\255\136\255\149\255\
\149\255\149\255\123\255\149\255\000\000\000\000\000\000\000\000\
\000\000\000\000\028\255\220\255\123\255\003\255\168\255\234\255\
\236\255\000\000\136\255\000\000\238\255\000\000\149\255\136\255\
\136\255\240\255\149\255\000\000\149\255\000\000\083\255\000\000\
\000\000\000\000\000\000\006\255\136\255\136\255\242\255\028\255\
\000\000\000\000"

let yyrindex = "\000\000\
\249\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\249\255\000\000\000\000\000\000\000\000\007\001\000\000\
\000\000\000\000\000\000\016\001\013\000\000\000\024\001\000\000\
\000\000\169\255\000\000\249\255\000\000\000\000\000\000\128\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\216\255\035\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\237\255\016\000\051\000\186\000\
\000\000\000\000\000\000\000\000\000\000\000\000\018\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\118\255\000\000\250\255\000\000\174\255\000\000\000\000\
\062\000\000\000\000\000\000\000\000\000\000\000\081\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\006\000\000\000\000\000\000\000\000\000\
\000\000\029\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\116\000\151\000\000\000\037\000\000\000\000\000\
\000\000\221\000\000\001\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\011\000\000\000\000\000\057\255\169\255\000\000\
\000\000\000\000\094\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\024\000\000\000\129\000\000\000\000\000\026\000\
\125\255\000\000\169\255\000\000\000\000\000\000\000\000\140\255\
\169\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\169\255\057\255\000\000\024\000\
\000\000\000\000"

let yygindex = "\000\000\
\000\000\030\001\055\001\182\255\000\000\053\001\046\001\000\000\
\052\001\000\000\227\255\000\000\248\255\000\000\230\255\228\255\
\253\255\000\000\000\000\227\000\000\000\013\001\000\000\180\000\
\000\000\048\001\011\001\000\000\171\000\188\000\000\000\000\000\
\193\255\083\000\214\255\209\000\222\000\000\000\000\000"

let yytablesize = 574
let yytable = "\052\000\
\017\000\089\000\061\000\117\000\060\000\086\000\089\000\088\000\
\071\000\089\000\097\000\021\000\016\000\091\000\021\000\094\000\
\013\000\085\000\091\000\087\000\095\000\091\000\058\000\089\000\
\098\000\123\000\096\000\124\000\072\000\070\000\001\000\142\000\
\100\000\070\000\066\000\091\000\105\000\167\000\081\000\182\000\
\106\000\004\000\035\000\067\000\004\000\113\000\114\000\116\000\
\059\000\136\000\119\000\059\000\068\000\035\000\163\000\104\000\
\132\000\034\000\016\000\089\000\070\000\035\000\035\000\018\000\
\034\000\129\000\003\000\155\000\156\000\021\000\089\000\091\000\
\004\000\164\000\061\000\118\000\060\000\005\000\035\000\006\000\
\035\000\143\000\091\000\034\000\034\000\034\000\089\000\025\000\
\172\000\034\000\128\000\147\000\134\000\176\000\177\000\034\000\
\146\000\070\000\091\000\034\000\141\000\034\000\034\000\034\000\
\026\000\070\000\183\000\184\000\181\000\089\000\028\000\089\000\
\106\000\090\000\157\000\158\000\159\000\029\000\034\000\122\000\
\031\000\091\000\089\000\091\000\151\000\034\000\089\000\152\000\
\153\000\070\000\033\000\148\000\070\000\070\000\091\000\027\000\
\034\000\175\000\091\000\027\000\034\000\159\000\035\000\180\000\
\034\000\034\000\034\000\034\000\037\000\016\000\034\000\047\000\
\047\000\044\000\045\000\046\000\034\000\038\000\034\000\047\000\
\034\000\034\000\034\000\034\000\034\000\048\000\034\000\034\000\
\034\000\034\000\064\000\089\000\034\000\073\000\034\000\092\000\
\034\000\168\000\034\000\130\000\131\000\034\000\034\000\091\000\
\034\000\049\000\034\000\074\000\050\000\016\000\051\000\016\000\
\084\000\044\000\045\000\046\000\034\000\034\000\089\000\047\000\
\125\000\034\000\034\000\099\000\103\000\048\000\034\000\034\000\
\101\000\150\000\091\000\034\000\034\000\034\000\102\000\034\000\
\034\000\034\000\034\000\075\000\034\000\109\000\110\000\076\000\
\111\000\049\000\139\000\133\000\050\000\077\000\051\000\137\000\
\138\000\078\000\030\000\079\000\149\000\080\000\078\000\078\000\
\078\000\144\000\030\000\030\000\078\000\078\000\078\000\166\000\
\078\000\078\000\078\000\078\000\078\000\078\000\171\000\078\000\
\078\000\054\000\145\000\030\000\169\000\030\000\078\000\078\000\
\078\000\174\000\078\000\178\000\054\000\185\000\078\000\078\000\
\003\000\064\000\064\000\064\000\054\000\054\000\052\000\064\000\
\078\000\064\000\078\000\064\000\064\000\022\000\064\000\064\000\
\064\000\090\000\064\000\094\000\055\000\054\000\089\000\054\000\
\095\000\064\000\064\000\064\000\121\000\064\000\096\000\055\000\
\076\000\064\000\064\000\044\000\056\000\050\000\056\000\055\000\
\055\000\043\000\056\000\064\000\056\000\064\000\056\000\056\000\
\027\000\056\000\056\000\030\000\036\000\056\000\078\000\034\000\
\055\000\135\000\055\000\078\000\056\000\056\000\056\000\078\000\
\056\000\078\000\073\000\073\000\056\000\056\000\112\000\173\000\
\073\000\083\000\073\000\120\000\073\000\073\000\056\000\073\000\
\056\000\073\000\186\000\073\000\162\000\036\000\179\000\000\000\
\154\000\000\000\073\000\073\000\073\000\000\000\073\000\000\000\
\036\000\000\000\073\000\073\000\000\000\057\000\000\000\057\000\
\036\000\036\000\000\000\057\000\073\000\057\000\073\000\057\000\
\057\000\000\000\057\000\057\000\000\000\000\000\057\000\000\000\
\041\000\036\000\000\000\036\000\000\000\057\000\057\000\057\000\
\000\000\057\000\000\000\041\000\000\000\057\000\057\000\000\000\
\058\000\000\000\058\000\041\000\041\000\000\000\058\000\057\000\
\058\000\057\000\058\000\058\000\000\000\058\000\058\000\000\000\
\000\000\058\000\000\000\000\000\041\000\000\000\041\000\000\000\
\058\000\058\000\058\000\000\000\058\000\000\000\000\000\000\000\
\058\000\058\000\000\000\000\000\059\000\059\000\000\000\000\000\
\000\000\059\000\058\000\059\000\058\000\059\000\059\000\000\000\
\059\000\059\000\059\000\000\000\059\000\000\000\000\000\000\000\
\000\000\000\000\000\000\059\000\059\000\059\000\000\000\059\000\
\000\000\000\000\000\000\059\000\059\000\000\000\000\000\060\000\
\060\000\000\000\000\000\000\000\060\000\059\000\060\000\059\000\
\060\000\060\000\000\000\060\000\060\000\060\000\000\000\060\000\
\000\000\000\000\000\000\000\000\000\000\000\000\060\000\060\000\
\060\000\000\000\060\000\000\000\000\000\000\000\060\000\060\000\
\000\000\000\000\061\000\061\000\000\000\000\000\000\000\061\000\
\060\000\061\000\060\000\061\000\061\000\000\000\061\000\061\000\
\061\000\000\000\061\000\000\000\000\000\000\000\000\000\000\000\
\000\000\061\000\061\000\061\000\000\000\061\000\009\000\009\000\
\000\000\061\000\061\000\000\000\000\000\009\000\000\000\012\000\
\012\000\000\000\009\000\061\000\009\000\061\000\012\000\015\000\
\015\000\000\000\000\000\012\000\000\000\012\000\015\000\000\000\
\000\000\000\000\000\000\015\000\000\000\015\000"

let yycheck = "\029\000\
\004\000\004\001\031\000\078\000\031\000\048\000\004\001\050\000\
\035\000\004\001\003\001\001\001\001\001\016\001\001\001\009\001\
\001\001\047\000\016\001\049\000\014\001\016\001\012\001\004\001\
\017\001\089\000\020\001\091\000\037\000\033\000\001\000\034\001\
\059\000\037\000\023\001\016\001\066\000\035\001\042\000\034\001\
\067\000\031\001\008\001\032\001\031\001\075\000\076\000\077\000\
\038\001\030\001\080\000\038\001\041\001\019\001\027\001\064\000\
\099\000\001\001\001\001\004\001\064\000\027\001\028\001\001\001\
\008\001\095\000\025\001\142\000\143\000\001\001\004\001\016\001\
\031\001\046\001\103\000\079\000\103\000\036\001\044\001\038\001\
\046\001\026\001\016\001\027\001\028\001\029\001\004\001\009\001\
\163\000\033\001\094\000\121\000\101\000\168\000\169\000\039\001\
\030\001\101\000\016\001\043\001\109\000\045\001\046\001\047\001\
\024\001\109\000\181\000\182\000\026\001\004\001\008\001\004\001\
\139\000\008\001\144\000\145\000\146\000\016\001\001\001\012\001\
\011\001\016\001\004\001\016\001\133\000\008\001\004\001\136\000\
\137\000\133\000\016\001\013\001\136\000\137\000\016\001\008\001\
\019\001\167\000\016\001\012\001\001\001\171\000\013\001\173\000\
\027\001\028\001\029\001\008\001\010\001\001\001\033\001\027\001\
\028\001\005\001\006\001\007\001\039\001\022\001\019\001\011\001\
\043\001\044\001\045\001\046\001\047\001\017\001\027\001\028\001\
\029\001\001\001\010\001\004\001\033\001\028\001\001\001\011\001\
\008\001\010\001\039\001\097\000\098\000\008\001\043\001\016\001\
\045\001\037\001\047\001\008\001\040\001\001\001\042\001\001\001\
\008\001\005\001\006\001\007\001\028\001\029\001\004\001\011\001\
\012\001\033\001\029\001\002\001\008\001\017\001\033\001\039\001\
\010\001\015\001\016\001\043\001\039\001\045\001\012\001\047\001\
\043\001\044\001\045\001\029\001\047\001\035\001\008\001\033\001\
\008\001\037\001\008\001\010\001\040\001\039\001\042\001\010\001\
\028\001\043\001\019\001\045\001\012\001\047\001\002\001\003\001\
\004\001\044\001\027\001\028\001\008\001\009\001\010\001\028\001\
\012\001\013\001\014\001\015\001\016\001\017\001\019\001\019\001\
\020\001\008\001\018\001\044\001\027\001\046\001\026\001\027\001\
\028\001\028\001\030\001\028\001\019\001\028\001\034\001\035\001\
\024\001\002\001\003\001\004\001\027\001\028\001\010\001\008\001\
\044\001\010\001\046\001\012\001\013\001\012\001\015\001\016\001\
\017\001\028\001\019\001\009\001\008\001\044\001\028\001\046\001\
\014\001\026\001\027\001\028\001\018\001\030\001\020\001\019\001\
\012\001\034\001\035\001\028\001\002\001\028\001\004\001\027\001\
\028\001\028\000\008\001\044\001\010\001\046\001\012\001\013\001\
\010\000\015\001\016\001\015\000\023\000\019\001\009\001\020\000\
\044\001\103\000\046\001\014\001\026\001\027\001\028\001\018\001\
\030\001\020\001\002\001\003\001\034\001\035\001\074\000\164\000\
\008\001\042\000\010\001\081\000\012\001\013\001\044\001\015\001\
\046\001\017\001\184\000\019\001\148\000\008\001\171\000\255\255\
\139\000\255\255\026\001\027\001\028\001\255\255\030\001\255\255\
\019\001\255\255\034\001\035\001\255\255\002\001\255\255\004\001\
\027\001\028\001\255\255\008\001\044\001\010\001\046\001\012\001\
\013\001\255\255\015\001\016\001\255\255\255\255\019\001\255\255\
\008\001\044\001\255\255\046\001\255\255\026\001\027\001\028\001\
\255\255\030\001\255\255\019\001\255\255\034\001\035\001\255\255\
\002\001\255\255\004\001\027\001\028\001\255\255\008\001\044\001\
\010\001\046\001\012\001\013\001\255\255\015\001\016\001\255\255\
\255\255\019\001\255\255\255\255\044\001\255\255\046\001\255\255\
\026\001\027\001\028\001\255\255\030\001\255\255\255\255\255\255\
\034\001\035\001\255\255\255\255\003\001\004\001\255\255\255\255\
\255\255\008\001\044\001\010\001\046\001\012\001\013\001\255\255\
\015\001\016\001\017\001\255\255\019\001\255\255\255\255\255\255\
\255\255\255\255\255\255\026\001\027\001\028\001\255\255\030\001\
\255\255\255\255\255\255\034\001\035\001\255\255\255\255\003\001\
\004\001\255\255\255\255\255\255\008\001\044\001\010\001\046\001\
\012\001\013\001\255\255\015\001\016\001\017\001\255\255\019\001\
\255\255\255\255\255\255\255\255\255\255\255\255\026\001\027\001\
\028\001\255\255\030\001\255\255\255\255\255\255\034\001\035\001\
\255\255\255\255\003\001\004\001\255\255\255\255\255\255\008\001\
\044\001\010\001\046\001\012\001\013\001\255\255\015\001\016\001\
\017\001\255\255\019\001\255\255\255\255\255\255\255\255\255\255\
\255\255\026\001\027\001\028\001\255\255\030\001\024\001\025\001\
\255\255\034\001\035\001\255\255\255\255\031\001\255\255\024\001\
\025\001\255\255\036\001\044\001\038\001\046\001\031\001\024\001\
\025\001\255\255\255\255\036\001\255\255\038\001\031\001\255\255\
\255\255\255\255\255\255\036\001\255\255\038\001"

let yynames_const = "\
  SEMI\000\
  DOT\000\
  COLON\000\
  LPAR\000\
  RPAR\000\
  COMMA\000\
  SUB\000\
  BUS\000\
  EQUAL\000\
  MINUS\000\
  ASSIGN\000\
  VBAR\000\
  ARROW\000\
  BADTOK\000\
  IMPOSSIBLE\000\
  ARRAY\000\
  BEGIN\000\
  CONST\000\
  DO\000\
  ELSE\000\
  END\000\
  IF\000\
  OF\000\
  PROC\000\
  RECORD\000\
  RETURN\000\
  THEN\000\
  TO\000\
  TYPE\000\
  LEN\000\
  VAR\000\
  WHILE\000\
  NOT\000\
  POINTER\000\
  NIL\000\
  REPEAT\000\
  UNTIL\000\
  FOR\000\
  ELSIF\000\
  CASE\000\
  "

let yynames_block = "\
  IDENT\000\
  MULOP\000\
  ADDOP\000\
  RELOP\000\
  NUMBER\000\
  CHAR\000\
  STRING\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'block) in
    Obj.repr(
# 37 "parser.mly"
                                        ( Prog (_1, ref []) )
# 442 "parser.ml"
               : Tree.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'decl_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 40 "parser.mly"
                                        ( make_block (_1, _3) )
# 450 "parser.ml"
               : 'block))
; (fun __caml_parser_env ->
    Obj.repr(
# 43 "parser.mly"
                                        ( [] )
# 456 "parser.ml"
               : 'decl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'decl_list) in
    Obj.repr(
# 44 "parser.mly"
                                        ( _1 @ _2 )
# 464 "parser.ml"
               : 'decl_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'const_decls) in
    Obj.repr(
# 47 "parser.mly"
                                        ( _2 )
# 471 "parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'var_decls) in
    Obj.repr(
# 48 "parser.mly"
                                        ( _2 )
# 478 "parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'proc_decl) in
    Obj.repr(
# 49 "parser.mly"
                                        ( [_1] )
# 485 "parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'type_decls) in
    Obj.repr(
# 50 "parser.mly"
                                        ( [TypeDecl _2] )
# 492 "parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'const_decl) in
    Obj.repr(
# 53 "parser.mly"
                                        ( [_1] )
# 499 "parser.ml"
               : 'const_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'const_decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'const_decls) in
    Obj.repr(
# 54 "parser.mly"
                                        ( _1 :: _2 )
# 507 "parser.ml"
               : 'const_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : Dict.ident) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 57 "parser.mly"
                                        ( ConstDecl (_1, _3) )
# 515 "parser.ml"
               : 'const_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'type_decl) in
    Obj.repr(
# 60 "parser.mly"
                                        ( [_1] )
# 522 "parser.ml"
               : 'type_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'type_decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'type_decls) in
    Obj.repr(
# 61 "parser.mly"
                                        ( _1 :: _2 )
# 530 "parser.ml"
               : 'type_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : Dict.ident) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typexpr) in
    Obj.repr(
# 64 "parser.mly"
                                        ( (_1, _3) )
# 538 "parser.ml"
               : 'type_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'var_decl) in
    Obj.repr(
# 67 "parser.mly"
                                        ( [_1] )
# 545 "parser.ml"
               : 'var_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'var_decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'var_decls) in
    Obj.repr(
# 68 "parser.mly"
                                        ( _1 :: _2 )
# 553 "parser.ml"
               : 'var_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'ident_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typexpr) in
    Obj.repr(
# 71 "parser.mly"
                                        ( VarDecl (VarDef, _1, _3) )
# 561 "parser.ml"
               : 'var_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'proc_heading) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'block) in
    Obj.repr(
# 74 "parser.mly"
                                        ( ProcDecl (_1, _3) )
# 569 "parser.ml"
               : 'proc_decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'name) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'params) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'return_type) in
    Obj.repr(
# 77 "parser.mly"
                                        ( Heading (_2, _3, _4) )
# 578 "parser.ml"
               : 'proc_heading))
; (fun __caml_parser_env ->
    Obj.repr(
# 80 "parser.mly"
                                        ( [] )
# 584 "parser.ml"
               : 'params))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'formal_decls) in
    Obj.repr(
# 81 "parser.mly"
                                        ( _2 )
# 591 "parser.ml"
               : 'params))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_decl) in
    Obj.repr(
# 84 "parser.mly"
                                        ( [_1] )
# 598 "parser.ml"
               : 'formal_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'formal_decl) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'formal_decls) in
    Obj.repr(
# 85 "parser.mly"
                                        ( _1 :: _3 )
# 606 "parser.ml"
               : 'formal_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ident_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 88 "parser.mly"
                                        ( VarDecl (CParamDef, _1, _3) )
# 614 "parser.ml"
               : 'formal_decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'ident_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 89 "parser.mly"
                                        ( VarDecl (VParamDef, _2, _4) )
# 622 "parser.ml"
               : 'formal_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'proc_heading) in
    Obj.repr(
# 90 "parser.mly"
                                        ( PParamDecl _1 )
# 629 "parser.ml"
               : 'formal_decl))
; (fun __caml_parser_env ->
    Obj.repr(
# 93 "parser.mly"
                                        ( None )
# 635 "parser.ml"
               : 'return_type))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 94 "parser.mly"
                                        ( Some _2 )
# 642 "parser.ml"
               : 'return_type))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'stmt_list) in
    Obj.repr(
# 97 "parser.mly"
                                        ( seq _1 )
# 649 "parser.ml"
               : 'stmts))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 100 "parser.mly"
                                        ( [_1] )
# 656 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'stmt_list) in
    Obj.repr(
# 101 "parser.mly"
                                        ( _1 :: _3 )
# 664 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'line) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt1) in
    Obj.repr(
# 104 "parser.mly"
                                        ( make_stmt (_2, _1) )
# 672 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 106 "parser.mly"
                                        ( failwith "impossible" )
# 678 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 109 "parser.mly"
                                        ( !Lexer.lineno )
# 684 "parser.ml"
               : 'line))
; (fun __caml_parser_env ->
    Obj.repr(
# 112 "parser.mly"
                                        ( Skip )
# 690 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'variable) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 113 "parser.mly"
                                        ( Assign (_1, _3) )
# 698 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'name) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'actuals) in
    Obj.repr(
# 114 "parser.mly"
                                        ( ProcCall (_1, _2) )
# 706 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr_opt) in
    Obj.repr(
# 115 "parser.mly"
                                        ( Return _2 )
# 713 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'stmts) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'elses) in
    Obj.repr(
# 116 "parser.mly"
                                        ( IfStmt (_2, _4, _5) )
# 722 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 117 "parser.mly"
                                        ( WhileStmt (_2, _4) )
# 730 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'stmts) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 118 "parser.mly"
                                        ( RepeatStmt (_2, _4) )
# 738 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 7 : 'name) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 120 "parser.mly"
                                        ( let v = make_expr (Variable _2) in
                                          ForStmt (v, _4, _6, _8, ref None) )
# 749 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'arms) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'else_part) in
    Obj.repr(
# 122 "parser.mly"
                                        ( CaseStmt (_2, _4, _5) )
# 758 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    Obj.repr(
# 125 "parser.mly"
                                        ( make_stmt (Skip, 0) )
# 764 "parser.ml"
               : 'elses))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmts) in
    Obj.repr(
# 126 "parser.mly"
                                        ( _2 )
# 771 "parser.ml"
               : 'elses))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'line) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'elses) in
    Obj.repr(
# 127 "parser.mly"
                                        ( make_stmt (IfStmt (_3,_5,_6), _2) )
# 781 "parser.ml"
               : 'elses))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'arm) in
    Obj.repr(
# 130 "parser.mly"
                                        ( [_1] )
# 788 "parser.ml"
               : 'arms))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'arm) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'arms) in
    Obj.repr(
# 131 "parser.mly"
                                        ( _1 :: _3 )
# 796 "parser.ml"
               : 'arms))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'stmts) in
    Obj.repr(
# 134 "parser.mly"
                                        ( (_1, _3) )
# 804 "parser.ml"
               : 'arm))
; (fun __caml_parser_env ->
    Obj.repr(
# 137 "parser.mly"
                                        ( make_stmt (Skip, 0) )
# 810 "parser.ml"
               : 'else_part))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmts) in
    Obj.repr(
# 138 "parser.mly"
                                        ( _2 )
# 817 "parser.ml"
               : 'else_part))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Dict.ident) in
    Obj.repr(
# 141 "parser.mly"
                                        ( [_1] )
# 824 "parser.ml"
               : 'ident_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Dict.ident) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'ident_list) in
    Obj.repr(
# 142 "parser.mly"
                                        ( _1 :: _3 )
# 832 "parser.ml"
               : 'ident_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 145 "parser.mly"
                                        ( None )
# 838 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 146 "parser.mly"
                                        ( Some _1 )
# 845 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple) in
    Obj.repr(
# 149 "parser.mly"
                                        ( _1 )
# 852 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Optree.op) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'simple) in
    Obj.repr(
# 150 "parser.mly"
                                        ( make_expr (Binop (_2, _1, _3)) )
# 861 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'simple) in
    Obj.repr(
# 151 "parser.mly"
                                        ( make_expr (Binop (Eq, _1, _3)) )
# 869 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 154 "parser.mly"
                                        ( _1 )
# 876 "parser.ml"
               : 'simple))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'simple) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Optree.op) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 155 "parser.mly"
                                        ( make_expr (Binop (_2, _1, _3)) )
# 885 "parser.ml"
               : 'simple))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'simple) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 156 "parser.mly"
                                        ( make_expr (Binop (Minus, _1, _3)) )
# 893 "parser.ml"
               : 'simple))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'factor) in
    Obj.repr(
# 159 "parser.mly"
                                        ( _1 )
# 900 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Optree.op) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'factor) in
    Obj.repr(
# 160 "parser.mly"
                                        ( make_expr (Binop (_2, _1, _3)) )
# 909 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'variable) in
    Obj.repr(
# 163 "parser.mly"
                                        ( _1 )
# 916 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 164 "parser.mly"
                                        ( const _1 integer )
# 923 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Optree.symbol * int) in
    Obj.repr(
# 165 "parser.mly"
                                        ( let (lab, len) = _1 in
                                          make_expr (String (lab, len)) )
# 931 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 167 "parser.mly"
                                        ( const (int_of_char _1) character )
# 938 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    Obj.repr(
# 168 "parser.mly"
                                        ( make_expr Nil )
# 944 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'name) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'actuals) in
    Obj.repr(
# 169 "parser.mly"
                                        ( make_expr (FuncCall (_1, _2)) )
# 952 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'factor) in
    Obj.repr(
# 170 "parser.mly"
                                        ( make_expr (Monop (Not, _2)) )
# 959 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'factor) in
    Obj.repr(
# 171 "parser.mly"
                                        ( make_expr (Monop (Uminus, _2)) )
# 966 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 172 "parser.mly"
                                        ( _2 )
# 973 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 173 "parser.mly"
                                        ( make_expr (LenExpr (_2)))
# 980 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    Obj.repr(
# 176 "parser.mly"
                                        ( [] )
# 986 "parser.ml"
               : 'actuals))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr_list) in
    Obj.repr(
# 177 "parser.mly"
                                        ( _2 )
# 993 "parser.ml"
               : 'actuals))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 180 "parser.mly"
                                        ( [_1] )
# 1000 "parser.ml"
               : 'expr_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr_list) in
    Obj.repr(
# 181 "parser.mly"
                                        ( _1 :: _3 )
# 1008 "parser.ml"
               : 'expr_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'name) in
    Obj.repr(
# 184 "parser.mly"
                                        ( make_expr (Variable _1) )
# 1015 "parser.ml"
               : 'variable))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'variable) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 185 "parser.mly"
                                        ( make_expr (Sub (_1, _3)) )
# 1023 "parser.ml"
               : 'variable))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'variable) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'name) in
    Obj.repr(
# 186 "parser.mly"
                                        ( make_expr (Select (_1, _3)) )
# 1031 "parser.ml"
               : 'variable))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'variable) in
    Obj.repr(
# 187 "parser.mly"
                                        ( make_expr (Deref _1) )
# 1038 "parser.ml"
               : 'variable))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'name) in
    Obj.repr(
# 190 "parser.mly"
                                        ( TypeName _1 )
# 1045 "parser.ml"
               : 'typexpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 191 "parser.mly"
                                        ( Array (_2, _4) )
# 1053 "parser.ml"
               : 'typexpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'fields) in
    Obj.repr(
# 192 "parser.mly"
                                        ( Record _2 )
# 1060 "parser.ml"
               : 'typexpr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 193 "parser.mly"
                                        ( Pointer _3 )
# 1067 "parser.ml"
               : 'typexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'field_decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'opt_semi) in
    Obj.repr(
# 196 "parser.mly"
                                        ( [_1] )
# 1075 "parser.ml"
               : 'fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'field_decl) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'fields) in
    Obj.repr(
# 197 "parser.mly"
                                        ( _1 :: _3 )
# 1083 "parser.ml"
               : 'fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ident_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 200 "parser.mly"
                                        ( VarDecl (FieldDef, _1, _3) )
# 1091 "parser.ml"
               : 'field_decl))
; (fun __caml_parser_env ->
    Obj.repr(
# 203 "parser.mly"
                                        ( () )
# 1097 "parser.ml"
               : 'opt_semi))
; (fun __caml_parser_env ->
    Obj.repr(
# 204 "parser.mly"
                                        ( () )
# 1103 "parser.ml"
               : 'opt_semi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Dict.ident) in
    Obj.repr(
# 207 "parser.mly"
                                        ( make_name (_1, !Lexer.lineno) )
# 1110 "parser.ml"
               : 'name))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Tree.program)

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
\021\000\021\000\019\000\019\000\004\000\023\000\023\000\024\000\
\024\000\025\000\026\000\026\000\026\000\026\000\026\000\026\000\
\026\000\026\000\026\000\030\000\030\000\030\000\031\000\031\000\
\033\000\032\000\032\000\015\000\015\000\029\000\029\000\011\000\
\011\000\011\000\034\000\034\000\034\000\035\000\035\000\036\000\
\036\000\036\000\036\000\036\000\036\000\036\000\036\000\036\000\
\036\000\028\000\028\000\037\000\037\000\027\000\027\000\027\000\
\027\000\022\000\022\000\022\000\022\000\022\000\013\000\013\000\
\013\000\013\000\038\000\038\000\039\000\040\000\040\000\017\000\
\000\000"

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
\002\000\001\000\004\000\003\000\003\000\003\000\001\000\004\000\
\003\000\003\000\002\000\003\000\003\000\001\000\000\000\001\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\097\000\000\000\
\000\000\000\000\007\000\000\000\000\000\005\000\000\000\096\000\
\000\000\000\000\008\000\000\000\000\000\006\000\000\000\000\000\
\001\000\000\000\004\000\000\000\000\000\010\000\000\000\000\000\
\000\000\013\000\000\000\016\000\000\000\033\000\000\000\029\000\
\000\000\000\000\000\000\065\000\067\000\066\000\000\000\000\000\
\000\000\000\000\068\000\000\000\000\000\000\000\000\000\000\000\
\062\000\020\000\000\000\000\000\026\000\000\000\000\000\000\000\
\019\000\000\000\000\000\000\000\000\000\087\000\053\000\000\000\
\002\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\032\000\000\000\018\000\000\000\071\000\000\000\070\000\
\000\000\011\000\000\000\000\000\069\000\000\000\000\000\081\000\
\000\000\000\000\000\000\000\000\000\000\021\000\000\000\028\000\
\000\000\000\000\000\000\000\000\000\000\014\000\017\000\031\000\
\000\000\000\000\038\000\000\000\000\000\000\000\000\000\037\000\
\000\000\072\000\000\000\000\000\074\000\000\000\000\000\080\000\
\000\000\000\000\000\000\063\000\000\000\000\000\000\000\000\000\
\082\000\024\000\023\000\000\000\000\000\089\000\000\000\091\000\
\090\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\075\000\079\000\025\000\000\000\000\000\000\000\000\000\088\000\
\093\000\092\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\077\000\084\000\000\000\085\000\086\000\000\000\034\000\
\000\000\040\000\000\000\000\000\000\000\000\000\000\000\083\000\
\045\000\000\000\039\000\000\000\049\000\051\000\043\000\048\000\
\000\000\000\000\000\000\000\000\000\000\042\000\046\000"

let yydgoto = "\002\000\
\007\000\008\000\009\000\039\000\010\000\014\000\022\000\011\000\
\019\000\015\000\126\000\020\000\069\000\023\000\106\000\012\000\
\053\000\032\000\065\000\062\000\063\000\138\000\040\000\041\000\
\042\000\082\000\054\000\093\000\115\000\177\000\168\000\182\000\
\169\000\055\000\056\000\057\000\127\000\107\000\108\000\144\000"

let yysindex = "\008\000\
\180\255\000\000\019\255\046\255\051\255\061\255\000\000\101\255\
\092\255\180\255\000\000\118\255\115\255\000\000\019\255\000\000\
\128\255\133\255\000\000\051\255\131\255\000\000\061\255\184\255\
\000\000\150\255\000\000\180\255\043\001\000\000\062\255\191\255\
\047\255\000\000\061\255\000\000\047\255\000\000\193\255\000\000\
\199\255\190\255\200\255\000\000\000\000\000\000\043\001\043\001\
\043\001\043\001\000\000\179\255\201\255\155\255\008\255\220\255\
\000\000\000\000\061\255\217\255\000\000\219\255\222\255\047\255\
\000\000\043\001\061\255\197\255\228\255\000\000\000\000\233\255\
\000\000\150\255\043\001\043\001\043\001\150\255\046\255\043\001\
\201\255\000\000\026\000\000\000\063\000\000\000\130\255\000\000\
\043\001\000\000\043\001\030\001\000\000\046\255\043\001\000\000\
\043\001\043\001\043\001\237\255\165\255\000\000\058\255\000\000\
\087\255\244\255\232\255\250\255\047\255\000\000\000\000\000\000\
\052\255\130\255\000\000\254\254\221\255\251\255\088\255\000\000\
\043\001\000\000\008\255\008\255\000\000\143\255\004\000\000\000\
\083\255\220\255\220\255\000\000\165\255\108\255\061\255\243\255\
\000\000\000\000\000\000\047\255\047\255\000\000\061\255\000\000\
\000\000\150\255\150\255\043\001\043\001\043\001\130\255\043\001\
\000\000\000\000\000\000\047\255\124\255\239\255\047\255\000\000\
\000\000\000\000\105\255\001\000\130\255\253\254\128\000\006\000\
\019\000\000\000\000\000\047\255\000\000\000\000\150\255\000\000\
\020\000\000\000\043\001\150\255\150\255\023\000\043\001\000\000\
\000\000\043\001\000\000\015\255\000\000\000\000\000\000\000\000\
\060\255\150\255\150\255\025\000\105\255\000\000\000\000"

let yyrindex = "\000\000\
\033\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\033\000\000\000\000\000\000\000\000\000\143\000\000\000\
\000\000\000\000\000\000\015\001\054\000\000\000\033\001\000\000\
\000\000\170\255\000\000\033\000\000\000\000\000\000\000\162\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\215\255\255\254\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\236\255\015\000\050\000\185\000\
\000\000\000\000\000\000\000\000\000\000\000\000\056\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\038\255\000\000\009\255\000\000\181\255\000\000\000\000\
\091\000\000\000\000\000\000\000\000\000\000\000\080\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\042\000\000\000\000\000\000\000\000\000\
\000\000\249\255\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\115\000\150\000\000\000\059\000\000\000\000\000\
\000\000\220\000\255\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\045\000\000\000\
\000\000\134\255\170\255\000\000\000\000\000\000\028\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\053\000\000\000\093\000\000\000\000\000\058\000\
\244\254\000\000\000\000\000\000\000\000\000\000\170\255\000\000\
\000\000\000\000\000\000\157\255\170\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\170\255\134\255\000\000\053\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\059\001\079\001\182\255\000\000\076\001\075\001\000\000\
\082\001\000\000\230\255\000\000\227\255\000\000\255\255\231\255\
\252\255\000\000\000\000\000\001\000\000\227\000\039\001\000\000\
\196\000\000\000\080\001\037\001\000\000\188\000\206\000\000\000\
\000\000\209\255\095\000\218\255\239\000\254\255\000\000\000\000"

let yytablesize = 597
let yytable = "\017\000\
\089\000\089\000\052\000\117\000\024\000\061\000\035\000\072\000\
\001\000\086\000\097\000\088\000\091\000\091\000\047\000\047\000\
\054\000\035\000\089\000\013\000\085\000\024\000\087\000\147\000\
\098\000\035\000\035\000\054\000\070\000\060\000\091\000\179\000\
\070\000\071\000\104\000\054\000\054\000\081\000\034\000\105\000\
\194\000\123\000\035\000\124\000\035\000\034\000\016\000\016\000\
\113\000\114\000\116\000\018\000\054\000\119\000\054\000\089\000\
\034\000\100\000\021\000\070\000\132\000\021\000\021\000\089\000\
\034\000\034\000\034\000\091\000\129\000\066\000\034\000\163\000\
\164\000\058\000\118\000\091\000\034\000\061\000\067\000\145\000\
\034\000\034\000\034\000\034\000\034\000\146\000\089\000\068\000\
\004\000\128\000\089\000\089\000\004\000\195\000\151\000\059\000\
\137\000\154\000\091\000\059\000\185\000\060\000\091\000\091\000\
\070\000\189\000\190\000\157\000\016\000\025\000\160\000\161\000\
\044\000\045\000\046\000\026\000\140\000\150\000\047\000\196\000\
\197\000\165\000\166\000\167\000\048\000\028\000\171\000\089\000\
\137\000\174\000\029\000\175\000\158\000\089\000\034\000\070\000\
\070\000\156\000\031\000\091\000\162\000\034\000\184\000\035\000\
\049\000\091\000\089\000\050\000\033\000\051\000\176\000\070\000\
\188\000\172\000\070\000\152\000\167\000\034\000\091\000\193\000\
\034\000\034\000\034\000\094\000\034\000\016\000\034\000\070\000\
\095\000\027\000\034\000\038\000\034\000\027\000\096\000\034\000\
\034\000\034\000\034\000\034\000\034\000\034\000\089\000\034\000\
\034\000\034\000\090\000\134\000\034\000\034\000\016\000\130\000\
\131\000\037\000\091\000\034\000\135\000\034\000\034\000\034\000\
\064\000\034\000\034\000\034\000\003\000\136\000\074\000\084\000\
\034\000\034\000\004\000\092\000\034\000\034\000\034\000\005\000\
\034\000\006\000\075\000\034\000\073\000\099\000\076\000\034\000\
\034\000\034\000\101\000\034\000\077\000\103\000\102\000\109\000\
\078\000\030\000\079\000\110\000\080\000\078\000\078\000\078\000\
\111\000\030\000\030\000\078\000\078\000\078\000\133\000\078\000\
\078\000\078\000\078\000\078\000\078\000\141\000\078\000\078\000\
\055\000\143\000\030\000\142\000\030\000\078\000\078\000\078\000\
\148\000\078\000\173\000\055\000\149\000\078\000\078\000\153\000\
\064\000\064\000\064\000\055\000\055\000\159\000\064\000\078\000\
\064\000\078\000\064\000\064\000\178\000\064\000\064\000\064\000\
\181\000\064\000\094\000\036\000\055\000\183\000\055\000\095\000\
\064\000\064\000\064\000\121\000\064\000\096\000\036\000\187\000\
\064\000\064\000\191\000\056\000\198\000\056\000\036\000\036\000\
\003\000\056\000\064\000\056\000\064\000\056\000\056\000\052\000\
\056\000\056\000\089\000\022\000\056\000\095\000\076\000\036\000\
\094\000\036\000\122\000\056\000\056\000\056\000\091\000\056\000\
\044\000\073\000\073\000\056\000\056\000\050\000\043\000\073\000\
\027\000\073\000\030\000\073\000\073\000\056\000\073\000\056\000\
\073\000\036\000\073\000\078\000\041\000\034\000\139\000\155\000\
\078\000\073\000\073\000\073\000\078\000\073\000\078\000\041\000\
\112\000\073\000\073\000\186\000\057\000\120\000\057\000\041\000\
\041\000\083\000\057\000\073\000\057\000\073\000\057\000\057\000\
\199\000\057\000\057\000\089\000\192\000\057\000\170\000\000\000\
\041\000\180\000\041\000\000\000\057\000\057\000\057\000\091\000\
\057\000\000\000\000\000\000\000\057\000\057\000\000\000\058\000\
\000\000\058\000\000\000\000\000\000\000\058\000\057\000\058\000\
\057\000\058\000\058\000\000\000\058\000\058\000\009\000\009\000\
\058\000\000\000\000\000\000\000\000\000\009\000\000\000\058\000\
\058\000\058\000\009\000\058\000\009\000\000\000\000\000\058\000\
\058\000\000\000\000\000\059\000\059\000\000\000\000\000\000\000\
\059\000\058\000\059\000\058\000\059\000\059\000\000\000\059\000\
\059\000\059\000\000\000\059\000\000\000\000\000\000\000\000\000\
\000\000\000\000\059\000\059\000\059\000\000\000\059\000\000\000\
\000\000\000\000\059\000\059\000\000\000\000\000\060\000\060\000\
\000\000\000\000\000\000\060\000\059\000\060\000\059\000\060\000\
\060\000\000\000\060\000\060\000\060\000\000\000\060\000\000\000\
\000\000\000\000\000\000\000\000\000\000\060\000\060\000\060\000\
\000\000\060\000\000\000\000\000\000\000\060\000\060\000\000\000\
\000\000\061\000\061\000\000\000\000\000\000\000\061\000\060\000\
\061\000\060\000\061\000\061\000\000\000\061\000\061\000\061\000\
\000\000\061\000\000\000\000\000\000\000\000\000\000\000\000\000\
\061\000\061\000\061\000\000\000\061\000\000\000\016\000\000\000\
\061\000\061\000\044\000\045\000\046\000\000\000\012\000\012\000\
\047\000\125\000\061\000\016\000\061\000\012\000\048\000\044\000\
\045\000\046\000\012\000\000\000\012\000\047\000\000\000\000\000\
\015\000\015\000\000\000\048\000\000\000\000\000\000\000\015\000\
\000\000\000\000\049\000\000\000\015\000\050\000\015\000\051\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\049\000\
\000\000\000\000\050\000\000\000\051\000"

let yycheck = "\004\000\
\004\001\004\001\029\000\078\000\006\000\031\000\008\001\037\000\
\001\000\048\000\003\001\050\000\016\001\016\001\027\001\028\001\
\008\001\019\001\004\001\001\001\047\000\023\000\049\000\026\001\
\017\001\027\001\028\001\019\001\033\000\031\000\016\001\035\001\
\037\000\035\000\064\000\027\001\028\001\042\000\001\001\066\000\
\026\001\089\000\044\001\091\000\046\001\008\001\001\001\001\001\
\075\000\076\000\077\000\001\001\044\001\080\000\046\001\004\001\
\019\001\059\000\001\001\064\000\099\000\001\001\001\001\004\001\
\027\001\028\001\029\001\016\001\095\000\023\001\033\001\146\000\
\147\000\012\001\079\000\016\001\039\001\103\000\032\001\109\000\
\043\001\044\001\045\001\046\001\047\001\034\001\004\001\041\001\
\031\001\094\000\004\001\004\001\031\001\034\001\121\000\038\001\
\101\000\015\001\016\001\038\001\175\000\103\000\016\001\016\001\
\109\000\180\000\181\000\134\000\001\001\009\001\140\000\141\000\
\005\001\006\001\007\001\024\001\030\001\030\001\011\001\194\000\
\195\000\148\000\149\000\150\000\017\001\008\001\156\000\004\001\
\133\000\159\000\016\001\027\001\135\000\004\001\001\001\140\000\
\141\000\030\001\011\001\016\001\143\000\008\001\172\000\013\001\
\037\001\016\001\004\001\040\001\016\001\042\001\046\001\156\000\
\179\000\030\001\159\000\013\001\183\000\001\001\016\001\186\000\
\027\001\028\001\029\001\009\001\008\001\001\001\033\001\172\000\
\014\001\008\001\001\001\022\001\039\001\012\001\020\001\019\001\
\043\001\008\001\045\001\046\001\047\001\001\001\004\001\027\001\
\028\001\029\001\008\001\023\001\008\001\033\001\001\001\097\000\
\098\000\010\001\016\001\039\001\032\001\028\001\029\001\043\001\
\010\001\045\001\033\001\047\001\025\001\041\001\008\001\008\001\
\039\001\029\001\031\001\011\001\043\001\033\001\045\001\036\001\
\047\001\038\001\029\001\039\001\028\001\002\001\033\001\043\001\
\044\001\045\001\010\001\047\001\039\001\008\001\012\001\035\001\
\043\001\019\001\045\001\008\001\047\001\002\001\003\001\004\001\
\008\001\027\001\028\001\008\001\009\001\010\001\010\001\012\001\
\013\001\014\001\015\001\016\001\017\001\010\001\019\001\020\001\
\008\001\008\001\044\001\028\001\046\001\026\001\027\001\028\001\
\044\001\030\001\028\001\019\001\018\001\034\001\035\001\012\001\
\002\001\003\001\004\001\027\001\028\001\035\001\008\001\044\001\
\010\001\046\001\012\001\013\001\028\001\015\001\016\001\017\001\
\027\001\019\001\009\001\008\001\044\001\019\001\046\001\014\001\
\026\001\027\001\028\001\018\001\030\001\020\001\019\001\028\001\
\034\001\035\001\028\001\002\001\028\001\004\001\027\001\028\001\
\024\001\008\001\044\001\010\001\046\001\012\001\013\001\010\001\
\015\001\016\001\004\001\012\001\019\001\028\001\012\001\044\001\
\028\001\046\001\012\001\026\001\027\001\028\001\016\001\030\001\
\028\001\002\001\003\001\034\001\035\001\028\001\028\000\008\001\
\010\000\010\001\015\000\012\001\013\001\044\001\015\001\046\001\
\017\001\023\000\019\001\009\001\008\001\020\000\103\000\133\000\
\014\001\026\001\027\001\028\001\018\001\030\001\020\001\019\001\
\074\000\034\001\035\001\176\000\002\001\081\000\004\001\027\001\
\028\001\042\000\008\001\044\001\010\001\046\001\012\001\013\001\
\197\000\015\001\016\001\004\001\183\000\019\001\152\000\255\255\
\044\001\010\001\046\001\255\255\026\001\027\001\028\001\016\001\
\030\001\255\255\255\255\255\255\034\001\035\001\255\255\002\001\
\255\255\004\001\255\255\255\255\255\255\008\001\044\001\010\001\
\046\001\012\001\013\001\255\255\015\001\016\001\024\001\025\001\
\019\001\255\255\255\255\255\255\255\255\031\001\255\255\026\001\
\027\001\028\001\036\001\030\001\038\001\255\255\255\255\034\001\
\035\001\255\255\255\255\003\001\004\001\255\255\255\255\255\255\
\008\001\044\001\010\001\046\001\012\001\013\001\255\255\015\001\
\016\001\017\001\255\255\019\001\255\255\255\255\255\255\255\255\
\255\255\255\255\026\001\027\001\028\001\255\255\030\001\255\255\
\255\255\255\255\034\001\035\001\255\255\255\255\003\001\004\001\
\255\255\255\255\255\255\008\001\044\001\010\001\046\001\012\001\
\013\001\255\255\015\001\016\001\017\001\255\255\019\001\255\255\
\255\255\255\255\255\255\255\255\255\255\026\001\027\001\028\001\
\255\255\030\001\255\255\255\255\255\255\034\001\035\001\255\255\
\255\255\003\001\004\001\255\255\255\255\255\255\008\001\044\001\
\010\001\046\001\012\001\013\001\255\255\015\001\016\001\017\001\
\255\255\019\001\255\255\255\255\255\255\255\255\255\255\255\255\
\026\001\027\001\028\001\255\255\030\001\255\255\001\001\255\255\
\034\001\035\001\005\001\006\001\007\001\255\255\024\001\025\001\
\011\001\012\001\044\001\001\001\046\001\031\001\017\001\005\001\
\006\001\007\001\036\001\255\255\038\001\011\001\255\255\255\255\
\024\001\025\001\255\255\017\001\255\255\255\255\255\255\031\001\
\255\255\255\255\037\001\255\255\036\001\040\001\038\001\042\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\037\001\
\255\255\255\255\040\001\255\255\042\001"

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
# 453 "parser.ml"
               : Tree.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'decl_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 40 "parser.mly"
                                        ( make_block (_1, _3) )
# 461 "parser.ml"
               : 'block))
; (fun __caml_parser_env ->
    Obj.repr(
# 43 "parser.mly"
                                        ( [] )
# 467 "parser.ml"
               : 'decl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'decl_list) in
    Obj.repr(
# 44 "parser.mly"
                                        ( _1 @ _2 )
# 475 "parser.ml"
               : 'decl_list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'const_decls) in
    Obj.repr(
# 47 "parser.mly"
                                        ( _2 )
# 482 "parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'var_decls) in
    Obj.repr(
# 48 "parser.mly"
                                        ( _2 )
# 489 "parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'proc_decl) in
    Obj.repr(
# 49 "parser.mly"
                                        ( [_1] )
# 496 "parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'type_decls) in
    Obj.repr(
# 50 "parser.mly"
                                        ( [TypeDecl _2] )
# 503 "parser.ml"
               : 'decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'const_decl) in
    Obj.repr(
# 53 "parser.mly"
                                        ( [_1] )
# 510 "parser.ml"
               : 'const_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'const_decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'const_decls) in
    Obj.repr(
# 54 "parser.mly"
                                        ( _1 :: _2 )
# 518 "parser.ml"
               : 'const_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : Dict.ident) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 57 "parser.mly"
                                        ( ConstDecl (_1, _3) )
# 526 "parser.ml"
               : 'const_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'type_decl) in
    Obj.repr(
# 60 "parser.mly"
                                        ( [_1] )
# 533 "parser.ml"
               : 'type_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'type_decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'type_decls) in
    Obj.repr(
# 61 "parser.mly"
                                        ( _1 :: _2 )
# 541 "parser.ml"
               : 'type_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : Dict.ident) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typexpr) in
    Obj.repr(
# 64 "parser.mly"
                                        ( (_1, _3) )
# 549 "parser.ml"
               : 'type_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'var_decl) in
    Obj.repr(
# 67 "parser.mly"
                                        ( [_1] )
# 556 "parser.ml"
               : 'var_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'var_decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'var_decls) in
    Obj.repr(
# 68 "parser.mly"
                                        ( _1 :: _2 )
# 564 "parser.ml"
               : 'var_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'ident_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typexpr) in
    Obj.repr(
# 71 "parser.mly"
                                        ( VarDecl (VarDef, _1, _3) )
# 572 "parser.ml"
               : 'var_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'proc_heading) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'block) in
    Obj.repr(
# 74 "parser.mly"
                                        ( ProcDecl (_1, _3) )
# 580 "parser.ml"
               : 'proc_decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'name) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'params) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'return_type) in
    Obj.repr(
# 77 "parser.mly"
                                        ( Heading (_2, _3, _4) )
# 589 "parser.ml"
               : 'proc_heading))
; (fun __caml_parser_env ->
    Obj.repr(
# 80 "parser.mly"
                                        ( [] )
# 595 "parser.ml"
               : 'params))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'formal_decls) in
    Obj.repr(
# 81 "parser.mly"
                                        ( _2 )
# 602 "parser.ml"
               : 'params))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_decl) in
    Obj.repr(
# 84 "parser.mly"
                                        ( [_1] )
# 609 "parser.ml"
               : 'formal_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'formal_decl) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'formal_decls) in
    Obj.repr(
# 85 "parser.mly"
                                        ( _1 :: _3 )
# 617 "parser.ml"
               : 'formal_decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ident_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'formal_typexpr) in
    Obj.repr(
# 88 "parser.mly"
                                               ( VarDecl (CParamDef, _1, _3) )
# 625 "parser.ml"
               : 'formal_decl))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'ident_list) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'formal_typexpr) in
    Obj.repr(
# 89 "parser.mly"
                                               ( VarDecl (VParamDef, _2, _4) )
# 633 "parser.ml"
               : 'formal_decl))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'proc_heading) in
    Obj.repr(
# 90 "parser.mly"
                                        ( PParamDecl _1 )
# 640 "parser.ml"
               : 'formal_decl))
; (fun __caml_parser_env ->
    Obj.repr(
# 93 "parser.mly"
                                        ( None )
# 646 "parser.ml"
               : 'return_type))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 94 "parser.mly"
                                        ( Some _2 )
# 653 "parser.ml"
               : 'return_type))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'stmt_list) in
    Obj.repr(
# 97 "parser.mly"
                                        ( seq _1 )
# 660 "parser.ml"
               : 'stmts))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 100 "parser.mly"
                                        ( [_1] )
# 667 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'stmt_list) in
    Obj.repr(
# 101 "parser.mly"
                                        ( _1 :: _3 )
# 675 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'line) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt1) in
    Obj.repr(
# 104 "parser.mly"
                                        ( make_stmt (_2, _1) )
# 683 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 106 "parser.mly"
                                        ( failwith "impossible" )
# 689 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 109 "parser.mly"
                                        ( !Lexer.lineno )
# 695 "parser.ml"
               : 'line))
; (fun __caml_parser_env ->
    Obj.repr(
# 112 "parser.mly"
                                        ( Skip )
# 701 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'variable) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 113 "parser.mly"
                                        ( Assign (_1, _3) )
# 709 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'name) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'actuals) in
    Obj.repr(
# 114 "parser.mly"
                                        ( ProcCall (_1, _2) )
# 717 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr_opt) in
    Obj.repr(
# 115 "parser.mly"
                                        ( Return _2 )
# 724 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'stmts) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'elses) in
    Obj.repr(
# 116 "parser.mly"
                                        ( IfStmt (_2, _4, _5) )
# 733 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    Obj.repr(
# 117 "parser.mly"
                                        ( WhileStmt (_2, _4) )
# 741 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'stmts) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 118 "parser.mly"
                                        ( RepeatStmt (_2, _4) )
# 749 "parser.ml"
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
# 760 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'arms) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'else_part) in
    Obj.repr(
# 122 "parser.mly"
                                        ( CaseStmt (_2, _4, _5) )
# 769 "parser.ml"
               : 'stmt1))
; (fun __caml_parser_env ->
    Obj.repr(
# 125 "parser.mly"
                                        ( make_stmt (Skip, 0) )
# 775 "parser.ml"
               : 'elses))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmts) in
    Obj.repr(
# 126 "parser.mly"
                                        ( _2 )
# 782 "parser.ml"
               : 'elses))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'line) in
    let _3 = (Parsing.peek_val __caml_parser_env 3 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 1 : 'stmts) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'elses) in
    Obj.repr(
# 127 "parser.mly"
                                        ( make_stmt (IfStmt (_3,_5,_6), _2) )
# 792 "parser.ml"
               : 'elses))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'arm) in
    Obj.repr(
# 130 "parser.mly"
                                        ( [_1] )
# 799 "parser.ml"
               : 'arms))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'arm) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'arms) in
    Obj.repr(
# 131 "parser.mly"
                                        ( _1 :: _3 )
# 807 "parser.ml"
               : 'arms))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'stmts) in
    Obj.repr(
# 134 "parser.mly"
                                        ( (_1, _3) )
# 815 "parser.ml"
               : 'arm))
; (fun __caml_parser_env ->
    Obj.repr(
# 137 "parser.mly"
                                        ( make_stmt (Skip, 0) )
# 821 "parser.ml"
               : 'else_part))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmts) in
    Obj.repr(
# 138 "parser.mly"
                                        ( _2 )
# 828 "parser.ml"
               : 'else_part))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Dict.ident) in
    Obj.repr(
# 141 "parser.mly"
                                        ( [_1] )
# 835 "parser.ml"
               : 'ident_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : Dict.ident) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'ident_list) in
    Obj.repr(
# 142 "parser.mly"
                                        ( _1 :: _3 )
# 843 "parser.ml"
               : 'ident_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 145 "parser.mly"
                                        ( None )
# 849 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 146 "parser.mly"
                                        ( Some _1 )
# 856 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple) in
    Obj.repr(
# 149 "parser.mly"
                                        ( _1 )
# 863 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Optree.op) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'simple) in
    Obj.repr(
# 150 "parser.mly"
                                        ( make_expr (Binop (_2, _1, _3)) )
# 872 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'simple) in
    Obj.repr(
# 151 "parser.mly"
                                        ( make_expr (Binop (Eq, _1, _3)) )
# 880 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 154 "parser.mly"
                                        ( _1 )
# 887 "parser.ml"
               : 'simple))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'simple) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Optree.op) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 155 "parser.mly"
                                        ( make_expr (Binop (_2, _1, _3)) )
# 896 "parser.ml"
               : 'simple))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'simple) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 156 "parser.mly"
                                        ( make_expr (Binop (Minus, _1, _3)) )
# 904 "parser.ml"
               : 'simple))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'factor) in
    Obj.repr(
# 159 "parser.mly"
                                        ( _1 )
# 911 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : Optree.op) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'factor) in
    Obj.repr(
# 160 "parser.mly"
                                        ( make_expr (Binop (_2, _1, _3)) )
# 920 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'variable) in
    Obj.repr(
# 163 "parser.mly"
                                        ( _1 )
# 927 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 164 "parser.mly"
                                        ( const _1 integer )
# 934 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Optree.symbol * int) in
    Obj.repr(
# 165 "parser.mly"
                                        ( let (lab, len) = _1 in
                                          make_expr (String (lab, len)) )
# 942 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : char) in
    Obj.repr(
# 167 "parser.mly"
                                        ( const (int_of_char _1) character )
# 949 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    Obj.repr(
# 168 "parser.mly"
                                        ( make_expr Nil )
# 955 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'name) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'actuals) in
    Obj.repr(
# 169 "parser.mly"
                                        ( make_expr (FuncCall (_1, _2)) )
# 963 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'factor) in
    Obj.repr(
# 170 "parser.mly"
                                        ( make_expr (Monop (Not, _2)) )
# 970 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'factor) in
    Obj.repr(
# 171 "parser.mly"
                                        ( make_expr (Monop (Uminus, _2)) )
# 977 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 172 "parser.mly"
                                        ( _2 )
# 984 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 173 "parser.mly"
                                        ( make_expr (LenExpr (_2)))
# 991 "parser.ml"
               : 'factor))
; (fun __caml_parser_env ->
    Obj.repr(
# 176 "parser.mly"
                                        ( [] )
# 997 "parser.ml"
               : 'actuals))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr_list) in
    Obj.repr(
# 177 "parser.mly"
                                        ( _2 )
# 1004 "parser.ml"
               : 'actuals))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 180 "parser.mly"
                                        ( [_1] )
# 1011 "parser.ml"
               : 'expr_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr_list) in
    Obj.repr(
# 181 "parser.mly"
                                        ( _1 :: _3 )
# 1019 "parser.ml"
               : 'expr_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'name) in
    Obj.repr(
# 184 "parser.mly"
                                        ( make_expr (Variable _1) )
# 1026 "parser.ml"
               : 'variable))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'variable) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 185 "parser.mly"
                                        ( make_expr (Sub (_1, _3)) )
# 1034 "parser.ml"
               : 'variable))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'variable) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'name) in
    Obj.repr(
# 186 "parser.mly"
                                        ( make_expr (Select (_1, _3)) )
# 1042 "parser.ml"
               : 'variable))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'variable) in
    Obj.repr(
# 187 "parser.mly"
                                        ( make_expr (Deref _1) )
# 1049 "parser.ml"
               : 'variable))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'name) in
    Obj.repr(
# 190 "parser.mly"
                                        ( TypeName _1 )
# 1056 "parser.ml"
               : 'formal_typexpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 191 "parser.mly"
                                        ( Array (_2, _4) )
# 1064 "parser.ml"
               : 'formal_typexpr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 192 "parser.mly"
                                        ( OpenArray (_3) )
# 1071 "parser.ml"
               : 'formal_typexpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'fields) in
    Obj.repr(
# 193 "parser.mly"
                                        ( Record _2 )
# 1078 "parser.ml"
               : 'formal_typexpr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 194 "parser.mly"
                                        ( Pointer _3 )
# 1085 "parser.ml"
               : 'formal_typexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'name) in
    Obj.repr(
# 198 "parser.mly"
                                        ( TypeName _1 )
# 1092 "parser.ml"
               : 'typexpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 199 "parser.mly"
                                        ( Array (_2, _4) )
# 1100 "parser.ml"
               : 'typexpr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'fields) in
    Obj.repr(
# 200 "parser.mly"
                                        ( Record _2 )
# 1107 "parser.ml"
               : 'typexpr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 201 "parser.mly"
                                        ( Pointer _3 )
# 1114 "parser.ml"
               : 'typexpr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'field_decl) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'opt_semi) in
    Obj.repr(
# 204 "parser.mly"
                                        ( [_1] )
# 1122 "parser.ml"
               : 'fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'field_decl) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'fields) in
    Obj.repr(
# 205 "parser.mly"
                                        ( _1 :: _3 )
# 1130 "parser.ml"
               : 'fields))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'ident_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'typexpr) in
    Obj.repr(
# 208 "parser.mly"
                                        ( VarDecl (FieldDef, _1, _3) )
# 1138 "parser.ml"
               : 'field_decl))
; (fun __caml_parser_env ->
    Obj.repr(
# 211 "parser.mly"
                                        ( () )
# 1144 "parser.ml"
               : 'opt_semi))
; (fun __caml_parser_env ->
    Obj.repr(
# 212 "parser.mly"
                                        ( () )
# 1150 "parser.ml"
               : 'opt_semi))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : Dict.ident) in
    Obj.repr(
# 215 "parser.mly"
                                        ( make_name (_1, !Lexer.lineno) )
# 1157 "parser.ml"
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

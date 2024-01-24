proc foo (n: array of integer);
begin
    n[10] := 0;
    print_num(n[10]);
    newline()
end;

var a : array 11 of integer;
var b : integer;
var c : array 2 of integer;
var d : integer;
begin
b := 1;
foo(a);
print_num(b);
newline()
end.




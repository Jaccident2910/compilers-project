proc foo(n: array of integer);
begin
    print_num(len(n));
    n[1] := 2;
    print_num(len(n))
end;

var a: array 10 of integer;
begin
    foo(a);
    newline()
end.



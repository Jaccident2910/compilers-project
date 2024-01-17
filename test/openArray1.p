proc foo(n: array of integer);
begin
    n[0] := 0;
    print_num(n[0])
end;

var a: array 10 of integer;
begin
    foo(a);
    newline()
end.
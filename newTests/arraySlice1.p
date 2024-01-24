proc test1 (a: array of integer);
begin
print_num(a[0]);
end;


var b: array 10 of integer;
var c: pointer to array of integer;
begin
    newrow(c,10);
    b[2] := 1;
    c^[2] := 1;
    test1(b[2..4));
    newline();
    test1(c^[2..4));
    newline();
end.


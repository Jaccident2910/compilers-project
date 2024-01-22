proc test1 (a: array of integer);
begin
print_num(a[2]);
end;


var b: array 4 of integer;
var c: pointer to array of integer;
begin
    newrow(c,4);
    b[2] := 1;
    c^[2] := 1;
    test1(b[2..5));
    newline();
    test1(c^[2..5));
    newline();
end.
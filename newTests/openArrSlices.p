proc test1(a: array of integer);
begin;
a[0] := 10;
print_num(len(a));
newline();
end;

proc test2(b : array of integer);
begin;
test1(b[3..5));
end;

var c : pointer to array of integer;
begin

newrow(c,10);
test2(c^[3..9));
print_num(c^[6]);
newline()
end.


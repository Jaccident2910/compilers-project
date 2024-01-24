
proc test1(z: array of integer);
var zp: pointer to array of integer;
begin;
print_num(len(z));
newline();
z[0] := 100;
end;

var a : pointer to array of integer;
begin
newrow(a,10);
test1(a^);

print_num(a^[0]);
newline();
print_num(a^[1]);
newline();
print_num(len(a^));
newline()
end.

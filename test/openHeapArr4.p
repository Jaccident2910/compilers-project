
proc test1(z: array of integer);
var zp: pointer to array of integer;
begin;
z[0] := 5;
end;


var a : pointer to array of integer;

begin
newrow(a,10);
test1(a^);

print_num(a^[0]);
newline()
end.

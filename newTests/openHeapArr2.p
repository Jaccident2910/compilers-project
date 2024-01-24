
proc test1(z: array of integer);
var zp: pointer to array of integer;
var ip: pointer to integer;
begin;
ip^ := 1;
zp^ := z;
zp^[0] := 5;
end;


var a : array 10 of integer;

begin
a[0] := 1;
test(1);

print_num(a[0]);
newline()
end.

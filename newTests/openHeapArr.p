
proc test1(zp: pointer to array of integer);
begin;

zp^[2] := 5;
end;


var a : pointer to array of integer;
var b: array 10 of integer;
var c: pointer to array of integer;
begin
newrow(a,10);
c^ := b;

a^[1] := 2;
c^[2] := 2;

print_num(a^[1]);
newline();
print_num(a^[2]);
newline();
print_num(b[2]);
newline()
end.

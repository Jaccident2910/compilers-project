


var a : pointer to array of integer;

begin
newrow(a,10);

a^[0] := 1;

a^[10] := 2;

print_num(a^[0]);
newline();

print_num(a^[10])
end.

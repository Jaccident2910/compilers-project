var a: pointer to array of integer;
begin
newrow(a,10);
a^[3] := 2 ;
print_num(a^[3]);
newline()

end.
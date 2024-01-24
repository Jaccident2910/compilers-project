
proc p() : integer;
begin
print_string("function called!!");
newline();
return 3;
end;


var a: pointer to array of integer;
begin
newrow(a,10);
a^[p()] := 2;
print_num(a^[3]);
newline()

end.




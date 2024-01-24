proc p() : integer;
begin
print_string("function called!!");
newline();
return 3;
end;

proc test1(a: array of integer);
begin
print_num(a[0])
end;

var b : array 10 of integer;
begin
b[3] := 2;
test1( b[p()..4) );
newline()

end.




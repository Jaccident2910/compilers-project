proc p2p2a(xpp : pointer to pointer to array of integer); 
begin;
xpp^^[2] := 8;
end;

var ap : pointer to array of integer;
var app : pointer to pointer to array of integer;

begin
new(app);
newrow(app^,10);
ap := app^;
p2p2a(app);
print_num(ap^[2]);
newline()

end.



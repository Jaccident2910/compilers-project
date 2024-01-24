proc test1(a : array of integer);

    proc test2(b: array of integer);
    begin;
    b[0] := a[0];
    print_num(len(a));
    newline();
    end;

var c : pointer to array of integer;
begin;
newrow(c,9);
test2(c^);
print_num(c^[0]);
newline();
end;


var x : array 10 of integer;
begin

x[3] := 4;
test1(x[3..8));
print_num(x[3]);
newline()

end.






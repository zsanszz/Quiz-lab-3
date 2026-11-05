program fibonacci;
uses crt;

procedure deret(n : integer);
var
    a, b, c, i : integer;
begin
    a := 1;
    b := 1;

    for i := 1 to n do
    begin
        write(a, ' ');

        c := a + b;
        a := b;
        b := c;
    end;
end;

var
    jumlah : integer;

begin
    clrscr;

    write('Masukkan jumlah suku: ');
    readln(jumlah);

    write('Deret Fibonacci: ');
    deret(jumlah);

    readln;
end.
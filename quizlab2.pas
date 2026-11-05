program bilanganprima;
uses crt;

function prima(n : integer): boolean;
var
    i : integer;
begin
    if n < 2 then
        prima := false
    else
    begin
        prima := true;

        for i := 2 to n div 2 do
        begin
            if n mod i = 0 then
                prima := false;
        end;
    end;
end;

var
    angka : integer;

begin
    clrscr;

    write('Masukkan angka: ');
    readln(angka);

    if prima(angka) then
        writeln('Prima')
    else
        writeln('Non-Prima');

    readln;
end.
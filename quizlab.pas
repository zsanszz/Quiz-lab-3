program faktorial;
uses crt;

function faktorial(n : integer): longint;
begin
    if n = 0 then
        faktorial := 1
    else
        faktorial := n * faktorial(n - 1);
end;

var
    angka : integer;

begin
    clrscr;

    write('Masukkan nilai: ');
    readln(angka);

    writeln('Hasil faktorial: ', faktorial(angka));

    readln;
end.
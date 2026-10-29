program pengurutanNilaiUAS;

var
  nilai: array[1..10] of integer;
  n, i, j, temp: integer;

begin
  writeln('=== PENGURUTAN NILAI UAS ===');

  write('Masukkan jumlah mahasiswa (1-10): ');
  readln(n);

  if (n < 1) or (n > 10) then
    writeln('Jumlah mahasiswa harus 1 sampai 10.')
  else
  begin
    for i := 1 to n do
    begin
      write('Masukkan nilai UAS mahasiswa ke-', i, ': ');
      readln(nilai[i]);
    end;

    { Mengurutkan nilai dari terbesar ke terkecil }
    for i := 1 to n - 1 do
    begin
      for j := 1 to n - i do
      begin
        if nilai[j] < nilai[j+1] then
        begin
          temp := nilai[j];
          nilai[j] := nilai[j+1];
          nilai[j+1] := temp;
        end;
      end;
    end;

    writeln;
    writeln('Nilai UAS dari yang tertinggi ke terendah:');

    for i := 1 to n do
      writeln(i, '. ', nilai[i]);
  end;

  readln;
end.

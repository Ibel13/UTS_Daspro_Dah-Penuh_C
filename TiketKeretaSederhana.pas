program TiketKeretaSederhana;
uses crt;
var
    menu, tujuan, jumlah, i, umur, diskon : integer;
    harga, hargaAkhir, total, bayar, pendapatan : longint;
    nama, kota : string;

begin
clrscr;
    pendapatan := 0;

    repeat
    writeln;
    writeln('Pemesanan Tiket Kereta Api');
    writeln('1. Pesan tiket');
    writeln('2. Lihat total penjualan');
    writeln('3. Keluar');
    write('Pilih menu: ');
    readln(menu);

    case menu of
      1: begin
            writeln('Tujuan: 1. Bandung (Rp 150000), 2. Yogyakarta (Rp 350000), 3. Surabaya (Rp 600000)');

           { ulangi terus sampai pilihan tujuan benar }
            while true do
            begin
                write('Pilih tujuan: ');
                readln(tujuan);
                if (tujuan < 1) or (tujuan > 3) then
                begin
                    writeln('Pilihan tidak ada, coba lagi.');
                    continue;
                end;
                break;
           end;

            case tujuan of
            1: begin kota := 'Bandung'; harga := 150000; end;
            2: begin kota := 'Yogyakarta'; harga := 350000; end;
            3: begin kota := 'Surabaya'; harga := 600000; end;
            end;

        write('Jumlah tiket: ');
        readln(jumlah);

        total := 0;
        for i := 1 to jumlah do
        begin
            write('Nama penumpang ', i, ': ');
            readln(nama);
            write('Usia: ');
            readln(umur);

            { diskon berdasarkan usia }
            if umur <= 12 then
            begin
                if umur < 3 then
                diskon := 100
                else
                    diskon := 25;
            end
            else
                begin
                if umur >= 60 then
                diskon := 20
                else
                    diskon := 0;
                end;

    hargaAkhir := harga - (harga * diskon div 100);
    writeln('Harga tiket ', nama, ': Rp ', hargaAkhir);
    total := total + hargaAkhir;
    end;

    writeln('Total bayar: Rp ', total);

    { kalau uang kurang, suruh bayar ulang }
    while true do
    begin
        write('Uang bayar: Rp ');
        readln(bayar);
        if bayar < total then
        begin
            writeln('Uang kurang, coba lagi.');
            continue;
        end;
        break;
    end;

    writeln('Kembalian: Rp ', bayar - total);
    writeln('Tiket ke ', kota, ' berhasil dipesan.');
    pendapatan := pendapatan + total;
    end;

    2: writeln('Total penjualan: Rp ', pendapatan);

    3: writeln('Terima kasih.');

    else
      writeln('Menu tidak ada.');
    end;

until menu = 3;
end.
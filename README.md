# Dokumentasi Jawaban Programmer

## Soal 1

### Deskripsi

Buatlah algoritma untuk menampilkan angka 1 s/d n, dengan ketentuan:

- Kelipatan 3 diganti "OK",
- Kelipatan 4 diganti "YES",
- Kelipatan 3 & 4 diganti "OKYES".

### Algoritma dalam JavaScript

```javascript
function cetakAngka(n) {
  for (let i = 1; i <= n; i++) {
    if (i % 3 === 0 && i % 4 === 0) {
      console.log("OKYES");
    } else if (i % 3 === 0) {
      console.log("OK");
    } else if (i % 4 === 0) {
      console.log("YES");
    } else {
      console.log(i);
    }
  }
}

let n = 15;
cetakAngka(n);
```

### Output untuk n = 15

```
1
2
OK
YES
5
OK
7
YES
OK
10
11
OKYES
13
14
OK
```

---

## Soal 2

### Deskripsi

Buatlah algoritma untuk mencetak pola segitiga dengan n baris, sesuai nilai n.

### Algoritma dalam JavaScript

```javascript
function cetakSegitiga(n) {
  for (let i = 1; i <= n; i++) {
    let baris = "";
    for (let j = 1; j <= n; j++) {
      if (j <= i) {
        baris += i;
      } else {
        baris += j;
      }
    }
    console.log(baris);
  }
}

let n = 5;
cetakSegitiga(n);
```

### Contoh Output untuk n = 5

```
122345
233456
334567
445678
555678
```

---

## Soal 3

### Deskripsi

Perhatikan array berikut ini: `n = [12, 9, 13, 6, 10, 4, 7, 2]`
Buatlah algoritma untuk membuang semua nilai dengan kelipatan tiga dan mengurutkan sisanya ke dalam array baru secara ascending (dari kecil ke besar).

### Algoritma dalam JavaScript

```javascript
function filterAndSort(arr) {
  let filteredArr = arr.filter((x) => x % 3 !== 0);
  return filteredArr.sort((a, b) => a - b);
}

let n = [12, 9, 13, 6, 10, 4, 7, 2];
let hasil = filterAndSort(n);
console.log(hasil);
```

### Output yang Diharapkan

```
[2, 4, 7, 10, 13]
```

---

## Soal 4

### Deskripsi

Buatlah empat Query SQL untuk menampilkan data sesuai ketentuan.

### a. Data Barang dengan harga lebih besar dari 10,000 diurut berdasarkan Harga Satuan (ascending):

```sql
SELECT * FROM barang WHERE HARGA_SATUAN > 10000 ORDER BY HARGA_SATUAN ASC;
```

### b. Data Pelanggan yang namanya mengandung huruf "g" dengan alamat "BANDUNG":

```sql
SELECT * FROM pelanggan WHERE NAMA LIKE '%g%' AND ALAMAT = 'BANDUNG';
```

### c. Data seluruh transaksi sesuai dengan tampilan di gambar:

```sql
SELECT transaksi.KODE, transaksi.TANGGAL, pelanggan.NAMA AS NAMA_PELANGGAN,
       barang.NAMA AS NAMA_BARANG, transaksi.JUMLAH_BARANG,
       barang.HARGA_SATUAN, (transaksi.JUMLAH_BARANG * barang.HARGA_SATUAN) AS TOTAL
FROM transaksi
JOIN pelanggan ON transaksi.KODE_PELANGGAN = pelanggan.KODE
JOIN barang ON transaksi.KODE_BARANG = barang.KODE;
```

### d. Data Rekap nama, jumlah dan total harga pembelian:

```sql
SELECT pelanggan.NAMA AS NAMA_PELANGGAN,
       SUM(transaksi.JUMLAH_BARANG) AS JUMLAH,
       SUM(transaksi.JUMLAH_BARANG * barang.HARGA_SATUAN) AS TOTAL_HARGA
FROM transaksi
JOIN pelanggan ON transaksi.KODE_PELANGGAN = pelanggan.KODE
JOIN barang ON transaksi.KODE_BARANG = barang.KODE
GROUP BY pelanggan.NAMA;
```

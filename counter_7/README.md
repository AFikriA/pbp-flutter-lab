# Tugas 7: Elemen Dasar Flutter
Nama: Aulia Fikri Al Khawariz | NPM: 2106701160 | Kelas: C

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.

Stateless Widget adalah widget yang tidak akan pernah berubah. Stateless Widget merupakan widget yang di-build hanya dengan konfigurasi yang telah diinisiasi sejak awal.

Misalnya kita membuat aplikasi berisi Text dengan kata “Hello World”. Kemudian aplikasi kita tidak punya fungsi untuk merubah kata tersebut. Dalam kasus yang digunakan di sini adalah Stateless Widget.

Statefull Widget merupakan Widget yang dapat berubah-ubah secara dinamis. Pada Tugas 7 ini kita menerapkan Statefull widget dimana ketika button increment di klik, maka text akan berubah.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- Scaffold, mengimplementasikan struktur layout visual desain material dasar.
- AppBar(), terdiri dari toolbar dan kemungkinan widget lainnya. Biasanya menjadi judul (dari sebuah aplikasi atau halaman).
- Text(), Menampilkan serangkaian teks dengan style-nya juga.
- Center(), semua widget yang ada dalam Center akan diletakkan di bagian tengah.
- Column(), semua widget yang ada dalam Column akan ditampilkan secara vertikal.
- Row(), semua widget yang ada dalam Row akan ditampilkan secara horizontal.
- FloatingActionButton(), menampilkan button floating.
- Icon(), memberikan ikon pada sebuah widget.
- Padding(), widget yang memasukkan anaknya dengan padding yang diberikan.
- dll.

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

fungsi setState() nantinya akan bertugas untuk memberitahu widget bahwa ada objek yang berubah pada state sehingga aplikasi akan memuat ulang widget tersebut dengan nilai yang sudah berubah. Bagian yang terdampak pada fungsi ini adalah variabel [_counter].

## Jelaskan perbedaan antara const dengan final.

Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, const mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Membuat condition if-else berdasarkan nilai [_counter]
- Membuat Text Widget Genap dan Ganjil, dan melakukan styling warna
- Menambahkan fungsi decrementCounter
- Membuat Widget FloatingActionButton baru dibagian bawah kiri dan mengimplementasikan fungsi decrementCounter

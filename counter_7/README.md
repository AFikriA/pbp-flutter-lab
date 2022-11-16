Nama: Aulia Fikri Al Khawariz | NPM: 2106701160 | Kelas: C
# Tugas 8: Flutter Form

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.

Navigator.push() menumpuk route teratas sebelumnya dengan widget baru. Penggunaan push pada navigator tidak menghapus widget sebelumnya, melainkan hanya ditumpuk dengan widget baru.
Navigator.pushReplacement() menggantikan route teratas sebelumnya dengan widget baru. Penggunaan pushReplacement menggantikan widget sebelumnya dengan widget baru.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- Scaffold, mengimplementasikan struktur layout visual desain material dasar.
- AppBar(), terdiri dari toolbar dan kemungkinan widget lainnya. Biasanya menjadi judul (dari sebuah aplikasi atau halaman).
- Text(), Menampilkan serangkaian teks dengan style-nya juga.
- Center(), semua widget yang ada dalam Center akan diletakkan di bagian tengah.
- Column(), semua widget yang ada dalam Column akan ditampilkan secara vertikal.
- Row(), semua widget yang ada dalam Row akan ditampilkan secara horizontal.
- Icon(), memberikan ikon pada sebuah widget.
- Padding(), widget yang memasukkan anaknya dengan padding yang diberikan.
- DropdownButton(), material design button untuk menampung list of item.
- showDatePicke()r, material design untuk menampilkan dialog date picker.
- dll.
- 
## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

- onPressed
- onChange
- onSaved
- onTap
- onHover
- onFocusChange
- onLongPress
 
## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

Widget Navigator bekerja dengan menampilkan screen teratas pada stack of route dengan memperhatikan method yang digunakan pada object Navigator. Dalam melakukan navigasi ke layar baru, BuildContext yang menyimpan route widget akan diakses oleh Navigator dengan menggunakan method pada class Navigator seperti push(), pop(), pushReplacement(), dan lain-lain.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Membuat halaman baru bernama tambah_budget dan data_budget
- Membuat custom Drawer widget dengan menerapkan seperation concern by refactoring untuk ditampilkan di tiap halaman
- Set up navigasi halaman pada Drawer
- Membuat global List yang terletak pada root widget untuk menyimpan object Budget
- Implementasi halaman form dengan beberapa widget TextFormField (judul dan nominal), DatePicker (tanggal), dan DropdownMenu (jenis)
- Membuat Save button untuk menyimpan transaksi baru ke dalam global List
- Menampilkan semua object Budget dengan custom Card widget dengan melakukan iterasi

--------------------------------------------------------------------------------------------------------------------------------------------------------------------
# Tugas 7: Elemen Dasar Flutter

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

setState() yang akan bertugas untuk memberitahu widget bahwa ada objek yang berubah pada State sehingga aplikasi akan memuat ulang widget tersebut dengan nilai yang sudah diubah. setState() yang berada pada fungsi _decrementCounter() dan _incrementCounter() akan berdampak pada variabel _counter yang akan melakukan perubahan angka saat increment dan pengurangan angka saat decrement.

## Jelaskan perbedaan antara const dengan final.

Perbedaan utama ada pada inialisasi nilai (pemberian nilai) dari variabelnya, const mengharuskan variabel harus dinialisasi pada saat kompilasi, nilai bersifat konstan dan secara langsung / eksplisit sehingga pada saat kompilasi variabel const sudah memiliki nilai, sedangkan final tidak mengharuskan variabel memiliki nilai secara langsung / eskplisit pada saat kompilasi.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

- Membuat condition if-else berdasarkan nilai [_counter]
- Membuat Text Widget Genap dan Ganjil, dan melakukan styling warna
- Menambahkan fungsi decrementCounter
- Membuat Widget FloatingActionButton baru dibagian bawah kiri dan mengimplementasikan fungsi decrementCounter

-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Bulan Mei 2021 pada 15.22
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_personal`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel`
--

CREATE TABLE `artikel` (
  `id_artikel` int(11) NOT NULL,
  `kode_artikel` char(10) NOT NULL,
  `judul_artikel` varchar(100) NOT NULL,
  `isi_artikel` text NOT NULL,
  `gambar` varchar(100) NOT NULL DEFAULT 'gambar_default.png',
  `tanggal` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `kode_artikel`, `judul_artikel`, `isi_artikel`, `gambar`, `tanggal`, `status`, `id_kategori`, `id_pengguna`) VALUES
(98, 'A0094', 'Manfaat Buah untuk Tubuh Kita', 'Sumber Vitamin, Berbagai jenis vitamin ada di buah.\r\nSumber Air dan Gizi, buah merupakan salah satu sumber air untuk tubuh dan kebutuhan gizi yang dapat meningkatkan metabolisme tubuh.\r\nSumber antioksidan, buah merupakan salah satu sumber antioksidan alami\r\nMencegah penyakit tertentu. Buah-buahan merupakan salah satu cara untuk menghindarkan kita agar tidak terserang penyakit berbahaya dan berbagai penyakit lainnya.\r\nObat luar tubuh, buah-buahan juga dapat digunakan untuk obat luar seperti jerawat, bisul dan sebagainya.', 'fruit.png', '2021-04-22 06:06:28', 1, 14, 0),
(100, 'A0100', '40 Contoh Soal Basis Data Pilihan Ganda', 'DBMS adalah singkatan dari\r\nA. Data Manipulation System\r\nB. Database Manipulation System\r\nC. Data Management System\r\nD. Database Management System\r\n2. Dibawah ini adalah salah satu tujuan atau manfaat penggunaan DBMS, Kecuali\r\n\r\nA. Akses data lebih mudah dan cepat\r\nB. Dapat menangani data-data dalam jumlah besar\r\nC. Membuat pekerjaan menjadi kompleks\r\nD. Menghilangkan hasil duplikasi maupun inkonsistensi data\r\n3. Berikut ini contoh DBMS, Kecuali\r\n\r\nA. MySQL\r\nB. PostgreSQL\r\nC. Oracle\r\nD. Excel\r\n4. Kepanjangan dari SQL adalah\r\n\r\nA. Structured Question Language\r\nB . Strong Question Language\r\nC. Structured Query Language\r\nD. Strong Query Language\r\n5. Perintah untuk membuat database adalah\r\n\r\nA. CREATE DATABASE\r\nB. CREATE TABLE\r\nC. CREATE DB\r\nD. CREATE DATABASE TABLE\r\n6. Perintah untuk membuat tabel baru di dalam sebuah database adalah\r\n\r\nA. CREATE DATABASE\r\nB. CREATE TABLE\r\nC. CREATE DATABASE TABLE\r\nD. CREATE TAB\r\n7. Perintah untuk update data di database adalah\r\n\r\n\r\n \r\nA. SELECT\r\nB. UPDATE\r\nC. MODIFY\r\nD. EXTRACT\r\n8. Perintah untuk menghapus data di database adalah\r\n\r\nA. REMOVE\r\nB. SAVE AS\r\nC. DELETE\r\nD. MODIFY\r\n9. Perintah yang digunakan untuk menambah data baru adalah\r\n\r\nA. ADD NEW\r\nB. INSERT INTO\r\nC. INSERT NEW\r\nD. ADD INTO\r\n10. Berikut adalah perintah yang benar untuk menambah data ke dalam tabel siswa\r\n\r\nINSERT INTO siswa VALUES (‘Dimas’,’Rini’,’Aldi’);\r\nINSERT NEW (‘Dimas’,’Rini’,’Aldi’) INTO siswa\r\nADD INTO siswa VALUES (‘Dimas’,’Rini’,’Aldi’);\r\nSELECT INTO siswa VALUES (‘Dimas’,’Rini’,’Aldi’)\r\n11. Berikut adalah perintah untuk menampilkan kolom nama dari tabel siswa\r\n\r\nA. SELECT nama FROM siswa\r\nB. EXTRACT nama FROM siswa\r\nC. DELETE nama FROM siswa\r\nD. SHOW nama FROM siswa\r\n12. Berikut adalah perintah untuk menampilkan seluruh kolom di dalam tabel siswa\r\n\r\nA. SELECT ALL FROM siswa\r\nB. SELECT siswa\r\nC. SELECT * FROM siswa\r\nD. SELECT % FROM siswa\r\n13. Untuk membuat suatu kondisi menggunakan pernyataan?\r\n\r\nA. SELECT\r\nB. FROM\r\nC. WHERE\r\nD. ORDER BY\r\n14. Perintah SQL untuk menampilkan seluruh data dalam tabel siswa di mana nilai (value) pada kolom nama adalah ‘Bayu’\r\n\r\n\r\n \r\nA. SELECT * FROM siswa WHERE nama=’Bayu’\r\nB. SELECT ALL FROM siswa WHERE nama LIKE ‘Bayu’\r\nC. SELECT nama FROM siswa WHERE nama=’Bayu’\r\nD. SELECT * FROM siswa WHERE nama&lt;&gt;’Bayu’\r\n15. Operator yang digunakan untuk mencari data berdasarkan pola tertentu adalah\r\n\r\nA. LIKE\r\nB. LEN\r\nC. ORDER BY\r\nD. DISTINCT\r\n16. Berikut perintah SQL untuk menampilkan kolom nama pada tabel siswa yang nilainya diakhiri dengan kata ”Adi’\r\n\r\nA. SELECT * FROM siswa WHERE nama LIKE ‘%Adi’\r\nB. SELECT * FROM siswa WHERE nama LIKE ‘Adi%’\r\nC. SELECT nama FROM siswa WHERE nama LIKE ‘*Adi’\r\nD. SELECT nama FROM siswa WHERE nama LIKE ‘Adi’\r\n17. Operator AND akan menampilkan records jika semua kondisi bernilai TRUE\r\n\r\nA. BENAR\r\nB. SALAH\r\n18. Operator OR akan menampilkan records jika semua kondisi bernilai FALSE\r\n\r\nA. BENAR\r\nB. SALAH\r\n19. Kata Kunci untuk mengurutkan hasil query adalah\r\n\r\nA. OREDER BY\r\nB. SORT BY\r\nC. ORDER\r\nD. SORT\r\n20. Kata kunci untuk mengurutkan hasil query secara Ascending (urutan dari terkecil ke besar) adalah\r\n\r\n\r\n \r\nA. ASC\r\nB. DESC\r\nC. RISE\r\nD. ASCEND\r\n21. Kata kunci DESC digunakan untuk mengurutkan hasil query secara Descending (urutan dari terbesar ke terkecil). Pernyataan ini adalah\r\n\r\nA. Benar\r\nB. Salah\r\n22. Perintah untuk update nama siswa pada kolom nama di tabel siswa dari yang sebelumnya bernama ‘Rini’ menjadi ‘Tuti’\r\n\r\nA. UPDATE siswa SET nama=’Tuti’ WHERE nama=’Rini’\r\nB. MODIFY siswa SET nama=’Tuti’ WHERE nama=’Rini’\r\nC. UPDATE nama=’Tuti’ FROM siswa WHERE nama=’Rini’\r\nD. UPDATE FROM siswa SET nama=’Tuti’ WHERE nama=’Rini’\r\n23. Perintah SQL untuk menghapus data bernama ‘Dimas’ di dalam tabel siswa\r\n\r\nA. DELETE nama=’Dimas’ FROM siswa\r\nB. DELETE FROM siswa WHERE nama=’Dimas’\r\nC. REMOVE FROM siswa WHERE nama=’Dimas’\r\nD. REMOVE nama=’Dimas’ FROM siswa\r\n24. Perintah SQL untuk menghitung seluruh record di dalam tabel di database adalah\r\n\r\nA. LEN (*)\r\nB. COUNT(*)\r\nC. DISTINCT (*)\r\nD. ROW(*)\r\n25. Untuk membuat relasi atau hubungan antar tabel menggunakan perintah\r\n\r\nA. LAST JOIN\r\nB. INNER JOIN\r\nC. JOINED\r\nD. INSIDE JOIN\r\n26. Berikut adalah operator yang digunakan untuk memilih nilai dalam rentang tertentu\r\n\r\nA. JOIN\r\nB. WITHIN\r\nC. RANGE\r\nD. BETWEEN\r\n27. Saat membuat tabel batasan NOT NULL digunakan untuk mewajibkan field tidak boleh kosong. Pernyataan ini bernilai?\r\n\r\nA. BENAR\r\nB. SALAH\r\n28. Berikut adalah perintah-perintah SQL yang termasuk dalam kelompok DDL (Data Definition Language), kelucali\r\n\r\nA. CREATE\r\nB. ALTER\r\nC. RENAME\r\nD. SELECT\r\n29. Berikut adalah perintah-perintah SQL yang termasuk dalam kelompok DML (Data Manipulation Language)\r\n\r\nA. SELECT\r\nB. ALTER\r\nC. INSERT\r\nD. UPDATE\r\n30. Berikut adalah perintah SQL yang termasuk dalam kelompok DCL (Data Control Language)\r\n\r\nA. GRANT dan REVOKE\r\nB. INSERT dan DELETE\r\nC. SELECT dan UPDATE\r\nD. DROP dan DELETE\r\n31. Kelompok perintah SQL yang berhubungan dengan pendefinisian suatu struktur database adalah\r\n\r\nA. DDL (Data Definition Language)\r\nB. DML (Data Manipulation Language)\r\nC. DCL (Data Control Language)\r\nD. Tidak ada yang benar\r\n32. Kelompok perintah SQL yang berhubungan dengan manipulasi atau pengolahan data atau record dalam tabel adalah\r\n\r\nA. DDL (Data Definition Language)\r\nB. DML (Data Manipulation Language)\r\nC. DCL (Data Control Language)\r\nD. Tidak ada yang benar\r\n33. Perintah SQL yang digunakan untuk memberikan hak akses atau izin pada user di database adalah\r\n\r\nA. GRANT\r\nB. REVOKE\r\nC. DISTINCT\r\nD. AUTO_INCREMENT\r\n34. Perintah untuk menghapus atau atau mencabut izin hak akses user di database adalah\r\n\r\nA. GRANT\r\nB. REVOKE\r\nC. DISTINCT\r\nD. AUTO_INCREMENT\r\n35. Ciri-ciri field yang paling cocok untuk digunakan sebagai primary key (kunci utama) adalah\r\n\r\nA. Bersifat umum\r\nB. Bersifat unik\r\nC. Mudah di ingat\r\nD. Memiliki kesamaan dengan yang lain\r\n36. Di dalam tabel siswa terdapat beberapa field (kolom) yang bisa dijadikan sebagai primary key, yaitu\r\n\r\nA. NIS (Nomor Induk Siswa)\r\nB. Nama\r\nC. Usia\r\nD. Alamat\r\n37. Fungsi untuk mendapatkan nilai rata-rata adalah\r\n\r\nmax()\r\navg()\r\nmin()\r\nsum()\r\n38. Fungsi sum() berfungsi untuk menjumlahkan nilai (value) dalam suatu field (kolom). Pernyataan ini bernilai\r\n\r\nA. Benar\r\nB. Salah\r\n39. Untuk mengelompokan suatu data yang sama dalam satu kelompok menggunakan perintah\r\n\r\nORDER BY\r\nGROUP BY\r\nWHERE\r\nLIKE\r\n40. Untuk mengubah struktur tabel menggunakan perintah?\r\n\r\nA. WHERE\r\nB. DISTINCT\r\nC. ALTER TABLE\r\nD. MODIFY TABLE\r\nSekian artikel mengenai 40 contoh soal basis data pilihan ganda untuk kelas 11 semester 1 dan 2 semoga bermanfaat dan membantu teman-teman semuanya.\r\n\r\nJika pembahasan yag saya tulis diatas ada yang keliru mohon untuk dapat di koreksi melalui kolom komentar dibawah, Sekian, Terimakasih.', '40 CONTOH SOAL BASIS DATA.png', '2021-04-22 05:59:32', 1, 16, 0),
(101, 'A0101', '13 Teknologi Masa Depan: Beberapa Sudah Ada di 2021', 'Teknologi Canggih Masa Depan\r\nNah, mau tahu teknologi masa depan tercanggih yang sudah atau akan terwujud? Simak beberapa teknologi mengagumkan yang bahkan sebelumnya hanya sebuah khayalan kini menjadi kenyataan:\r\n\r\n1. Smartphone dengan Layar Fleksibel\r\nteknologi masa depan\r\nSumber Gambar: The Big Tech Question\r\nTeknologi masa depan handphone fleksibel diinisiasi oleh Samsung. Samsung mengembangkan layar Super Active Matrix Organic Light Emitting Diode (AMOLED) atau Super AMOLED yang bisa dibengkokkan dan dilipat.\r\n\r\nKedepannya, yang akan menjadi tren bukanlah smartphone dengan bodi tipis, tapi adalah fleksibilitas bodi dengan layar penuh yang memudahkan pengguna menyimpan handphone-nya.\r\n\r\nProduk ponsel canggih ini pun sudah bisa dibeli secara luas, seperti Samsung Galaxy Z Flip, Huawei Mate XS maupun Motorola RAZR generasi terbaru.\r\n\r\n2. Handphone Hologram\r\n\r\nHologram adalah teknologi yang dapat digunakan untuk berbagai tujuan seperti pendidikan, hiburan, atau bisnis. Dengan hologram, kamu dapat melihat visual suatu objek secara 3D dan imersif tanpa harus berada di dekat objek tersebut.\r\n\r\nSebuah proyek menarik dengan teknologi hologram pernah dilakukan untuk membuat penonton berinteraksi langsung dengan survivor holocaust tanpa keberadaannya di panggung. Excited? Simak videonya di atas!\r\n\r\n3. Sneakers Pintar\r\nPerkembangan teknologi masa depan tercanggih sepatu pintar\r\nSumber Gambar: Tech in Asia\r\nSepatu pintar ini dapat mendeteksi gerakan penggunanya dari dari berjalan, lari, hingga mendaki. Nantinya sepatu pintar ini akan mengirimkan informasi seperti jarak yang ditempuh, kecepatan, dan jumlah kalori terbakar ke smartphone yang kamu pairing.\r\n\r\nCanggihnya, sepatu pintar ini ditenagai baterai yang mampu bertahan selama 60 hari lho, Toppers!\r\n\r\nSalah satu produk sepatu pintar yang kini bisa kamu temukan di pasaran adalah Nike Adapt BB.\r\n\r\n4. Autonomous Car\r\n\r\nAutonomous car atau biasa juga dikenal dengan istilah self-driving car, adalah kendaraan mobil yang mampu membawa penumpangnya tanpa harus dikemudikan oleh supir. Sistem kerjanya adalah dengan kamera sensor khusus yang mendeteksi gerakan dan lingkungan sekitar kendaraan.\r\n\r\nKemudian citra dari kamera tersebut diproses dengan kecerdasan buatan untuk menentukan arah dan tujuan kendaraan tersebut. Canggih kan? Kamu bisa lihat betapa kerennya mobil nirawak ini pada video demo dari Tesla di atas!\r\n\r\n5. Hoverboard atau Skateboard Terbang\r\nTeknologi Masa Depan canggih seperti Hoverboard sudah mulai menjadi tren\r\nSumber Gambar: Techadvisor\r\nKalau ini sih bukan masa depan lagi, memang sudah ada dan mulai dijual di pasaran. Self-balancing scooter atau dikenal dengan hoverboard ini akan menjadi tren kendaraan sekarang. Hoverboard bekerja dengan cara menyeimbangkan otomatis kondisi badanmu dan navigasinya.\r\n\r\nNamun, sebenarnya hoverboard yang diharapkan di masa depan adalah perangkat mirip skateboard yang penggunaannya benar-benar tanpa roda dan bisa terbang melayang.\r\n\r\nSudah ada beberapa perusahaan yang tengah mengembangkan ini, dan mungkin kita bisa melihatnya dalam waktu dekat.\r\n\r\n6. Mesin Pelipat Pakaian\r\nteknologi masa depan\r\nSumber Gambar: YouTube/TechCrunch\r\nMalas melipat baju di rumah atau capek karena cucian yang menumpuk menunggu untuk dilipat? Sebentar lagi akan ada mesin pelipat baju yang akan membantumu!\r\n\r\nDengan mesin pelipat baju ini, kamu hanya perlu menggantung baju yang ingin dilipat pada mesin kemudian mesin ini akan otomatis melipatkannya untukmu.\r\n\r\njual hp bekas online\r\nBingung HP lama mau dikemanain? Jual aja di sini, dijamin Langsung Laku!\r\nBACA JUGA: REKOMENDASI TABLET TERBAIK: ANDALAN BELAJAR, KERJA &amp; MULTIMEDIA\r\n\r\n7. Kereta Hyperloop\r\nPerkembangan teknologi masa depan canggih di dunia transportasi, Hyperloop\r\nSumber Gambar: Techcrunch\r\nHyperloop mulai diperkenalkan oleh founder dari The Boring Company yang juga merupakan CEO Tesla dan Space X, Elon Musk.\r\n\r\nElon berambisi untuk mendorong kota-kota besar memiliki moda transportasi yang cepat, aman, dan mampu mengangkut banyak penumpang. Dengan Hyperloop, 20-40 penumpang bisa diangkut dengan kecepatan 1.700 km/jam!\r\n\r\n8. Mobil Terbang\r\nteknologi masa depan tercanggih\r\nSumber Gambar: CNBC\r\nMobil ini seperti kendaraan di film-film sci-fi. Sebentar lagi kamu akan melihat perkembangan teknologi masa depan mobil melayang di angkasa!\r\n\r\nMobil ini bisa berjalan di jalan biasa dan udara. Penggunanya pun memerlukan sertifikasi pilot untuk menjamin keselamatan operasional mobil terbang ini.\r\n\r\n9. Wisata Luar Angkasa\r\nteknologi canggih\r\nSumber Gambar: Forbes\r\nPerkembangan teknologi masa depan di dunia antariksa juga amat pesat. Sebentar lagi, kamu akan bisa menikmati berwisata dan melihat-lihat Bulan dan Bumi dari atas ruang hampa udara di luar angkasa.\r\n\r\nBadan Antariksa Amerika Serikat (NASA) dan SpaceX sedang mengusahakan hal ini, dan orang-orang bisa mendaftar untuk perjalanan luar angkasa pada 2019.\r\n\r\n10. Senjata Laser\r\nteknologi canggih masa depan\r\nSumber Gambar: The News International\r\nPerkembangan teknologi masa depan di sektor militer meyakini senjata laser akan menjadi senjata generasi selanjutnya. Prototipe senjata laser yang telah diujicoba mampu menghancurkan kapal kecil, menembak jatuh rudal dan pesawat nirawak.\r\n\r\nNamun, senjata ini belum mampu mengubah wajah peperangan di dunia karena belum diproduksi dalam jumlah besar. Laser merupakan berkas cahaya yang dapat melaju dengan kecepatan cahaya mencapai 300.000.000 meter per detik!\r\n\r\n11. Robot Tentara\r\nteknologi masa depan tercanggih\r\nSumber Gambar: Lifeboat Foundation\r\nRobot tentara juga diprediksi akan menjadi objek perkembangan teknologi masa depan tercanggih di dunia militer. Akurasi dan perhitungan komputer serta pengurangan korban nyawa manusia menjadi alasan kuat bagi negara-negara seperti China dan Amerika Seirkat mengembangkan teknologi ini.\r\n\r\n12. Survey Cuaca dan Pemilihan Partai dengan Artificial Intelligence\r\nteknologi masa depan tercanggih\r\nSumber Gambar: IndianWeb2\r\nProyek terbaru James Bridle ingin menujukkan bahwa kondisi cuaca mempengaruhi jumlah voting pada pemilu. Ia kemudian membangun model machine learning untuk memprediksi hasil pemilu berdasarkan kondisi cuaca tersebut.\r\n\r\nRandom memang, tapi pada intinya artificial intelligence memang sudah banyak digunakan pada kehidupan nyata pada saat ini, meski penggunaannya bisa dibilang masih pada tahap awal dan masih butuh penyempurnaan lagi ke depannya.\r\n\r\n13. Mungkinkah Teleportasi Terwujud?\r\n\r\nTeleportasi sejauh ini baru saja bisa kamu temukan di atas kertas dan jurnal penelitian ilmiah dalam bentuk persamaan matematis. Namun, jika konsep matematisnya ada, bisa jadi teleportasi dapat menjadi perkembangan teknologi masa depan.\r\n\r\nTeleportasi ditengarai oleh konsep wormhole yang ditemukan akibat teori relativitas Einstein dan gravitas sebagai konsep ruang dan waktu. Simak video di atas untuk penjelasan mudah dan seru mengenai konsep teleportasi wormhole.\r\n\r\nYang menarik, ilmuwan Rusia yang bekerja untuk Vladimir Putin mengklaim tengah mengambangkan teknologi teleportasi ini dan benar-benar akan menghadirkannya ke dunia nyata. Teleportasi seperti di film Star Trek ini disebut bakal rampung pada 2035 mendatang.', 'tekno hp.png', '2021-04-22 05:58:00', 1, 16, 0),
(102, 'A0102', 'Implementasi Teknologi Augmented Reality', 'Abstract\r\n\r\nAugmented Reality (AR) adalah teknologi interaktif yang mampu memproyeksikan objek maya ke dalam objek nyata secara real time. Perkembangan teknologi AR dewasa ini telah memberikan banyak kontribusi ke dalam berbagai bidang [1]. Salah satu implementasi AR di bidang edukasi seperti AR Book. Buku merupakan salah satu media pembelajaran yang banyak digunakan. Selain itu, buku jg digunakan sebagai alat berkomunikasi oleh guru maupun orang tua terhadap anak-anak, misalkan seperti jenis buku panduan mengenai tatacara wudhu. Wudhu adalah suatu bentuk peribadatan kepada Allah Ta’ala dengan mencuci anggota tubuh tertentu dengan tata cara yang khusus, wudhu khususnya diperintahkan sebelum melaksankan ibadah shalat dan thawaf. Umat muslim harus mengetahui tatacara berwudhu yang benar. Salah satu sistem operasi yang digunakan mobilephone atau smartphone yaitu android. Android adalah sebuah sistem operasi untuk perangkat mobile yang berbasis linux yang bersifat open source. Dengan memanfaatkan media mobile untuk membangun aplikasi menggunakan teknologi augmented reality sebagai media pembelajaran aplikasi AR berbasis Mobile mempunyai keunggulan karena sifatnya yang mudah berpindah.', 'augmented reality.png', '2021-04-22 06:00:52', 1, 16, 0),
(103, 'A0103', 'Pantai Semeti Lombok', 'Mengenai Lebih Dekat Pantai Semeti Lombok\r\nPantai Semeti berada di Lombok Tengah, yang lokasi nya tak jauh dari Pantai Mawun dan Pantai Kuta Lombok. Pantai Semeti sedang naik daun karena banyaknya orang-orang yang mengupload fotonya saat liburan ke Pantai Semeti dan foto-foto yang mereka upload terlihat bagus membuat yang lain pada penasaran.Sebelumnya Pantai Semeti memang tak banyak ditahu oleh para wisatawan bahkan penduduk Lombok pun belum banyak yang tahu Pantai Semeti Lombok. Jadi jangan heran, karena Pantai Semeti ini lokasinya tersembunyi.\r\n\r\nAkses Menuju Pantai Semeti\r\nUntuk Anda bisa ke Pantai Semeti, jika dari Bandara Internasional Lombok (BIL) Anda ikutin jalan kearah Pantai Kuta Lombok yang merupakan rutenya lumayan jauh jika melewati rute Jl. Kuta Lombok tapi Anda bisa menikmati pemandangan alam yang memukau disepanjang perjalanan Anda.\r\n\r\nAtau Anda bisa melalui Pantai Selong Belanak dengan jalan yang lebih cepat tapi sepanjang perjalanan Anda tidak bisa menyaksikan pemandangan alam yang indah seperti melalui jalan Kuta Lombok.\r\n\r\nKarena jalan menuju ke Pantai Semeti yang masih sepi dengan belum ada nya penduduk disekitar pantai, jadikami sarankan Anda untuk menggunakan jasa travel dengan memilih sewa mobil di Lombok. Dengan Anda menggunakan jasa sewa mobil di Lombok, wisata Anda akan lebih nyaman.\r\n\r\nPanorama Pantai Semeti di Lombok\r\nSeperti pantai yang lain diLombok Tengah, di Pantai Semeti Anda akan banyak melihat aneka bentuk batu karang. Di Pantai Semeti batu karangnya berbeda dengan pantai lainnya karena batu karangnya tak hanya membentuk seperti perbukitan, tapi juga membetuk tonggak– tonggak seperti balok – balok kristal.\r\n\r\nPasir di Pantai Semeti halus seperti pasir dipantai lainnya, tapi pasir didekat parkiran kasar seperti butiran merica,tapi pasirnya ini lebih halus kalau di bandingkan dengan pasir di Pantai Kuta Lombok.\r\n\r\nAir lautnya disini sangat jernih disaat pasang ataupun surut. Saat airlautnya surut Anda bisa melihat bebatuan berserakan yang lumayan besar menghadap kearah laut.\r\n\r\nJika Anda ingin menikmati pemandangan yang lebih luar biasa menakjubkan, Anda dapat naik ke beberapa bukit yang ada disekitar Pantai Semeti. Melalui atas bukit ini Anda bisa menyaksikan pemandangan lebih luas dan bebas dengan pemandangan nya yang begitu indah. Disepanjang garis Pantai Semeti, Anda akan melihat deburan ombak yang tak henti – hentinya menghatam batu karang.\r\n\r\nMencoba Aktifitas Yang Lain di Pantai cantik Lombok Ini.', 'Wisata pantai terbaik.png', '2021-04-22 06:05:19', 1, 20, 0),
(104, 'A0104', '11 Wisata Alam Jawa Tengah Ini Punya Panorama Menakjubkan', 'Berdiri di atas lahan seluas 32.548 km persegi, Jawa Tengah memiliki banyak wisata alam yang tersebar di berbagai penjuru kota dan kabupatennya. Mulai dari pantai hingga gunung, semua bisa kamu jelajahi di provinsi ini. Pemandangan alamnya pun benar-benar akan memanjakan kamu dan membuat siapapun betah untuk berlama-lama menghabiskan waktu di sana.\r\n\r\nPenasaran di mana saja wisata alam Jawa Tengah yang menarik untuk dikunjungi? Tenang saja, Traveloka telah merangkum daftarnya di bawah ini:\r\n\r\n1. Dataran Tinggi Dieng, Banjarnegara-Wonosobo\r\n\r\nPhoto Credit: Shutterstock\r\n\r\nSecara administratif, Dataran Tinggi Dieng masuk ke wilayah Kabupaten Wonosobo. Di sini, kamu akan menemukan banyak daya tarik alam yang akan membuat siapa pun takjub. Salah satunya adalah keberadaan Telaga Warna yang kondisi warna airnya sering berubah. Kabarnya, perubahan warna tersebut terjadi karena tingginya kandungan sulfur di dalamnya.\r\n\r\nAda pula Kawah Sikidang dengan aktivitas vulkanik yang masih aktif. Kontur kawahnya cukup datar, sehingga kamu bisa melihat gumpalan asap kawah yang mengandung belerang. Tak ketinggalan, Kompleks Candi Dieng yang berdiri di atas lahan seluas kurang lebih 1,8 km x 0,8 km. Tempat ini merupakan kompleks Candi Hindu Syiwa yang kabarnya telah dibangun pada abad ke-8.\r\n\r\n2. Gunung Merbabu, Boyolali\r\n\r\nPhoto Credit: Shutterstock\r\n\r\nMemiliki medan yang tidak terlalu sulit, Gunung Merbabu menjadi salah satu destinasi favorit para pendaki, bahkan untuk pemula. Puncak tertingginya berada di ketinggian 3.142 mdpl, yakni Puncak Kenteng Songo. Pemandangan alam di sini tentu tak perlu diragukan lagi. Kamu bahkan bisa sekaligus melihat dua Gunung Kembar Sindoro dan Sumbing.\r\n\r\nJika beruntung, kamu pun bisa melihat beberapa hewan liar seperti burung, monyet, dan beruk selama mendaki. Selain puncak, terdapat sebuah padang sabana luas dan indah yang biasa dijadikan spot beristirahat para pengunjung. Dengan begitu, kamu bisa menikmati suasana pegunungan sekaligus berfoto di berbagai area sabana.\r\n\r\n3. Pantai Menganti, Kebumen\r\n\r\nPhoto Credit: Shutterstock\r\n\r\nSiapa bilang hanya Bali yang memiliki banyak pantai indah? Di Desa Karangduwur, Kebumen, kamu bisa menemukan sebuah pantai eksotis bernama Pantai Menganti. Lokasinya memang cukup sulit dijangkau karena akses yang belum terlalu memadai. Namun, perjalanan kamu dijamin akan terbayar saat sampai di lokasi pantai.\r\n\r\nAir lautnya jernih dengan gradasi warna biru dan hijau. Hamparan pasir putih pun menjadi daya tarik tersendiri bagi pantai di Kebumen ini. Di sini, pengunjung juga diperbolehkan untuk bermain air maupun berenang karena kondisi ombak yang cukup tenang. Jika ingin menikmati keindahan tersebut, siapkanlah bujet Rp10.000 per orang sebagai tiket masuk ya!\r\n\r\n4. Puncak Argopuro Lasem, Rembang\r\n\r\nPhoto Credit: Shutterstock\r\n\r\nLokasi Puncak Argopuro Lasem memang tidak terlalu tinggi, yakni “hanya” di ketinggian 806 mdpl. Meski begitu, jalur pendakian yang harus ditempuh cukup panjang sehingga kamu tetap perlu mempersiapkan stamina. Ada dua jalur pendakian yang bisa kamu tempuh untuk mencapai Puncak Argopuro Lasem, yaitu melalui Desa Siwalan Sukun, Sedan atau Desa Ngroto, Pancur.\r\n\r\nPendakian menuju puncak biasanya memerlukan waktu tempuh sekitar 2,5 jam. Memang cukup lama, tapi rasa lelahmu dijamin akan langsung terbayar begitu disambut oleh pemandangan alam khas pegunungan. Suasananya tenang dengan udara sejuk, cocok bagi kamu yang ingin kabur sejenak dari hiruk pikuk kesibukan kota.\r\n\r\n5. Rawa Pening, Semarang\r\n\r\nPhoto Credit: Shutterstock\r\n\r\nDulunya, Rawa Pening adalah sebuah danau air dalam, tetapi mengalami pendangkalan akibat menjadi hulu dari Sungai Tuntang. Meski begitu, Rawa Pening tetap memiliki daya tarik tersendiri. Salah satunya adalah pemandangan alam yang menarik karena dikelilingi oleh tiga gunung sekaligus, yaitu Ungaran, Telomoyo, dan Merbabu. Danaunya sendiri banyak ditumbuhi tanaman eceng gondok.\r\n\r\nJika tertarik mengunjungi Rawa Pening, jangan lupa siapkan uang sekitar Rp7.500 sebagai tiket masuk. Setiap harinya, danau yang berbatasan dengan empat kecamatan di Semarang ini buka pukul 08:30–21:00.\r\n\r\n6. Bukit Pangonan, Banyumas\r\n\r\nPhoto Credit: Shutterstock\r\n\r\nKamu yang berada di kawasan Dieng perlu mampir ke wisata alam Jawa Tengah satu ini. Di sebelah selatan Dieng, terdapat Bukit Pangonan yang menawarkan pemandangan alam tak kalah indah dari Dataran Tinggi Dieng. Destinasi ini pun kerap dijadikan alternatif bagi kamu yang ingin menjelajah Gunung Dieng tapi khawatir waktu dan tenaga akan terkuras.\r\n\r\nDaya tarik Bukit Pangonan terletak pada lembah luas yang berada di area puncaknya. Lembah tersebut terbentuk dari bekas cekungan danau yang mengering. Seiring berjalannya waktu, cekungan tersebut ditumbuhi ilalang sehingga membentuk area padang sabana yang tampak asri dan cantik. Untuk itu, jangan lupa bawa kamera kamu untuk mengabadikannya, ya!\r\n\r\n7. Brown Canyon, Semarang\r\n\r\nPhoto Credit: Shutterstock\r\n\r\nTidak perlu jauh-jauh ke Amerika Serikat untuk menyaksikan kemegahan Grand Canyon. Di perbatasan Kota Semarang dan Kabupaten Demak, tepatnya Desa Rowosari, Tembalang, terdapat sebuat tempat wisata alam yang akan mengingatkan kamu dengan Grand Canyon. Namanya Brown Canyon, sebuah area bekas galian bukit yang kini menjadi perbukitan berbatu curam.\r\n\r\nNah, batu-batu tersebut berukuran sangat besar dengan warna merah kecokelatan, menciptakan pemandangan yang menarik untuk dijelajahi. Untuk bisa melihat sendiri keindahan pemandangan di Brown Canyon, kamu hanya perlu membayar tiket masuk seharga kurang lebih Rp5.000. Cukup terjangkau, bukan?\r\n\r\n8. Telaga Sunyi, Purwokerto\r\n\r\nPhoto Credit: Shutterstock\r\n\r\nWisata alam Jawa Tengah satu ini cocok bagi kamu yang kurang suka dengan keramaian. Sesuai namanya, Telaga Sunyi adalah sebuah mata air alami yang lokasinya cukup terpencil sehingga suasananya pun cenderung sunyi. Kedalamannya kurang lebih 3 meter saat musim kemarau dan bisa mencapai 5 meter saat musim hujan.\r\n\r\nDemi menjaga kelestarian mata air, kamu dilarang berenang atau mandi di Telaga Sunyi. Biasanya, pengunjung akan menikmati pemandangan alam dengan duduk di sekitar telaga. Udara yang sejuk akan membuat kamu merasa lebih rileks danfreshsebelum melanjutkan perjalanan ke tempat wisata lainnya.\r\n\r\n9. Wisata Alam Lembah Sindoro Posong, Temanggung\r\n\r\nPhoto Credit: Shutterstock\r\n\r\nDi Posong, Temanggung, terdapat sebuah wisata alam yang tak kalah menarik untuk dikunjungi yakni Lembah Sindoro Posong. Lokasinya berdekatan dengan dua gunung kembar Sindoro dan Sumbing. Jadi, di Lembah Sindoro Posong ini kamu bisa menikmati panorama indah pegunungan dan udara sejuk sembari duduk di gubuk yang tersedia.\r\n\r\nSetiap harinya, Lembah Sindoro Posong buka pukul 04:00–17:00. Dengan begitu, kamu bisa menikmati pemandangansunrisedi sini jika berminat. Sebaiknya datanglah menggunakan motor karena akses jalan menuju Lembah Sindoro Posong masih cenderung sempit. Jangan lupa juga siapkan uang sekitar Rp4.000 per orang untuk membayar tiket masuk, ya.\r\n\r\n10. Waduk Malahayu, Brebes\r\n\r\nPhoto Credit: Shutterstock\r\n\r\nBagi yang sedang berada di Brebes, kamu bisa berlibur ke Waduk Malahayu. Lokasinya terletak di Desa Malahayu, Brebes. Dari Terminal Tanjung, kamu bisa naik angkutan umum menuju Pasar Banjarharjo, lalu dilanjutkan dengan ojek atau menyewa kendaraan pribadi.\r\n\r\nDi sepanjang perjalanan, kamu akan melewati hutan jati yang ada di wilayah Tanjung. Begitu sampai di Waduk Malahayu, siap-siap pula disambut dengan pemandangan bendungan seluas kurang lebih 944 hektar yang dikelilingi oleh perbukitan. Bisa kamu bayangkan keindahannya, bukan?\r\n\r\n11. Goa Rong, Semarang\r\n\r\nPhoto Credit:@wisatasemarang\r\n\r\nMeski namanya Goa Rong, wisata alam Jawa Tengah satu ini bukanlah sebuah gua. Wisata alam ini merupakan perbukitan dengan gardu pandang yang dikelilingi oleh pemandangan menarik khas pegunungan. Sejauh mata memandang, kamu akan disuguhi oleh pelataran hijau yang menyejukkan mata.\r\n\r\nGoa Rong juga merupakan destinasi wisata yang ramah keluarga karena tersedia fasilitas area bermain untuk anak-anak. Jika tertarik untuk mengunjunginya, siapkan uang Rp3.000 per orang untuk tiket masuk saat hari biasa atau Rp5.000 saat akhir pekan.\r\n\r\n***\r\n\r\nBagaimana menurut kamu? Berbagai wisata alam Jawa Tengah tersebut terdengar sangat menarik untuk dikunjungi, bukan? Tentunya kamu akan membutuhkan banyak waktu jika memang ingin mengunjungi sebanyak mungkin tempat wisata tersebut. Ajak juga teman atau keluarga kamu agar liburan di Jawa Tengah jadi lebih seru dan berkesan juga ya!', 'gambar pegunungan.png', '2021-04-22 06:02:14', 1, 20, 0),
(105, 'A0105', 'Tips Belajar Berenang', '1. Tidak takut tenggelam\r\n2. Berlatih olah nafas\r\n3. Berdoa sebelum berenang', 'Desain tanpa judul(10).png', '2021-04-29 09:28:41', 1, 18, 0),
(116, 'A0107', 'Cara membuat kue', 'Bebas \r\n1, siapkan bahan \r\n2. dll', 'bambu-air.jpg', '2021-04-30 08:34:45', 1, 16, 0),
(106, 'A0106', 'Cara Membuat Burger', '1. Burger Daging Butter Sauce\r\nBahan Burger Daging Butter Sauce\r\n\r\n2 pcs roti burger\r\n200 gram daging sapi cincang dengan lemak\r\n2 lembar keju slice\r\n1 buah tomat\r\n1 buah bawang bombai\r\nIceberg lettuce secukupnya\r\nMentega secukupnya\r\nSaus tomat secukupnya\r\nGaram secukupnya\r\nLada hitam secukupnya\r\nSelada secukupnya\r\n\r\nButter Sauce\r\n\r\n3 sdm mentega\r\n1 sdm perasan air lemon\r\n1 siung bawang putih cincang\r\n1 sdt peterseli cincang\r\nGaram secukupnya\r\n\r\nCara Membuat Burger Daging Butter Sauce\r\nPertama, uleni daging cincang sebentar, lalu taburi dengan garam dan lada. Kemudian cetak menjadi lingkaran sesuai dengan ukuran roti burgernya.\r\nPanaskan margarin di atas panggangan wajan, lalu masak daging cincang. Cukup dibalik sekali saja. Jika kedua sisi telah matang, letakkan keju di atas daging lalu tutup sebentar.\r\nBiarkan keju meleleh dengan sempurna.\r\nKemudian proses membuat Butter Sauce. Campurkan semua bahan secara merata.\r\nKemudian bentuk adonan menjadi kotak atau bola kecil, lalu dibungkus menggunakan plastik. Simpan sejenak dalam kulkas.\r\nPanggang roti burger dengan margarin, hinnga berubah warna kecoklatan.\r\nTerakhir, mulai menyusun burger. Letakkan roti, lettuce atau selada, irisan tomat, bawang Bombay, daging burger, dan butter sauce.\r\nBaru ditutup dengan roti satunya lagi.\r\nBurger Daging Butter Sauce siap dinikmati dan pastinya mengeyangkan.', 'Desain tanpa judul(9).png', '2021-04-22 06:09:04', 1, 21, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `gambar_kategori` varchar(200) NOT NULL DEFAULT 'gambar_default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `gambar_kategori`) VALUES
(13, 'Edukasi', 'edukasi.png'),
(14, 'Kesehatan', 'kesehatan.png'),
(16, 'Teknologi', 'teknologi.png'),
(18, 'Olahraga', 'olahraga (2).png'),
(20, 'Wisata', 'wisata.png'),
(21, 'Makanan', 'makanan.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `id_artikel` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `isi_komentar` text NOT NULL,
  `status_komentar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `kode_pengguna` char(9) NOT NULL,
  `nama_pengguna` varchar(50) NOT NULL,
  `email` varchar(35) NOT NULL,
  `no_telp` char(14) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `kode_pengguna`, `nama_pengguna`, `email`, `no_telp`, `username`, `password`, `status`) VALUES
(21, 'U021', 'irfannurkholik', 'irfannkholiq@gmail.com', '081', 'irfannkholik', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(22, 'U022', 'charlie', 'charlie@gmail.com', '081', 'charliea', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(23, 'U023', 'indrie', 'indrie@gmail.com', '081', 'indrie', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(24, 'U024', 'naia', 'naia@gmail.com', '081', 'naia', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(25, 'U025', 'helen', 'helen@gmail.com', '081', 'helena', '827ccb0eea8a706c4c34a16891f84e7b', 1),
(26, 'U026', 'rini', 'rini@gmail.com', '123', 'rinii', '827ccb0eea8a706c4c34a16891f84e7b', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `profil`
--

CREATE TABLE `profil` (
  `nama_website` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `profil`
--

INSERT INTO `profil` (`nama_website`) VALUES
('KK4B');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id_artikel`),
  ADD UNIQUE KEY `judul_artikel` (`judul_artikel`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_artikel` (`id_artikel`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indeks untuk tabel `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`),
  ADD KEY `id_pengguna` (`id_pengguna`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id_artikel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

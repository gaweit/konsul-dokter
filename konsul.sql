-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2021 at 06:45 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `konsul`
--

-- --------------------------------------------------------

--
-- Table structure for table `is_about`
--

CREATE TABLE `is_about` (
  `about_id` int(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_about`
--

INSERT INTO `is_about` (`about_id`, `title`, `content`) VALUES
(1, 'Tentang TeleHealth', '<p><strong><span style=\"color:rgb(85, 85, 85); font-family:helvetica neue,helvetica,arial,sans-serif; font-size:20px\">TeleHealth&nbsp;</span></strong>merupakan sebuah aplikasi dan situs web asal Indonesia<a href=\"https://id.wikipedia.org/wiki/Halodoc#cite_note-1\" style=\"text-decoration-line: none; color: rgb(6, 69, 173); background: none;\">[1]</a>&nbsp;yang bergerak di bidang kesehatan.<a href=\"https://id.wikipedia.org/wiki/Halodoc#cite_note-2\" style=\"text-decoration-line: none; color: rgb(6, 69, 173); background: none;\">[2]</a>&nbsp;<strong>PT TeleHealth&nbsp;</strong>, perusahaan aplikasi ini didirikan pada tahun 2016 di Jakarta oleh Jonathan Sudharta.<a href=\"https://id.wikipedia.org/wiki/Halodoc#cite_note-3\" style=\"text-decoration-line: none; color: rgb(6, 69, 173); background: none;\">[3]</a></p>\r\n\r\n<p>Hingga tahun 2018, total pendanaan yang diterima adalah sekitar US$13 juta atau sekitar Rp170 miliar; beberapa investornya atara lain&nbsp;<a href=\"https://id.wikipedia.org/wiki/Gojek\" style=\"text-decoration-line: none; color: rgb(6, 69, 173); background: none;\" title=\"Gojek\">Gojek</a>,&nbsp;<a href=\"https://id.wikipedia.org/wiki/Blibli\" style=\"text-decoration-line: none; color: rgb(6, 69, 173); background: none;\" title=\"Blibli\">Blibli</a>, Clermont, dan NSI Ventures.<a href=\"https://id.wikipedia.org/wiki/Halodoc#cite_note-4\" style=\"text-decoration-line: none; color: rgb(6, 69, 173); background: none;\">[4]</a>&nbsp;<strong>TeleHealth </strong>mengumumkan kerjasama dengan GO-JEK pada bulan Mei 2018.<a href=\"https://id.wikipedia.org/wiki/Halodoc#cite_note-5\" style=\"text-decoration-line: none; color: rgb(6, 69, 173); background: none;\">[5]</a>&nbsp;Melalui kerja sama tersebut GO-JEK akan menghubungkan fitur GO-MED di dalam aplikasi GO-JEK dengan aplikasi <strong>TeleHealth&nbsp;</strong>. Sehingga pengguna GO-JEK akan langsung diarahkan ke aplikasi <strong>TeleHealth&nbsp;</strong>untuk pemesanan kebutuhan medis seperti obat atau vitamin.</p>\r\n\r\n<p>Selain itu, <strong>TeleHealth&nbsp;</strong>juga menjalin kerjasama dengan beberapa perusahaan asuransi.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `is_message`
--

CREATE TABLE `is_message` (
  `message_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `status` enum('y','n') NOT NULL DEFAULT 'n'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_message`
--

INSERT INTO `is_message` (`message_id`, `date`, `name`, `email`, `message`, `status`) VALUES
(1, '2021-11-08 14:53:40', 'Danang Kesuma', 'danang.kesuma@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias?', 'y'),
(2, '2021-11-09 08:36:48', 'ad', 'ade@asd.asd', 'asd', 'y'),
(3, '2021-11-09 13:26:45', 'tesssssss', 'ttessss@asda.asdasd', 'tesssss', 'y'),
(4, '2021-11-10 08:16:46', 'asd', 'asd@ads.asd', 'asd', 'y'),
(5, '2021-11-10 13:36:14', 'coba', 'coba@coba.coba', 'coba', 'y'),
(6, '2021-11-10 13:56:37', 'dfghg', 'jgjhg@jhg.jhg', 'asdasdsa', 'y'),
(7, '2021-11-12 07:36:59', 'asd', 'asdasdasd@asdasd.asdas', 'asdasdasd', 'y'),
(8, '2021-11-12 07:36:38', 'mmm', 'mmm@mm.mm', 'msadasd', 'y'),
(9, '2021-11-12 07:19:05', 'asdasd', 'mmm@mm.mm', 'asdasd', 'y'),
(10, '2021-11-12 07:39:22', 'tomi', 'asd@asd.asd', 'tomi', 'y'),
(11, '2021-11-12 07:43:34', 'klklk', 'klkll@klkl.klkl', 'klklkl', 'y');

-- --------------------------------------------------------

--
-- Table structure for table `is_portfolio`
--

CREATE TABLE `is_portfolio` (
  `portfolio_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_portfolio`
--

INSERT INTO `is_portfolio` (`portfolio_id`, `title`, `deskripsi`, `image`) VALUES
(21, 'Tentang TeleHealt', 'Tentang TeleHealth\r\n\r\nTeleHealth merupakan sebuah aplikasi dan situs web asal Indonesia[1] yang bergerak di bidang kesehatan.[2] PT TeleHealth , perusahaan aplikasi ini didirikan pada tahun 2016 di Jakarta oleh Jonathan Sudharta.[3]\r\n\r\nHingga tahun 2018, total pendanaan yang diterima adalah sekitar US$13 juta atau sekitar Rp170 miliar; beberapa investornya atara lain Gojek, Blibli, Clermont, dan NSI Ventures.[4] TeleHealth mengumumkan kerjasama dengan GO-JEK pada bulan Mei 2018.[5] Melalui kerja sama tersebut GO-JEK akan menghubungkan fitur GO-MED di dalam aplikasi GO-JEK dengan aplikasi TeleHealth . Sehingga pengguna GO-JEK akan langsung diarahkan ke aplikasi TeleHealth untuk pemesanan kebutuhan medis seperti obat atau vitamin.\r\n\r\nSelain itu, TeleHealth juga menjalin kerjasama dengan beberapa perusahaan asuransi', '1.jpg'),
(22, '7 Cara Mengontrol Kadar Gula Darah bagi Orang Diabetes', 'Diabetes tidak bisa disembuhkan, tapi pasien diabetes bisa tetap beraktivitas normal dan hidup sehat. Kunci hidup sehat dan normal untuk mengatasi diabetes adalah dengan mengontrol kadar gula darah dalam batas normal. Meskipun ada aturan dan pantangan diabetes yang perlu ditaati, beberapa tips menjaga kadar gula darah tetap normal yang akan dibahas di sini dapat membantu Anda lebih mudah menjalani hari.\r\n\r\nCara mengontrol kadar gula darah bagi pasien diabetes\r\nDiabetes melitus adalah penyakit yang ditandai dengan tingginya kadar gula dalam darah.\r\n\r\nJenis diabetes tertentu, seperti diabetes tipe 1 memang memerlukan pengobatan diabetes untuk bisa tetap hidup sehat.\r\n\r\nNamun, terlepas apa pun jenis diabetes yang Anda alami, mengonsumsi obat diabetes ataupun tidak, mengontrol kadar gula darah dengan pola hidup sehat harus Anda lakukan.\r\n\r\nMengendalikan gula darah dapat dilakukan dengan berbagai cara, mulai dari memperhatikan asupan makanan, mengatur pola makan dan istirahat, berolahraga rutin, serta mengonsumsi suplemen untuk sumber vitamin tambahan.\r\n\r\nBerikut ini adalah tips gaya hidup sehat dengan diabetes untuk menjaga kadar gula darah tetap normal.\r\n\r\n1. Konsumsi makanan yang tepat\r\nDiabetesi (pasien diabetes) harus benar-benar patuh dengan pola makan yang dijalani karena asupan makanan sangat memengaruhi kadar gula darah secara langsung.\r\n\r\nPertama, Anda perlu menghindari makanan dengan indeks glikemik tinggi, makanan tinggi lemak dan kalori, serta membatasi sumber karbohidrat sederhana.\r\n\r\nJauhi juga makanan dan minuman olahan, terutama yang pengolahannya instan seperti makanan cepat saji (fast food).\r\n\r\nPantangan makanan diabetes ini biasanya tinggi gula sehingga harus dikurangi demi mencegah peningkatan gula darah.\r\n\r\nKedua, terapkanlah pola makan teratur dengan gizi seimbang. Cara ini menjadi kunci kesuksesan untuk mengontrol gula darah pada pasien diabetes.\r\n\r\nArtinya, Anda tetap harus mengonsumsi karbohidrat sekalipun makanan ini menghasilkan gula.\r\n\r\nPilihan karbohidrat yang aman untuk diabetes adalah karbohidrat kompleks karena lebih lama dipecah menjadi glukosa, sehingga kadar gula darah jadi lebih stabil.\r\n\r\nBerhenti makan karbohidrat sama sekali bukan keputusan yang bijak, diabetesi tetap membutuhkan karbohidrat sebagai sumber energi.\r\n\r\nBagi pasien diabetes, penting untuk makan secara teratur.\r\n\r\nMenurut studi dalam jurnal Education and Health Promotion, melewatkan jadwal makan terlalu lama malah akan menyebabkan gula darah turun dan kemudian melonjak cepat.\r\n\r\nARTIKEL TERKAIT\r\n\r\n15 Pilihan Makanan dan Minuman untuk Diabetes, Plus Menunya!\r\nPENYAKIT DIABETES\r\n\r\n15 Pilihan Makanan dan Minuman untuk Diabetes, Plus Menunya!\r\nMemiliki diabetes membuat Anda perlu memperhatikan asupan makanan sehari-hari. Sembarangan makan justru bisa memperparah penyakit diabetes. Memilih makanan yang baik untuk kestabilan gula darah menjadi kunci utama agar penderita diabetes bisa hidup sehat. Lantas, apa saja makanan yang aman dan sehat untuk penderita diabetes? Cek daftarnya berikut ini. Pilihan makanan yang baik untuk diabetes Makanan mengandung glukosa yang [â€¦]\r\n\r\nFoto Penulisbadge\r\nDitinjau secara medis oleh dr. Tania Savitri â€¢ 06/09/2021\r\n\r\nARTIKEL TERKAIT\r\n\r\n15 Pilihan Makanan dan Minuman untuk Diabetes, Plus Menunya!\r\nPENYAKIT DIABETES\r\n\r\n15 Pilihan Makanan dan Minuman untuk Diabetes, Plus Menunya!\r\nMemiliki diabetes membuat Anda perlu memperhatikan asupan makanan sehari-hari. Sembarangan makan justru bisa memperparah penyakit diabetes. Memilih makanan yang baik untuk kestabilan gula darah menjadi kunci utama agar penderita diabetes bisa hidup sehat. Lantas, apa saja makanan yang aman dan sehat untuk penderita diabetes? Cek daftarnya berikut ini. Pilihan makanan yang baik untuk diabetes Makanan mengandung glukosa yang [â€¦]\r\n\r\nFoto Penulisbadge\r\nDitinjau secara medis oleh dr. Tania Savitri â€¢ 06/09/2021\r\n\r\n2. Mengontrol porsi makan\r\nTak hanya mengonsumsi makanan yang tepat untuk diabetes, mengontrol porsinya juga penting dalam menjaga kadar gula dalam darah.\r\n\r\nBerikut adalah beberapa cara dan tips mengontrol porsi makan sehingga pasien diabetes dapat menjaga kadar gula darah tetap normal.\r\n\r\nPerhatikan ukuran dan berat makanan.\r\nMakan dalam porsi kecil, tapi sering sepanjang hari.\r\nHindari makan di restoran berkonsep sekali makan (all-you-can-eat).\r\nPerhatikan informasi kandungan makanan dalam kemasan, ketahui komposisinya.\r\nMakan secara perlahan-lahan sehingga makanan bisa dicerna dengan baik oleh tubuh.\r\nTips menjaga kadar gula darah tetap normal melalui makanan ini tidak hanya berlaku bagi pasien diabetes dengan berat badan berlebih saja.\r\n\r\nDiabetesi dengan berat badan normal juga sebaiknya menjaga porsi makannya sehingga tidak berujung obesitas.\r\n\r\n3. Aktif bergerak dan olahraga teratur\r\nTips menjaga kadar gula darah normal\r\n\r\nSalah satu cara untuk mengontrol kadar gula darah Anda adalah dengan rutin berolahraga.\r\n\r\nOlahraga dapat membantu sel-sel di otot Anda mengambil lebih banyak glukosa dan mengubahnya menjadi energi, sehingga mampu menurunkan gula darah.\r\n\r\nApabila dilakukan secara rutin dalam jangka panjang, olahraga dapat membuat sel-sel tubuh lebih responsif terhadap hormon insulin sehingga mencegah resistensi insulin.\r\n\r\nTarget olahraga yang tepat untuk diabetes setidaknya 150 menit dalam seminggu.\r\n\r\nPastikan melakukannya secara rutin, hindari tidak berolahraga lebih dari dua hari berturut-turut.\r\n\r\nUntuk Anda yang minum obat yang berisiko menyebabkan hipoglikemia (penurunan gula darah), pastikan Anda melakukan cek gula darah terlebih dulu.\r\n\r\nIdealnya, olahraga boleh dilakukan jika kadar gula darah berada pada kisaran 100-250 mg/dL.\r\n\r\nJika kadar gula darah Anda di bawah 100 mg/dL, sebaiknya konsumsi cemilan yang mengandung 15-30 gram karbohidrat terlebih dahulu, misalnya jus buah, buah-buahan, atau biskuit.\r\n\r\nAnda sebaiknya menunda olahraga ketika kadar gula darah berada di atas 250 mg/dL. Jika memungkinan periksa terlebih dahulu kadar keton dari urine Anda.\r\n\r\nSelain rutin olahraga, usahakan untuk tetap aktif bergerak dalam aktivitas sehari-hari Anda.\r\n\r\nHindari gaya hidup sedentari (bermalas-malasan) dan minim gerakan fisik atau membuang energi, seperti menonton TV, bermain game pada gawai, atau duduk terlalu lama di depan komputer.\r\n\r\n4. Kelola stres dengan baik\r\nStres berlebihan juga dapat menyebabkan kadar gula darah meningkat akibat pelepasan kortisol alias hormon stres.\r\n\r\nTidak hanya membuat gula darah meningkat, stres juga juga cenderung membuat diabetesi berkeinginan untuk terus makan makanan yang manis (tinggi gula) lebih banyak.\r\n\r\nNah, agar stres tidak sampai membuat kadar gula darah melonjak, penting untuk Anda memahami cara mengendalikan stres dan mencoba berbagai hal yang dapat memperbaiki suasana hati, merilekskan tubuh, dan menenangkan pikiran.\r\n\r\nBeberapa cara yang dapat Anda lakukan yakni sebagai berikut.\r\n\r\nCobalah ambil napas dalam dengan lambat sebanyak 5 kali.\r\nMainkan musik yang menenangkan.\r\nLakukan beberapa peregangan sederhana atau cobalah beberapa pose yoga.\r\nLuangkan waktu untuk melakukan sesuatu yang benar-benar Anda nikmati.\r\nLuangkan waktu untuk melakukan hobi favorit Anda.\r\nBicarakan dengan seorang teman, atau ahli tenaga medis profesional jika memiliki keluh kesah.\r\n5. Istirahat cukup\r\nCara lain untuk mengontrol kadar gula darah Anda agar tetap di batas normal adalah mendapatkan istirahat yang cukup.\r\n\r\nSedikit banyak, kurang tidur terus-menerus membuat kualitas hidup Anda terpengaruh dan mengganggu sekresi (pelepasan) insulin. Idealnya, tidur yang baik berkisar antara 7-9 jam setiap malamnya.\r\n\r\nTidur yang cukup dapat menyeimbangkan hormon, menghindari stres, dan membuat Anda mendapatkan cukup energi untuk beraktivitas dan berolahraga pada esok harinya.\r\n\r\nDengan demikian, kadar gula darah pun dapat terkendali dengan baik.\r\n\r\n6. Rutin mengecek gula darah\r\nhidup sehat dengan diabetes\r\n\r\nMengukur dan memantau kadar glukosa darah menggunakan alat pengukur gula darah juga merupakan cara efektif mengontrol gula darah.\r\n\r\nRutin melakukan cek gula darah dapat membantu Anda mengetahui bagaimana tubuh bereaksi terhadap makanan tertentu.\r\n\r\nDengan terus memantau perubahan kadar gula darah, Anda akan lebih mudah untuk menentukan apakah harus melakukan penyesuaian pola makan atau konsumsi obat.\r\n\r\nOleh karena itu, cobalah mengukur kadar gula Anda setiap hari dan pastikan jika kadar gula Anda selalu sesuai dengan anjuran dokter.\r\n\r\n7. Mengonsumsi suplemen\r\nSuplemen berguna untuk menambah asupan vitamin dan mineral di dalam tubuh. Mengonsumsi suplemen untuk diabetes sebenarnya tidak diharuskan.\r\n\r\nApalagi jika Anda telah menerapkan pola makan teratur dan asupan makanan telah memenuhi kebutuhan gizi sehari-hari.\r\n\r\nNamun, jika Anda ingin meningkatkan asupan gizi sehari-hari tidak ada salahnya untuk mengonsumsi suplemen. Pun demikian, Anda tetap harus mendiskusikannya terlebih dulu dengan dokter.\r\n\r\nBeberapa vitamin dan mineral berikut bermanfaat bagi diabetes untuk membantu menjaga kadar gula darah.\r\n\r\nVitamin D: membantu mengendalikan gula darah pada pasien diabetes.\r\nVitamin C: memiliki peran dalam mengendalikan kadar gula darah dan jumlah kolesterol pada pasien diabetes.\r\nVitamin E: berperan sebagai antioksidan yang memiliki kemampuan untuk mencegah penyakit jantung, gagal ginjal, dan gangguan fungsi penglihatan. Penyakit ini merupakan komplikasi yang rentan dialami pasien diabetes.\r\nMagnesium: pasien diabetes berisiko kekurangan asupan magnesium dalam tubuhnya. Hal ini bisa disebabkan karena efek samping obat-obatan diabetes.\r\nWajar jika Anda merasa kesulitan untuk membiasakan diri menjalani gaya hidup sehat pada awalnya.\r\n\r\nMengubah kebiasaan memang tak akan semudah membalik telapak tangan.\r\n\r\nHal terpenting jangan langsung berputus asa. Mulailah sedikit demi sedikit dengan menentukan target-target tertentu.\r\n\r\nBila berhasil, Anda bisa mencoba lebih disiplin mengikuti cara hidup sehat diabetes lainnya.', 'shutterstock_791955604-705x467.jpg'),
(23, 'Ini Batas Kadar Gula yang Normal Bagi Wanita', 'â€œKadar gula darah normal pada tubuh sebenarnya tidak bisa ditentukan dengan angka baku. Hal ini karena dapat berubah-ubah tergantung pada kondisi tubuh seseorang. Selain itu, sebenarnya tidak ada perbedaan signifikan antara kadar gula normal pada pria maupun wanita.â€\r\n\r\n Gula Normal bagi Wanita\r\nKadar gula darah normal pada tubuh sebenarnya tidak bisa ditentukan dengan angka baku. Kadar gula darah normal pada tubuh dapat berubah-ubah tergantung pada kondisi tubuh. Contohnya, kadar gula darah sebelum makan dengan sesudah makanan pasti. Sama halnya dengan penentuan kadar gula normal berdasarkan gender. Sebenarnya, tidak ada perbedaan signifikan antara kadar gula normal pada pria maupun wanita. \r\n\r\nSeusai mengonsumsi makanan, sistem pencernaan dalam tubuh otomatis memecah karbohidrat menjadi gula yang diserap oleh aliran darah. Zat gula tersebut dialirkan oleh darah menuju sel-sel tubuh dan akan dijadikan sebagai sumber energi. Untuk mencapai sel-sel dalam tubuh, glukosa membutuhkan insulin. Insulin adalah hormon yang dihasilkan oleh pankreas. \r\n\r\nSetelah berhasil mencapai sel-sel dalam tubuh, zat gula kemudian dibakar menjadi energi dan digunakan untuk kinerja tubuh. Ketika kadarnya berlebihan, sisanya akan disimpan di organ hati untuk digunakan di lain waktu. Melansir dari American Diabetes Association, berikut ini batas kadar gula darah normal pada orang dewasa sehat:\r\n\r\nSebelum makan, normalnya kadar gula dalam darah berkisar antara 70-130 miligram/desiliter.\r\nSetelah makan, kadar akan naik dari batas tersebut yaitu kurang dari 140 miligram/desiliter setelah 2 jam.\r\nDalam kondisi puasa selama delapan jam, kadar gula darah normal yaitu kurang dari 100 miligram/desiliter.\r\nMenjelang waktu tidur, kadar gula darah normal berkisar antara 100-140 miligram/desiliter.\r\n Baca juga: Inilah Tanda-tanda Kalau Kamu Kelebihan Gula Darah\r\n\r\nAlasan Pentingnya Menjaga Gula Darah Normal\r\nPenting bagi siapapun untuk mengontrol kadar gula darah sebaik mungkin. Kadar gula darah yang terlalu tinggi untuk jangka panjang dapat meningkatkan risiko komplikasi. Komplikasi diabetes merupakan masalah kesehatan, di antaranya:\r\n\r\nPenyakit ginjal\r\nKerusakan saraf\r\nPenyakit retina\r\nPenyakit jantung\r\n Risiko komplikasi tersebut mungkin terlihat mengkhawatirkan. Namun, hal utama yang perlu diperhatikan, bahwa risiko komplikasi dapat diminimalkan dengan menjaga agar kadar gula darah selalu normal. Perubahan sekecil apapun akan memberikan perbedaan besar jika kamu tetap berkomitmen dan mempertahankan pengelolaan kadar gula darah normal setiap hari. \r\n\r\nJika angka gula darah melebihi angka 200 miligram/desiliter, artinya kandungan zat gula dalam darah terlalu tinggi. Kondisi tingginya kadar gula darah disebut sebagai hiperglikemia. Kondisi ini disebabkan oleh kurangnya hormon insulin, sehingga tubuh tidak mampu mengubah gula darah menjadi energi.\r\n\r\nHiperglikemia biasanya terjadi karena seseorang mengidap diabetes. Selain orang yang mengidap diabetes, hiperglikemia juga bisa menimpa siapa saja. Terutama, jika seseorang sedang mengidap penyakit yang berat. Tanda-tanda yang bisa dikenali sebagai hiperglikemia adalah badan terasa lelah, nafsu makan naik drastis, berat badan menurun, sering merasa haus, dan sering buang air kecil.\r\n\r\nJika kamu merasakan gejala-gejala tersebut, lakukan cek kesehatan untuk mengetahui kadar gula darah yang kamu miliki. Kamu bisa bertanya dulu pada dokter melalui aplikasi Halodoc. Kalau kamu berencana untuk melakukan cek klinik, kini kamu tidak perlu repot pergi ke klinik. Melalui aplikasi Halodoc, kamu dapat memesan pemeriksaan kesehatan sesuai yang kamu butuhkan.\r\n\r\nJenis-jenis Pemeriksaan Gula Darah\r\nTes diabetes tipe 2 yang paling banyak dikenal adalah tes gula darah. Namun, tes gula darah yang dilakukan nyatanya ada beberapa jenis. Tes gula darah yang dilakukan bisa berbeda-beda antara satu orang dengan yang lainnya. Jenis-jenis pemeriksaan yang bisa dilakukan, di antaranya: \r\n\r\nTes HbA1C \r\nPemeriksaan ini umum dilakukan. Tes HbA1C dilakukan untuk memeriksa kadar gula darah dalam rata-rata periode 2â€“3 bulan. \r\n\r\nBaca juga: Kenali 6 Gejala Diabetes 1 dan 2\r\n\r\nTes Gula Darah Puasa\r\nSalah satu cara mengukur kadar gula darah adalah pada saat perut kosong, tes ini dinamakan tes gula darah puasa. Pemeriksaan ini bertujuan untuk memeriksa kadar gula darah di saat keadaan perut kosong. Orang yang akan menjalani tes ini diharuskan untuk berpuasa terlebih dahulu puasa selama 8 jam.\r\n\r\nTes Toleransi Gula Darah \r\nPemeriksaan yang selanjutnya bisa dilakukan adalah tes toleransi gula darah. Tes ini dilakukan setelah tes gula darah puasa. Orang yang menjalani tes akan diminta untuk meminum cairan gula khusus. Setelah itu, pemeriksaan akan kembali dilakukan dalam 2 jam. \r\n\r\nTes Gula Darah Sewaktu \r\nDiabetes tipe 2 juga bisa dideteksi dengan tes gula darah sewaktu. Pemeriksaan ini dilakukan untuk memeriksa kadar gula dalam darah di waktu yang tidak ditentukan.\r\n\r\nSelain tes darah, dokter juga bisa melakukan tes lain untuk mendukung diagnosis penyakit diabetes tipe 2. Gangguan kesehatan yang satu ini juga bisa dideteksi melalui pemeriksaan urine, pemeriksaan kadar kolesterol dalam darah, sekaligus fungsi hati, ginjal, dan tiroid. Diabetes tipe 2 sama sekali tidak boleh dianggap sepele. Jika dibiarkan tanpa penanganan, diabetes tipe 2 bisa menjadi serius dan memicu komplikasi. \r\n\r\nCara Mencegah Peningkatan Kadar Gula dalam Tubuh\r\nUntuk mencegah peningkatan kadar gula darah dalam tubuh, kamu bisa melakukan beberapa hal berikut ini. Pertama, lakukan olahraga rutin setidaknya 2,5 jam per minggu. Selain melatih kekuatan otot tubuh, olahraga secara rutin dapat menjaga kadar gula darah normal.\r\n\r\nSelanjutnya, kamu harus memperhatikan asupan makanan. Sebaiknya kamu membatasi asupan karbohidrat, sebab konsumsi karbohidrat berlebihan dapat meningkatkan kadar gula darah dalam tubuh. Sebagai gantinya, kamu dapat mengonsumsi karbohidrat kompleks seperti nasi merah dan oatmeal. Karbohidrat kompleks memiliki kadar glikemik yang lebih rendah yang otomatis mampu menjaga kadar gula darah normal', 'giaa.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `is_service`
--

CREATE TABLE `is_service` (
  `service_id` int(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_service`
--

INSERT INTO `is_service` (`service_id`, `title`, `content`) VALUES
(1, 'Our Services', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod</p>\r\n\r\n<ul>\r\n	<li><strong>Web Design,</strong> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod.</li>\r\n	<li><strong>Web Development, </strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod.</li>\r\n	<li><strong>Mobile Apps, </strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod.</li>\r\n	<li><strong>Desktop Application, </strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod.</li>\r\n	<li><strong>Course and Training</strong><strong>,&nbsp;</strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod.</li>\r\n	<li><strong>Photography</strong><strong>,&nbsp;</strong>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod</li>\r\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `is_user`
--

CREATE TABLE `is_user` (
  `user_id` int(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `fullname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_user`
--

INSERT INTO `is_user` (`user_id`, `username`, `password`, `fullname`) VALUES
(1, 'indrasatya', '41504508b3cec65b1313905001118579', 'TeleHealth');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `is_about`
--
ALTER TABLE `is_about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `is_message`
--
ALTER TABLE `is_message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `is_portfolio`
--
ALTER TABLE `is_portfolio`
  ADD PRIMARY KEY (`portfolio_id`);

--
-- Indexes for table `is_service`
--
ALTER TABLE `is_service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `is_user`
--
ALTER TABLE `is_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `is_about`
--
ALTER TABLE `is_about`
  MODIFY `about_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `is_message`
--
ALTER TABLE `is_message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `is_portfolio`
--
ALTER TABLE `is_portfolio`
  MODIFY `portfolio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `is_service`
--
ALTER TABLE `is_service`
  MODIFY `service_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `is_user`
--
ALTER TABLE `is_user`
  MODIFY `user_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

INSERT INTO Kategori(Id_kategori, Nama_kategori, Upah)
VALUES	('KA001', 'Tukang Bangunan', '60000'),
		('KA002', 'Tukang Gali', '75000'),
		('KA003', 'Tukang Batu', '140000'),
		('KA004', 'Tukang Kayu', '130000'),
		('KA005', 'Tukang Besi','130000'),
		('KA006', 'Tukang Cat', '70000'),
		('KA007', 'Tukang Potong Rumput', '100000'),
		('KA008', 'Tukang Pasang Pipa', '150000'),
		('KA009', 'Tukang Las', '80000'),
		('KA010', 'Tukang Listrik', '80000');

INSERT INTO Tukang(Id_tukang , Nama_tukang , Jenis_kelamin , Kategori , No_telpon , Kelurahan_tukang, Username , Pass, Status_tukang, Email)
VALUES	('TU001', 'Gilang Putra', 'Laki-Laki', 'KA001', '085373173841', 'Blimbing', 'Gilang', 'gilangrumah', 'Tidak Dapat dipesan', 'gilangputra@gmail.com'),
		('TU002', 'Lutfiyah Hadi', 'Laki-Laki', 'KA002', '081242662885', 'Sawojajar', 'Lutfiyah', 'lutfiyahatap', 'Dapat dipesan', 'lutfiyahhadi@gmail.com'),
		('TU003', 'Ade Sukandar', 'Laki-Laki', 'KA003', '082342785023', 'Polehan', 'Ade', 'adelas', 'Tidak Dapat dipesan', 'adesukandar@gmail.com'),
		('TU004', 'Rokhimah', 'Perempuan', 'KA006', '085265850078', 'Dinoyo', 'Rokhimah', 'rokhimahtaman', 'Dapat dipesan', 'rokhimahrokhimah@gmail.com'),
		('TU005', 'Yoyok Sudaryo', 'Laki-Laki', 'KA005', '085214809574', 'Lowokwaru', 'Yoyok', 'yoyoksanitair', 'Dapat dipesan', 'yoyoksudaryo@gmail.com'),
		('TU006', 'Suherman', 'Laki-Laki', 'KA008', '082339829616', 'Klojen', 'Suherman', 'suhermanlistrik', 'Dapat dipesan', 'suhermansuherman@gmail.com'),
		('TU007', 'Jessica Widya Thalenta', 'Perempuan', 'KA004', '081185573455', 'Sukun', 'Jessica', 'jessicacat', 'Tidak Dapat dipesan', 'jessicathalenta@gmail.com'),
		('TU008', 'Dharis Gutomo', 'Laki-Laki', 'KA009', '082317006354', 'Tlogomas', 'Dharis', 'dharisrumah', 'Tidak Dapat dipesan', 'dharisgutomo@gmail.com'),
		('TU009', 'Nazaruddin Ahmad', 'Laki-Laki', 'KA008', '085237625170', 'Mergosono', 'Nazaruddin', 'nazaruddinatap', 'Tidak Dapat dipesan', 'nazaruddinahmad@gmail.com'),
		('TU010', 'Endang Pujiati', 'Perempuan', 'KA007', '081343819300', 'Tasikmadu', 'Endang', 'endangtaman', 'Dapat dipesan', 'endangpujiati@gmail.com'),
		('TU011', 'Linda Royani', 'Perempuan', 'KA006', '085366997144', 'Samaan', 'Linda', 'lindakayu', 'Tidak Dapat dipesan', 'lindaroyani@gmail.com'),
		('TU012', 'Hotman Parulian Sito', 'Laki-Laki', 'KA010', '082429208550', 'Buring', 'Hotman', 'hotmanlas', 'Dapat dipesan', 'hotmansito@gmail.com');

INSERT INTO Jadwal(Id_jadwal, Id_tukang, Tanggal_tersedia)
VALUES	('JA001', 'TU001', '12/10/2020'),
		('JA002', 'TU002', '12/25/2020'),
		('JA003', 'TU003', '12/8/2020'),
		('JA004', 'TU004', '12/10/2020'),
		('JA005', 'TU005', '12/18/2020'),
		('JA006', 'TU006', '12/19/2020'),
		('JA007', 'TU007', '12/22/2020'),
		('JA008', 'TU008', '12/28/2020'),
		('JA009', 'TU009', '12/13/2020'),
		('JA010', 'TU010', '12/8/2020'),
		('JA011', 'TU011', '12/4/2020'),
		('JA012', 'TU012', '12/26/2020');

INSERT INTO Pelanggan(Id_pelanggan, Nama_pelanggan, No_telpon, Kelurahan_pelanggan, Email, Username, Pass)
VALUES	('PL001', 'Jessica Santoso', '085297028655', 'Tlogomas', 'jessicasantoso@gmail.com', 'jessica', 'jessica001'),
		('PL002', 'Reynald Foeh', '081353715630', 'Bumiayu', 'reynaldfoeh@gmail.com', 'reynald', 'reynald002'),
		('PL003', 'Risma Aditya', '085261785217', 'Rampal Celaket', 'rismaaditya@gmail.com', 'rismaad', 'rismaad003'),
		('PL004', 'Muhammad Hafidz', '082281737258', 'Jodipan', 'muhammadhafidz@gmail.com', 'muhamma', 'muhamma004'),
		('PL005', 'Timothy Hariyanto', '085230514600', 'Gadang', 'timothyhariyanto@gmail.com', 'timothy', 'timothy005'),
		('PL006', 'Zulfikri', '081212593781', 'Merjosari', 'zulfikri@gmail.com', 'zulfikr', 'zulfikr006'),
		('PL007', 'Matthew Fernandes', '082551308843', 'Dinoyo', 'matthewfernandes@gmail.com', 'matthew', 'matthew007'),
		('PL008', 'Dwi Juniati', '085190860228', 'Bandulan', 'dwijuniati@gmail.com', 'dwijuni', 'dwijuni008');

INSERT INTO Pemesanan(Id_pemesanan, Id_pelanggan, Id_tukang, Tgl_mulai, Tgl_selesai)
VALUES	('PM001', 'PL003', 'TU011', '12/1/2020', '12/3/2020'),
		('PM002', 'PL001', 'TU001', '12/4/2020', '12/9/2020'),
		('PM003', 'PL002', 'TU002', '12/4/2020', '12/8/2020'),
		('PM004', 'PL006', 'TU003', '12/4/2020', '12/7/2020'),
		('PM005', 'PL004', 'TU004', '12/7/2020', '12/9/2020'),
		('PM006', 'PL007', 'TU007', '12/9/2020', '12/12/2020'),
		('PM007', 'PL006', 'TU008', '12/10/2020', '12/13/2020'),
		('PM008', 'PL008', 'TU009', '12/10/2020', '12/12/2020'),
		('PM009', 'PL004', 'TU010', '12/12/2020', '12/17/2020'),
		('PM010', 'PL005', 'TU005', '12/15/2020', '12/17/2020'),
		('PM011', 'PL005', 'TU006', '12/15/2020', '12/18/2020'),
		('PM012', 'PL001', 'TU007', '12/18/2020', '12/21/2020'),
		('PM013', 'PL007', 'TU008', '12/21/2020', '12/27/2020'),
		('PM014', 'PL002', 'TU012', '12/21/2020', '12/25/2020'),
		('PM015', 'PL008', 'TU002', '12/27/2020', '12/30/2020');

INSERT INTO Bank(Id_bank, Nama_bank)
VALUES	('BA000', 'NULL'),
		('BA001', 'Bank Central Asia'),
		('BA002', 'Bank Negara Indonesia'),
		('BA003', 'Bank Rakyat Indonesia'),
		('BA005', 'Bank Mandiri'),
		('BA006', 'Bank Tabungan Pensiunan Nasional'),
		('BA007', 'Bank Tabungan Negara'),
		('BA008', 'Bank Danamon Indonesia'),
		('BA009', 'Bank Maybank'),
		('BA010', 'Bank Cimb Niaga');

INSERT INTO Tipe_pembayaran(Id_tipe_pembayaran, Tipe_pembayaran)
VALUES	('TP001', 'Debit'),
		('TP002', 'Tunai');

INSERT INTO Pembayaran(Id_pembayaran, Id_tipe_pembayaran, Id_bank, Upah_total, Status_pembayaran)
VALUES	('PB001', 'TP002', 'BA000', '210000', 'Lunas'),
		('PB002', 'TP001', 'BA002', '300000', 'Pending'),
		('PB003', 'TP001', 'BA001', '375000', 'Lunas'),
		('PB004', 'TP001', 'BA003', '300000', 'Lunas'),
		('PB005', 'TP002', 'BA000', '210000', 'Lunas'),
		('PB006', 'TP002', 'BA000', '520000', 'Pending'),
		('PB007', 'TP001', 'BA002', '320000', 'Lunas'),
		('PB008', 'TP002', 'BA000', '450000', 'Lunas'),
		('PB009', 'TP001', 'BA003', '600000', 'Lunas'),
		('PB010', 'TP001', 'BA008', '390000', 'Lunas'),
		('PB011', 'TP002', 'BA000', '600000', 'Pending'),
		('PB012', 'TP002', 'BA000', '520000', 'Pending'),
		('PB013', 'TP001', 'BA008', '560000', 'Lunas'),
		('PB014', 'TP001', 'BA006', '400000', 'Pending'),
		('PB015', 'TP002', 'BA000', '300000', 'Pending');

INSERT INTO Detail_pemesanan(Id_detail_pemesanan, Id_pembayaran, Id_pemesanan)
VALUES	('DP001', 'PB001', 'PM001'),
		('DP002', 'PB002', 'PM002'),
		('DP003','PB003', 'PM003'),
		('DP004','PB004', 'PM004'),
		('DP005','PB005', 'PM005'),
		('DP006','PB006', 'PM006'),
		('DP007','PB007', 'PM007'),
		('DP008','PB008', 'PM008'),
		('DP009','PB009', 'PM009'),
		('DP010','PB010', 'PM010'),
		('DP011','PB011', 'PM011'),
		('DP012','PB012', 'PM012'),
		('DP013','PB013', 'PM013'),
		('DP014','PB014', 'PM014'),
		('DP015','PB015', 'PM015');

INSERT INTO Riwayat(Id_riwayat, Id_detail_pemesanan ,Tanggal_pemesanan)
VALUES	('RI001', 'DP001', '11/30/2020'),
		('RI002', 'DP002', '12/2/2020'),
		('RI003', 'DP003', '12/3/2020'),
		('RI004', 'DP004', '12/5/2020'),
		('RI005', 'DP005', '12/5/2020'),
		('RI006', 'DP006', '12/9/2020'),
		('RI007', 'DP007', '12/1/2020'),
		('RI008', 'DP008', '12/7/2020'),
		('RI009', 'DP009', '12/11/2020'),
		('RI010', 'DP010', '12/13/2020'),
		('RI011', 'DP011', '12/12/2020'),
		('RI012', 'DP012', '12/16/2020'),
		('RI013', 'DP013', '12/18/2020'),
		('RI014', 'DP014', '12/19/2020'),
		('RI015', 'DP015', '12/25/2020');





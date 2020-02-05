CREATE TYPE jk AS ENUM('l','p');
CREATE TABLE penumpang(
	id_penumpang varchar(9) PRIMARY KEY NOT NULL,
    username varchar(30),
    password varchar(9),
    nama_penumpang varchar(30),
    alamat_penumpang text,
    tanggal_lahir date,
    jenis_kelamin jk,
    telepon varchar(13)
);
CREATE TABLE pemesanan(
	id_pemesanan varchar(9) PRIMARY KEY NOT NULL,
    kode_pemesanan varchar(8),
    tanggal_pemesanan date,
    tempat_pemesanan varchar(30),
    id_pelanggan varchar(9),
    kode_kursi varchar(2),
    id_rute varchar(9),
    tujuan varchar(30),
    tanggal_berangkat date,
    jam_cekin varchar(4),
    jam_berangkat varchar(4),
    total_bayar int,
    id_petugas varchar(9)
);
CREATE TABLE petugas(
    id_petugas varchar(9) PRIMARY KEY NOT NULL,
    username varchar(30),
    password varchar(9),
    nama_petugas varchar(30),
    id_level varchar(9)
);
CREATE TABLE rute(
	id_rute varchar(9) PRIMARY KEY NOT NULL,
	tujuan varchar(30),
	rute_awal varchar(30),
	rute_akhir varchar(30),
	harga int,
	id_transportasi varchar(9)
);

CREATE TABLE level(
	id_level varchar(9) PRIMARY KEY NOT NULL,
	nama_level varchar(30)
);
CREATE TABLE transportasi(
	id_transportasi varchar(9) PRIMARY KEY NOT NULL,
    kode varchar(10),
    jumlah_kursi int,
    keterangan text,
    id_type_transportasi varchar(9)
);
CREATE TABLE type_transportasi(
	id_type_transportasi varchar(9) PRIMARY KEY NOT NULL,
    nama_type varchar(30),
    keterangan text
);


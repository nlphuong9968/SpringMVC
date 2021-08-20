create database dbminishop char set utf8 collate utf8_unicode_ci;

use dbminishop;

create table CHUCVU (
	machucvu integer AUTO_INCREMENT,
    tenchucvu nvarchar(20),
    primary key(machucvu)
);

create table NHANVIEN(
	manhanvien integer AUTO_INCREMENT,
    hoten nvarchar(30),
    diachi nvarchar(200),
    gioitinh bit,
    cmnd char(14),
    machucvu integer,
    email varchar(50),
    tendangnhap varchar(50),
    matkhau varchar(50),
    primary key(manhanvien),
    constraint FK_NHANVIEN_CHUCVU foreign key(machucvu) references CHUCVU(machucvu)
);

create table DANHMUCSANPHAM(
	madanhmuc integer auto_increment,
    tendanhmuc nvarchar(100),
    hinhdanhmuc text,
    primary key(madanhmuc)
);

create table SANPHAM(
	masanpham integer auto_increment,
    madanhmuc integer,
    tensanpham nvarchar(100),
    giatien varchar(50),
    mota text,
    hinhsanpham text,
    primary key(masanpham),
    constraint FK_SANPHAM_DANHMUC foreign key(madanhmuc) references DANHMUCSANPHAM(madanhmuc)    
);

create table MAUSANPHAM(
	mamau integer auto_increment,
    tenmau nvarchar(50),
    primary key(mamau)
);

create table SIZESANPHAM(
	masize integer auto_increment,
    size nvarchar(20),
    primary key(masize)
);

create table CHITIETSANPHAM(
	machitietsanpham integer auto_increment,
    masanpham integer,
    masize integer,
    mamau integer,
    soluong integer,
    ngaynhap varchar(50),
    primary key(machitietsanpham),
	constraint FK_CHITIET_SANPHAM foreign key(masanpham) references SANPHAM(masanpham),
    constraint FK_CHITIET_SIZESANPHAM foreign key(masize) references SIZESANPHAM(masize), 
    constraint FK_CHITIET_MAUSANPHAM foreign key(mamau) references MAUSANPHAM(mamau) 	
);

CREATE TABLE KHUYENMAI(
	makhuyenmai integer auto_increment,
    tenkhuyenmai nvarchar(200),
    thoigianbatdau nvarchar(50),
    thoigianketthuc nvarchar(50),
    mota text,
    hinhkhuyenmai text,
    giagiam integer,
    primary key(makhuyenmai)
);

create table CHITIETKHUYENMAI(
	makhuyenmai integer,
    masanpham integer,
    primary key(makhuyenmai,masanpham),
	constraint FK_CHITIETKHUYENMAI_SANPHAM foreign key(masanpham) references SANPHAM(masanpham) 	
);

create table HOADON(
	mahoadon integer auto_increment,
    tenkhachhang nvarchar(100),
    sodt char(12),
    diachigiaohang nvarchar(200),
    tinhtrang bit,
    ngaylap varchar(50),
    primary key(mahoadon)
);

create table CHITIETHOADON(
	mahoadon integer,
    machitietsanpham integer,
    soluong integer,
    giatien varchar(100),
    primary key(mahoadon,machitietsanpham),
	constraint FK_CTHOADON_HOADON foreign key(mahoadon) references HOADON(mahoadon), 	
	constraint FK_CTHOADON_CTSANPHAM foreign key(machitietsanpham) references CHITIETSANPHAM(machitietsanpham) 	
);
-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-01-28 04:25:33.611


create database Conglxpd01396_ASS_INF205
use Conglxpd01396_ASS_INF205

-- tables
-- Table: ChiTietHoaDon
CREATE TABLE ChiTietHoaDon (
    MaSP char(10)  NOT NULL,
    MaHD char(10)  NOT NULL,
    SoLuongMua char(10)  NOT NULL,
    DonGiaBan money  NOT NULL,
    HoaDon_MaHD char(10)  NOT NULL,
    SanPham_MaSP char(10)  NOT NULL,
    CONSTRAINT ChiTietHoaDon_pk PRIMARY KEY (MaSP,MaHD)
);



-- Table: HoaDon
CREATE TABLE HoaDon (
    MaHD char(10)  NOT NULL,
    NgayLap date  NOT NULL,
    MaKH char(10)  NOT NULL,
    KhachHang_MaKH char(10)  NOT NULL,
    CONSTRAINT HoaDon_pk PRIMARY KEY (MaHD)
);



-- Table: KhachHang
CREATE TABLE KhachHang (
    MaKH char(10)  NOT NULL,
    TenKH varchar(200)  NOT NULL,
    DiaChi varchar(200)  NOT NULL,
    SDT char(15)  NOT NULL,
    CONSTRAINT KhachHang_pk PRIMARY KEY (MaKH)
);



-- Table: LoaiSanPham
CREATE TABLE LoaiSanPham (
    MaLSP char(10)  NOT NULL,
    TenLSP varchar(200)  NOT NULL,
    CONSTRAINT LoaiSanPham_pk PRIMARY KEY (MaLSP)
);



-- Table: SanPham
CREATE TABLE SanPham (
    MaSP char(10)  NOT NULL,
    TenSP varchar(200)  NOT NULL,
    SoLuong char(10)  NOT NULL,
    MoTa varchar(200)  NOT NULL,
    MaLSP char(10)  NOT NULL,
    LoaiSanPham_MaLSP char(10)  NOT NULL,
    CONSTRAINT SanPham_pk PRIMARY KEY (MaSP)
);













-- End of file.

-- Them du lieu KhachHang
INSERT INTO KhachHang VALUEs('KH1','Le Xuan Cong','Da Nang','123456789');
INSERT INTO KhachHang VALUEs('KH2','Le Xuan Thanh','Quang Nam','242343253');
INSERT INTO KhachHang VALUEs('KH3','Le Xuan Anh','Hue','432632142');
INSERT INTO KhachHang VALUEs('KH4','Le Xuan Lam','Ho Chi Minh','654634642');
INSERT INTO KhachHang VALUEs('KH5','Le Xuan Linh','Ha Noi','577239653');

-- Them du lieu HoaDon
INSERT INTO HoaDon VALUES('HD1','09/09/2015','KH1','KH01');
INSERT INTO HoaDon VALUES('HD2','03/08/2015','KH2','KH02');
INSERT INTO HoaDon VALUES('HD3','08/03/2015','KH3','KH03');
INSERT INTO HoaDon VALUES('HD4','05/02/2015','KH4','KH04');
INSERT INTO HoaDon VALUES('HD5','06/03/2015','KH5','KH05');

-- Them du lieu ChiTietHoaDon
INSERT INTO ChiTietHoaDon VALUES('SP1','HD1','100','50000','HD01','SP01');
INSERT INTO ChiTietHoaDon VALUES('SP2','HD2','300','30000','HD02','SP02');
INSERT INTO ChiTietHoaDon VALUES('SP3','HD3','400','90000','HD03','SP03');
INSERT INTO ChiTietHoaDon VALUES('SP4','HD4','200','40000','HD04','SP04');
INSERT INTO ChiTietHoaDon VALUES('SP5','HD5','500','80000','HD05','SP05');

-- Them du lieu LoaiSanPham
INSERT INTO LoaiSanPham VALUES('LSP1','RAM-DD3');
INSERT INTO LoaiSanPham VALUES('LSP2','RAM-DD2');
INSERT INTO LoaiSanPham VALUES('LSP3','Chuot E-BLUE');
INSERT INTO LoaiSanPham VALUES('LSP4','Sac Acer');
INSERT INTO LoaiSanPham VALUES('LSP5','Lot Chuot');

-- Them du lieu San Pham
INSERT INTO SanPham VALUES('SP1','RAM3','20','Hang moi','LSP1','LSP01');
INSERT INTO SanPham VALUES('SP2','RAM2','50','Hang Cu','LSP2','LSP02');
INSERT INTO SanPham VALUES('SP3','CHUOT','70','Hang moi','LSP3','LSP03');
INSERT INTO SanPham VALUES('SP4','SAC','100','Hang moi','LSP4','LSP04');
INSERT INTO SanPham VALUES('SP5','LOT','40','Hang moi','LSP5','LSP05');


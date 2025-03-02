CREATE DATABASE SIEUTHI
ON PRIMARY 
	( NAME = SIEUTHI_data, 
	FILENAME = 'C:\COSODULIEU\SIEUTHI\SIEUTHI_data.mdf',
	SIZE = 25MB, 
	MAXSIZE = 40MB,
	FILEGROWTH = 1MB)
LOG ON
	( NAME = SIEUTHI_log,
	 FILENAME = 'C:\COSODULIEU\SIEUTHI\SIEUTHI_log.ldf', 
	 SIZE = 6MB, 
	 MAXSIZE = 8MB,
	 FILEGROWTH = 1MB)
USE SIEUTHI
GO
CREATE TABLE NHOMSANPHAM (
	[MaNhom] [int] PRIMARY KEY,
	[TenNhom] [nvarchar](15) NULL )
GO
CREATE TABLE NHACUNGCAP (
	 [MaNCC] [int] PRIMARY KEY,
	 [TenNcc] [nvarchar](40) NOT NULL,
	 [Diachi] [nvarchar](60) NULL,
	 [Phone] [nvarchar](24) NULL,
	 [SoFax] [nvarchar](24) NULL,
	 [DCMail] [nvarchar](50) NULL )
GO
CREATE TABLE SANPHAM (
	 [MaSp] [int] PRIMARY KEY,
	 [TenSp] [nvarchar](40) NOT NULL,
	 [MaNCC] [int] NULL,
	 [MoTa] [nvarchar](50) NULL,
	 [MaNhom] [int] NULL,
	 [Ðonvitinh] [nvarchar](20) NULL,
	 [GiaGoc] [money] NULL,
	 [SLTON] [int] NULL,
	 FOREIGN KEY (MaNCC) REFERENCES NhaCungCap(MaNCC),
     FOREIGN KEY (MaNhom) REFERENCES NhomSanPham(MaNhom))
GO
CREATE TABLE NHANVIEN (
	 [MaNV] [nchar](5) PRIMARY KEY,
	 [TenNV] [nvarchar](40) NOT NULL,
	 [DiaChi] [nvarchar](60) NULL,
	 [Dienthoai] [nvarchar](24) NULL )
GO
CREATE TABLE KHACHHANG (
	 [MaKh] [nchar](5) NOT NULL,
	 [TenKh] [nvarchar](40) NOT NULL,
	 [LoaiKh] [nvarchar](3) NULL,
	 [DiaChi] [nvarchar](60) NULL,
	 [Phone] [nvarchar](24) NULL )
GO
CREATE TABLE HOADON (
	 [MaHD] [int] NOT NULL,
	 [NgayLapHD] [datetime] NULL,
	 [NgayGiao] [datetime] NULL,
	 [Noichuyen] [nvarchar](60) NOT NULL,
	 [MaNV] [nchar](5) NULL,
	 [MaKh] [nchar](5) NULL )
GO


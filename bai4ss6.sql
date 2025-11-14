CREATE DATABASE QuanLyThuVien;
USE `quan_ly_thu_vien`;
CREATE TABLE TacGia (
MaTacGia INT PRIMARY KEY auto_increment,
TenTacGia VARCHAR(100) NOT NULL,
QuocTich VARCHAR (50)
);
CREATE TABLE DocGia (
MaDocGia INT PRIMARY KEY AUTO_INCREMENT,
TenDocGia VARCHAR ( 100) NOT NULL,
DiaChi VARCHAR (225),
SoDienThoai VARCHAR (15) UNIQUE
); 
 INSERT INTO TacGia ( MaTacGia,TenTacGia,QuocTich)
 VALUES
('001','Nguyễn Nhật Ánh','Việt Nam'),
('002','J.K. Rowling','Anh'),
('003','Haruki Murakami','Nhật Bản'),
('004','Dale Carnegie','Mỹ'); 

 INSERT INTO DocGia (MaDocGia,TenDocGia,DiaChi,SoDienThoai)
 VALUES 
 ('0001','Nguyễn Văn A', '123 Đường ABC, Hà Nội', '0901234567'),
('0002','Trần Thị B', '456 Đường XYZ, TP.HCM', '0912345678'),
('0003','Lê Văn C', '789 Đường LMN, Đà Nẵng', '0923456789'),
('0004','Phạm Thị D', '101 Đường QRS, Hà Nội', '0934567890'),
('0005','Hoàng Văn E', '202 Đường UVW, Cần Thơ', '0945678901');

SELECT  QuocTich 
FROM TacGia 
WHERE QuocTich = 'Việt Nam';

SELECT DiaChi
FROM DocGia 
WHERE DiaChi =' Hà Nội';

SELECT TenDocGia,SoDienThoai
FROM DocGia;

UPDATE DocGia
SET DiaChi = '200 Đường XYZ, TP. Thủ Đức'
WHERE MaDocGia=0002;

DELETE FROM TacGia 
WHERE MaTacGia =0003;
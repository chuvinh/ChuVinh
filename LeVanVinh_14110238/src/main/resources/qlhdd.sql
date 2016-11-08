use qlhdd
CREATE TABLE role(
Roleid nVARCHAR(5) PRIMARY key,
Rolename nVARCHAR(20)
)
create table users(
Username varchar(50) PRIMARY key,
Pass nvarchar(50),
Roleid nVARCHAR(5),
FOREIGN key (Roleid) REFERENCES role(Roleid)
)
create TABLE chidoan(
MaCD nvarchar(5) PRIMARY key,
TenCD nvarchar(20),
Khoa nvarchar(20),
SoLuongDV int
)
create TABLE chucvu(
MaChucVu nvarchar(5) PRIMARY key,
TenChucVu nvarchar(20)
)
create TABLE doanvien(
MSSV int PRIMARY key,
MaCD nvarchar(5),
Ten nvarchar(50),
NgaySinh date,
Email nvarchar(50),
Sdt int,
NgayVaoDoan date,
GioiTinh nvarchar(3),
CMND int,
QueQuan nvarchar(20),
TonGiao nvarchar(20),
DanToc nvarchar(20),
DiaChi nvarchar(50),
MaChucVu nvarchar(5),
FOREIGN key (MaCD) REFERENCES chidoan(MaCD),
FOREIGN key (MaChucVu) REFERENCES chucvu(MaChucVu)
)
create TABLE hocky(
MaHK nvarchar(5) PRIMARY key,
TenHK nvarchar(20)
)
create TABLE hoatdong(
MaHD nvarchar(5) PRIMARY key,
TenHD nvarchar(20),
ThoiGianBatDau date,
ThoiGianKetThuc date,
DiaDiem nvarchar(5),
DiemRL int,
DiemCTXH int,
MaHK nvarchar(5),
TrangThai bool,
FOREIGN key (MaHK) REFERENCES hocky(MaHK)
)
create TABLE thamgiahoatdong(
MaHD nvarchar(5),
MSSV int,
TrangThai BOOL,
FOREIGN key (MaHD) REFERENCES hoatdong(MaHD),
FOREIGN key (MSSV) REFERENCES doanvien(MSSV),
primary key (MaHD,MSSV)
)
create TABLE tinnhan(
MaTN nvarchar(5) PRIMARY key,
NoiDung nvarchar(1000),
TieuDe nvarchar(20)
)
create TABLE gui(
MaNguoiGui int,
MaNguoiNhan int,
MaTN nvarchar(5),
FOREIGN key (MaNguoiGui) REFERENCES doanvien(MSSV),
FOREIGN key (MaNguoiNhan) REFERENCES doanvien(MSSV),
FOREIGN key (MaTN) REFERENCES tinnhan(MaTN),
PRIMARY key(MaNguoiGui,MaNguoiNhan)
)
create TABLE thongbao(
MaTB nvarchar(5) PRIMARY key,
NoiDung nvarchar(1000),
TieuDe nvarchar(20)
)
create TABLE cauhoi(
MaCauHoi nvarchar(5),
NoiDung nvarchar(1000),
MaNguoiHoi int,
FOREIGN key (MaNguoiHoi) REFERENCES doanvien(MSSV),
PRIMARY key (MaCauHoi,MaNguoiHoi)
)
create TABLE traloi(
MaCauTraLoi nvarchar(5),
MaCauHoi nvarchar(5),
NoiDung nvarchar(1000),
MaNguoiTraLoi int,
FOREIGN key (MaNguoiTraLoi) REFERENCES doanvien(MSSV),
PRIMARY key(MaCauTraLoi,MaNguoiTraLoi,MaCauHoi)
)

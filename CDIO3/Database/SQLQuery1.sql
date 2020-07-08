create table taikhoan(	
    tendangnhap varchar(50),
    matkhau varchar(20),
    phanquyen nvarchar(20),
    sodienthoai varchar(11),
	khoa int,
    primary key(tendangnhap) 
);

create table danhmucsanpham(
	madm varchar(10) ,
    tendanhmuc nvarchar(40),
	nhasanxuat nvarchar(40),
    primary key(madm)
    );

create table khachhang(	
    tendangnhap varchar(50),
    tenkhachhang nvarchar(40),
    email varchar(40),
	diachi nvarchar(40),
	gioitinh nvarchar(10),
     foreign key(tendangnhap) references  taikhoan(tendangnhap) ON DELETE CASCADE ,
	 primary key(tendangnhap)
    );

create table sanpham(
	 masp varchar(10) ,
     madm varchar(10),
     tensanpham nvarchar(50),
     hinhanh varchar(max),
     gia varchar(100),
     soluong int,
     thoigianbaohanh int,
     ram nvarchar(10),
     kichthuoc nvarchar(50),
     mausac nvarchar(50),
     manhinh nvarchar(50),
     hedieuhanh nvarchar(50),
     chipset nvarchar(50),
     camera nvarchar(50),
     bonhotrong nvarchar(50),
     pin nvarchar(20),
     foreign key(madm) references  danhmucsanpham(madm) ON DELETE CASCADE ,
     primary key(masp)
    ); 
create table khuyenmai(
	makm varchar(10) ,
     Tenkhuyenmai nvarchar(max),
     Noidungkhuyenmai nvarchar(max),
     primary key(makm)
    ); 

create table chitietkhuyenmai(
	masp varchar(10),
    makm varchar(10),
    dotkhuyenmai int,
    thoigianbatdau datetime,
	thoigianketthuc datetime,
    foreign key(masp) references  sanpham(masp) ON DELETE CASCADE ,
    foreign key(makm) references  khuyenmai(makm) ON DELETE CASCADE ,
	primary key (masp,makm)
);  
create table Trangthai(
	matt int,
	trangthai nvarchar(50),
	primary key(matt)
); 
create table donhang(
	madh int identity(1,1) ,
    tendangnhap varchar(50) null,
    ngaydat datetime,
    matt int,
    nguoinhan varchar(40),
    diachigiaohang varchar(40),
    sodienthoai varchar(10),
	thanhtien varchar(50),
    foreign key(tendangnhap) references  khachhang(tendangnhap)  ON DELETE CASCADE ,
	foreign key(matt) references  Trangthai(matt) ,
	primary key(madh)
); 
          
create table chitietdonhang(
	madh int ,
    masp varchar(10) ,
	soluong varchar(50),
    foreign key(masp) references  sanpham(masp),
	foreign key(madh) references  donhang(madh)  ON DELETE CASCADE,
    primary key(madh,masp)
   ); 
 

create table phieunhap(
	mapn varchar(10),
    thoigiannhap datetime,
    primary key(mapn)
    );    

create table chitietphieunhap(
	mapn varchar(10),
	masp varchar(10) ,
    soluongnhap varchar(50),
	gianhap varchar(50),
    foreign key(mapn) references  phieunhap(mapn),
    foreign key(masp) references  sanpham(masp),
	primary key(mapn,masp)
    );  
create table binhluan(
	mabl INT IDENTITY (1,1),
	masp varchar(10),
	tendangnhap varchar(50),
    binhluan nvarchar(max),
	mblcha int,
    foreign key(tendangnhap) references  taikhoan(tendangnhap) ON DELETE CASCADE,
	foreign key(masp) references  sanpham(masp) ON DELETE CASCADE,
    primary key(mabl) 
   );
   
INSERT INTO danhmucsanpham

VALUES   
('1', 'IPHONE', 'APPLE'),
('2', 'SAMSUM', 'SAMSUM'),  
('3', 'OPPO', 'OPPO')
 
INSERT INTO sanpham    
VALUES
    ('ipx', '1', 'Iphone X 64G', 'DataIMG\Iphone\IphoneX\home.jpg', '10000000', 100, 12,'4Gb','5.8"',N'Đen','OLED 1125 x 2436 Px','iOS 12','Apple A11',N'Chính 12 MP & Phụ 12 MP','64GB','2716 mAh');

INSERT INTO khuyenmai
VALUES('1',N'Khai Trương',N'Trả góp 0%');

INSERT INTO chitietkhuyenmai
VALUES('ipx','1','1','5/6/2020','5/7/2020');

INSERT INTO taikhoan 
VALUES('admin','admin','0','0324545878','1'),
('khachhang','123456','1','0324545878','1');

INSERT INTO khachhang 
VALUES('khachhang',N'nguyen van a','emddail.gmail.com','123dnv','Nam');

INSERT INTO binhluan 
VALUES('ipx','khachhang',N'binh luan cua nguyen van a Nam',0),
('ipx','admin',N'trả lời binh luan cua nguyen van a',1);

INSERT INTO Trangthai 
VALUES(1,N'Đang duyệt'),
(2,N'Đang vận chuyển'),
(3,N'Đã giao hàng'),
(4,N'Đã hủy');

INSERT INTO donhang 
VALUES('khachhang' ,'2/2/2020',1,N'nguyen van a',N'123dnv','0324545878','10000000')

INSERT INTO chitietdonhang 
VALUES(1,'ipx',1)


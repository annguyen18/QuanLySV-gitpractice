create table SINH_VIEN(
	MA_SV varchar(50) not null primary key,
	TEN_SV varchar(100) not null,
	GIOI_TINH tinyint,
	NGAY_SINH date,
	QUE_QUAN varchar(1000),
	MA_LOP varchar(50),
	CREATED_AT timestamp,
	UPDATED_AT timestamp
);

create table MON_HOC(
	MA_MON_HOC varchar(50) not null primary key,
	TEN_MON_HOC varchar(255),
	CREATED_AT timestamp,
	UPDATED_AT timestamp
);

create table DIEM(
    ID bigint not null primary key auto_increment,
	MA_SV varchar(50) not null,
	MA_MON_HOC varchar(50) not null,
	HOC_KY varchar(10),
	DIEM_LAN_1 float,
	DIEM_LAN_2 float,
	CREATED_AT timestamp,
	UPDATED_AT timestamp
);

create table HE_DAO_TAO(
	MA_HE_DT varchar(50) not null primary key,
	TEN_HE_DT varchar(255) not null,
	CREATED_AT timestamp,
	UPDATED_AT timestamp
);

create table KHOA_HOC(
	MA_KHOA_HOC varchar(50) not null primary key,
	TEN_KHOA_HOC varchar(255) not null,
	CREATED_AT timestamp,
	UPDATED_AT timestamp	
);

create table KHOA(
	MA_KHOA varchar(50) not null primary key,
	TEN_KHOA varchar(255) not null,
	DIA_CHI varchar(1000),
	DIEN_THOAI varchar(50),
	CREATED_AT timestamp,
	UPDATED_AT timestamp	
);

create table LOP(
	MA_LOP varchar(50) not null primary key,
	TEN_LOP varchar(255) not null,
	MA_KHOA_HOC varchar(50),
	MA_HE_DT varchar(50),
	MA_KHOA varchar(50),
	CREATED_AT timestamp,
	UPDATED_AT timestamp	
);


insert into HE_DAO_TAO(`MA_HE_DT`,`TEN_HE_DT`,`CREATED_AT`,`UPDATED_AT`) 
values
('A01','Đại học','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('B01','Cao đẳng','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('C01','Trung cấp','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('D01','Công nhân','2023-06-28 15:00:00','2023-06-28 15:00:00');


insert into KHOA_HOC(`MA_KHOA_HOC`,`TEN_KHOA_HOC`,`CREATED_AT`,`UPDATED_AT`)
values
('K1', 'Đại học khóa 1','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('K2', 'Đại học khóa 2','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('K3', 'Đại học khóa 3','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('K4', 'Đại học khóa 4','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('K5', 'Đại học khóa 5','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('K6', 'Đại học khóa 6','2023-06-28 15:00:00','2023-06-28 15:00:00');

insert into KHOA(`MA_KHOA`,`TEN_KHOA`,`DIA_CHI`,`DIEN_THOAI`,`CREATED_AT`,`UPDATED_AT`)
values
('CNTT', 'Công nghệ thông tin', 'Tầng 4 nhà B','043768888','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('CK', 'Cơ khí', 'Tầng 5 nhà B','0835960320','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('DT', 'Điện tử', 'Tầng 6 nhà B','0987652712','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('KT', 'Kinh tế', 'Tầng 2 nhà C','0512976221','2023-06-28 15:00:00','2023-06-28 15:00:00');

insert into MON_HOC(`MA_MON_HOC`,`TEN_MON_HOC`,`CREATED_AT`,`UPDATED_AT`)
values
('SQL', 'SQL','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('JAVA', 'Java','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('CNPM', 'Công nghệ phần mềm','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('PTHT', 'Phân tích hệ thống','2023-06-28 15:00:00','2023-06-28 15:00:00'),
('NETWORK', 'Mạng máy tính','2023-06-28 15:00:00','2023-06-28 15:00:00');

insert into LOP(`MA_LOP`,`TEN_LOP`,`MA_KHOA`,`MA_HE_DT`,`MA_KHOA_HOC`,`CREATED_AT`,`UPDATED_AT`)
values
('MT1','Máy tính 1','CNTT', 'A01','K2', '2023-06-28 15:00:00','2023-06-28 15:00:00'),
('MT2','Máy tính 2','CNTT', 'A01','K2', '2023-06-28 15:00:00','2023-06-28 15:00:00'),
('MT3','Máy tính 3','CNTT', 'A01','K2', '2023-06-28 15:00:00','2023-06-28 15:00:00'),
('MT4','Máy tính 4','CNTT', 'A01','K2', '2023-06-28 15:00:00','2023-06-28 15:00:00'),
('KT1','Kinh tế 1','KT', 'A01','K2', '2023-06-28 15:00:00','2023-06-28 15:00:00');


insert into SINH_VIEN(`MA_SV`,`TEN_SV`,`GIOI_TINH`,`NGAY_SINH`,`QUE_QUAN`,`MA_LOP`,`CREATED_AT`,`UPDATED_AT`)
values
('SV001','Bùi Quang Khải', 0, '1998-05-22','Nam Định', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV002','Nguyễn Minh Sơn', 0, '1998-05-22','Ninh Bình', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV003','Nguyễn Thị Mai', 1, '1998-05-22','Hà Nam', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV004','Tống Thị Huyền', 1, '1998-05-22','Thanh Hóa', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV005','Hoàng Văn Hiểu', 0, '1998-05-22','Thái Bình', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV006','Trịnh Đắc Chiến', 0, '1998-05-22','Bắc Ninh', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV007','Bùi Thái Quân', 0, '1998-05-22','Thái Bình', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV008','Nguyễn Văn Thắng', 0, '1998-05-22','Thái Bình', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV009','Võ Đình Thái', 0, '1998-05-22','Nghệ An', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV010','Trần Anh Thư', 1, '1998-05-22','Nam Định', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV011','Vũ Minh Tâm', 0, '1998-05-22','Nam Định', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV012','Vũ Hồng Thái', 0, '1998-05-22','Nam Định', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV013','Nguyễn Quang Minh', 0, '1998-05-22','Hà Nội', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV014','Tống Thế Sơn', 0, '1998-05-22','Hải Phòng', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV015','Bùi Minh Ước', 0, '1998-05-22','Nam Định', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV016','Nguyễn Thị Huyền', 1, '1998-05-22','Nam Định', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV017','Lê Huy Hoàng', 0, '1998-05-22','Nam Định', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV018','Nguyễn Tuấn Anh', 0, '1998-05-22','Nam Định', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV019','Hà Như Ngọc', 1, '1998-05-22','Nam Định', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' ),
('SV020','Trần Văn Tân', 0, '1998-05-22','Nam Định', 'MT3','2023-06-28 15:00:00','2023-06-28 15:00:00' );



insert into DIEM(`MA_SV`,`MA_MON_HOC`,`HOC_KY`,`DIEM_LAN_1`,`DIEM_LAN_2`,`CREATED_AT`,`UPDATED_AT`)
values
('SV001','SQL', '1', 6, 10 ,'2023-06-28 15:00:00','2023-06-28 15:00:00'),
('SV003','SQL', '1', 5, 7 ,'2023-06-28 15:00:00','2023-06-28 15:00:00'),
('SV001','JAVA', '1', 7, 9 ,'2023-06-28 15:00:00','2023-06-28 15:00:00'),
('SV002','CNPM', '1', 6, 10 ,'2023-06-28 15:00:00','2023-06-28 15:00:00');

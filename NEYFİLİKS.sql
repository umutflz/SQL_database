USE NEYFÝLÝKS
create table kategori
(
Id int identity(1,1) not null,
Tür nvarchar (30) not null,
constraint PK_kategori primary key (Id)

)

create table yönetmen 
( 
Id int identity (1,1) not null,
isim nvarchar (20) not null,
soyisim nvarchar (20) null
constraint PK_yönetmen primary key (Id)


)


create table dizifilm 
( Id int identity (1,1) not null,
ismi nvarchar (50) not null,
konu nvarchar (60) null,
çýkýþtarihi datetime null,
yönetmenId int not null,
constraint PK_dizifilm primary key (Id),
constraint FK_dizifilm_yönetmen foreign key (yönetmenId) references  yönetmen  (Id)

)

create table dizifilmkate
(Id int identity (1,1) not null,
dizifilmId int not null,
kategoriID int not null,

constraint PK_dizifilmkateId primary key (Id),
constraint FK_dizifilmkateýD_dizifilmId foreign key (dizifilmId) references dizifilm (Id),
constraint FK_dizifilmkateId_kategoriId foreign key (kategoriID) references kategori (Id)

)
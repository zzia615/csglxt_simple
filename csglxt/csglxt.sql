create database csglxt
go

use csglxt
go
--用户信息表（[yhxx]）
create table [dbo].[yhxx]
(
[yhzh] nvarchar(20) not null primary key, --用户账号
[yhxm] nvarchar(20) not null, --用户姓名
[yhmm] nvarchar(50) not null, --用户密码
[yhlb] nvarchar(10) default N'个人' not null --用户类别：个人/管理员
)
go

--初始化数据
insert into spxx(yhzh,yhxm,yhmm,yhlb) values(N'admin',N'管理员',N'admin',N'管理员')
go

--用户信息表（[spxx]）
create table [dbo].[spxx]
(
[bm] nvarchar(20) not null primary key, --商品编码
[mc] nvarchar(100) not null, --商品名称
[tm] nvarchar(50) not null, --条码
[lb] nvarchar(10)  not null, --商品分类
[gg] nvarchar(10)  not null, --规格
[dj] numeric(14,2)  not null, --单价
[kcsl] int  not null --库存数量
)
go
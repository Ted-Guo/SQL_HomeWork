create DataBase MyHome2;
use MyHome2


create table game_Product (
productID   int not null PRIMARY KEY,
productName nvarchar(20),
companyID  nvarchar(20),
)

insert into game_Product values(1,'pad','C1');
insert into game_Product values(2,'chain-war','C2');
insert into game_Product values(3,'fate-GrandOrder','C3');
insert into game_Product values(4,'Shadowverse','C4');
insert into game_Product values(5,'Crusaders Quest','C5');
insert into game_Product values(6,'Crash Fever','C6');
insert into game_Product values(7,'³±¶§®v Onmyoji','C3');
insert into game_Product values(8,'¥Õ¿ß Project','C2');



select * from game_Product;
select * from game_Product order by companyID;



create table game_company(
	companyID  nvarchar(20) not null primary key,
	companyName nvarchar(20),
)

insert into game_company values('C1','GungHo');
insert into game_company values('C2','SEGA');


select * from game_company;

insert into game_company values('C3','Aniplex');
insert into game_company values('C4','Cygames');
insert into game_company values('C5','NHN Entertainment.');
insert into game_company values('C6','Wonderplanet');
 
 
select * from game_company;

delete from game_company where companyID = 'C5';

select * from game_company;

insert into game_company values('C5','NHN Entertainment');

select * from game_company;

update game_company set companyName = 'Entertainment update' where companyID = 'C5';

select * from game_company;

select * from game_Product as gp join game_company as gc
 on gp.companyID = gc.companyID;

 select gp.productID,gp.companyID,
	gc.companyName ,gp.productName
 from game_Product as gp join game_company as gc
 on gp.companyID = gc.companyID;



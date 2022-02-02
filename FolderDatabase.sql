CREATE DATABASE db2;	

use db2;
CREATE TABLE folder(
id INT UNSIGNED AUTO_INCREMENT NOT NULL,
nameOfNode VARCHAR (255) NOT NULL,
parent INTEGER REFERENCES folder(id),
primary key (id)
);


DROP TABLE folder;

set name = 'root';
insert into folder (nameOfNode,id) 
values ('root',0);

select * from folder;

select nameOfNode from folder where id=1;


use db2;

update folder set parent = 69
where id=2;



INSERT into folder (nameOfNode) 
values ('papka');


Select (id-1) from folder order by id DESC LIMIT 1;
create table tbl_book(
   num int not null auto_increment,
   title varchar(50) not null,
   author varchar(30) not null,
   company varchar(50) not null,
   isbn varchar(30) not null,
   count int default 0,
   primary key(num)
);

insert into tbl_book(num,title,author,company,isbn,count)
values(1,'스프링','홍길동','삼성','9999999',10);

insert into tbl_book(num,title,author,company,isbn,count)
values(2,'JSP','나길동','대림','8888888',5);

select * from tbl_book;
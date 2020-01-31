create table department ( name varchar(40), building varchar(10), budget integer,
primary key (name));

create table instructor ( ID integer, name varchar(20), dept varchar(40), salary integer,
primary key (ID),
foreign key (dept) references department(name));

create table course (course_id varchar(7), title varchar(25), dept varchar(40), credits integer,
primary key (course_id),
foreign key (dept) references department (name));

create table prereq (course_id varchar(7), prereq_id varchar(7),
foreign key (course_id) references course(course_id),
foreign key (prereq_id) references course(course_id));

CREATE DEFINER=`root`@`localhost` PROCEDURE `inserts`(nam varchar(45),marks float)
BEGIN
	declare
	grade varchar(1);
	if (marks > 90)
    then set grade = 'A';
    insert into student(name,marks,grade) values(nam,marks,grade);
    end if;
    if(marks > 80 && marks <90)
    then set grade = 'B';
    insert into student(name,marks,grade) values(nam,marks,grade);
    end if;
    if (marks > 70 && marks <60)
    then set grade = 'C';
    insert into student(name,marks,grade) values(nam,marks,grade);
    end if;
END


use jhjbmg;
select * from student;
drop table student;
call inserts('qwerty',85);

create table student
(
name varchar(45),
marks float,
grade varchar(1));

CREATE TABLE adad
(
    name CHAR (10) PRIMARY KEY,
    area Int Null ,
    popu Int Null ,
    metro Char(1) Not Null,
    reagion Char(6) Not Null
  
);
    insert into adad values ('서울',605,874,'y','경기');
    insert into adad values ('부산',765,342,'y','경상');
    insert into adad values ('오산',42,21,'n','경기');
    insert into adad values ('청주',940,83,'n','충청');
    insert into adad values ('전주',205,65,'n','전라');
    insert into adad values ('순천',910,27,'n','전라');
    insert into adad values ('춘천',1116,27,'n','강원');
    insert into adad values ('홍천',1819,7,'n','강원');
    
    
    
    
    select * FROM adad;
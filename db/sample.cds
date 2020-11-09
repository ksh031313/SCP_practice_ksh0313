namespace my;
entity Authors {
 key ID : Integer;
 name : String;
}
entity Books {
 key ID : Integer;
 title : String;
 stock : Integer;
}
entity Dept {
 key ID : Integer;
 name : String;
 create_date : Date;
 employee : Association to many Employee on employee.dept=$self;
}
entity Employee {
 key ID : Integer;
 name : String;
 salary : Integer;
 dept : Association to Dept;
}

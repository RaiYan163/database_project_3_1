--PL/SQL variable declaration and print value.
set serveroutput on
declare
cust_id Customer.customer_id%type;
name Customer.first_name%type;
phone_number varchar(50);
begin
select customer_id, first_name, contact_number into cust_id, name, phone_number from Customer
where customer_id = 7;
dbms_output.put_line('Customer ID: ' ||cust_id|| ' Name: ' ||name|| ' Phone: ' ||phone_number);
end;
/


--Insert and set default value
set serveroutput on
declare
name Agent.agent_id%type :=15;
name1 Agent.first_name%type := 'Vinod';
name2 Agent.last_name%type :='Mike';
birthday Agent.date_of_birth%type := TO_DATE('1989-04-23', 'YYYY-MM-DD');
address Agent.address%type :='Napoli, Italy';
phone Agent.contact_number%type := '1234-9021';
begin
insert into Agent values(name, name1, name2, birthday, address, phone);
end;
/

--Row Type
set serveroutput on
declare
row1 PolicyType%rowType;
begin
select policy_type_id, name, description into row1.policy_type_id, row1.name, row1.description from PolicyType where policy_type_id = 5;
dbms_output.put_line(' Description of policy: '||row1.description);
end;
/

--Cursor and row count
set serveroutput on
declare
cursor agent_cursor is select * from Agent;
row Agent%rowType;
begin
open agent_cursor;
fetch agent_cursor into row.agent_id, row.first_name, row.last_name,
row.date_of_birth, row.address, row.contact_number;
while agent_cursor%found loop
dbms_output.put_line('ID: ' || row.agent_id || ' first_name: ' || row.first_name || ' last_name: ' || row.last_name || ' Date of birth: ' ||row.date_of_birth|| ' Address: '||row.address|| ' Contact no: ' ||row.contact_number);
dbms_output.put_line('Row Count: ' || agent_cursor%rowcount);
fetch agent_cursor into row.agent_id, row.first_name, row.last_name,
row.date_of_birth, row.address, row.contact_number;
end loop;
close agent_cursor;
end;
/

--FOR LOOP/WHILE LOOP/ARRAY with extend() function
set serveroutput on
declare
counter number;
customer_name Customer.first_name%type;
TYPE NAMEARRAY is VARRAY(5) of Customer.first_name%type;
c_name NAMEARRAY := NAMEARRAY();

begin
counter := 1;
for x in 7 .. 9
loop
 select first_name into customer_name from Customer where customer_id=x;
 c_name.extend();
 c_name(counter) :=customer_name;
 counter :=counter + 1;
end loop;
counter := 1;
while counter<=c_name.count
loop
dbms_output.put_line(c_name(counter));
counter:=counter + 1;
end loop;
end;
/

--IF /ELSIF /ELSE
set serveroutput on
declare
counter number := 1;
c_status Claim.status%type;
Type NAMEARRAY IS VARRAY(5) of Claim.status%type;
c_name NAMEARRAY := NAMEARRAY('test 1','test 2' , 'test 3', 'test 4', 'test 5');

begin
counter := 1;
For x in 3 .. 9
loop
select status into c_status from Claim where claim_id = x;

if c_status = 'Pending'
then
dbms_output.put_line(' The claim has not processed yet. ');
elsif c_status = 'Rejected'
then
dbms_output.put_line('The claim has labelled as false and rejected');
else 
dbms_output.put_line('The claim has not been approved yet');
end if;

end loop;
end;
/

drop procedure procTest;
-- procedure
create or replace procedure procTest(
    var1 IN int,
    var2 out varchar2, --(gives error if we give varchar(20))
    var3 IN OUT int
)
AS
t_show char(30);
begin
t_show := 'From Procedure: ';
select policy_number into var2 from Policy where policy_type_id in
(select policy_type_id from Policy where policy_id = var1);
var3 := var1 + 1;
dbms_output.put_line(t_show || var2 || ' code is '|| var1 ||' In out parameter ' || var3 );
end;
/

set serveroutput on
declare
id Policy.policy_id%type := 9;
p_number Policy.policy_number%type;
extra int;
begin
procTest(id, p_number, extra);
end;
/

drop function funtest;
--Function
set serveroutput on
create or replace function funtest(var1 in int) return varchar AS
c_status Claim.status%type;
begin
select status into c_status from Claim where claim_id = var1;
return c_status;
end;
CREATE OR REPLACE TRIGGER update_claim_date
BEFORE INSERT ON Claim
FOR EACH ROW
BEGIN
    :NEW.claim_date := SYSDATE;
END;
/

CREATE OR REPLACE TRIGGER update_payment_date
BEFORE INSERT ON Payment
FOR EACH ROW
BEGIN
    :NEW.payment_date := SYSDATE;
END;
/
CREATE OR REPLACE TRIGGER update_payment_date
BEFORE INSERT ON Payment
FOR EACH ROW
BEGIN
    :NEW.payment_date := SYSDATE;
END;
/

CREATE OR REPLACE TRIGGER update_start_date
BEFORE INSERT ON Policy
FOR EACH ROW
BEGIN
    :NEW.start_date := SYSDATE;
END;
/










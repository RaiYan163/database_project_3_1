-- Inserting data into PolicyType table
INSERT INTO PolicyType (policy_type_id, name, description)
VALUES (1, 'Auto Insurance', 'Provides coverage for vehicles.');

INSERT INTO PolicyType (policy_type_id, name, description)
VALUES(2, 'Home Insurance', 'Covers damages to the house and its contents.');

INSERT INTO PolicyType (policy_type_id, name, description)
VALUES (3, 'Health Insurance', 'Covers medical expenses and healthcare.');

INSERT INTO PolicyType (policy_type_id, name, description)
VALUES(4, 'Life Insurance', 'Provides financial protection to beneficiaries.');

INSERT INTO PolicyType (policy_type_id, name, description)
VALUES(5, 'Travel Insurance', 'Covers travel-related risks.');

INSERT INTO PolicyType (policy_type_id, name, description)
VALUES(6, 'Business Insurance', 'Protects businesses from various risks.');

INSERT INTO PolicyType (policy_type_id, name, description)
VALUES(7, 'Pet Insurance', 'Covers veterinary expenses for pets.');

INSERT INTO PolicyType (policy_type_id, name, description)
VALUES(8, 'Renter Insurance', 'Protects renters and their belongings.');

INSERT INTO PolicyType (policy_type_id, name, description)
VALUES(9, 'Boat Insurance', 'Provides coverage for boats and watercrafts.'):

INSERT INTO PolicyType (policy_type_id, name, description)
VALUES(10, 'Motorcycle Insurance', 'Covers motorcycles and riders.');



-- Inserting data into Customer table
INSERT INTO Customer (customer_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(1, 'John', 'Doe', TO_DATE('1990-05-15', 'YYYY-MM-DD'), '123 Main St, Anytown', '555-1234');

INSERT INTO Customer (customer_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(2, 'Jane', 'Smith', TO_DATE('1985-09-22', 'YYYY-MM-DD'), '456 Elm St, Cityville', '555-5678');

INSERT INTO Customer (customer_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(3, 'David', 'Johnson', TO_DATE('1978-11-30', 'YYYY-MM-DD'), '789 Oak St, Townsville', '555-9012');

INSERT INTO Customer (customer_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(4, 'Sarah', 'Wilson', TO_DATE('1992-08-12', 'YYYY-MM-DD'), '789 Oak St, Suburbia', '555-3456');

INSERT INTO Customer (customer_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(5, 'Robert', 'Thompson', TO_DATE('1984-06-25', 'YYYY-MM-DD'), '543 Elm St, Cityville', '555-6789');

INSERT INTO Customer (customer_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(6, 'Emma', 'Lee', TO_DATE('1991-02-28', 'YYYY-MM-DD'), '987 Maple St, Townsville', '555-0123');

INSERT INTO Customer (customer_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(7, 'Daniel', 'Clark', TO_DATE('1979-12-03', 'YYYY-MM-DD'), '321 Pine St, Countryside', '555-4567');

INSERT INTO Customer (customer_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(8, 'Olivia', 'Walker', TO_DATE('1988-04-17', 'YYYY-MM-DD'), '654 Cedar St, Suburbia', '555-8901');

INSERT INTO Customer (customer_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(9, 'James', 'Baker', TO_DATE('1980-10-09', 'YYYY-MM-DD'), '123 Main St, Anytown', '555-2345');

INSERT INTO Customer (customer_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(10, 'Sophia', 'Green', TO_DATE('1993-03-22', 'YYYY-MM-DD'), '456 Elm St, Cityville', '555-6789');


--Inserting data into Agent table
INSERT INTO Agent (agent_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(1, 'Michael', 'Anderson', TO_DATE('1982-07-10', 'YYYY-MM-DD'), '321 Pine St, Countryside', '555-3456');

INSERT INTO Agent (agent_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(2, 'Emily', 'Brown', TO_DATE('1995-03-18', 'YYYY-MM-DD'), '654 Cedar St, Suburbia', '555-7890');

INSERT INTO Agent (agent_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(3, 'Christopher', 'Davis', TO_DATE('1976-09-03', 'YYYY-MM-DD'), '987 Maple St, Ruralville', '555-2345');

INSERT INTO Agent (agent_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(4, 'Jennifer', 'Wilson', TO_DATE('1985-07-20', 'YYYY-MM-DD'), '321 Pine St, Countryside', '555-3456');

INSERT INTO Agent (agent_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(5, 'Matthew', 'Anderson', TO_DATE('1990-04-18', 'YYYY-MM-DD'), '654 Cedar St, Suburbia', '555-7890');

INSERT INTO Agent (agent_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(6, 'Elizabeth', 'Davis', TO_DATE('1982-09-15', 'YYYY-MM-DD'), '987 Maple St, Townsville', '555-2345');

INSERT INTO Agent (agent_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(7, 'Andrew', 'Smith', TO_DATE('1977-11-11', 'YYYY-MM-DD'), '123 Main St, Anytown', '555-6789');

INSERT INTO Agent (agent_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(8, 'Jessica', 'Taylor', TO_DATE('1993-05-27', 'YYYY-MM-DD'), '456 Elm St, Cityville', '555-9012');

INSERT INTO Agent (agent_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(9, 'William', 'Brown', TO_DATE('1988-03-08', 'YYYY-MM-DD'), '789 Oak St, Suburbia', '555-5678');

INSERT INTO Agent (agent_id, first_name, last_name, date_of_birth, address, contact_number)
VALUES(10, 'Emily', 'Harris', TO_DATE('1984-12-09', 'YYYY-MM-DD'), '543 Elm St, Cityville', '555-1234');



-- Inserting data into Policy table
INSERT INTO Policy (policy_id, policy_number, policy_type_id, start_date, end_date, premium_amount, insured_amount, customer_id, agent_id)
VALUES(1, 'POL001', 1, TO_DATE('2023-01-01', 'YYYY-MM-DD'), TO_DATE('2024-01-01', 'YYYY-MM-DD'), 500.00, 10000.00, 1, 1);

INSERT INTO Policy (policy_id, policy_number, policy_type_id, start_date, end_date, premium_amount, insured_amount, customer_id, agent_id)
VALUES(2, 'POL002', 2, TO_DATE('2023-02-01', 'YYYY-MM-DD'), TO_DATE('2024-02-01', 'YYYY-MM-DD'), 800.00, 150000.00, 2, 2);

INSERT INTO Policy (policy_id, policy_number, policy_type_id, start_date, end_date, premium_amount, insured_amount, customer_id, agent_id)
VALUES(3, 'POL003', 3, TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2024-03-01', 'YYYY-MM-DD'), 600.00, 5000.00, 3, 3);

INSERT INTO Policy (policy_id, policy_number, policy_type_id, start_date, end_date, premium_amount, insured_amount, customer_id, agent_id)
VALUES(4, 'POL004', 1, TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2024-04-01', 'YYYY-MM-DD'), 600.00, 12000.00, 4, 4);

INSERT INTO Policy (policy_id, policy_number, policy_type_id, start_date, end_date, premium_amount, insured_amount, customer_id, agent_id)
VALUES(5, 'POL005', 2, TO_DATE('2023-05-01', 'YYYY-MM-DD'), TO_DATE('2024-05-01', 'YYYY-MM-DD'), 1000.00, 200000.00, 5, 5);

INSERT INTO Policy (policy_id, policy_number, policy_type_id, start_date, end_date, premium_amount, insured_amount, customer_id, agent_id)
VALUES(6, 'POL006', 3, TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2024-06-01', 'YYYY-MM-DD'), 700.00, 6000.00, 6, 6);

INSERT INTO Policy (policy_id, policy_number, policy_type_id, start_date, end_date, premium_amount, insured_amount, customer_id, agent_id)
VALUES(7, 'POL007', 4, TO_DATE('2023-07-01', 'YYYY-MM-DD'), TO_DATE('2024-07-01', 'YYYY-MM-DD'), 900.00, 300000.00, 7, 7);

INSERT INTO Policy (policy_id, policy_number, policy_type_id, start_date, end_date, premium_amount, insured_amount, customer_id, agent_id)
VALUES(8, 'POL008', 5, TO_DATE('2023-08-01', 'YYYY-MM-DD'), TO_DATE('2024-08-01', 'YYYY-MM-DD'), 400.00, 10000.00, 8, 8);

INSERT INTO Policy (policy_id, policy_number, policy_type_id, start_date, end_date, premium_amount, insured_amount, customer_id, agent_id)
VALUES(9, 'POL009', 6, TO_DATE('2023-09-01', 'YYYY-MM-DD'), TO_DATE('2024-09-01', 'YYYY-MM-DD'), 800.00, 500000.00, 9, 9);

INSERT INTO Policy (policy_id, policy_number, policy_type_id, start_date, end_date, premium_amount, insured_amount, customer_id, agent_id)
VALUES(10, 'POL010', 7, TO_DATE('2023-10-01', 'YYYY-MM-DD'), TO_DATE('2024-10-01', 'YYYY-MM-DD'), 500.00, 5000.00, 10, 10);



-- Inserting data into Claim table
INSERT INTO Claim (claim_id, policy_id, claim_date, claim_amount, status)
VALUES(1, 1, TO_DATE('2023-02-15', 'YYYY-MM-DD'), 2000.00, 'Pending');

INSERT INTO Claim (claim_id, policy_id, claim_date, claim_amount, status)
VALUES(2, 2, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 5000.00, 'Approved');

INSERT INTO Claim (claim_id, policy_id, claim_date, claim_amount, status)
VALUES(3, 3, TO_DATE('2023-04-10', 'YYYY-MM-DD'), 3000.00, 'Pending');

INSERT INTO Claim (claim_id, policy_id, claim_date, claim_amount, status)
VALUES(4, 1, TO_DATE('2023-02-25', 'YYYY-MM-DD'), 2500.00, 'Pending');

INSERT INTO Claim (claim_id, policy_id, claim_date, claim_amount, status)
VALUES(5, 2, TO_DATE('2023-03-30', 'YYYY-MM-DD'), 6000.00, 'Approved');

INSERT INTO Claim (claim_id, policy_id, claim_date, claim_amount, status)
VALUES(6, 3, TO_DATE('2023-04-20', 'YYYY-MM-DD'), 3500.00, 'Rejected');

INSERT INTO Claim (claim_id, policy_id, claim_date, claim_amount, status)
VALUES(7, 4, TO_DATE('2023-05-05', 'YYYY-MM-DD'), 4000.00, 'Pending');

INSERT INTO Claim (claim_id, policy_id, claim_date, claim_amount, status)
VALUES(8, 5, TO_DATE('2023-06-10', 'YYYY-MM-DD'), 2000.00, 'Approved');

INSERT INTO Claim (claim_id, policy_id, claim_date, claim_amount, status)
VALUES(9, 6, TO_DATE('2023-07-15', 'YYYY-MM-DD'), 4500.00, 'Pending');

INSERT INTO Claim (claim_id, policy_id, claim_date, claim_amount, status)
VALUES(10, 7, TO_DATE('2023-08-20', 'YYYY-MM-DD'), 3000.00, 'Approved');


-- Inserting data into Payment table
INSERT INTO Payment (payment_id, policy_id, payment_date, amount)
VALUES (1, 1, TO_DATE('2023-02-15', 'YYYY-MM-DD'), 500.00);

INSERT INTO Payment (payment_id, policy_id, payment_date, amount)
VALUES (2, 2, TO_DATE('2023-03-20', 'YYYY-MM-DD'), 800.00);

INSERT INTO Payment (payment_id, policy_id, payment_date, amount)
VALUES (3, 3, TO_DATE('2023-04-10', 'YYYY-MM-DD'), 600.00);

INSERT INTO Payment (payment_id, policy_id, payment_date, amount)
VALUES (4, 1, TO_DATE('2023-02-25', 'YYYY-MM-DD'), 600.00);

INSERT INTO Payment (payment_id, policy_id, payment_date, amount)
VALUES (5, 2, TO_DATE('2023-03-30', 'YYYY-MM-DD'), 1000.00);

INSERT INTO Payment (payment_id, policy_id, payment_date, amount)
VALUES (6, 3, TO_DATE('2023-04-20', 'YYYY-MM-DD'), 700.00);

INSERT INTO Payment (payment_id, policy_id, payment_date, amount)
VALUES (7, 4, TO_DATE('2023-05-05', 'YYYY-MM-DD'), 900.00);

INSERT INTO Payment (payment_id, policy_id, payment_date, amount)
VALUES (8, 5, TO_DATE('2023-06-10', 'YYYY-MM-DD'), 400.00);

INSERT INTO Payment (payment_id, policy_id, payment_date, amount)
VALUES (9, 6, TO_DATE('2023-07-15', 'YYYY-MM-DD'), 800.00);

INSERT INTO Payment (payment_id, policy_id, payment_date, amount)
VALUES (10, 7, TO_DATE('2023-08-20', 'YYYY-MM-DD'), 500.00);



select * from Policy where premium_amount = 600;

select date_of_birth from Customer where
customer_id=(select customer_id from policy where policy_id = 6);

update Customer set contact_number = '565-1111' where customer_id = 4;

insert into Customer(customer_id, first_name, last_name, date_of_birth, address, contact_number)values(13, 'Raiyan', 'Ashraf', TO_DATE('2023-05-30', 'YYYY-MM-DD'), 'Telegati, Khulna', '5623-9912');

delete from Customer where customer_id = 13;


select name from PolicyType where name like'%Motor%' union select name from PolicyType where name like '%P%e%';



with max_insured_ammount(max_ammount) as (select max(insured_amount) from Policy)
select policy_id, insured_amount, start_date, max_ammount from Policy, max_insured_ammount where Policy.insured_amount = max_insured_ammount.max_ammount;


select count(*) from Agent;

select count(amount) as total_payment_soFar from Payment;

select count (distinct status) as status_of_claim from Claim;

select sum(premium_amount) from Policy;
select avg(insured_amount) from Policy;

select max(amount) from Payment;
select min(claim_amount) from Claim;
select status, avg(claim_amount) from Claim group by status;
select status, avg(claim_amount) from Claim group by status having avg(claim_amount) >3300;

select * from Claim where status='Pending' and policy_id in
(select policy_id from Policy where policy_type_id = (
 select policy_type_id from PolicyType where name like '%Motor%'
));

select * from Claim where status = 'Approved' and policy_id in (select policy_id from Policy where policy_id = 5);
select * from PolicyType where name like 'H%';

select status, name, policy_id from Claim natural join (select * from PolicyType natural join Policy) where status = 'Pending';

CREATE VIEW all_linked AS
SELECT Policy.policy_id, PolicyType.name AS policy_type, Claim.status, Payment.payment_date, Customer.first_name AS customer_first_name, Agent.first_name AS agent_first_name
FROM Policy
JOIN PolicyType ON Policy.policy_type_id = PolicyType.policy_type_id
JOIN Claim ON Policy.policy_id = Claim.policy_id
JOIN Payment ON Policy.policy_id = Payment.policy_id
JOIN Customer ON Policy.customer_id = Customer.customer_id
JOIN Agent ON Policy.agent_id = Agent.agent_id;

select * from all_linked;

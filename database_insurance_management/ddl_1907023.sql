drop table Payment;
drop table Claim;
drop table Policy;
drop table Agent;
drop table Customer;
drop table PolicyType;

CREATE TABLE PolicyType (
    policy_type_id INT PRIMARY KEY,
    name VARCHAR(50),
    description VARCHAR(100)
);

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    address VARCHAR(100),
    contact_number VARCHAR(20)
);

CREATE TABLE Agent (
    agent_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    address VARCHAR(100),
    contact_number VARCHAR(20)
);

CREATE TABLE Policy (
    policy_id INT PRIMARY KEY,
    policy_number VARCHAR(10),
    policy_type_id INT,
    start_date DATE,
    end_date DATE,
    premium_amount DECIMAL(10, 2),
    insured_amount DECIMAL(10, 2),
    customer_id INT,
    agent_id INT,
    FOREIGN KEY (policy_type_id) REFERENCES PolicyType(policy_type_id) on delete cascade,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) on delete cascade,
    FOREIGN KEY (agent_id) REFERENCES Agent(agent_id) on delete cascade
);

CREATE TABLE Claim (
    claim_id INT PRIMARY KEY,
    policy_id INT,
    claim_date DATE,
    claim_amount DECIMAL(10, 2),
    status VARCHAR(20),
    FOREIGN KEY (policy_id) REFERENCES Policy(policy_id) on delete cascade
);

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY,
    policy_id INT,
    payment_date DATE,
    amount DECIMAL(10, 2),
    FOREIGN KEY (policy_id) REFERENCES Policy(policy_id) on delete cascade
);

alter table Customer add father_name varchar(100);
alter table Customer modify father_name char(50);
alter table Customer rename column father_name to mother_name;
alter table Customer drop column mother_name;

alter table Claim add constraint claim_status_Check Check (status IN('Pending', 'Approved', 'Rejected' ));



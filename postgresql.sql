
-- *************** SqlDBM: PostgreSQL ****************;
-- ***************************************************;


-- ************************************** Employee

CREATE TABLE Employee
(
 id             int NOT NULL GENERATED ALWAYS AS IDENTITY,
 name           varchar(50) NULL,
 phone_number   varchar(10) NULL,
 dob            date NULL,
 gender         boolean NULL,
 email          varchar(50) NULL,
 folk           varchar(30) NULL,
 religion       varchar(30) NULL,
 marital_status boolean NULL,
 bank_account   jsonb NULL,
 identity_card  jsonb NULL,
 address        jsonb NULL,
 CONSTRAINT PK_employee PRIMARY KEY ( id )
);



COMMENT ON COLUMN Employee.bank_account IS 'ChuTk, SoTk, ChiNhanh, TenNganHang';
COMMENT ON COLUMN Employee.identity_card IS 'SoCMNND, NgayCap, NoiCap';



CREATE TABLE Customer
(
 id                 int NOT NULL GENERATED ALWAYS AS IDENTITY,
 name               varchar(50) NULL,
 phone_number       varchar(10) NOT NULL,
 date_created       date NOT NULL DEFAULT CURRENT_DATE,
 creator            int NOT NULL,
 CONSTRAINT PK_customer PRIMARY KEY ( id ),
 CONSTRAINT FK_56 FOREIGN KEY ( creator ) REFERENCES Employee ( id )
);

CREATE INDEX fkIdx_56 ON Customer
(
 creator
);


-- *************** SqlDBM: PostgreSQL ****************;
-- ***************************************************;


-- ************************************** Project

CREATE TABLE Project
(
 id                   int NOT NULL GENERATED ALWAYS AS IDENTITY,
 name                 varchar(50) NOT NULL,
 address              jsonb NOT NULL,
 apartment_code_regex varchar(50) NOT NULL,
 CONSTRAINT PK_project PRIMARY KEY ( id )
);




-- *************** SqlDBM: PostgreSQL ****************;
-- ***************************************************;


-- ************************************** Product

CREATE TABLE Product
(
 id               int NOT NULL GENERATED ALWAYS AS IDENTITY,
 apartment_number varchar(40) NOT NULL,
 room_area        smallint NOT NULL,
 new_or_old       boolean NOT NULL,
 direction        varchar(50) NOT NULL,
 view             varchar(100) NOT NULL,
 bedroom          smallint NOT NULL,
 wc               smallint NOT NULL,
 floor            smallint NOT NULL,
 project_id       int NOT NULL,
 CONSTRAINT PK_product PRIMARY KEY ( id ),
 CONSTRAINT FK_181 FOREIGN KEY ( project_id ) REFERENCES Project ( id )
);

CREATE INDEX fkIdx_181 ON Product
(
 project_id
);







-- *************** SqlDBM: PostgreSQL ****************;
-- ***************************************************;


-- ************************************** Order

CREATE TABLE orders
(
 id          int NOT NULL GENERATED ALWAYS AS IDENTITY,
 product_id  int NOT NULL,
 customer_id int NOT NULL,
 date        timestamp NOT NULL DEFAULT CURRENT_DATE,
 classify    varchar(50) NOT NULL,
 sales       money NOT NULL,
 CONSTRAINT PK_order PRIMARY KEY ( id ),
 CONSTRAINT FK_140 FOREIGN KEY ( product_id ) REFERENCES Product ( id ),
 CONSTRAINT FK_143 FOREIGN KEY ( customer_id ) REFERENCES Customer ( id )
);

CREATE INDEX fkIdx_140 ON Orders
(
 product_id
);

CREATE INDEX fkIdx_143 ON Orders
(
 customer_id
);






-- *************** SqlDBM: PostgreSQL ****************;
-- ***************************************************;


-- ************************************** UnexploitedGuests

CREATE TABLE UnexploitedGuests
(
 phone_number  varchar(10) NOT NULL,
 customer_type varchar(10) NOT NULL,
 project_id    int NOT NULL,
 CONSTRAINT PK_unexploitedguests PRIMARY KEY ( phone_number ),
 CONSTRAINT FK_184 FOREIGN KEY ( project_id ) REFERENCES Project ( id )
);

CREATE INDEX fkIdx_184 ON UnexploitedGuests
(
 project_id
);







-- *************** SqlDBM: PostgreSQL ****************;
-- ***************************************************;


-- ************************************** AppointmentSchedule

CREATE TABLE AppointmentSchedule
(
 product_id  int NOT NULL,
 customer_id int NOT NULL,
 date        timestamp NOT NULL,
 employee_id int NOT NULL,
 status      varchar(50) NOT NULL,
 comment     varchar(500) NULL,
 CONSTRAINT PK_appointmentschedule PRIMARY KEY ( product_id, customer_id, date ),
 CONSTRAINT FK_124 FOREIGN KEY ( customer_id ) REFERENCES Customer ( id ),
 CONSTRAINT FK_128 FOREIGN KEY ( product_id ) REFERENCES Product ( id ),
 CONSTRAINT FK_131 FOREIGN KEY ( employee_id ) REFERENCES Employee ( id )
);

CREATE INDEX fkIdx_124 ON AppointmentSchedule
(
 customer_id
);

CREATE INDEX fkIdx_128 ON AppointmentSchedule
(
 product_id
);

CREATE INDEX fkIdx_131 ON AppointmentSchedule
(
 employee_id
);







-- *************** SqlDBM: PostgreSQL ****************;
-- ***************************************************;


-- ************************************** CustomerNeeds

CREATE TABLE CustomerNeeds
(
 date               timestamp NOT NULL DEFAULT CURRENT_DATE,
 customer_id        int NOT NULL,
 employee_id        int NOT NULL,
 urgency_level      smallint NOT NULL,
 finance            money NOT NULL,
 comment            varchar(500) NOT NULL,
 status             varchar(50) NOT NULL,
 rent_or_buy        boolean NOT NULL,
 project_interested int NOT NULL,
 needs_detail       jsonb NOT NULL,
 furniture          jsonb NOT NULL,
 source             varchar(50) NOT NULL,
 CONSTRAINT PK_customerneeds PRIMARY KEY ( date, customer_id, employee_id ),
 CONSTRAINT FK_70 FOREIGN KEY ( customer_id ) REFERENCES Customer ( id ),
 CONSTRAINT FK_75 FOREIGN KEY ( employee_id ) REFERENCES Employee ( id ),
 CONSTRAINT FK_customerneeds_product FOREIGN KEY (project_interested) REFERENCES product (id)
);

CREATE INDEX fkIdx_70 ON CustomerNeeds
(
 customer_id
);

CREATE INDEX fkIdx_75 ON CustomerNeeds
(
 employee_id
);

COMMENT ON TABLE CustomerNeeds IS 'telesale or leads guests';





-- *************** SqlDBM: PostgreSQL ****************;
-- ***************************************************;


-- ************************************** EmployeeDetail

CREATE TABLE EmployeeDetail
(
 employee_id  int NOT NULL,
 data_start   date NOT NULL DEFAULT CURRENT_DATE,
 title        varchar(50) NOT NULL,
 full_or_part boolean NOT NULL,
 date_end     date NULL,
 branch       varchar(50) NOT NULL,
 department   varchar(50) NOT NULL,
 CONSTRAINT PK_employeedetail PRIMARY KEY ( employee_id, data_start ),
 CONSTRAINT FK_162 FOREIGN KEY ( employee_id ) REFERENCES Employee ( id )
);

CREATE INDEX fkIdx_162 ON EmployeeDetail
(
 employee_id
);







-- *************** SqlDBM: PostgreSQL ****************;
-- ***************************************************;


-- ************************************** EmployeeOrder

CREATE TABLE EmployeeOrder
(
 employee_id          int NOT NULL,
 order_id             int NOT NULL,
 percent_contribution smallint NOT NULL,
 personal_sales       money NOT NULL,
 CONSTRAINT PK_employeeorder PRIMARY KEY ( employee_id, order_id ),
 CONSTRAINT FK_150 FOREIGN KEY ( employee_id ) REFERENCES Employee ( id ),
 CONSTRAINT FK_154 FOREIGN KEY ( order_id ) REFERENCES Orders ( id )
);

CREATE INDEX fkIdx_150 ON EmployeeOrder
(
 employee_id
);

CREATE INDEX fkIdx_154 ON EmployeeOrder
(
 order_id
);







-- *************** SqlDBM: PostgreSQL ****************;
-- ***************************************************;


-- ************************************** ProductDetail

CREATE TABLE ProductDetail
(
 product_id   int NOT NULL,
 date         timestamp NOT NULL,
 employee_id  int NOT NULL,
 legal_papers varchar(80) NOT NULL,
 status       varchar(50) NOT NULL,
 price        money NULL,
 rental_price money NULL,
 furniture    jsonb NOT NULL,
 new_or_old   boolean NOT NULL,
 classify     varchar(50) NOT NULL,
 comment      varchar(500) NOT NULL,
 owner        int NOT NULL,
 CONSTRAINT PK_productdetail PRIMARY KEY ( product_id, date, employee_id ),
 CONSTRAINT FK_102 FOREIGN KEY ( product_id ) REFERENCES Product ( id ),
 CONSTRAINT FK_107 FOREIGN KEY ( employee_id ) REFERENCES Employee ( id ),
 CONSTRAINT FK_118 FOREIGN KEY ( owner ) REFERENCES Customer ( id )
);

CREATE INDEX fkIdx_102 ON ProductDetail
(
 product_id
);

CREATE INDEX fkIdx_107 ON ProductDetail
(
 employee_id
);

CREATE INDEX fkIdx_118 ON ProductDetail
(
 owner
);







-- *************** SqlDBM: PostgreSQL ****************;
-- ***************************************************;


-- ************************************** Task

CREATE TABLE Task
(
 employee_id int NOT NULL,
 customer_id int NOT NULL,
 product_id  int NOT NULL,
 time_start  timestamp NOT NULL,
 time_end    timestamp NULL,
 classify    varchar(50) NOT NULL,
 note        varchar(500) NULL,
 CONSTRAINT PK_task PRIMARY KEY ( employee_id, customer_id, product_id, time_start ),
 CONSTRAINT FK_188 FOREIGN KEY ( employee_id ) REFERENCES Employee ( id ),
 CONSTRAINT FK_192 FOREIGN KEY ( customer_id ) REFERENCES Customer ( id ),
 CONSTRAINT FK_195 FOREIGN KEY ( product_id ) REFERENCES Product ( id )
);

CREATE INDEX fkIdx_188 ON Task
(
 employee_id
);

CREATE INDEX fkIdx_192 ON Task
(
 customer_id
);

CREATE INDEX fkIdx_195 ON Task
(
 product_id
);







-- *************** SqlDBM: PostgreSQL ****************;
-- ***************************************************;


-- ************************************** Telesale

CREATE TABLE Telesale
(
 date_time timestamp NOT NULL,
 id        int NOT NULL,
 time      smallint NOT NULL,
 record    varchar(50) NOT NULL,
 classify  varchar(50) NOT NULL,
 CONSTRAINT PK_telesale PRIMARY KEY ( date_time, id ),
 CONSTRAINT FK_41 FOREIGN KEY ( id ) REFERENCES Employee ( id )
);

CREATE INDEX fkIdx_41 ON Telesale
(
 id
);







-- *************** SqlDBM: PostgreSQL ****************;
-- ***************************************************;


-- ************************************** TimeKeeping

CREATE TABLE TimeKeeping
(
 date      date NOT NULL,
 id        int NOT NULL,
 check_in  timestamp NOT NULL,
 check_out timestamp NOT NULL,
 CONSTRAINT PK_time_keeping PRIMARY KEY ( date, id ),
 CONSTRAINT FK_35 FOREIGN KEY ( id ) REFERENCES Employee ( id )
);

CREATE INDEX fkIdx_35 ON TimeKeeping
(
 id
);







-- *************** SqlDBM: PostgreSQL ****************;
-- ***************************************************;


-- ************************************** WorkSchedule

CREATE TABLE WorkSchedule
(
 date            date NOT NULL,
 id              int NOT NULL,
 morning_shift   boolean NOT NULL,
 afternoon_shift boolean NOT NULL,
 night_shift     boolean NOT NULL,
 CONSTRAINT PK_work_schedule PRIMARY KEY ( date, id ),
 CONSTRAINT FK_24 FOREIGN KEY ( id ) REFERENCES Employee ( id )
);

CREATE INDEX fkIdx_24 ON WorkSchedule
(
 id
);











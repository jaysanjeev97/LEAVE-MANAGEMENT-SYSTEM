---Employee Overall Details Table-----
CREATE TABLE LMS_EMPLOYEES_DET(EMPLOYEE_CODE VARCHAR2(50) PRIMARY KEY, EMPLOYEE_NAME VARCHAR2(50) not null, DATE_OF_BIRTH DATE, 
GENDER VARCHAR2(20) , DEPARTMENT VARCHAR2(50),POSITION VARCHAR2(50), HIRE_DATE DATE, PLACE VARCHAR2(50), MANAGER_CODE VARCHAR2(50), 
EMPLOYEE_TYPE VARCHAR2(50));

DESC LMS_EMPLOYEES_DET;

Insert into LMS_EMPLOYEES_DET (EMPLOYEE_CODE,EMPLOYEE_NAME,DATE_OF_BIRTH,GENDER,DEPARTMENT,POSITION,HIRE_DATE,PLACE,MANAGER_CODE,EMPLOYEE_TYPE) values ('E2930','JAY','18-12-1997','M','JAVA','TRAINEE','1-02-2021','CHENNAI','M105','EMPLOYEE');
Insert into LMS_EMPLOYEES_DET (EMPLOYEE_CODE,EMPLOYEE_NAME,DATE_OF_BIRTH,GENDER,DEPARTMENT,POSITION,HIRE_DATE,PLACE,MANAGER_CODE,EMPLOYEE_TYPE) values ('E2931','MADHU','06-08-1998','F','ORACLE-APPS','TRAINEE','24-02-2021','CHENNAI','M105','EMPLOYEE');
Insert into LMS_EMPLOYEES_DET (EMPLOYEE_CODE,EMPLOYEE_NAME,DATE_OF_BIRTH,GENDER,DEPARTMENT,POSITION,HIRE_DATE,PLACE,MANAGER_CODE,EMPLOYEE_TYPE) values ('E2932','ELUMALAI','13-09-1999','M','JAVA','HR','25-02-2015','TRICHY','M205','EMPLOYEE');
Insert into LMS_EMPLOYEES_DET (EMPLOYEE_CODE,EMPLOYEE_NAME,DATE_OF_BIRTH,GENDER,DEPARTMENT,POSITION,HIRE_DATE,PLACE,MANAGER_CODE,EMPLOYEE_TYPE) values ('E2393','VASANTHI','21-10-1997','F','FUSION','PROGRAMMER','26-02-2021','SALEM','M105','EMPLOYEE');
Insert into LMS_EMPLOYEES_DET (EMPLOYEE_CODE,EMPLOYEE_NAME,DATE_OF_BIRTH,GENDER,DEPARTMENT,POSITION,HIRE_DATE,PLACE,MANAGER_CODE,EMPLOYEE_TYPE) values ('E2934','KARTHI','19-07-1998','M','JAVA','MANAGER','27-02-2015','MADURAI','M105','EMPLOYEE');
Insert into LMS_EMPLOYEES_DET (EMPLOYEE_CODE,EMPLOYEE_NAME,DATE_OF_BIRTH,GENDER,DEPARTMENT,POSITION,HIRE_DATE,PLACE,MANAGER_CODE,EMPLOYEE_TYPE) values ('E2935','SELVAKUMAR','26-09-1999','M','FULLSTOCK','TRAINEE','28-02-2021','CHENNAI','M105','EMPLOYEE');
Insert into LMS_EMPLOYEES_DET (EMPLOYEE_CODE,EMPLOYEE_NAME,DATE_OF_BIRTH,GENDER,DEPARTMENT,POSITION,HIRE_DATE,PLACE,MANAGER_CODE,EMPLOYEE_TYPE) values ('E2936','POTHIRAJ','09-12-1996','M','JAVA','PROGRAMMER','01-03-2020','THENI','M105','EMPLOYEE');
Insert into LMS_EMPLOYEES_DET (EMPLOYEE_CODE,EMPLOYEE_NAME,DATE_OF_BIRTH,GENDER,DEPARTMENT,POSITION,HIRE_DATE,PLACE,MANAGER_CODE,EMPLOYEE_TYPE) values ('E2937','JOTHI','28-06-1999','F','ORACLE','HR','02-03-2015','TRICHY','M105','EMPLOYEE');
Insert into LMS_EMPLOYEES_DET (EMPLOYEE_CODE,EMPLOYEE_NAME,DATE_OF_BIRTH,GENDER,DEPARTMENT,POSITION,HIRE_DATE,PLACE,MANAGER_CODE,EMPLOYEE_TYPE) values ('E2938','VEL','09-09-1999','M','JAVA','TRAINEE','03-08-2021','MADURAI','M1O5','EMPLOYEE');
Insert into LMS_EMPLOYEES_DET (EMPLOYEE_CODE,EMPLOYEE_NAME,DATE_OF_BIRTH,GENDER,DEPARTMENT,POSITION,HIRE_DATE,PLACE,MANAGER_CODE,EMPLOYEE_TYPE) values ('E2939','SACHIN','10-12-1996','M','JAVA','MANAGER','04-03-2014','KOVAI','M105','EMPLOYEE');

SELECT * FROM LMS_EMPLOYEES_DET ;

----EMPLOYEE LEAVE DETAILS TABLE------

CREATE TABLE LMS_EMPLOYEES_LEAVE_DET 
  ( LEAVE_ID NUMBER(10) PRIMARY KEY, EMPLOYEE_CODE VARCHAR2(20), MANAGER_CODE VARCHAR2(20), 
    LEAVE_TYPE VARCHAR2(50), LEAVE_REASON VARCHAR2(50),LEAVE_START_DATE DATE, 
    LEAVE_END_DATE DATE, NO_OF_DAYS NUMBER, TOTAL_LEAVE NUMBER, LEAVE_BALANCE NUMBER, STATUS VARCHAR2(20),
    CONSTRAINT FK_employeecode FOREIGN KEY(EMPLOYEE_CODE) references LMS_EMPLOYEES_DET (EMPLOYEE_CODE));
DESC  LMS_EMPLOYEES_LEAVE_DET;

Insert into LMS_EMPLOYEES_LEAVE_DET  (LEAVE_ID,EMPLOYEE_CODE,MANAGER_CODE,LEAVE_TYPE,LEAVE_REASON,LEAVE_START_DATE,LEAVE_END_DATE,STATUS) values (101,'E2930','M105','CASUAL_LEAVE','FUNCTION','13-12-2021','14-12-2021','APPLIED');
Insert into LMS_EMPLOYEES_LEAVE_DET  (LEAVE_ID,EMPLOYEE_CODE,MANAGER_CODE,LEAVE_TYPE,LEAVE_REASON,LEAVE_START_DATE,LEAVE_END_DATE,STATUS) values (102,'E2939','M105','CASUAL_LEAVE','FUNCTION','14-12-2021','15-12-2021','APPLIED');
Insert into LMS_EMPLOYEES_LEAVE_DET  (LEAVE_ID,EMPLOYEE_CODE,MANAGER_CODE,LEAVE_TYPE,LEAVE_REASON,LEAVE_START_DATE,LEAVE_END_DATE,STATUS) values (103,'E2393','M105','CASUAL_LEAVE','FUNCTION','14-12-2021','15-12-2021','APPLIED');

SELECT * FROM  LMS_EMPLOYEES_LEAVE_DET;

----IEMPLOYEE LEAVE APPROVE /REJECT------

CREATE TABLE LMS_EMPLOYEES_LEAVE_APPROVE_REJECT_DET 
  ( LEAVE_ID NUMBER , LEAVE_APPROVE VARCHAR2(40),  STATUS VARCHAR2(30),  REQUEST_FROM VARCHAR2(40), 
    APPROVED_BY VARCHAR2(40), APPROVED_DATE DATE,FOREIGN KEY (LEAVE_ID) REFERENCES LMS_EMPLOYEES_LEAVE_DET (LEAVE_ID));
    
DESC LMS_EMPLOYEES_LEAVE_APPROVE_REJECT_DET ; 

Insert into LMS_EMPLOYEES_LEAVE_APPROVE_REJECT_DET (LEAVE_ID,LEAVE_APPROVE,STATUS,REQUEST_FROM,APPROVED_BY,APPROVED_DATE) values (101,'CASUAL_LEAVE','APPROVED','M205','M105','13-12-2021');
Insert into LMS_EMPLOYEES_LEAVE_APPROVE_REJECT_DET (LEAVE_ID,LEAVE_APPROVE,STATUS,REQUEST_FROM,APPROVED_BY,APPROVED_DATE) values (103,'CASUAL_LEAVE','APPROVED','M205','M105','14-12-2021');

SELECT * FROM LMS_EMPLOYEES_LEAVE_APPROVE_REJECT_DET;

------LEAVE CANCEL TABLE-------

CREATE TABLE LMS_EMPLOYEES_LEAVE_CANCEL_DET 
  ( LEAVE_ID NUMBER, LEAVE_CANCEL VARCHAR2(40), STATUS VARCHAR2(30), REQUEST_FROM VARCHAR2(40), 
    CANCEL_BY VARCHAR2(40), CANCELLED_DATE DATE,
    FOREIGN KEY (LEAVE_ID)REFERENCES LMS_EMPLOYEES_LEAVE_DET(LEAVE_ID));
    
DESC   LMS_EMPLOYEES_LEAVE_CANCEL_DET;

Insert into LMS_EMPLOYEES_LEAVE_CANCEL_DET (LEAVE_ID,LEAVE_CANCEL,STATUS,REQUEST_FROM,CANCEL_BY,CANCELLED_DATE) values (101,'CL','CANCELLED','E205','E105','13-12-2021');

SELECT * FROM LMS_EMPLOYEES_LEAVE_CANCEL_DET;
UPDATE  LMS_EMPLOYEES_LEAVE_CANCEL_DET SET CL='CASUAL LEAVE' WHERE LEAVE_ID=101;

-----LEAVE STATUS TABLE--------
CREATE TABLE LMS_STATUS_CODE(STATUS_CODE NUMBER ,STATUS_NAME VARCHAR2(40));
ALTER TABLE  LMS_STATUS_CODE MODIFY STATUS_CODE VARCHAR2(20); 

DESC  LMS_STATUS_CODE;

insert into LMS_STATUS_CODE (STATUS_CODE ,STATUS_NAME )values ('A','APPROVED');
insert into LMS_STATUS_CODE (STATUS_CODE ,STATUS_NAME )values ('R','REJECTED');
insert into LMS_STATUS_CODE (STATUS_CODE ,STATUS_NAME )values ('C','CANCELLED');

SELECT * FROM  LMS_STATUS_CODE;




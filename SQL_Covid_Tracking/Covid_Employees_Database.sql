/* ORACLE LIVE SQL- Database Creation */

create table Employee (
    Employee_ID number not null,
    Emp_Name varchar(10) not null,
    Office_Number number not null,
    Floor_Number number not null,
    Phone_Number varchar(10) not null,
    Email varchar(15),
    PRIMARY KEY(Employee_ID)
);

create table Meeting (
    Meeting_ID number not null,
    Employee_ID number references Employee(Employee_ID) not null,
    Room_Number number not null,
    Floor_Number number not null,
    Meeting_Start_Time number not null,
    PRIMARY KEY(Meeting_ID,Employee_ID)
);

create table Scans (
    Scan_ID number not null,
    Scan_date date not null,
    Scan_time number not null,
    Employee_ID number references Employee(Employee_ID) not null,
    Temperature number not null,
    PRIMARY KEY(Scan_ID)
);

create table Tests (
    Test_ID number not null,
    Test_date date not null,
    Test_Location varchar(10),
    Test_Time number,
    Test_Result char,
    Employee_ID number references Employee(Employee_ID) not null,
    PRIMARY KEY(Test_ID)
);

create table Symptoms (
    Row_ID number not null,
    Employee_ID number references Employee(Employee_ID) not null,
    Symptom_date date not null,
    Symptom_ID number not null,
    PRIMARY KEY(Row_ID)
);

create table Notification (
    Notification_ID number not null,
    Employee_ID number references Employee(Employee_ID) not null,
    Notification_date date,
    Notification_Type char ,
    PRIMARY KEY(Notification_ID)
);

create table Cases (
    Case_ID number not null,
    Employee_ID number references Employee(Employee_ID) not null,
    Case_date date,
    Resolution char,
    PRIMARY KEY(Case_ID)
);

create table Health_Status (
    Row_ID number not null,
    Employee_ID number references Employee(Employee_ID) not null,
    Status_date date,
    Status char,
    PRIMARY KEY(Row_ID)
);

create sequence Test_ID_Sequence
start with 500
increment by 1
cache 20
nominvalue
nomaxvalue
nocycle
noorder;

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (101, 'Cam', 22, 9, '3233233223', 'cam@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (102, 'Mones', 2, 3, '3233244523', 'mones@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (103, 'Simis', 3, 3, '3233238983', 'simis@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (104, 'Mans', 14, 10, '3234433223', 'Mans@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (105, 'Hoss', 9, 4, '3666633223', 'jhossh@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (106, 'Josh', 2, 1, '3999233223', 'josh@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (107, 'Moner', 20, 4, '8833244523', 'moner@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (108, 'Shikis', 5, 5, '5553238983', 'shikis@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (109, 'Kiles', 14, 3, '3239991223', 'Kiles@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number)
VALUES (110, 'Hoss', 7, 7, '7766633223');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (111, 'Lili', 2, 6, '6663233223', 'lili@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (112, 'Namsu', 20, 1, '1113244523', 'Namsu@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (113, 'Shamils', 30, 3, '9003238983', 'shamils@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (114, 'Josh', 11, 5, '3235553223', 'Joshu@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (115, 'Shosh', 8, 4, '8584633223', 'shosh@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (116, 'Camilo', 23, 3, '8233233223', 'calo@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (117, 'John', 1, 1, '1103244523', 'john@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (118, 'Tolly', 1, 4, '1313323898', 'tolly@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (119, 'Loly', 10, 8, '1185533223', 'Loly@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (120, 'Komi', 3, 9, '3666659523', 'komi@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (121, 'Camilo', 11, 3, '8211133223', 'camoli@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (122, 'John', 1, 7, '7113244523', 'johnny@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (123, 'Mark', 19, 3, '1313293383', 'mark@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (124, 'Twain', 56, 10, '5010533223', 'Loly@usc.edu');

INSERT INTO Employee (Employee_ID, Emp_Name, Office_Number, Floor_Number, Phone_Number, Email)
VALUES (125, 'Polo', 43, 4, '4446659523', 'komi@usc.edu');

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (201, 102, 2, 2, 8);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (201, 101, 2, 2, 8);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (201, 103, 2, 2, 8);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (201, 104, 2, 2, 8);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (202, 102, 3, 1, 9);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (202, 110, 3, 1, 9);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (202, 111, 3, 1, 9);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (202, 112, 3, 1, 9);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (203, 120, 4, 4, 12);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (203, 124, 4, 4, 12);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (203, 125, 4, 4, 12);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (204, 118, 8, 10, 14);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (204, 117, 8, 10, 14);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (204, 109, 8, 10, 14);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (205, 113, 8, 7, 9);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (205, 119, 8, 7, 9);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (206, 121, 12, 7, 14);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (206, 123, 12, 7, 14);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (206, 125, 12, 7, 14);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (207, 125, 12, 3, 11);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (207, 102, 12, 3, 11);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (208, 103, 12, 10, 17);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (208, 116, 12, 10, 17);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (209, 122, 11, 4, 9);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (209, 120, 11, 4, 9);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (209, 118, 11, 4, 9);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (210, 115, 1, 3, 13);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (210, 104, 1, 3, 13);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (211, 106, 13, 5, 8);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (211, 107, 13, 5, 8);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (211, 108, 13, 5, 8);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (212, 110, 19, 5, 10);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (212, 108, 19, 5, 10);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (213, 125, 19, 7, 18);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (213, 124, 19, 7, 18);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (213, 121, 19, 7, 18);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (213, 117, 19, 7, 18);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (214, 114, 10, 10, 10);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (214, 119, 10, 10, 10);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (215, 120, 10, 10, 18);

INSERT INTO Meeting (Meeting_ID, Employee_ID, Room_Number, Floor_Number, Meeting_Start_time)
VALUES (215, 101, 10, 10, 18);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (301, TO_DATE('13/03/2020', 'DD/MM/YYYY'), 1, 111, 95);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (302, TO_DATE('15/03/2020', 'DD/MM/YYYY'), 4, 110, 98);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (303, TO_DATE('15/04/2020', 'DD/MM/YYYY'), 21, 120, 98);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (304, TO_DATE('23/04/2020', 'DD/MM/YYYY'), 18, 102, 99);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (305, TO_DATE('01/05/2020', 'DD/MM/YYYY'), 11, 109, 104);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (306, TO_DATE('01/05/2020', 'DD/MM/YYYY'), 13, 121, 102);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (307, TO_DATE('03/05/2020', 'DD/MM/YYYY'), 15, 122, 110);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (308, TO_DATE('07/05/2020', 'DD/MM/YYYY'), 15, 101, 97);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (309, TO_DATE('10/05/2020', 'DD/MM/YYYY'), 8, 106, 98);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (310, TO_DATE('14/05/2020', 'DD/MM/YYYY'), 4, 111, 98);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (311, TO_DATE('16/05/2020', 'DD/MM/YYYY'), 4, 117, 100);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (312, TO_DATE('16/05/2020', 'DD/MM/YYYY'), 9, 114, 99);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (313, TO_DATE('20/05/2020', 'DD/MM/YYYY'), 11, 115, 99);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (314, TO_DATE('20/05/2020', 'DD/MM/YYYY'), 12, 110, 96);

INSERT INTO Scans (Scan_ID, Scan_Date, Scan_Time, Employee_ID, Temperature)
VALUES (315, TO_DATE('25/05/2020', 'DD/MM/YYYY'), 10, 104, 97);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (401, 111, TO_DATE('11/03/2020', 'DD/MM/YYYY'), 1);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (402, 109, TO_DATE('13/03/2020', 'DD/MM/YYYY'), 3);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (403, 121, TO_DATE('15/03/2020', 'DD/MM/YYYY'), 5);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (404, 112, TO_DATE('17/03/2020', 'DD/MM/YYYY'), 3);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (405, 111, TO_DATE('19/03/2020', 'DD/MM/YYYY'), 3);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (406, 110, TO_DATE('22/03/2020', 'DD/MM/YYYY'), 1);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (407, 103, TO_DATE('30/03/2020', 'DD/MM/YYYY'), 4);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (408, 115, TO_DATE('11/04/2020', 'DD/MM/YYYY'), 1);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (409, 116, TO_DATE('13/04/2020', 'DD/MM/YYYY'), 1);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (410, 110, TO_DATE('13/05/2020', 'DD/MM/YYYY'), 2);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (411, 105, TO_DATE('13/05/2020', 'DD/MM/YYYY'), 5);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (412, 101, TO_DATE('14/05/2020', 'DD/MM/YYYY'), 1);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (413, 102, TO_DATE('16/05/2020', 'DD/MM/YYYY'), 4);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (414, 109, TO_DATE('22/05/2020', 'DD/MM/YYYY'), 3);

INSERT INTO Symptoms (Row_ID, Employee_ID, Symptom_Date, Symptom_ID)
VALUES (415, 106, TO_DATE('25/05/2020', 'DD/MM/YYYY'), 5);

INSERT INTO Tests(Test_ID,Test_Date, Employee_ID)
SELECT Test_ID_Sequence.nextval,Symptom_Date, Employee_ID
FROM Symptoms;

INSERT INTO Tests(Test_ID,Test_Date, Employee_ID)
SELECT Test_ID_Sequence.nextval,Scan_Date, Employee_ID
FROM Scans scs
Where scs.Temperature > 99;

create sequence Case_ID_Sequence
start with 601
increment by 1
cache 20
nominvalue
nomaxvalue
nocycle
noorder;

create sequence Notification_ID_Sequence
start with 701
increment by 1
cache 20
nominvalue
nomaxvalue
nocycle
noorder;

UPDATE Tests
SET Test_Result = 'N',
    Test_Location = 'LA',
    Test_Time = 3
WHERE Test_ID = 501;

UPDATE Tests
SET Test_Result = 'N',
    Test_Location = 'WA',
    Test_Time = 4
WHERE Test_ID = 502;

UPDATE Tests
SET Test_Result = 'N',
    Test_Location = 'PA',
    Test_Time = 23
WHERE Test_ID = 503;

UPDATE Tests
SET Test_Result = 'P',
    Test_Location = 'LA',
    Test_Time = 1
WHERE Test_ID = 504;

UPDATE Tests
SET Test_Result = 'N',
    Test_Location = 'LA',
    Test_Time = 9
WHERE Test_ID = 505;

UPDATE Tests
SET Test_Result = 'N',
    Test_Location = 'NY',
    Test_Time = 11
WHERE Test_ID = 506;

UPDATE Tests
SET Test_Result = 'N',
    Test_Location = 'MA',
    Test_Time = 22
WHERE Test_ID = 507;

UPDATE Tests
SET Test_Result = 'P',
    Test_Location = 'AZ',
    Test_Time = 15
WHERE Test_ID = 508;

UPDATE Tests
SET Test_Result = 'N',
    Test_Location = 'LA',
    Test_Time = 22
WHERE Test_ID = 509;

UPDATE Tests
SET Test_Result = 'N',
    Test_Location = 'NV',
    Test_Time = 14
WHERE Test_ID = 510;

UPDATE Tests
SET Test_Result = 'P',
    Test_Location = 'NH',
    Test_Time = 19
WHERE Test_ID = 511;

UPDATE Tests
SET Test_Result = 'N',
    Test_Location = 'WI',
    Test_Time = 20
WHERE Test_ID = 512;

UPDATE Tests
SET Test_Result = 'P',
    Test_Location = 'LA',
    Test_Time = 3
WHERE Test_ID = 513;

UPDATE Tests
SET Test_Result = 'N',
    Test_Location = 'UT',
    Test_Time = 2
WHERE Test_ID = 514;

UPDATE Tests
SET Test_Result = 'P',
    Test_Location = 'IL',
    Test_Time = 18
WHERE Test_ID = 515;

UPDATE Tests
SET Test_Result = 'N',
    Test_Location = 'NJ',
    Test_Time = 2
WHERE Test_ID = 500;

UPDATE Tests
SET Test_Result = 'Y',
    Test_Location = 'SC',
    Test_Time = 21
WHERE Test_ID = 516;

UPDATE Tests
SET Test_Result = 'N',
    Test_Location = 'NC',
    Test_Time = 12
WHERE Test_ID = 517;

UPDATE Tests
SET Test_Result = 'Y',
    Test_Location = 'ND',
    Test_Time = 21
WHERE Test_ID = 518;

INSERT INTO Cases (Case_ID, Employee_ID, Case_Date)
SELECT Case_ID_Sequence.nextval,Employee_ID,Test_Date
FROM Tests ts
Where ts.Test_Result = 'P';

UPDATE Cases
SET Resolution = 'B'
WHERE Case_ID = 601;

UPDATE Cases
SET Resolution = 'L'
WHERE Case_ID = 602;

UPDATE Cases
SET Resolution = 'D'
WHERE Case_ID = 603;

UPDATE Cases
SET Resolution = 'B'
WHERE Case_ID = 604;

UPDATE Cases
SET Resolution = 'B'
WHERE Case_ID = 605;

create sequence Health_Status_Sequence
start with 801
increment by 1
cache 20
nominvalue
nomaxvalue
nocycle
noorder;

INSERT INTO Health_Status (Row_ID, Employee_ID, Status_Date)
SELECT Health_Status_Sequence.nextval,Employee_ID,Case_Date
FROM Cases csc;

UPDATE Health_Status
SET Status = 'B'
WHERE Row_ID = 801;

UPDATE Health_Status
SET Status = 'B'
WHERE Row_ID = 802;

UPDATE Health_Status
SET Status = 'D'
WHERE Row_ID = 803;

UPDATE Health_Status
SET Status = 'L'
WHERE Row_ID = 804;

UPDATE Health_Status
SET Status = 'B'
WHERE Row_ID = 805;

INSERT INTO Notification (Notification_ID,Employee_ID)
Select Notification_ID_Sequence.nextval, mt2.Employee_ID
From Meeting mt2 Where mt2.Meeting_ID in (select mt.Meeting_ID from Meeting mt,Tests tst where tst.Test_Result='P' and mt.Employee_ID=tst.Employee_ID)

;

UPDATE Notification
SET Notification_Date = TO_DATE('14/05/2020', 'DD/MM/YYYY'),
    Notification_Type = 'M'
WHERE Notification_ID between 701 and 704;

UPDATE Notification
SET Notification_Date = TO_DATE('19/03/2020', 'DD/MM/YYYY'),
    Notification_Type = 'M'
WHERE Notification_ID between 705 and 708;

UPDATE Notification
SET Notification_Date = TO_DATE('01/05/2020', 'DD/MM/YYYY'),
    Notification_Type = 'M'
WHERE Notification_ID between 709 and 711;

UPDATE Notification
SET Notification_Date = TO_DATE('13/04/2020', 'DD/MM/YYYY'),
    Notification_Type = 'M'
WHERE Notification_ID between 712 and 713;

UPDATE Notification
SET Notification_Date = TO_DATE('14/05/2020', 'DD/MM/YYYY'),
    Notification_Type = 'M'
WHERE Notification_ID between 714 and 715;

INSERT INTO Notification(Notification_ID,Employee_ID)
SELECT Notification_ID_Sequence.nextval, emp.Employee_ID
from Employee emp Where emp.Floor_Number in (select emp2.Floor_number
from Employee emp2,Tests tst3
where  tst3.Test_Result='P' and emp2.Employee_ID=tst3.Employee_ID)

;

UPDATE Notification
SET Notification_Type = 'O'
WHERE Notification_ID > 715;

UPDATE Notification
SET Notification_Date = TO_DATE('19/03/2020', 'DD/MM/YYYY')
WHERE Notification_ID =720;

UPDATE Notification
SET Notification_Date = TO_DATE('19/03/2020', 'DD/MM/YYYY')
WHERE Notification_ID =717 or Notification_ID =718 or Notification_ID =719 or Notification_ID =721 or Notification_ID =722 or Notification_ID =724 or Notification_ID =725;

UPDATE Notification
SET Notification_Date = TO_DATE('14/05/2020', 'DD/MM/YYYY')
WHERE Notification_ID =723 or Notification_ID =716;

/* ORACLE LIVE SQL - Queries*/

Select Most_Symptom From(SELECT Symptom_ID as Most_Symptom, COUNT(Symptom_ID)  csym
FROM Symptoms
Group by Symptom_ID
Order by csym desc)
Where ROWNUM=1;

/* ORACLE LIVE SQL */
select Sickest_Floor From (Select emp.Floor_Number as Sickest_Floor, count(emp.Floor_Number) cemp
FROM Cases csc, Employee emp
Where csc.Employee_ID = emp.Employee_ID
Group by emp.Floor_Number
Order by cemp desc)
Where ROWNUM = 1;

/* ORACLE LIVE SQL */
Select count (*) as Scan_Numbers_in_Period from Scans
Where Scan_Date between TO_DATE('12/01/2020', 'DD/MM/YYYY') and TO_DATE('01/05/2020', 'DD/MM/YYYY');

Select count (*) as Test_Numbers_in_Period from Tests
Where Test_Date between TO_DATE('12/01/2020', 'DD/MM/YYYY') and TO_DATE('01/05/2020', 'DD/MM/YYYY');

Select count (Distinct Employee_ID) as Symptom_Employee_Numbers_in_Period from Symptoms
Where Symptom_Date between TO_DATE('12/01/2020', 'DD/MM/YYYY') and TO_DATE('01/05/2020', 'DD/MM/YYYY');

Select count (*) as Case_Numbers_in_Period from Cases
Where Case_Date between TO_DATE('12/01/2020', 'DD/MM/YYYY') and TO_DATE('01/05/2020', 'DD/MM/YYYY');

/* ORACLE LIVE SQL */
Select emp.Emp_Name
From Employee emp, Employee emp2
Where (emp.Emp_name = emp2.Emp_Name and emp.Employee_ID <> emp2.employee_ID)
group by emp.Emp_Name;

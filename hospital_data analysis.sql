drop table if exists Patients
CREATE TABLE patients(
        patient_id serial primary key,
		patient_name varchar(50),
		hospital_id int,
		doctor_id int,
		admission_date date,
		discharge_date date
);

insert into patients (patient_name, hospital_id, doctor_id, admission_date, discharge_date) values
	('Riya Sharma',	101, 201, '2025-09-01',	'2025-09-10'),
	('Aarav Patel',	101, 202, '2025-09-05',	'2025-09-08'),
	('Neha Singh',	102, 203, '2025-09-02',	'2025-09-12');

CREATE TABLE Doctors(
       doctor_id int primary key,
	   doctor_name varchar(50),
	   department_id int
);

insert into Doctors (doctor_id, doctor_name, department_id) values
	(201, 'Dr. Mehta', 301),
	(202, 'Dr. Khan', 302),
	(203, 'Dr. Joshi', 301);

create table departments(
		department_id int primary key,
		department_name varchar(50),
		hospital_id int
);

insert into departments(department_id, department_name, hospital_id) values
(301, 'Cardiology',	101),
(302, 'Orthopedics', 101),
(303, 'Neurology', 102);

select * from patients
select * from Doctors
select * from departments


--List all patients with their doctor’s name.
select p.patient_name, d.doctor_name from patients p
join doctors d on p.doctor_id=d.doctor_id;

--Show each patient’s department name along with the doctor’s name
select p.patient_name, de.department_name, d.doctor_name from patients p
join doctors d on p.doctor_id=p.doctor_id
join departments de on de.department_id=d.department_id;

--Display all doctors working in the same hospital as their patients
select p.patient_name, d.doctor_name, de.hospital_id from patients p
join doctors d on p.doctor_id=p.doctor_id
join departments de on de.hospital_id=p.hospital_id
where p.hospital_id = de.hospital_id;

--List all departments with their assigned doctors (include departments even if no doctor is assigned
select de.department_name, d.doctor_name from departments de
left join doctors d on de.department_id=d.department_id;

--Find patients who don’t have any assigned doctor
select p.patient_name from patients p
left join doctors d on p.doctor_id=d.doctor_id
where d.doctor_id is null;

--Count how many patients each doctor has treated
select d.doctor_name, count(p.patient_name) as patients_count from doctors d
left join patients p on p.doctor_id=d.doctor_id
group by d.doctor_name;

--Show each hospital’s department name along with the total number of patients
select de. hospital_id, de.department_name, count(p.patient_id) as total_part from departments de
left join doctors d on de.department_id=d.department_id
left join patients p on p.doctor_id=d.doctor_id
group by de. hospital_id, de.department_name;

--Display each patient’s hospital name and city
select p.patient_name, h.hosiptal_name from patients p 
join hosiptals h on h.hosiptal_id = p.hosiptal_id;

--Find which department each doctor belongs to and how many patients they have treated
select d.doctor_name, de.department_name, count(p.patient_id) as patients_trea from doctors d
left join departments de on d.department_id = de.department_id
left join patients p on p.doctor_id=d.doctor_id
group by d.doctor_name, de.department_name;

-- List all patients with their discharge dates, doctor’s name, and department name
select p.patient_name, p.discharge_date, d.doctor_name, de.department_name from patients p 
join doctors d on p.doctor_id=d.doctor_id
join departments de on d.department_id = de.department_id;






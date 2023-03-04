# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                         127.0.0.1
# Database:                     db_wecare
# Server version:               5.0.51b-community-nt
# Server OS:                    Win32
# Target compatibility:         ANSI SQL
# HeidiSQL version:             4.0
# Date/time:                    2021-12-21 16:36:25
# --------------------------------------------------------

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI,NO_BACKSLASH_ESCAPES';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'db_wecare'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "db_wecare" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "db_wecare";


#
# Table structure for table 'tbl_admin'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_admin" (
  "admin_id" int(10) unsigned NOT NULL auto_increment,
  "admin_uname" varchar(50) NOT NULL,
  "admin_password" varchar(50) NOT NULL,
  PRIMARY KEY  ("admin_id"),
  UNIQUE KEY "Unique" ("admin_uname")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_admin'
#

LOCK TABLES "tbl_admin" WRITE;
/*!40000 ALTER TABLE "tbl_admin" DISABLE KEYS;*/
REPLACE INTO "tbl_admin" ("admin_id", "admin_uname", "admin_password") VALUES
	('1','admin','admin');
/*!40000 ALTER TABLE "tbl_admin" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_ashaworker'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_ashaworker" (
  "aw_id" int(10) unsigned NOT NULL auto_increment,
  "aw_name" varchar(50) NOT NULL,
  "aw_contact" varchar(50) NOT NULL,
  "aw_email" varchar(50) NOT NULL,
  "aw_address" varchar(50) NOT NULL,
  "aw_gender" varchar(50) NOT NULL,
  "aw_adhar" varchar(12) NOT NULL,
  "aw_photo" varchar(50) NOT NULL,
  "wp_id" int(10) unsigned NOT NULL,
  "aw_uname" varchar(50) NOT NULL,
  "aw_password" varchar(50) NOT NULL,
  "aw_isactive" int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  ("aw_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_ashaworker'
#

LOCK TABLES "tbl_ashaworker" WRITE;
/*!40000 ALTER TABLE "tbl_ashaworker" DISABLE KEYS;*/
REPLACE INTO "tbl_ashaworker" ("aw_id", "aw_name", "aw_contact", "aw_email", "aw_address", "aw_gender", "aw_adhar", "aw_photo", "wp_id", "aw_uname", "aw_password", "aw_isactive") VALUES
	('1','Saritha Sajeev','7867541234','saritha@gmail.com','Karukkuttiyil(H)','Female','709876543210','Proof_1311.png','1','saritha','Saritha@123','0');
/*!40000 ALTER TABLE "tbl_ashaworker" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_contactperson'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_contactperson" (
  "ctctper_id" int(10) unsigned NOT NULL auto_increment,
  "ctctper_name" varchar(50) NOT NULL,
  "route_id" int(10) unsigned NOT NULL,
  "ctctper_gender" varchar(50) NOT NULL,
  "ctctper_age" int(11) NOT NULL,
  "ctctper_address" varchar(50) NOT NULL,
  "place_name" varchar(50) NOT NULL,
  "wp_id" int(10) unsigned NOT NULL,
  "ctctper_ctctloc" int(10) unsigned NOT NULL,
  "ctctper_date" datetime NOT NULL,
  "ctctper_time" time NOT NULL,
  "ctctper_cntcttype" varchar(50) NOT NULL,
  "ctctper_ispositive" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("ctctper_id")
);



#
# Dumping data for table 'tbl_contactperson'
#

# No data found.



#
# Table structure for table 'tbl_containmentzone'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_containmentzone" (
  "cntnmnt_id" int(10) unsigned NOT NULL auto_increment,
  "ward_id" int(10) unsigned NOT NULL,
  "ribbon_name" varchar(10) NOT NULL,
  "cntnmnt_date" date NOT NULL,
  "cntnmnt_status" int(11) NOT NULL default '0',
  "ribbon_desc" varchar(50) default NULL,
  PRIMARY KEY  ("cntnmnt_id")
) AUTO_INCREMENT=25;



#
# Dumping data for table 'tbl_containmentzone'
#

LOCK TABLES "tbl_containmentzone" WRITE;
/*!40000 ALTER TABLE "tbl_containmentzone" DISABLE KEYS;*/
REPLACE INTO "tbl_containmentzone" ("cntnmnt_id", "ward_id", "ribbon_name", "cntnmnt_date", "cntnmnt_status", "ribbon_desc") VALUES
	('24','1','Green','2021-12-21',0,'Low Affected Area');
/*!40000 ALTER TABLE "tbl_containmentzone" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_doctor'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_doctor" (
  "doctor_id" int(10) unsigned NOT NULL auto_increment,
  "doctor_name" varchar(50) NOT NULL,
  "doctor_address" varchar(50) NOT NULL,
  "doctor_contact" varchar(50) NOT NULL,
  "doctor_gender" varchar(50) NOT NULL,
  "doctor_email" varchar(50) NOT NULL,
  "doctor_photo" varchar(50) NOT NULL,
  "doctor_adhaarno" varchar(50) NOT NULL,
  "doctor_proof" varchar(50) NOT NULL,
  "doctor_uname" varchar(50) NOT NULL,
  "doctor_password" varchar(50) NOT NULL,
  "doctor_isactive" int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  ("doctor_id")
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_doctor'
#

LOCK TABLES "tbl_doctor" WRITE;
/*!40000 ALTER TABLE "tbl_doctor" DISABLE KEYS;*/
REPLACE INTO "tbl_doctor" ("doctor_id", "doctor_name", "doctor_address", "doctor_contact", "doctor_gender", "doctor_email", "doctor_photo", "doctor_adhaarno", "doctor_proof", "doctor_uname", "doctor_password", "doctor_isactive") VALUES
	('2','Aravindh Raj','Puthanpura(H)
Muvattupuzha','9975657890','Male','aravindh@gmail.com','Proof_1782.jpg','223456782345','Proof_1758.jfif','aravindh','Aravindh@123','0');
REPLACE INTO "tbl_doctor" ("doctor_id", "doctor_name", "doctor_address", "doctor_contact", "doctor_gender", "doctor_email", "doctor_photo", "doctor_adhaarno", "doctor_proof", "doctor_uname", "doctor_password", "doctor_isactive") VALUES
	('3','Razeena KE','Kanjikuzhiyil(H)
Perumbaavoor
','7567567834','Female','razee@gmail.com','Proof_1531.jpg','564356892345','Proof_1268.jpg','razeena','Razeena@123','0');
REPLACE INTO "tbl_doctor" ("doctor_id", "doctor_name", "doctor_address", "doctor_contact", "doctor_gender", "doctor_email", "doctor_photo", "doctor_adhaarno", "doctor_proof", "doctor_uname", "doctor_password", "doctor_isactive") VALUES
	('4','Ajula','Pulimoottil(H)
Piravom','8765345689','Female','ajula@gmail.com','Proof_1067.jpg','456789345678','Proof_2097.png','ajula','Ajula@123','0');
REPLACE INTO "tbl_doctor" ("doctor_id", "doctor_name", "doctor_address", "doctor_contact", "doctor_gender", "doctor_email", "doctor_photo", "doctor_adhaarno", "doctor_proof", "doctor_uname", "doctor_password", "doctor_isactive") VALUES
	('5','Suraj KS','Meleparambil(H)
Thodupuzha','7645345678','Male','suraj@gmail.com','Proof_1364.jfif','456912042599','Proof_2029.webp','suraj','Suraj@123','0');
REPLACE INTO "tbl_doctor" ("doctor_id", "doctor_name", "doctor_address", "doctor_contact", "doctor_gender", "doctor_email", "doctor_photo", "doctor_adhaarno", "doctor_proof", "doctor_uname", "doctor_password", "doctor_isactive") VALUES
	('6','Dr Anila','Anila Nivas','9876543210','Female','anila@gmail.com','Proof_1474.jfif','123456789012','Proof_1528.jpg','dranila123','Anila@12345','0');
REPLACE INTO "tbl_doctor" ("doctor_id", "doctor_name", "doctor_address", "doctor_contact", "doctor_gender", "doctor_email", "doctor_photo", "doctor_adhaarno", "doctor_proof", "doctor_uname", "doctor_password", "doctor_isactive") VALUES
	('7','Jeevan','Varganalputhur','8963218921','Male','jeevan@gmail.com','Proof_1966.png','123006478962','Proof_1377.docx','jeevan','Jeevan@23','0');
/*!40000 ALTER TABLE "tbl_doctor" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_family'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_family" (
  "family_id" int(10) unsigned NOT NULL auto_increment,
  "family_hname" varchar(50) NOT NULL,
  "family_hno" int(10) unsigned NOT NULL,
  "family_rno" varchar(50) NOT NULL,
  "family_rproof" varchar(50) NOT NULL,
  "family_memno" int(10) unsigned NOT NULL,
  "wp_id" int(10) unsigned NOT NULL,
  "ward_id" varchar(50) NOT NULL,
  "family_uname" varchar(50) NOT NULL,
  "family_password" varchar(50) NOT NULL,
  "family_doj" datetime NOT NULL,
  "family_isactive" int(10) unsigned NOT NULL default '0',
  "family_vstatus" int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  ("family_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_family'
#

LOCK TABLES "tbl_family" WRITE;
/*!40000 ALTER TABLE "tbl_family" DISABLE KEYS;*/
REPLACE INTO "tbl_family" ("family_id", "family_hname", "family_hno", "family_rno", "family_rproof", "family_memno", "wp_id", "ward_id", "family_uname", "family_password", "family_doj", "family_isactive", "family_vstatus") VALUES
	('5','Kummattu Puthen Pura(H)','6','123648976','Proof_1665.png','4','1','1','ebrahim123','Abc@123','2021-12-21 00:00:00','0','1');
REPLACE INTO "tbl_family" ("family_id", "family_hname", "family_hno", "family_rno", "family_rproof", "family_memno", "wp_id", "ward_id", "family_uname", "family_password", "family_doj", "family_isactive", "family_vstatus") VALUES
	('6','Mannuparambil(H)','4','46239','Proof_1769.png','3','1','1','Anilapm@123','Anila@123','2021-12-21 00:00:00','0','1');
REPLACE INTO "tbl_family" ("family_id", "family_hname", "family_hno", "family_rno", "family_rproof", "family_memno", "wp_id", "ward_id", "family_uname", "family_password", "family_doj", "family_isactive", "family_vstatus") VALUES
	('7','Methrukudyil(H)','2','468234267','Proof_1831.png','2','1','1','user123','User@1234','2021-12-21 00:00:00','0','1');
REPLACE INTO "tbl_family" ("family_id", "family_hname", "family_hno", "family_rno", "family_rproof", "family_memno", "wp_id", "ward_id", "family_uname", "family_password", "family_doj", "family_isactive", "family_vstatus") VALUES
	('8','Vadakkethadathil','10','3456789876','Proof_1925.png','4','6','6','Vadakkethadathil','Family@123','2021-12-21 00:00:00','0','2');
/*!40000 ALTER TABLE "tbl_family" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_familymembers'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_familymembers" (
  "member_id" int(10) unsigned NOT NULL auto_increment,
  "member_name" varchar(50) NOT NULL,
  "member_photo" varchar(50) NOT NULL,
  "member_gender" varchar(50) NOT NULL,
  "member_contact" varchar(50) NOT NULL,
  "member_email" varchar(50) NOT NULL,
  "member_dob" datetime NOT NULL,
  "member_adhaarno" varchar(50) NOT NULL,
  "fr_id" int(10) unsigned NOT NULL,
  "family_id" int(10) unsigned NOT NULL,
  "member_jobstatus" varchar(50) NOT NULL,
  "member_isactive" int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  ("member_id")
) AUTO_INCREMENT=14;



#
# Dumping data for table 'tbl_familymembers'
#

LOCK TABLES "tbl_familymembers" WRITE;
/*!40000 ALTER TABLE "tbl_familymembers" DISABLE KEYS;*/
REPLACE INTO "tbl_familymembers" ("member_id", "member_name", "member_photo", "member_gender", "member_contact", "member_email", "member_dob", "member_adhaarno", "fr_id", "family_id", "member_jobstatus", "member_isactive") VALUES
	('9','Razeena K E','Proof_1653.jpg','Female"','1236897422','razeenarazee359@gmail.com','1998-11-27 00:00:00','765432123456','4','5','Student','0');
REPLACE INTO "tbl_familymembers" ("member_id", "member_name", "member_photo", "member_gender", "member_contact", "member_email", "member_dob", "member_adhaarno", "fr_id", "family_id", "member_jobstatus", "member_isactive") VALUES
	('10','Ebrahim K M','Proof_1921.png','Male"','7867541234','razee359@gmail.com','1983-02-28 00:00:00','709876543210','1','5','Job','0');
REPLACE INTO "tbl_familymembers" ("member_id", "member_name", "member_photo", "member_gender", "member_contact", "member_email", "member_dob", "member_adhaarno", "fr_id", "family_id", "member_jobstatus", "member_isactive") VALUES
	('11','Anila P M','Proof_1868.jpg','Female"','8943874798','anilapm@gmail.com','2002-07-03 00:00:00','709876543211','4','6','Student','0');
REPLACE INTO "tbl_familymembers" ("member_id", "member_name", "member_photo", "member_gender", "member_contact", "member_email", "member_dob", "member_adhaarno", "fr_id", "family_id", "member_jobstatus", "member_isactive") VALUES
	('12','Amina Azeez','Proof_2079.jpg','Female"','8943874798','amina@gmail.com','1996-10-01 00:00:00','709876543211','1','6','Student','0');
REPLACE INTO "tbl_familymembers" ("member_id", "member_name", "member_photo", "member_gender", "member_contact", "member_email", "member_dob", "member_adhaarno", "fr_id", "family_id", "member_jobstatus", "member_isactive") VALUES
	('13','Ashna K E','Proof_1571.jpg','Female"','9087654345','ashnake@gmail.com','1996-06-15 00:00:00','709876543456','4','5','Job','0');
/*!40000 ALTER TABLE "tbl_familymembers" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_familyrole'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_familyrole" (
  "fr_id" int(10) unsigned NOT NULL auto_increment,
  "fr_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("fr_id")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_familyrole'
#

LOCK TABLES "tbl_familyrole" WRITE;
/*!40000 ALTER TABLE "tbl_familyrole" DISABLE KEYS;*/
REPLACE INTO "tbl_familyrole" ("fr_id", "fr_name") VALUES
	('1','Father');
REPLACE INTO "tbl_familyrole" ("fr_id", "fr_name") VALUES
	('2','Mother');
REPLACE INTO "tbl_familyrole" ("fr_id", "fr_name") VALUES
	('3','Son');
REPLACE INTO "tbl_familyrole" ("fr_id", "fr_name") VALUES
	('4','Daughter');
REPLACE INTO "tbl_familyrole" ("fr_id", "fr_name") VALUES
	('5','Grand Daughter');
/*!40000 ALTER TABLE "tbl_familyrole" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_food'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_food" (
  "f_id" int(10) unsigned NOT NULL auto_increment,
  "f_name" varchar(50) NOT NULL,
  "f_desc" varchar(50) NOT NULL,
  PRIMARY KEY  ("f_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_food'
#

LOCK TABLES "tbl_food" WRITE;
/*!40000 ALTER TABLE "tbl_food" DISABLE KEYS;*/
REPLACE INTO "tbl_food" ("f_id", "f_name", "f_desc") VALUES
	('1','Breakfast','Breakfast items available
Appam,Puttu,Dosa etc..');
/*!40000 ALTER TABLE "tbl_food" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_mainhealthissues'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_mainhealthissues" (
  "msi_id" int(10) unsigned NOT NULL auto_increment,
  "msi_name" varchar(50) NOT NULL,
  "msi_desc" varchar(100) NOT NULL,
  PRIMARY KEY  ("msi_id")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_mainhealthissues'
#

LOCK TABLES "tbl_mainhealthissues" WRITE;
/*!40000 ALTER TABLE "tbl_mainhealthissues" DISABLE KEYS;*/
REPLACE INTO "tbl_mainhealthissues" ("msi_id", "msi_name", "msi_desc") VALUES
	('1','Fever','Temperature is above 99');
REPLACE INTO "tbl_mainhealthissues" ("msi_id", "msi_name", "msi_desc") VALUES
	('2','Cough','Cough exist last 3 week');
REPLACE INTO "tbl_mainhealthissues" ("msi_id", "msi_name", "msi_desc") VALUES
	('3','Cold','Cold exist');
REPLACE INTO "tbl_mainhealthissues" ("msi_id", "msi_name", "msi_desc") VALUES
	('4','Vomiting','Vomiting exist');
REPLACE INTO "tbl_mainhealthissues" ("msi_id", "msi_name", "msi_desc") VALUES
	('5','Headache','Headache Exist');
/*!40000 ALTER TABLE "tbl_mainhealthissues" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_memberhealth'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_memberhealth" (
  "mh_id" int(10) unsigned NOT NULL auto_increment,
  "msi_id" int(10) unsigned NOT NULL,
  "member_id" int(10) unsigned NOT NULL,
  "mh_proof" varchar(50) NOT NULL,
  "mh_isactive" int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  ("mh_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_memberhealth'
#

LOCK TABLES "tbl_memberhealth" WRITE;
/*!40000 ALTER TABLE "tbl_memberhealth" DISABLE KEYS;*/
REPLACE INTO "tbl_memberhealth" ("mh_id", "msi_id", "member_id", "mh_proof", "mh_isactive") VALUES
	('1','3','1','Proof_1250.jpg','0');
/*!40000 ALTER TABLE "tbl_memberhealth" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_pandemic'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_pandemic" (
  "pandemic_id" int(10) unsigned NOT NULL auto_increment,
  "pandemic_name" varchar(50) NOT NULL,
  "pandemic_desc" varchar(50) NOT NULL,
  PRIMARY KEY  ("pandemic_id")
) AUTO_INCREMENT=3;



#
# Dumping data for table 'tbl_pandemic'
#

LOCK TABLES "tbl_pandemic" WRITE;
/*!40000 ALTER TABLE "tbl_pandemic" DISABLE KEYS;*/
REPLACE INTO "tbl_pandemic" ("pandemic_id", "pandemic_name", "pandemic_desc") VALUES
	('2','Covid','Covid 19 ');
/*!40000 ALTER TABLE "tbl_pandemic" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_route'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_route" (
  "route_id" int(10) unsigned NOT NULL auto_increment,
  "place_name" varchar(50) NOT NULL,
  "wp_id" int(10) unsigned NOT NULL,
  "route_date" varchar(50) NOT NULL,
  "route_time" varchar(50) NOT NULL,
  "aw_id" int(10) unsigned NOT NULL,
  "rutempmstr_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("route_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_route'
#

LOCK TABLES "tbl_route" WRITE;
/*!40000 ALTER TABLE "tbl_route" DISABLE KEYS;*/
REPLACE INTO "tbl_route" ("route_id", "place_name", "wp_id", "route_date", "route_time", "aw_id", "rutempmstr_id") VALUES
	('3','Pressure','1','2021-12-01','01:11','1','8');
REPLACE INTO "tbl_route" ("route_id", "place_name", "wp_id", "route_date", "route_time", "aw_id", "rutempmstr_id") VALUES
	('4','mavelikkara','1','2021-12-07','17:02','1','9');
/*!40000 ALTER TABLE "tbl_route" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_routemapmaster'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_routemapmaster" (
  "rutempmstr_id" int(10) unsigned NOT NULL auto_increment,
  "vdrprsl_id" int(10) unsigned NOT NULL,
  "rutempmstr_isactive" int(10) unsigned NOT NULL,
  "created_by" varchar(10) NOT NULL,
  PRIMARY KEY  ("rutempmstr_id")
) AUTO_INCREMENT=10;



#
# Dumping data for table 'tbl_routemapmaster'
#

LOCK TABLES "tbl_routemapmaster" WRITE;
/*!40000 ALTER TABLE "tbl_routemapmaster" DISABLE KEYS;*/
REPLACE INTO "tbl_routemapmaster" ("rutempmstr_id", "vdrprsl_id", "rutempmstr_isactive", "created_by") VALUES
	('8','4','1','saritha');
REPLACE INTO "tbl_routemapmaster" ("rutempmstr_id", "vdrprsl_id", "rutempmstr_isactive", "created_by") VALUES
	('9','4','1','saritha');
/*!40000 ALTER TABLE "tbl_routemapmaster" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_symptoms'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_symptoms" (
  "symp_id" int(10) unsigned NOT NULL auto_increment,
  "symp_name" varchar(200) NOT NULL,
  PRIMARY KEY  ("symp_id")
) AUTO_INCREMENT=6;



#
# Dumping data for table 'tbl_symptoms'
#

LOCK TABLES "tbl_symptoms" WRITE;
/*!40000 ALTER TABLE "tbl_symptoms" DISABLE KEYS;*/
REPLACE INTO "tbl_symptoms" ("symp_id", "symp_name") VALUES
	('1','Fever');
REPLACE INTO "tbl_symptoms" ("symp_id", "symp_name") VALUES
	('2','Cold');
REPLACE INTO "tbl_symptoms" ("symp_id", "symp_name") VALUES
	('3','Cough');
REPLACE INTO "tbl_symptoms" ("symp_id", "symp_name") VALUES
	('4','Headache');
REPLACE INTO "tbl_symptoms" ("symp_id", "symp_name") VALUES
	('5','Vomiting');
/*!40000 ALTER TABLE "tbl_symptoms" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_vaccine'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_vaccine" (
  "vaccine_id" int(10) unsigned NOT NULL auto_increment,
  "pandemic_id" int(10) unsigned NOT NULL,
  "vaccine_name" varchar(50) NOT NULL,
  "vaccine_desc" varchar(1000) NOT NULL,
  "vaccine_dose" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("vaccine_id")
) AUTO_INCREMENT=2;



#
# Dumping data for table 'tbl_vaccine'
#

LOCK TABLES "tbl_vaccine" WRITE;
/*!40000 ALTER TABLE "tbl_vaccine" DISABLE KEYS;*/
REPLACE INTO "tbl_vaccine" ("vaccine_id", "pandemic_id", "vaccine_name", "vaccine_desc", "vaccine_dose") VALUES
	('1','2','Covishield','Effective for restrict covid','2');
/*!40000 ALTER TABLE "tbl_vaccine" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_vaccinemember'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_vaccinemember" (
  "vm_id" int(10) unsigned NOT NULL auto_increment,
  "pandemic_id" int(10) unsigned NOT NULL,
  "vaccine_id" tinyint(3) unsigned NOT NULL,
  "ward_id" varchar(50) NOT NULL,
  "member_id" tinyint(3) unsigned NOT NULL,
  "vm_takendate" datetime default NULL,
  "vaccine_dose" varchar(50) NOT NULL,
  "vaccine_proof" varchar(50) default NULL,
  PRIMARY KEY  ("vm_id")
) AUTO_INCREMENT=4;



#
# Dumping data for table 'tbl_vaccinemember'
#

LOCK TABLES "tbl_vaccinemember" WRITE;
/*!40000 ALTER TABLE "tbl_vaccinemember" DISABLE KEYS;*/
REPLACE INTO "tbl_vaccinemember" ("vm_id", "pandemic_id", "vaccine_id", "ward_id", "member_id", "vm_takendate", "vaccine_dose", "vaccine_proof") VALUES
	('1','2',1,'1',1,NULL,'1',NULL);
REPLACE INTO "tbl_vaccinemember" ("vm_id", "pandemic_id", "vaccine_id", "ward_id", "member_id", "vm_takendate", "vaccine_dose", "vaccine_proof") VALUES
	('2','2',1,'1',9,NULL,'1',NULL);
REPLACE INTO "tbl_vaccinemember" ("vm_id", "pandemic_id", "vaccine_id", "ward_id", "member_id", "vm_takendate", "vaccine_dose", "vaccine_proof") VALUES
	('3','2',1,'1',10,'2021-01-01 00:00:00','2','Proof_2088.docx');
/*!40000 ALTER TABLE "tbl_vaccinemember" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_viraldisease'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_viraldisease" (
  "vd_id" int(10) unsigned NOT NULL auto_increment,
  "vd_name" varchar(200) NOT NULL,
  PRIMARY KEY  ("vd_id")
) AUTO_INCREMENT=5;



#
# Dumping data for table 'tbl_viraldisease'
#

LOCK TABLES "tbl_viraldisease" WRITE;
/*!40000 ALTER TABLE "tbl_viraldisease" DISABLE KEYS;*/
REPLACE INTO "tbl_viraldisease" ("vd_id", "vd_name") VALUES
	('1','Covid');
REPLACE INTO "tbl_viraldisease" ("vd_id", "vd_name") VALUES
	('2','Malaria');
REPLACE INTO "tbl_viraldisease" ("vd_id", "vd_name") VALUES
	('3','Dengue Fever');
REPLACE INTO "tbl_viraldisease" ("vd_id", "vd_name") VALUES
	('4','Chikengunya');
/*!40000 ALTER TABLE "tbl_viraldisease" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_viraldiseasedetection'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_viraldiseasedetection" (
  "vdd_id" int(10) unsigned NOT NULL auto_increment,
  "vdd_caption" varchar(500) NOT NULL,
  "member_id" int(10) unsigned NOT NULL,
  "vds_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("vdd_id")
);



#
# Dumping data for table 'tbl_viraldiseasedetection'
#

# No data found.



#
# Table structure for table 'tbl_viraldiseasereport'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_viraldiseasereport" (
  "vdr_id" int(10) unsigned NOT NULL auto_increment,
  "member_id" int(10) unsigned NOT NULL,
  "vdd_caption" varchar(500) NOT NULL,
  "vdr_date" varchar(50) NOT NULL,
  "vd_id" varchar(10) NOT NULL default '0',
  "vdr_ispandemic" int(10) unsigned NOT NULL default '0',
  "Slip_id" varchar(10) NOT NULL default '0',
  PRIMARY KEY  ("vdr_id")
) AUTO_INCREMENT=15;



#
# Dumping data for table 'tbl_viraldiseasereport'
#

LOCK TABLES "tbl_viraldiseasereport" WRITE;
/*!40000 ALTER TABLE "tbl_viraldiseasereport" DISABLE KEYS;*/
REPLACE INTO "tbl_viraldiseasereport" ("vdr_id", "member_id", "vdd_caption", "vdr_date", "vd_id", "vdr_ispandemic", "Slip_id") VALUES
	('10','9','sir','2021-12-21','3','1','slip_1253');
REPLACE INTO "tbl_viraldiseasereport" ("vdr_id", "member_id", "vdd_caption", "vdr_date", "vd_id", "vdr_ispandemic", "Slip_id") VALUES
	('11','10','sire...','2021-12-21','3','1','slip_1471');
REPLACE INTO "tbl_viraldiseasereport" ("vdr_id", "member_id", "vdd_caption", "vdr_date", "vd_id", "vdr_ispandemic", "Slip_id") VALUES
	('12','11','sir','2021-12-21','3','1','slip_1042');
REPLACE INTO "tbl_viraldiseasereport" ("vdr_id", "member_id", "vdd_caption", "vdr_date", "vd_id", "vdr_ispandemic", "Slip_id") VALUES
	('13','12','fhf','2021-12-21','3','1','slip_1909');
REPLACE INTO "tbl_viraldiseasereport" ("vdr_id", "member_id", "vdd_caption", "vdr_date", "vd_id", "vdr_ispandemic", "Slip_id") VALUES
	('14','13','sir..','2021-12-21','3','1','slip_2074');
/*!40000 ALTER TABLE "tbl_viraldiseasereport" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_viraldiseasereportrslt'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_viraldiseasereportrslt" (
  "vdrprsl_id" int(10) unsigned NOT NULL auto_increment,
  "vdr_id" int(10) unsigned NOT NULL,
  "vdrprsl_status" int(10) unsigned NOT NULL,
  "vdrprsl_fdate" varchar(50) NOT NULL,
  "vdrprsl_tdate" varchar(50) NOT NULL,
  "vdrprsl_duration" varchar(50) NOT NULL,
  PRIMARY KEY  ("vdrprsl_id")
) AUTO_INCREMENT=9;



#
# Dumping data for table 'tbl_viraldiseasereportrslt'
#

LOCK TABLES "tbl_viraldiseasereportrslt" WRITE;
/*!40000 ALTER TABLE "tbl_viraldiseasereportrslt" DISABLE KEYS;*/
REPLACE INTO "tbl_viraldiseasereportrslt" ("vdrprsl_id", "vdr_id", "vdrprsl_status", "vdrprsl_fdate", "vdrprsl_tdate", "vdrprsl_duration") VALUES
	('4','10','1','2021-12-01','2021-12-14','13');
REPLACE INTO "tbl_viraldiseasereportrslt" ("vdrprsl_id", "vdr_id", "vdrprsl_status", "vdrprsl_fdate", "vdrprsl_tdate", "vdrprsl_duration") VALUES
	('5','11','1','2021-12-01','2021-12-14','13');
REPLACE INTO "tbl_viraldiseasereportrslt" ("vdrprsl_id", "vdr_id", "vdrprsl_status", "vdrprsl_fdate", "vdrprsl_tdate", "vdrprsl_duration") VALUES
	('6','12','1','2021-12-08','2021-12-23','14');
REPLACE INTO "tbl_viraldiseasereportrslt" ("vdrprsl_id", "vdr_id", "vdrprsl_status", "vdrprsl_fdate", "vdrprsl_tdate", "vdrprsl_duration") VALUES
	('7','13','1','2021-12-08','2021-12-21','14');
REPLACE INTO "tbl_viraldiseasereportrslt" ("vdrprsl_id", "vdr_id", "vdrprsl_status", "vdrprsl_fdate", "vdrprsl_tdate", "vdrprsl_duration") VALUES
	('8','14','1','2021-12-02','2021-12-16','14');
/*!40000 ALTER TABLE "tbl_viraldiseasereportrslt" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_viraldiseasesymptoms'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_viraldiseasesymptoms" (
  "vds_id" int(10) unsigned NOT NULL auto_increment,
  "vdr_id" int(10) unsigned NOT NULL,
  "symp_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("vds_id")
) AUTO_INCREMENT=44;



#
# Dumping data for table 'tbl_viraldiseasesymptoms'
#

LOCK TABLES "tbl_viraldiseasesymptoms" WRITE;
/*!40000 ALTER TABLE "tbl_viraldiseasesymptoms" DISABLE KEYS;*/
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('17','5','1');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('18','5','2');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('19','5','4');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('20','6','1');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('21','6','3');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('22','6','4');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('23','7','1');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('24','7','4');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('25','8','1');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('26','8','2');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('27','9','1');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('28','9','2');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('29','9','3');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('30','9','4');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('31','10','1');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('32','10','2');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('33','10','3');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('34','11','3');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('35','11','4');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('36','12','1');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('37','12','2');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('38','12','3');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('39','12','4');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('40','13','1');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('41','13','3');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('42','14','2');
REPLACE INTO "tbl_viraldiseasesymptoms" ("vds_id", "vdr_id", "symp_id") VALUES
	('43','14','3');
/*!40000 ALTER TABLE "tbl_viraldiseasesymptoms" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_viralsymptoms'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_viralsymptoms" (
  "vs_id" int(3) unsigned NOT NULL auto_increment,
  "vd_id" int(10) unsigned NOT NULL,
  "symp_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("vs_id")
) AUTO_INCREMENT=8;



#
# Dumping data for table 'tbl_viralsymptoms'
#

LOCK TABLES "tbl_viralsymptoms" WRITE;
/*!40000 ALTER TABLE "tbl_viralsymptoms" DISABLE KEYS;*/
REPLACE INTO "tbl_viralsymptoms" ("vs_id", "vd_id", "symp_id") VALUES
	('1','3','1');
REPLACE INTO "tbl_viralsymptoms" ("vs_id", "vd_id", "symp_id") VALUES
	('2','3','2');
REPLACE INTO "tbl_viralsymptoms" ("vs_id", "vd_id", "symp_id") VALUES
	('3','3','4');
REPLACE INTO "tbl_viralsymptoms" ("vs_id", "vd_id", "symp_id") VALUES
	('4','1','1');
REPLACE INTO "tbl_viralsymptoms" ("vs_id", "vd_id", "symp_id") VALUES
	('5','1','2');
REPLACE INTO "tbl_viralsymptoms" ("vs_id", "vd_id", "symp_id") VALUES
	('6','1','3');
REPLACE INTO "tbl_viralsymptoms" ("vs_id", "vd_id", "symp_id") VALUES
	('7','1','4');
/*!40000 ALTER TABLE "tbl_viralsymptoms" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_ward'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_ward" (
  "ward_id" int(10) unsigned NOT NULL auto_increment,
  "ward_no" int(10) unsigned NOT NULL,
  "ward_population" varchar(50) NOT NULL,
  "ward_houses" varchar(50) NOT NULL,
  PRIMARY KEY  ("ward_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_ward'
#

LOCK TABLES "tbl_ward" WRITE;
/*!40000 ALTER TABLE "tbl_ward" DISABLE KEYS;*/
REPLACE INTO "tbl_ward" ("ward_id", "ward_no", "ward_population", "ward_houses") VALUES
	('1','1','10','4');
REPLACE INTO "tbl_ward" ("ward_id", "ward_no", "ward_population", "ward_houses") VALUES
	('2','2','8','3');
REPLACE INTO "tbl_ward" ("ward_id", "ward_no", "ward_population", "ward_houses") VALUES
	('3','3','6','4');
REPLACE INTO "tbl_ward" ("ward_id", "ward_no", "ward_population", "ward_houses") VALUES
	('4','4','10','7');
REPLACE INTO "tbl_ward" ("ward_id", "ward_no", "ward_population", "ward_houses") VALUES
	('5','5','10','4');
REPLACE INTO "tbl_ward" ("ward_id", "ward_no", "ward_population", "ward_houses") VALUES
	('6','6','7','2');
/*!40000 ALTER TABLE "tbl_ward" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_wardmember'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_wardmember" (
  "wm_id" int(10) unsigned NOT NULL auto_increment,
  "wm_name" varchar(50) NOT NULL,
  "wm_address" varchar(50) NOT NULL,
  "wm_gender" varchar(50) NOT NULL,
  "wm_contact1" varchar(50) NOT NULL,
  "wm_contact2" varchar(50) NOT NULL,
  "wm_photo" varchar(50) NOT NULL,
  "wp_id" varchar(50) NOT NULL,
  "wm_adharno" varchar(90) NOT NULL,
  "wm_from" datetime NOT NULL,
  "wm_to" datetime NOT NULL,
  "wm_uname" varchar(50) NOT NULL,
  "wm_password" varchar(50) NOT NULL,
  "wm_isactive" int(10) unsigned NOT NULL default '0',
  "wm_email" varchar(50) NOT NULL,
  PRIMARY KEY  ("wm_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_wardmember'
#

LOCK TABLES "tbl_wardmember" WRITE;
/*!40000 ALTER TABLE "tbl_wardmember" DISABLE KEYS;*/
REPLACE INTO "tbl_wardmember" ("wm_id", "wm_name", "wm_address", "wm_gender", "wm_contact1", "wm_contact2", "wm_photo", "wp_id", "wm_adharno", "wm_from", "wm_to", "wm_uname", "wm_password", "wm_isactive", "wm_email") VALUES
	('1','Amina Azeez','Mulattu (H)
Mulavoor','Female','9854637892','7689054356','Proof_1950.jpg','5','345678901234','2021-11-19 00:00:00','2026-06-19 00:00:00','amina','Amina@123','0','Amina@123');
REPLACE INTO "tbl_wardmember" ("wm_id", "wm_name", "wm_address", "wm_gender", "wm_contact1", "wm_contact2", "wm_photo", "wp_id", "wm_adharno", "wm_from", "wm_to", "wm_uname", "wm_password", "wm_isactive", "wm_email") VALUES
	('2','Anila Murali','Panamthanath(H)
Kalloorkad','Female','7561015105','7688456712','Proof_1369.jfif','1','145678901234','2021-11-19 00:00:00','2026-06-19 00:00:00','Anila','Anila@123','0','Anila@123');
REPLACE INTO "tbl_wardmember" ("wm_id", "wm_name", "wm_address", "wm_gender", "wm_contact1", "wm_contact2", "wm_photo", "wp_id", "wm_adharno", "wm_from", "wm_to", "wm_uname", "wm_password", "wm_isactive", "wm_email") VALUES
	('3','Juliya Anna Alias','Vadakkethadathil (H)
Paipra','Female','9954637892','7989054356','Proof_1478.jpg','2','345678901232','2021-11-19 00:00:00','2026-02-19 00:00:00','Juliya','Juliya@123','0','julia@gmail.com');
REPLACE INTO "tbl_wardmember" ("wm_id", "wm_name", "wm_address", "wm_gender", "wm_contact1", "wm_contact2", "wm_photo", "wp_id", "wm_adharno", "wm_from", "wm_to", "wm_uname", "wm_password", "wm_isactive", "wm_email") VALUES
	('4','Suraj KS','Puthanpura (H)
Vazhakkulam','Male','9854937892','7989154356','Proof_1027.jpg','3','145678911234','2021-11-19 00:00:00','2026-06-19 00:00:00','suraj','Suraj@123','0','suraj@gmail.com');
REPLACE INTO "tbl_wardmember" ("wm_id", "wm_name", "wm_address", "wm_gender", "wm_contact1", "wm_contact2", "wm_photo", "wp_id", "wm_adharno", "wm_from", "wm_to", "wm_uname", "wm_password", "wm_isactive", "wm_email") VALUES
	('5','Nikhil','Meleparambil (H)
Pezhakkapilly','Male','9954637811','7688451112','Proof_2054.jpg','4','145678111234','2021-11-19 00:00:00','2026-06-19 00:00:00','Nikhil','Nikhil@123','0','nikhil@gmail.com');
REPLACE INTO "tbl_wardmember" ("wm_id", "wm_name", "wm_address", "wm_gender", "wm_contact1", "wm_contact2", "wm_photo", "wp_id", "wm_adharno", "wm_from", "wm_to", "wm_uname", "wm_password", "wm_isactive", "wm_email") VALUES
	('6','Razeena K E','Kummattu Puthen Pura(H)','Female','9098877665','7889988776','Proof_1690.jpg','6','709236896712','2021-10-01 00:00:00','2021-12-31 00:00:00','asdf','Abcdef@23','0','razeenarazee359@gmail.com');
/*!40000 ALTER TABLE "tbl_wardmember" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_wardplaces'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_wardplaces" (
  "wp_id" int(10) unsigned NOT NULL auto_increment,
  "ward_id" int(50) NOT NULL,
  "wp_name" varchar(50) NOT NULL,
  PRIMARY KEY  ("wp_id")
) AUTO_INCREMENT=7;



#
# Dumping data for table 'tbl_wardplaces'
#

LOCK TABLES "tbl_wardplaces" WRITE;
/*!40000 ALTER TABLE "tbl_wardplaces" DISABLE KEYS;*/
REPLACE INTO "tbl_wardplaces" ("wp_id", "ward_id", "wp_name") VALUES
	('1',1,'Kalloorkad');
REPLACE INTO "tbl_wardplaces" ("wp_id", "ward_id", "wp_name") VALUES
	('2',2,'Paipra');
REPLACE INTO "tbl_wardplaces" ("wp_id", "ward_id", "wp_name") VALUES
	('3',3,'Vazhakkulam');
REPLACE INTO "tbl_wardplaces" ("wp_id", "ward_id", "wp_name") VALUES
	('4',4,'Pezhakkapilly');
REPLACE INTO "tbl_wardplaces" ("wp_id", "ward_id", "wp_name") VALUES
	('5',5,'Mulavoor');
REPLACE INTO "tbl_wardplaces" ("wp_id", "ward_id", "wp_name") VALUES
	('6',6,'Maneed');
/*!40000 ALTER TABLE "tbl_wardplaces" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'tbl_wardvaccine'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "tbl_wardvaccine" (
  "wv_id" int(10) unsigned NOT NULL auto_increment,
  "ribbon_id" int(10) unsigned NOT NULL,
  "wm_id" int(10) unsigned NOT NULL,
  PRIMARY KEY  ("wv_id")
);



#
# Dumping data for table 'tbl_wardvaccine'
#

# No data found.

/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/

prompt PL/SQL Developer Export Tables for user C##BOSS@XE
prompt Created by tuvya on Monday, 8 July 2024
set feedback off
set define off

prompt Creating BRIGADE...
create table BRIGADE
(
  brigadenumber      NUMBER not null,
  brigadename        VARCHAR2(20) not null,
  numberofbattalions NUMBER not null
)
;
alter table BRIGADE
  add primary key (BRIGADENUMBER);

prompt Creating BATTALION...
create table BATTALION
(
  battalionnumber   NUMBER not null,
  battalionname     VARCHAR2(20) not null,
  numberofcompanies NUMBER not null,
  brigadenumber     NUMBER not null
)
;
alter table BATTALION
  add primary key (BATTALIONNUMBER);
alter table BATTALION
  add foreign key (BRIGADENUMBER)
  references BRIGADE (BRIGADENUMBER);

prompt Creating COMPANY...
create table COMPANY
(
  companynumber    NUMBER not null,
  companyname      VARCHAR2(20) not null,
  numberofplatoons NUMBER not null,
  battalionnumber  NUMBER not null
)
;
alter table COMPANY
  add primary key (COMPANYNUMBER);
alter table COMPANY
  add foreign key (BATTALIONNUMBER)
  references BATTALION (BATTALIONNUMBER);

prompt Creating PLATOON...
create table PLATOON
(
  platoonnumber  NUMBER not null,
  platoonname    VARCHAR2(20) not null,
  numberofsquads NUMBER not null,
  companynumber  NUMBER not null
)
;
alter table PLATOON
  add primary key (PLATOONNUMBER);
alter table PLATOON
  add foreign key (COMPANYNUMBER)
  references COMPANY (COMPANYNUMBER);

prompt Creating SQUAD...
create table SQUAD
(
  squadnumber      NUMBER not null,
  squadname        VARCHAR2(20) not null,
  numberofsoldiers NUMBER not null,
  platoonnumber    NUMBER not null
)
;
alter table SQUAD
  add primary key (SQUADNUMBER);
alter table SQUAD
  add foreign key (PLATOONNUMBER)
  references PLATOON (PLATOONNUMBER);

prompt Creating SOLDIER...
create table SOLDIER
(
  personalnumber NUMBER not null,
  sname          VARCHAR2(40) not null,
  birthdate      DATE not null,
  srank          VARCHAR2(20) not null,
  deploymentdate DATE not null,
  squadnumber    NUMBER not null
)
;
alter table SOLDIER
  add primary key (PERSONALNUMBER);
alter table SOLDIER
  add foreign key (SQUADNUMBER)
  references SQUAD (SQUADNUMBER);

prompt Truncating SOLDIER...
truncate table SOLDIER;
prompt Truncating SQUAD...
truncate table SQUAD;
prompt Truncating PLATOON...
truncate table PLATOON;
prompt Truncating COMPANY...
truncate table COMPANY;
prompt Truncating BATTALION...
truncate table BATTALION;
prompt Truncating BRIGADE...
truncate table BRIGADE;
prompt Loading BRIGADE...
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (817999, 'Sit', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (470639, 'Support', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (883025, 'Particular', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (554092, 'From', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (276600, 'Cultural', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (655436, 'Fear', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (904832, 'Cold', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (344087, 'I', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (140978, 'Common', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (331515, 'Nor', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (203712, 'Study', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (767332, 'Stuff', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (442735, 'Mouth', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (909998, 'Book', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (704834, 'Goal', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (967725, 'Market', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (232494, 'Follow', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (477768, 'Responsibility', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (581076, 'War', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (399729, 'Husband', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (920127, 'Strategy', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (918751, 'Animal', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (659493, 'Task', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (888309, 'Game', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (464371, 'Economic', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (330907, 'Yard', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (360598, 'Wish', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (375445, 'Bad', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (423361, 'Country', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (469077, 'Or', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (154018, 'Rather', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (186557, 'Somebody', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (764263, 'Focus', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (610903, 'State', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (426700, 'Open', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (803369, 'Behind', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (542282, 'Decade', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (446805, 'Though', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (148090, 'Young', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (611227, 'Population', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (735527, 'Start', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (711439, 'Court', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (595966, 'Audience', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (176101, 'Agree', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (622820, 'Watch', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (461893, 'Bed', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (328522, 'Subject', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (845978, 'Expect', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (271411, 'Impact', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (894990, 'Return', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (901236, 'Help', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (333224, 'Serious', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (491575, 'Nothing', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (830539, 'Step', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (514008, 'Stay', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (547686, 'Relationship', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (394532, 'Capital', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (590646, 'Experience', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (779871, 'Cover', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (856197, 'Attention', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (115042, 'Hold', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (235390, 'Blue', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (433836, 'Account', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (781134, 'Several', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (402788, 'Seat', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (624381, 'Skill', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (317332, 'Free', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (193855, 'Company', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (222470, 'Tell', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (695560, 'Possible', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (441372, 'However', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (290981, 'Prepare', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (480502, 'Behavior', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (620953, 'Top', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (761769, 'Executive', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (369848, 'Drug', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (282960, 'Between', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (879594, 'Take', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (209519, 'Bit', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (851046, 'Word', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (420618, 'Left', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (742752, 'Fine', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (252817, 'Cup', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (798812, 'Trial', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (155206, 'From', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (282968, 'From', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (244044, 'Natural', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (925527, 'Activity', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (744277, 'Drop', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (238611, 'Add', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (214063, 'Stop', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (671751, 'Value', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (529698, 'Star', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (872201, 'Factor', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (251141, 'Quite', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (602906, 'Skill', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (603703, 'Sort', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (458515, 'Society', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (879484, 'Ahead', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (962028, 'Amount', 8);
commit;
prompt 100 records committed...
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (981996, 'Left', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (863178, 'Seat', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (335687, 'Mouth', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (495614, 'Always', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (651294, 'Religious', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (864515, 'Eight', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (129891, 'Be', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (128932, 'Stop', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (440182, 'Same', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (831696, 'Light', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (560965, 'Home', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (282141, 'Attorney', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (520576, 'Another', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (619075, 'Paper', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (569186, 'All', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (574711, 'May', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (413844, 'Number', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (139630, 'Case', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (557943, 'Marriage', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (984549, 'Movie', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (874080, 'Race', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (153601, 'Check', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (711862, 'Strategy', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (613336, 'Wall', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (240812, 'Follow', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (308127, 'Reality', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (358774, 'Wait', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (825789, 'Others', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (798038, 'Edge', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (583942, 'Mention', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (426274, 'Fall', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (178979, 'Great', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (784403, 'Age', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (425053, 'Themselves', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (384495, 'Over', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (213012, 'Garden', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (601474, 'Detail', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (264191, 'Method', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (423620, 'Business', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (829681, 'Watch', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (380158, 'Difference', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (485692, 'Type', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (769153, 'Take', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (729895, 'Similar', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (362339, 'Reason', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (490769, 'Service', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (781594, 'You', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (375153, 'Eye', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (892769, 'Cell', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (123049, 'Turn', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (452772, 'Fine', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (333462, 'Allow', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (286317, 'Rise', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (401475, 'Upon', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (770516, 'But', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (223728, 'Whole', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (266472, 'Parent', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (818715, 'Notice', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (738977, 'Authority', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (516464, 'Buy', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (335308, 'Out', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (883944, 'Who', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (872090, 'Idea', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (544874, 'Base', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (592906, 'Treat', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (712940, 'Fish', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (870485, 'Of', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (397565, 'Let', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (684681, 'Health', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (186231, 'Must', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (207997, 'Matter', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (774571, 'Brother', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (362510, 'Seat', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (400430, 'Whatever', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (900398, 'Significant', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (764401, 'Executive', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (216430, 'Amount', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (469406, 'Strategy', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (329997, 'Cultural', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (761727, 'Generation', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (528218, 'Such', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (395900, 'Summer', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (294574, 'List', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (282264, 'Inside', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (739410, 'Agreement', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (819890, 'From', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (587496, 'Leave', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (938140, 'Popular', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (407192, 'Method', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (546628, 'Court', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (656798, 'Generation', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (237916, 'Reality', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (524965, 'Expert', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (500714, 'When', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (864712, 'Though', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (441871, 'Society', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (894449, 'Until', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (109717, 'Worker', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (795573, 'Base', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (323878, 'Level', 8);
commit;
prompt 200 records committed...
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (987217, 'Gun', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (236963, 'Food', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (587565, 'Fast', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (774082, 'Scientist', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (723597, 'Understand', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (987399, 'Smile', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (247597, 'Than', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (714723, 'Effect', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (389063, 'Partner', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (359073, 'Risk', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (649421, 'General', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (586571, 'Edge', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (360946, 'Offer', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (264010, 'Red', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (789732, 'Exactly', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (432010, 'Fast', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (733570, 'Staff', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (665376, 'Specific', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (327530, 'Country', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (539535, 'Onto', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (638906, 'Though', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (289205, 'Company', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (668958, 'Must', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (598114, 'Why', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (238360, 'Parent', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (947686, 'Forward', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (846687, 'Include', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (250296, 'Decision', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (987722, 'State', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (932700, 'Series', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (399728, 'Career', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (933415, 'Produce', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (320959, 'Across', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (724060, 'Former', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (748462, 'As', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (106040, 'Money', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (224958, 'Anyone', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (452863, 'Myself', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (711086, 'Former', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (434439, 'Born', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (842005, 'Leader', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (400771, 'Government', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (476606, 'Likely', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (351696, 'His', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (781144, 'Big', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (831420, 'Lawyer', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (122884, 'Everyone', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (504534, 'Article', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (301583, 'Trip', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (438405, 'Too', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (987376, 'Marriage', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (990286, 'Wait', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (552334, 'Finally', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (951604, 'Throw', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (204277, 'Plan', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (194208, 'No', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (183503, 'Foot', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (160916, 'Huge', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (342471, 'Save', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (763124, 'Discuss', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (543206, 'Activity', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (589270, 'Artist', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (100498, 'Beautiful', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (758088, 'Quality', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (828565, 'Attorney', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (836922, 'Its', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (357859, 'Note', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (309756, 'Raise', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (590595, 'Accept', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (451567, 'Later', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (889181, 'Nearly', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (489015, 'Become', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (646890, 'Energy', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (359468, 'Mind', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (705523, 'Situation', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (425391, 'Baby', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (149652, 'Add', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (852526, 'Quickly', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (165373, 'Understand', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (431676, 'Out', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (496697, 'Seven', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (644900, 'Cost', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (501804, 'Ok', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (498245, 'Person', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (986293, 'Recent', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (394672, 'Call', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (396326, 'Not', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (686257, 'Visit', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (177825, 'Popular', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (926103, 'Live', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (622590, 'Song', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (217977, 'Play', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (374153, 'Why', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (245571, 'Take', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (662195, 'So', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (822032, 'Involve', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (387684, 'Class', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (591146, 'Receive', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (995292, 'Rest', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (206610, 'How', 5);
commit;
prompt 300 records committed...
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (627934, 'Must', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (435838, 'Actually', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (552123, 'Political', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (197761, 'Maybe', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (887062, 'Watch', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (835621, 'Natural', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (562832, 'Natural', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (890667, 'Important', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (290157, 'Why', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (292255, 'Us', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (814594, 'Successful', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (239794, 'Significant', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (561554, 'Me', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (725296, 'Drug', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (617840, 'Where', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (474735, 'Real', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (166510, 'Air', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (132643, 'Plant', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (944822, 'Clearly', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (260566, 'If', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (826672, 'Night', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (104725, 'Administration', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (402849, 'Nature', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (949021, 'Leader', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (537460, 'Education', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (681297, 'Thing', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (114061, 'Of', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (883767, 'Short', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (834369, 'Table', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (963438, 'Recognize', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (478664, 'Film', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (901911, 'Everyone', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (428599, 'Cause', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (248759, 'Someone', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (427512, 'Whom', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (820668, 'Glass', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (903897, 'Must', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (319154, 'Material', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (971167, 'Partner', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (691299, 'Worry', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (612303, 'Way', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (693457, 'Exist', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (673816, 'Rise', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (863687, 'Recent', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (485466, 'Ability', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (869925, 'Where', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (231516, 'Generation', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (962023, 'Important', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (118649, 'Explain', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (991357, 'Assume', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (861480, 'Where', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (965392, 'Himself', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (197776, 'Candidate', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (984369, 'Threat', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (678462, 'Bill', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (478236, 'Program', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (341536, 'Actually', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (684621, 'Still', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (610728, 'Pattern', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (243342, 'Exist', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (190786, 'Agent', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (571927, 'Light', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (506166, 'Front', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (820112, 'Available', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (868777, 'Voice', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (120241, 'Rate', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (932764, 'Garden', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (686175, 'Billion', 6);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (986740, 'Yourself', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (702460, 'Nation', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (451477, 'Difficult', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (315491, 'Reflect', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (945269, 'Effect', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (358554, 'Money', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (591680, 'Against', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (259776, 'Skill', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (227270, 'Matter', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (139527, 'Game', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (648423, 'Congress', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (692844, 'Try', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (138987, 'Understand', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (311381, 'Site', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (720522, 'Down', 8);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (318679, 'Nice', 4);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (889860, 'Painting', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (871838, 'Right', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (120324, 'Light', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (737486, 'Time', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (757577, 'Consumer', 5);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (389756, 'One', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (354568, 'Together', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (471508, 'Page', 3);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (357081, 'Town', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (118953, 'Above', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (249393, 'Material', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (129618, 'Within', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (156387, 'Deal', 7);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (374350, 'Site', 9);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (476350, 'Report', 10);
insert into BRIGADE (brigadenumber, brigadename, numberofbattalions)
values (198477, 'House', 8);
commit;
prompt 400 records loaded
prompt Loading BATTALION...
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (411326, 'Drive', 33, 183503);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (152299, 'Then', 31, 863178);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (231231, 'Outside', 49, 335308);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (212818, 'Process', 43, 451567);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (364964, 'Before', 20, 239794);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (804737, 'Important', 18, 129618);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (211802, 'Television', 46, 834369);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (517693, 'Sound', 23, 438405);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (751468, 'Inside', 27, 945269);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (600320, 'Common', 13, 656798);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (232825, 'Knowledge', 5, 769153);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (163577, 'Degree', 15, 774082);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (871808, 'Picture', 19, 330907);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (202844, 'Against', 25, 590646);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (837682, 'Able', 7, 478236);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (302923, 'Page', 12, 863687);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (343959, 'Treatment', 33, 761769);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (779077, 'Race', 14, 423361);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (709648, 'Source', 21, 742752);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (519438, 'Environmental', 13, 446805);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (750465, 'Thus', 50, 863687);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (761692, 'Risk', 10, 711862);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (758815, 'More', 11, 591680);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (144093, 'Safe', 41, 331515);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (478125, 'Movement', 3, 583942);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (197432, 'Your', 49, 757577);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (802164, 'Night', 47, 357859);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (988866, 'Center', 40, 485466);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (181678, 'Cold', 5, 798038);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (182040, 'Cause', 27, 798812);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (409375, 'Girl', 11, 624381);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (849939, 'Decade', 49, 883767);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (385765, 'Phone', 27, 224958);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (188901, 'Method', 30, 789732);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (302267, 'Condition', 19, 817999);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (198017, 'Behavior', 28, 413844);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (429113, 'Identify', 18, 830539);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (151052, 'Discussion', 25, 920127);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (255390, 'Under', 42, 276600);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (258438, 'Amount', 38, 920127);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (736291, 'Risk', 29, 240812);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (865000, 'Team', 23, 294574);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (757051, 'Health', 46, 485466);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (793240, 'Onto', 15, 120324);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (743183, 'Red', 45, 835621);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (331737, 'Concern', 37, 394532);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (793221, 'Man', 19, 216430);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (980100, 'Participant', 10, 901236);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (511037, 'Magazine', 14, 139527);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (193418, 'Enough', 31, 933415);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (577012, 'Likely', 27, 154018);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (120450, 'Movement', 31, 186231);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (803093, 'Task', 16, 245571);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (911121, 'Along', 48, 646890);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (256424, 'Yet', 50, 619075);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (518065, 'Begin', 37, 724060);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (330647, 'Different', 26, 861480);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (916180, 'Page', 27, 926103);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (147931, 'Marriage', 29, 423620);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (214115, 'Challenge', 24, 831696);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (726064, 'Impact', 18, 678462);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (724239, 'Religious', 16, 308127);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (896065, 'Physical', 10, 869925);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (671417, 'Person', 10, 237916);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (587281, 'Happy', 10, 673816);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (529955, 'Skin', 47, 798812);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (757920, 'Know', 40, 451567);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (541375, 'Laugh', 28, 485692);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (447414, 'Office', 15, 222470);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (667357, 'Final', 35, 516464);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (651745, 'Old', 25, 871838);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (482993, 'Career', 17, 595966);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (565498, 'Thought', 38, 619075);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (984105, 'President', 38, 986740);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (491696, 'Left', 35, 431676);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (625743, 'May', 44, 938140);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (220238, 'Beyond', 6, 190786);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (604959, 'Mr', 18, 981996);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (115232, 'My', 15, 845978);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (221127, 'Surface', 38, 491575);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (117857, 'Right', 45, 903897);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (753649, 'Suddenly', 7, 803369);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (186232, 'Maintain', 26, 452863);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (798648, 'Decade', 35, 446805);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (124295, 'Pull', 34, 528218);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (528010, 'Strong', 31, 120324);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (955081, 'Form', 10, 611227);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (447298, 'Certainly', 5, 389063);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (294632, 'Music', 26, 250296);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (934893, 'Your', 28, 552334);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (595157, 'Character', 40, 883025);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (227933, 'Those', 24, 744277);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (878257, 'Form', 12, 571927);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (106683, 'World', 4, 238360);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (644324, 'Religious', 35, 871838);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (176696, 'Tv', 33, 358554);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (686241, 'Debate', 24, 433836);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (779354, 'Difference', 26, 286317);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (800597, 'Third', 5, 264191);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (955550, 'Town', 6, 627934);
commit;
prompt 100 records committed...
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (521200, 'Response', 38, 852526);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (403749, 'Believe', 12, 712940);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (233549, 'Trip', 35, 433836);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (484271, 'Art', 43, 362339);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (731799, 'Huge', 26, 742752);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (367945, 'Quickly', 23, 197761);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (991149, 'Mrs', 30, 656798);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (502529, 'Glass', 6, 984369);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (635704, 'Expect', 7, 864712);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (809496, 'Again', 19, 829681);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (971627, 'Serious', 23, 598114);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (613004, 'Street', 37, 591680);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (424947, 'Strong', 27, 869925);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (553470, 'Upon', 16, 656798);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (547738, 'Film', 14, 236963);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (965959, 'Last', 49, 204277);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (267273, 'Factor', 49, 504534);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (903712, 'Wish', 42, 476350);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (580679, 'Sure', 25, 290157);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (319754, 'Onto', 24, 723597);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (813328, 'Economy', 25, 767332);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (232929, 'Job', 41, 528218);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (537623, 'International', 17, 883025);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (301086, 'Expect', 36, 932700);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (499344, 'Grow', 29, 818715);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (737068, 'Be', 7, 748462);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (205116, 'Tv', 5, 236963);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (484033, 'Character', 38, 260566);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (587747, 'Especially', 6, 440182);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (162372, 'Professor', 9, 820112);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (992221, 'Increase', 19, 852526);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (642293, 'Professor', 29, 612303);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (601573, 'Seem', 31, 552334);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (164230, 'Goal', 50, 232494);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (317075, 'Social', 11, 830539);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (356959, 'Allow', 6, 611227);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (251425, 'Beat', 21, 610903);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (616719, 'Ahead', 50, 358554);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (109937, 'Relate', 12, 389756);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (899442, 'Poor', 47, 932700);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (585839, 'Area', 3, 587496);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (880660, 'Prevent', 46, 197761);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (479169, 'Born', 40, 757577);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (358608, 'Movie', 13, 817999);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (700627, 'Impact', 47, 309756);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (472747, 'Beyond', 21, 610728);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (279260, 'Different', 4, 520576);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (387143, 'Find', 50, 692844);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (220144, 'Section', 48, 798038);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (603168, 'On', 29, 610903);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (371421, 'Yet', 22, 282960);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (447469, 'Thank', 41, 394532);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (896171, 'Bag', 9, 474735);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (677874, 'Major', 46, 870485);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (760708, 'All', 11, 495614);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (803889, 'Industry', 49, 476350);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (618849, 'Let', 37, 469077);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (731945, 'Religious', 27, 648423);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (673778, 'Natural', 25, 542282);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (576082, 'Executive', 9, 360946);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (691634, 'Arrive', 37, 451477);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (426165, 'Sort', 50, 235390);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (812467, 'Best', 26, 695560);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (972398, 'Amount', 20, 781134);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (980491, 'Million', 15, 231516);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (503890, 'Performance', 14, 613336);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (549662, 'Something', 30, 795573);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (725957, 'Set', 31, 986740);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (712760, 'Relate', 5, 831420);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (278953, 'Nature', 20, 938140);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (572778, 'Leader', 49, 432010);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (951056, 'Box', 8, 478236);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (499197, 'Home', 45, 671751);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (996701, 'Spend', 17, 387684);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (997575, 'Dream', 6, 720522);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (345975, 'Appear', 20, 204277);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (578900, 'Fill', 8, 290981);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (433834, 'Great', 44, 425391);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (722343, 'Between', 23, 613336);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (932389, 'Point', 29, 591146);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (407899, 'War', 31, 478664);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (389017, 'Director', 32, 470639);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (905730, 'South', 31, 774571);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (498108, 'Song', 42, 516464);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (731634, 'Everyone', 20, 176101);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (218808, 'Reason', 18, 420618);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (746739, 'Interview', 32, 945269);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (449718, 'Sing', 40, 109717);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (192330, 'Whole', 21, 122884);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (531865, 'Us', 36, 400771);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (508018, 'Where', 38, 286317);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (852048, 'He', 37, 890667);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (133366, 'Position', 10, 129618);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (571198, 'Chance', 41, 668958);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (357556, 'Time', 37, 612303);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (748503, 'Never', 21, 375153);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (847068, 'Tree', 3, 779871);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (160478, 'Husband', 43, 681297);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (347109, 'Type', 23, 889181);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (571824, 'We', 19, 761727);
commit;
prompt 200 records committed...
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (750885, 'Treat', 15, 190786);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (528797, 'Where', 14, 198477);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (129888, 'Fall', 27, 341536);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (983522, 'Edge', 21, 319154);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (892410, 'Produce', 6, 711439);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (853330, 'Send', 37, 375445);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (420935, 'Political', 32, 389063);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (948819, 'Human', 8, 264010);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (558240, 'Look', 36, 224958);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (369715, 'Sport', 3, 724060);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (428022, 'Citizen', 29, 441871);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (309450, 'Stuff', 21, 901236);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (130825, 'Hold', 20, 963438);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (630814, 'Person', 45, 933415);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (435571, 'Reason', 36, 149652);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (247465, 'Everything', 34, 995292);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (297387, 'Result', 9, 387684);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (874366, 'Old', 9, 987722);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (186737, 'Maintain', 41, 552123);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (333369, 'Different', 11, 248759);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (178918, 'City', 8, 100498);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (607810, 'Talk', 24, 469077);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (651489, 'Less', 9, 665376);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (503372, 'Nature', 25, 729895);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (521864, 'Sea', 13, 963438);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (593006, 'Piece', 23, 423361);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (999446, 'Note', 19, 611227);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (656040, 'Best', 26, 431676);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (111163, 'Memory', 5, 231516);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (847758, 'According', 8, 374350);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (893991, 'Body', 18, 154018);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (547149, 'Hotel', 10, 757577);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (768965, 'City', 18, 115042);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (578114, 'Beyond', 35, 651294);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (423411, 'When', 39, 165373);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (419275, 'Trade', 25, 123049);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (104574, 'Find', 6, 489015);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (104060, 'Protect', 50, 224958);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (942761, 'More', 39, 552334);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (563493, 'Television', 43, 139630);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (975511, 'Might', 5, 852526);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (744956, 'Your', 34, 569186);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (646680, 'Leader', 19, 852526);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (295110, 'Century', 11, 384495);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (393914, 'Pick', 6, 115042);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (954319, 'Minute', 41, 581076);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (944405, 'With', 3, 485466);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (422282, 'Scientist', 30, 684621);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (130114, 'Fish', 29, 435838);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (292574, 'Measure', 15, 341536);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (888539, 'Effort', 14, 469077);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (820238, 'Church', 11, 742752);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (806439, 'Statement', 17, 569186);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (147838, 'Purpose', 21, 461893);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (552809, 'Another', 11, 323878);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (380339, 'From', 37, 433836);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (958815, 'Must', 7, 764401);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (296810, 'Different', 17, 648423);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (980815, 'Method', 44, 359073);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (235788, 'Rock', 29, 216430);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (651638, 'Perhaps', 19, 586571);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (421995, 'Generation', 36, 591146);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (588763, 'Firm', 34, 114061);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (890930, 'Federal', 14, 328522);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (881107, 'Religious', 36, 920127);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (254825, 'Direction', 38, 485692);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (764733, 'Article', 38, 327530);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (588009, 'Include', 6, 909998);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (512342, 'Oil', 39, 469077);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (760050, 'Focus', 20, 622820);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (712485, 'Factor', 17, 426274);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (688021, 'His', 30, 851046);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (160539, 'Mean', 3, 214063);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (752332, 'Usually', 25, 711086);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (551528, 'Buy', 24, 737486);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (919543, 'Movie', 23, 120241);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (210921, 'Wide', 18, 826672);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (475575, 'Especially', 29, 547686);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (605029, 'Instead', 24, 333224);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (221237, 'Huge', 17, 601474);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (372152, 'Image', 20, 216430);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (747529, 'Behavior', 39, 659493);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (591508, 'Whole', 19, 289205);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (646870, 'Mrs', 28, 733570);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (828201, 'Old', 48, 317332);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (531026, 'Strategy', 25, 612303);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (747510, 'Begin', 32, 789732);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (930983, 'Word', 31, 528218);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (147179, 'Job', 47, 830539);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (471123, 'Unit', 27, 949021);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (293206, 'Past', 20, 132643);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (141197, 'Fact', 35, 574711);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (730797, 'Collection', 43, 665376);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (134655, 'Most', 29, 122884);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (332860, 'Trouble', 29, 375445);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (367023, 'Democratic', 7, 592906);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (680407, 'Management', 10, 464371);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (506910, 'Have', 11, 524965);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (387714, 'Full', 20, 591146);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (493738, 'Through', 4, 354568);
commit;
prompt 300 records committed...
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (629039, 'Century', 3, 879484);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (528245, 'Away', 9, 138987);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (411374, 'Form', 18, 374350);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (655351, 'Half', 49, 702460);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (750488, 'Investment', 33, 470639);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (350831, 'Data', 42, 451477);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (128466, 'Decide', 39, 569186);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (853920, 'Still', 30, 945269);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (714821, 'Together', 3, 490769);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (620556, 'A', 34, 476350);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (556588, 'Wife', 46, 684621);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (275308, 'Debate', 36, 290157);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (162471, 'Less', 9, 890667);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (613992, 'Either', 19, 362510);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (919647, 'Shake', 29, 123049);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (158752, 'Space', 8, 836922);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (990062, 'West', 4, 155206);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (586121, 'Popular', 39, 331515);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (455174, 'Mr', 34, 276600);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (646541, 'Reason', 17, 892769);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (362537, 'Compare', 40, 984369);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (498465, 'Modern', 48, 434439);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (653326, 'Player', 24, 963438);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (263017, 'Best', 49, 659493);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (537741, 'Stop', 5, 668958);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (970642, 'Thing', 33, 431676);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (609698, 'Force', 37, 686175);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (206156, 'Picture', 35, 423620);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (162598, 'Me', 24, 357859);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (686946, 'Quite', 28, 155206);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (785748, 'Finish', 43, 842005);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (273836, 'Road', 23, 681297);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (662652, 'Each', 43, 282264);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (252747, 'Fast', 50, 561554);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (918335, 'Forward', 19, 702460);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (338552, 'Activity', 20, 757577);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (701903, 'Benefit', 42, 681297);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (105754, 'Join', 28, 490769);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (855826, 'Deep', 35, 402788);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (780709, 'International', 12, 260566);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (392613, 'Difficult', 15, 987217);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (400029, 'Picture', 22, 693457);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (219793, 'Expert', 27, 757577);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (454044, 'According', 20, 458515);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (167503, 'Difference', 15, 245571);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (778661, 'National', 15, 673816);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (206619, 'Training', 36, 846687);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (828656, 'And', 12, 177825);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (510383, 'Manage', 14, 649421);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (609320, 'Want', 38, 879484);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (346630, 'Food', 50, 122884);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (776381, 'Success', 23, 441871);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (469671, 'Radio', 48, 724060);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (576086, 'Million', 21, 981996);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (706879, 'Picture', 7, 932700);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (301945, 'Condition', 24, 863178);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (910378, 'Deep', 40, 266472);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (664946, 'Already', 42, 341536);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (302254, 'Machine', 44, 245571);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (230851, 'Tend', 26, 239794);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (886773, 'Attorney', 18, 504534);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (838091, 'Marriage', 42, 514008);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (977596, 'Great', 31, 123049);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (914573, 'Compare', 32, 574711);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (404390, 'Action', 38, 327530);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (259618, 'Seek', 32, 318679);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (345467, 'Development', 24, 610728);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (459705, 'Left', 23, 446805);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (545385, 'When', 33, 237916);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (212541, 'Woman', 6, 704834);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (524535, 'Small', 12, 176101);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (702544, 'Join', 4, 903897);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (818502, 'Tv', 12, 864515);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (575847, 'Contain', 14, 476606);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (502101, 'Perhaps', 47, 485466);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (895320, 'Person', 50, 836922);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (838318, 'Serve', 7, 962028);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (235494, 'Something', 13, 160916);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (764119, 'Down', 28, 335687);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (204696, 'Gun', 43, 995292);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (732834, 'Others', 46, 587496);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (161932, 'Few', 32, 389756);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (641796, 'Remember', 45, 817999);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (541106, 'When', 35, 863178);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (457798, 'Until', 21, 665376);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (420279, 'Dark', 21, 991357);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (236333, 'Case', 44, 333224);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (997744, 'Difference', 31, 589270);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (668255, 'Effect', 4, 901236);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (933788, 'Behavior', 47, 761769);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (709058, 'Always', 37, 705523);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (829318, 'On', 17, 148090);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (748882, 'Southern', 14, 889181);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (925927, 'Class', 35, 400771);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (901751, 'Republican', 20, 247597);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (689199, 'Number', 21, 764401);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (117478, 'Ability', 28, 691299);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (583041, 'Election', 40, 490769);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (459282, 'Drug', 22, 155206);
insert into BATTALION (battalionnumber, battalionname, numberofcompanies, brigadenumber)
values (812239, 'Participant', 37, 289205);
commit;
prompt 400 records loaded
prompt Loading COMPANY...
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (449379, 'Almost', 57, 531026);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (605766, 'Now', 98, 457798);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (532689, 'These', 94, 294632);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (952361, 'Much', 67, 671417);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (191740, 'Case', 56, 345467);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (405206, 'Want', 22, 642293);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (606673, 'Inside', 94, 837682);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (759223, 'Same', 25, 587747);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (950568, 'Best', 46, 221127);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (575113, 'Wind', 57, 380339);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (152497, 'Question', 18, 447414);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (269442, 'Series', 5, 301945);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (651608, 'Law', 16, 219793);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (972992, 'Mission', 92, 152299);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (816848, 'Whole', 5, 331737);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (205236, 'That', 7, 297387);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (280523, 'Officer', 67, 706879);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (319662, 'Itself', 100, 578900);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (232247, 'Positive', 38, 925927);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (496834, 'Certainly', 36, 618849);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (481512, 'Month', 49, 115232);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (318354, 'Physical', 38, 726064);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (114273, 'Music', 28, 852048);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (998638, 'Peace', 41, 346630);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (283498, 'Visit', 74, 662652);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (205151, 'Significant', 7, 757920);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (104171, 'Senior', 84, 764733);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (487237, 'Black', 51, 111163);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (620915, 'Value', 79, 549662);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (397372, 'Thousand', 91, 275308);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (535634, 'Drop', 81, 847068);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (854765, 'Determine', 85, 111163);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (687068, 'True', 59, 455174);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (882857, 'Against', 11, 591508);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (342632, 'Wrong', 25, 997744);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (201160, 'Evidence', 74, 147179);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (323030, 'Participant', 51, 235494);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (637494, 'Those', 27, 757051);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (262458, 'Another', 76, 980815);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (505162, 'Probably', 86, 387143);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (300366, 'Able', 32, 152299);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (150402, 'Raise', 80, 988866);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (938335, 'Your', 87, 930983);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (477798, 'Lot', 15, 502529);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (569927, 'Beyond', 85, 433834);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (460750, 'Letter', 44, 600320);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (951632, 'Hard', 38, 141197);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (488166, 'Modern', 87, 651638);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (814618, 'Other', 10, 948819);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (910382, 'Spring', 14, 120450);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (320201, 'Something', 34, 803889);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (411563, 'Turn', 17, 571824);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (414578, 'Thus', 9, 925927);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (385317, 'Money', 69, 235494);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (528482, 'Better', 36, 651489);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (807216, 'Unit', 17, 620556);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (280060, 'Finish', 73, 380339);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (983412, 'Treat', 79, 563493);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (781488, 'Important', 9, 829318);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (787438, 'Consider', 78, 971627);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (675140, 'Long', 77, 779354);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (503938, 'Buy', 46, 646541);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (975475, 'Agree', 19, 829318);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (872175, 'This', 59, 587281);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (762082, 'Environment', 65, 709058);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (849926, 'Growth', 75, 232825);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (579920, 'Product', 33, 163577);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (421453, 'Can', 84, 459282);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (561798, 'Site', 27, 233549);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (731146, 'Unit', 82, 387714);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (145656, 'Available', 56, 731799);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (414530, 'Itself', 43, 362537);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (269771, 'Baby', 57, 680407);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (263299, 'Eight', 67, 571198);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (312895, 'Bar', 4, 302923);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (476249, 'Dinner', 34, 330647);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (128038, 'With', 42, 849939);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (405699, 'Fund', 12, 646541);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (437782, 'I', 30, 252747);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (936838, 'Paper', 85, 911121);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (998435, 'Easy', 88, 104060);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (334988, 'Unit', 10, 178918);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (835448, 'Rest', 7, 433834);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (674581, 'Three', 82, 748882);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (485130, 'House', 12, 800597);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (844107, 'Base', 42, 746739);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (686459, 'Ground', 90, 587747);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (215614, 'Prove', 98, 731799);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (171516, 'Add', 65, 293206);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (213761, 'Those', 14, 890930);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (441920, 'Almost', 46, 798648);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (613538, 'Good', 14, 421995);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (413746, 'She', 51, 580679);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (880113, 'Stop', 32, 447469);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (438874, 'Determine', 53, 389017);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (989948, 'Green', 99, 673778);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (866761, 'Level', 61, 970642);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (667806, 'Sit', 69, 991149);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (562404, 'Benefit', 38, 585839);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (272522, 'Serve', 84, 572778);
commit;
prompt 100 records committed...
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (217076, 'Same', 97, 211802);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (703685, 'Party', 33, 855826);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (333993, 'Program', 82, 849939);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (267161, 'Win', 7, 646541);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (317537, 'Mrs', 11, 747529);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (331730, 'Vote', 86, 547149);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (554184, 'Station', 7, 903712);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (456169, 'However', 65, 115232);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (201571, 'Party', 10, 910378);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (107243, 'Here', 33, 105754);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (373567, 'Network', 76, 714821);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (326380, 'Receive', 38, 779354);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (721976, 'National', 82, 531026);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (863569, 'As', 12, 151052);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (981435, 'Fly', 25, 618849);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (888958, 'Range', 92, 484033);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (865635, 'Begin', 65, 667357);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (558704, 'Song', 51, 247465);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (422872, 'Baby', 57, 760708);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (327421, 'Prepare', 18, 793240);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (419700, 'Hold', 90, 498465);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (744848, 'Imagine', 32, 625743);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (133114, 'Bank', 60, 764733);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (913330, 'Six', 91, 528797);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (729240, 'Article', 10, 161932);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (102905, 'Group', 69, 803889);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (979572, 'Surface', 32, 317075);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (311121, 'Still', 51, 722343);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (858747, 'Note', 99, 888539);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (802475, 'Break', 72, 529955);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (115968, 'Physical', 88, 178918);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (716591, 'Practice', 42, 426165);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (533206, 'Trouble', 8, 761692);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (977682, 'Each', 38, 362537);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (357822, 'Green', 49, 812239);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (529405, 'Prevent', 4, 182040);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (954701, 'Growth', 30, 620556);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (402207, 'Whose', 74, 296810);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (880498, 'Father', 10, 330647);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (948051, 'Say', 71, 752332);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (184481, 'Good', 46, 553470);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (131422, 'Article', 84, 212818);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (575043, 'Sure', 58, 182040);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (148269, 'Stage', 39, 970642);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (257287, 'That', 4, 702544);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (659764, 'Somebody', 12, 151052);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (853298, 'Lose', 88, 109937);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (941454, 'Plan', 25, 411374);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (850701, 'True', 94, 357556);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (479374, 'Method', 55, 528245);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (730340, 'Marriage', 86, 760050);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (586298, 'Party', 37, 258438);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (156356, 'Sit', 84, 930983);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (728845, 'Many', 67, 519438);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (458951, 'Ahead', 44, 901751);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (676009, 'Remember', 80, 531026);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (320966, 'Thought', 77, 331737);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (312762, 'Teacher', 45, 214115);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (631999, 'Amount', 57, 618849);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (454115, 'Strategy', 68, 447414);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (164602, 'Want', 6, 512342);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (453896, 'Operation', 5, 499197);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (462086, 'Face', 31, 128466);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (679150, 'Pull', 51, 502529);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (200124, 'Home', 50, 838091);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (715842, 'Husband', 94, 293206);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (251084, 'Whatever', 32, 576086);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (320092, 'Source', 47, 449718);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (796493, 'Three', 26, 455174);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (774109, 'Conference', 61, 503890);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (860820, 'Simple', 80, 424947);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (174489, 'Bring', 9, 558240);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (471553, 'Box', 93, 587281);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (850379, 'Production', 77, 152299);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (746155, 'Official', 77, 400029);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (576555, 'Foot', 90, 371421);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (469885, 'Opportunity', 88, 317075);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (142640, 'Recently', 83, 886773);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (691979, 'Report', 6, 420279);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (511674, 'Remain', 21, 730797);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (893761, 'Certain', 60, 724239);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (210324, 'Air', 14, 709058);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (738286, 'Feeling', 7, 211802);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (472132, 'Deep', 42, 459705);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (728352, 'Crime', 60, 712485);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (691445, 'Skin', 100, 423411);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (973397, 'Claim', 84, 387714);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (914656, 'President', 65, 206156);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (735988, 'May', 63, 294632);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (574436, 'Rise', 57, 411374);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (898027, 'Television', 7, 503890);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (444145, 'Scientist', 35, 210921);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (156619, 'Growth', 75, 691634);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (504664, 'Parent', 13, 746739);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (749943, 'Cover', 32, 186232);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (674101, 'Building', 39, 991149);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (611945, 'Try', 13, 604959);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (428290, 'Car', 28, 251425);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (232352, 'Chair', 56, 600320);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (478587, 'Official', 96, 424947);
commit;
prompt 200 records committed...
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (782094, 'Next', 25, 400029);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (845113, 'Billion', 80, 686946);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (523013, 'Play', 18, 537741);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (339388, 'Focus', 29, 106683);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (110521, 'Often', 54, 204696);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (319228, 'Many', 44, 613992);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (480109, 'Black', 60, 545385);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (888005, 'Before', 62, 748503);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (526552, 'Produce', 90, 677874);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (832691, 'Seek', 7, 680407);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (225886, 'Congress', 56, 984105);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (882107, 'Million', 19, 732834);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (690407, 'Own', 83, 319754);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (687530, 'Manage', 47, 387714);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (814375, 'Fact', 63, 990062);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (732641, 'Born', 55, 181678);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (670492, 'Situation', 71, 503890);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (760024, 'Speak', 4, 768965);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (876259, 'White', 36, 129888);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (312765, 'North', 5, 309450);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (865480, 'Unit', 46, 219793);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (379178, 'Education', 30, 278953);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (451710, 'Feeling', 22, 958815);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (710915, 'Clear', 27, 519438);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (729376, 'Notice', 77, 893991);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (256645, 'Short', 5, 419275);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (407832, 'Which', 93, 371421);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (987642, 'Right', 99, 629039);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (989142, 'Condition', 94, 731799);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (475932, 'Sort', 4, 578114);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (989003, 'Push', 68, 551528);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (927664, 'International', 74, 364964);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (379933, 'Something', 29, 429113);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (392017, 'Improve', 69, 332860);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (219075, 'Opportunity', 58, 714821);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (718718, 'Attorney', 64, 519438);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (289997, 'Look', 9, 750488);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (130280, 'Outside', 20, 758815);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (461003, 'Decade', 87, 933788);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (738738, 'Rate', 28, 459705);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (531797, 'Air', 89, 972398);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (909975, 'Commercial', 52, 428022);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (415849, 'Reach', 83, 212818);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (171456, 'And', 96, 521864);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (950686, 'Field', 94, 498465);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (877177, 'Property', 6, 478125);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (306417, 'Worry', 71, 712485);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (727827, 'Cell', 3, 972398);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (339733, 'Pressure', 31, 521200);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (853201, 'Product', 22, 930983);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (959687, 'Any', 22, 802164);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (579005, 'Information', 94, 855826);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (117733, 'Glass', 18, 688021);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (108802, 'Foreign', 64, 667357);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (777313, 'Style', 69, 553470);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (797420, 'Great', 96, 563493);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (895931, 'Appear', 75, 910378);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (242188, 'Not', 31, 578900);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (589621, 'Hand', 40, 571198);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (671353, 'Room', 53, 503890);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (494286, 'Body', 9, 124295);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (590559, 'Instead', 32, 493738);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (634240, 'Including', 77, 644324);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (685029, 'Many', 7, 297387);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (355865, 'Garden', 13, 479169);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (872116, 'Nature', 16, 333369);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (809335, 'Goal', 64, 656040);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (466087, 'Something', 97, 235788);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (974906, 'Specific', 24, 210921);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (176884, 'Radio', 79, 893991);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (313990, 'Can', 57, 364964);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (545349, 'Social', 60, 528245);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (847743, 'Type', 46, 644324);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (119282, 'Million', 68, 992221);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (321984, 'Gas', 69, 111163);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (806351, 'Million', 64, 134655);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (870095, 'White', 81, 371421);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (315926, 'Letter', 66, 948819);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (767358, 'Cost', 33, 761692);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (914918, 'Growth', 17, 547738);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (947544, 'Anything', 76, 764733);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (665679, 'Season', 29, 278953);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (330995, 'Item', 11, 459282);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (821594, 'Usually', 75, 130825);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (529849, 'During', 86, 252747);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (105797, 'Beyond', 61, 419275);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (283978, 'Military', 71, 779354);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (597140, 'Media', 85, 404390);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (373144, 'Instead', 91, 521864);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (660564, 'Take', 74, 793221);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (608702, 'Out', 64, 129888);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (400441, 'Speech', 20, 595157);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (635092, 'Entire', 80, 820238);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (858065, 'Family', 72, 600320);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (956241, 'Traditional', 3, 409375);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (390357, 'Nature', 23, 202844);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (487189, 'Else', 89, 753649);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (111648, 'Stay', 17, 944405);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (272663, 'Mother', 22, 849939);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (428767, 'Land', 14, 302267);
commit;
prompt 300 records committed...
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (533963, 'Explain', 65, 578900);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (213087, 'Through', 75, 997744);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (538090, 'How', 23, 933788);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (244882, 'Throughout', 26, 996701);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (583190, 'Few', 64, 104060);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (561399, 'Sometimes', 43, 726064);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (718653, 'Everybody', 45, 948819);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (739488, 'Which', 77, 605029);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (766347, 'Full', 29, 600320);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (316056, 'Leg', 83, 147838);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (763452, 'Whether', 83, 725957);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (621144, 'Worry', 69, 714821);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (387342, 'Particular', 48, 517693);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (360176, 'Wrong', 22, 198017);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (268115, 'Debate', 50, 881107);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (762474, 'Tough', 28, 975511);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (719281, 'Analysis', 69, 491696);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (536127, 'Pick', 83, 747510);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (429588, 'Loss', 35, 499344);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (293804, 'Government', 36, 372152);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (969748, 'Or', 56, 421995);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (957800, 'Skill', 47, 104574);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (751989, 'Case', 100, 955550);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (846045, 'Glass', 12, 435571);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (702350, 'Spring', 63, 722343);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (381806, 'Team', 38, 105754);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (338773, 'Sister', 27, 724239);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (265578, 'Beyond', 15, 874366);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (644576, 'Chair', 6, 804737);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (699462, 'Media', 49, 714821);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (472228, 'Home', 29, 160478);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (101304, 'Million', 52, 609320);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (338700, 'Know', 4, 220144);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (351289, 'Outside', 15, 853920);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (521676, 'Nearly', 16, 731945);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (224810, 'Check', 55, 737068);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (619119, 'Happy', 79, 549662);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (735403, 'Especially', 44, 644324);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (224968, 'Develop', 13, 702544);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (897724, 'Those', 61, 725957);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (541647, 'Point', 57, 524535);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (414510, 'Here', 11, 724239);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (957632, 'Nation', 34, 731634);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (863029, 'Country', 86, 231231);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (361512, 'Heavy', 44, 680407);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (687046, 'Challenge', 63, 595157);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (847325, 'Finally', 3, 144093);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (594296, 'Since', 79, 748503);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (668845, 'Tough', 80, 508018);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (739672, 'Compare', 85, 702544);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (786887, 'Available', 85, 984105);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (412318, 'Bit', 19, 722343);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (661617, 'Let', 100, 793221);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (665216, 'Follow', 91, 549662);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (433177, 'Tell', 97, 164230);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (369395, 'Power', 95, 651638);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (972387, 'Need', 73, 689199);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (667507, 'Identify', 58, 965959);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (621153, 'Blood', 65, 760050);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (724548, 'High', 78, 186232);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (356382, 'Discover', 58, 613992);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (265554, 'Century', 34, 951056);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (434436, 'List', 67, 147838);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (332812, 'There', 83, 778661);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (704495, 'Leave', 100, 547738);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (881705, 'Alone', 97, 565498);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (567296, 'Into', 46, 332860);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (374839, 'Partner', 82, 512342);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (497070, 'Behind', 11, 449718);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (971860, 'Style', 88, 347109);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (337802, 'Few', 63, 176696);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (698900, 'Probably', 57, 895320);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (730622, 'Political', 93, 407899);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (678981, 'Nearly', 80, 164230);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (213130, 'Expect', 29, 478125);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (829690, 'Under', 97, 747510);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (218438, 'Not', 66, 421995);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (668782, 'Close', 58, 511037);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (408713, 'Tax', 36, 779077);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (520656, 'Last', 18, 511037);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (466599, 'Rule', 35, 167503);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (796195, 'Art', 31, 130825);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (382847, 'Nothing', 6, 491696);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (496189, 'Price', 55, 613004);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (811917, 'Southern', 38, 422282);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (428839, 'Describe', 49, 162471);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (146278, 'Smile', 96, 258438);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (842233, 'Recently', 98, 972398);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (665920, 'Billion', 37, 914573);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (273317, 'Sense', 50, 267273);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (209304, 'Bring', 49, 233549);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (102994, 'Cultural', 84, 722343);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (904646, 'First', 52, 518065);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (640705, 'Guess', 23, 620556);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (258387, 'Attention', 71, 990062);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (710202, 'First', 23, 367945);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (626995, 'Chair', 18, 910378);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (592457, 'Whom', 98, 911121);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (300710, 'Tax', 61, 761692);
insert into COMPANY (companynumber, companyname, numberofplatoons, battalionnumber)
values (426194, 'Center', 71, 447414);
commit;
prompt 400 records loaded
prompt Loading PLATOON...
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (244939, 'Threat', 115, 481512);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (157238, 'Meet', 130, 456169);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (943412, 'Second', 13, 283498);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (758421, 'Room', 123, 897724);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (690821, 'Lead', 20, 576555);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (924871, 'I', 87, 487237);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (544320, 'Across', 121, 850379);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (482111, 'Them', 78, 605766);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (461079, 'Imagine', 49, 575043);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (604342, 'Civil', 34, 115968);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (573994, 'View', 107, 414510);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (895615, 'Care', 11, 594296);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (399864, 'Break', 49, 387342);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (933679, 'Day', 115, 881705);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (370210, 'Enough', 95, 895931);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (191421, 'Whatever', 149, 561798);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (651785, 'Act', 23, 554184);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (885856, 'Contain', 18, 323030);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (883239, 'When', 142, 687530);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (504443, 'Whatever', 72, 408713);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (600907, 'Role', 106, 888958);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (628102, 'Author', 20, 311121);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (629677, 'Dog', 81, 174489);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (420930, 'Develop', 14, 419700);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (305507, 'Money', 116, 674581);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (571145, 'Century', 25, 119282);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (631461, 'Think', 74, 273317);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (264818, 'Sort', 134, 171456);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (464818, 'Conference', 102, 321984);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (283150, 'Which', 24, 412318);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (769954, 'House', 46, 201160);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (795722, 'Follow', 82, 478587);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (177346, 'Avoid', 58, 853201);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (667753, 'Owner', 103, 863569);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (534147, 'Yourself', 54, 660564);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (327943, 'Adult', 85, 938335);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (239648, 'Line', 126, 283978);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (548811, 'Consumer', 88, 496834);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (511733, 'System', 31, 660564);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (729191, 'Figure', 67, 575043);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (345758, 'Us', 30, 293804);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (817615, 'Among', 145, 728352);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (675828, 'Some', 52, 441920);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (556594, 'Approach', 123, 821594);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (386119, 'Suddenly', 73, 315926);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (442225, 'Pm', 64, 385317);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (678241, 'Threat', 42, 882857);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (497544, 'Maybe', 122, 735988);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (595499, 'Probably', 139, 541647);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (180729, 'Century', 109, 728352);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (892237, 'Garden', 103, 730340);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (873791, 'General', 55, 108802);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (386415, 'Agency', 34, 373567);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (299308, 'Short', 120, 914918);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (587680, 'Run', 46, 110521);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (381365, 'Try', 33, 319662);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (217189, 'Other', 58, 257287);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (368666, 'Over', 94, 847743);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (455828, 'Form', 71, 914918);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (883386, 'Although', 86, 257287);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (454461, 'Best', 30, 369395);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (305573, 'Mr', 72, 496189);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (799396, 'Leg', 87, 478587);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (717073, 'Your', 66, 217076);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (707367, 'Particular', 73, 128038);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (226967, 'Customer', 76, 472132);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (492555, 'Throughout', 9, 201571);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (481235, 'Everybody', 94, 989948);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (203412, 'Treatment', 5, 283978);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (892230, 'Which', 13, 665679);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (250006, 'Start', 26, 797420);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (740887, 'Draw', 24, 487189);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (299397, 'Economy', 11, 667507);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (720783, 'Beat', 108, 811917);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (205747, 'Anything', 103, 339388);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (182842, 'Three', 149, 691445);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (228413, 'Future', 10, 444145);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (750423, 'Far', 26, 373144);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (215193, 'Especially', 141, 870095);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (354951, 'Husband', 148, 766347);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (884786, 'Through', 6, 385317);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (811224, 'Catch', 143, 948051);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (691527, 'Suffer', 116, 327421);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (866267, 'This', 4, 678981);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (520773, 'Money', 12, 847743);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (544747, 'Ball', 38, 460750);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (264485, 'North', 70, 972992);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (248379, 'Fast', 147, 326380);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (782849, 'Read', 15, 619119);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (767286, 'Middle', 86, 665679);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (474047, 'Sing', 106, 762474);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (496644, 'Ready', 61, 811917);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (184185, 'Actually', 116, 191740);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (156569, 'Experience', 125, 575043);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (698066, 'Feel', 118, 300710);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (568655, 'Admit', 46, 360176);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (685745, 'Specific', 19, 466087);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (232114, 'Leader', 31, 337802);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (266481, 'Remember', 21, 511674);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (282031, 'Late', 3, 665216);
commit;
prompt 100 records committed...
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (411493, 'Some', 70, 332812);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (200231, 'Factor', 122, 574436);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (266757, 'Open', 121, 191740);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (613202, 'Subject', 86, 316056);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (678545, 'War', 37, 256645);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (866584, 'Job', 142, 320092);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (719544, 'Finish', 12, 460750);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (850807, 'General', 133, 201160);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (772301, 'Wonder', 44, 405206);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (589236, 'Whose', 141, 488166);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (381976, 'Leave', 59, 471553);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (651580, 'Hear', 9, 729240);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (549566, 'Attorney', 146, 256645);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (975100, 'Hot', 27, 659764);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (313856, 'Feeling', 119, 319228);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (994995, 'Goal', 85, 461003);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (889353, 'Southern', 62, 313990);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (383500, 'Beautiful', 50, 987642);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (467217, 'Strong', 25, 659764);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (844263, 'My', 76, 111648);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (979703, 'Carry', 25, 989948);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (842929, 'Allow', 125, 428767);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (107284, 'Nature', 60, 766347);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (602687, 'Knowledge', 139, 451710);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (771588, 'Heart', 61, 751989);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (596614, 'With', 50, 977682);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (550497, 'Old', 124, 392017);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (523391, 'In', 42, 156356);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (369432, 'Blood', 79, 110521);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (132279, 'Necessary', 57, 703685);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (919852, 'Others', 41, 971860);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (353467, 'Pass', 100, 668782);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (189499, 'Test', 92, 102905);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (362524, 'Church', 108, 405699);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (560207, 'Or', 95, 957632);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (926514, 'Capital', 44, 472228);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (287618, 'Free', 95, 413746);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (929844, 'Miss', 123, 311121);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (986830, 'Pretty', 73, 989948);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (467874, 'Stop', 67, 870095);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (872444, 'Watch', 111, 739672);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (758655, 'Level', 6, 698900);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (454057, 'Thus', 49, 481512);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (278466, 'Government', 25, 687068);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (520643, 'Performance', 32, 130280);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (581703, 'Floor', 25, 957800);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (314295, 'Hour', 67, 729376);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (733791, 'Task', 34, 957632);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (649511, 'Republican', 83, 590559);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (784685, 'Lose', 62, 998638);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (125632, 'However', 20, 300366);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (686444, 'Live', 114, 538090);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (865102, 'Through', 109, 738286);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (294136, 'Want', 10, 105797);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (543288, 'Result', 111, 479374);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (776637, 'Population', 10, 176884);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (151358, 'Per', 66, 685029);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (200573, 'Sister', 7, 762082);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (583247, 'Might', 81, 950686);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (930222, 'So', 95, 738286);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (804567, 'Sign', 77, 744848);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (977312, 'Around', 109, 334988);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (443590, 'How', 95, 702350);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (402945, 'Their', 57, 865480);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (111479, 'Program', 21, 487237);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (472095, 'Happen', 112, 950568);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (655084, 'At', 94, 469885);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (713086, 'Effect', 22, 289997);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (738528, 'Though', 29, 660564);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (620295, 'Herself', 109, 400441);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (676557, 'Central', 65, 533206);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (417840, 'Through', 71, 244882);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (313948, 'Body', 14, 320966);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (917230, 'Picture', 114, 101304);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (587490, 'We', 149, 719281);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (352090, 'Agency', 141, 426194);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (532344, 'Deal', 62, 751989);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (978796, 'Leader', 96, 496834);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (996378, 'Start', 128, 973397);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (138136, 'Treat', 24, 312762);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (978026, 'Level', 40, 668845);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (957356, 'Bar', 20, 738286);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (488588, 'Minute', 106, 451710);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (610145, 'Spring', 7, 200124);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (175168, 'Third', 34, 807216);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (456268, 'Society', 58, 171516);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (260316, 'Still', 145, 956241);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (224205, 'Rich', 5, 718653);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (823283, 'Evening', 38, 597140);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (462793, 'Case', 107, 272522);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (556241, 'Treatment', 71, 877177);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (637920, 'Shake', 109, 263299);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (975057, 'Value', 69, 972992);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (507901, 'Phone', 115, 456169);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (393207, 'Value', 103, 152497);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (467622, 'Color', 74, 224810);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (144993, 'Wife', 148, 265578);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (105817, 'Pattern', 6, 357822);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (612380, 'Through', 19, 256645);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (365993, 'Ask', 108, 576555);
commit;
prompt 200 records committed...
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (842191, 'Few', 102, 102994);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (791942, 'Share', 101, 973397);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (430703, 'Including', 130, 213761);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (662499, 'Clear', 117, 293804);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (808764, 'Soldier', 54, 719281);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (146740, 'Coach', 74, 218438);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (707122, 'Season', 46, 523013);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (767018, 'Fear', 108, 562404);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (398206, 'Million', 102, 730340);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (629954, 'Culture', 107, 729376);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (560363, 'Recognize', 77, 914656);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (843527, 'Air', 13, 586298);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (912234, 'Letter', 84, 379933);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (157921, 'Other', 78, 477798);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (288701, 'Everything', 135, 739488);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (930675, 'General', 51, 466087);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (524761, 'Series', 6, 269771);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (238798, 'Sister', 106, 846045);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (370276, 'Speak', 99, 428290);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (945981, 'Service', 57, 829690);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (298277, 'Sort', 75, 729240);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (743160, 'Near', 38, 405206);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (278631, 'Population', 30, 312762);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (527749, 'Manage', 82, 428290);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (619576, 'Firm', 142, 174489);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (937683, 'Again', 35, 438874);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (831778, 'Floor', 149, 456169);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (371278, 'Yeah', 37, 320966);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (268496, 'Kid', 46, 402207);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (284719, 'Above', 76, 102994);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (491389, 'Race', 61, 975475);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (430764, 'Hand', 35, 488166);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (924403, 'Realize', 44, 811917);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (936701, 'Standard', 93, 496189);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (333992, 'Table', 4, 913330);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (954981, 'Leader', 126, 679150);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (117465, 'Time', 18, 102905);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (390105, 'Politics', 63, 289997);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (384517, 'Cup', 148, 402207);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (551730, 'Lead', 74, 488166);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (317453, 'Yard', 102, 880498);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (258499, 'Item', 120, 244882);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (597232, 'Well', 20, 698900);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (694742, 'Hot', 133, 421453);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (615151, 'Third', 31, 381806);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (262739, 'Most', 64, 315926);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (951576, 'Understand', 83, 665679);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (365791, 'Interesting', 21, 721976);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (881044, 'Your', 109, 814375);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (233320, 'Skin', 144, 242188);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (852985, 'Television', 89, 710202);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (995399, 'Million', 26, 505162);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (239947, 'Receive', 139, 562404);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (611647, 'Before', 114, 405699);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (724049, 'Listen', 12, 759223);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (833549, 'List', 6, 786887);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (926670, 'Nearly', 73, 148269);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (488580, 'Reality', 82, 449379);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (165992, 'Official', 143, 312895);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (183024, 'Game', 106, 914918);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (224309, 'Take', 134, 332812);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (459646, 'Every', 6, 950686);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (147162, 'Way', 52, 312762);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (634953, 'Then', 144, 293804);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (450571, 'Price', 118, 846045);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (228670, 'Term', 129, 858747);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (454463, 'Require', 133, 338773);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (986479, 'Perform', 139, 262458);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (162108, 'Probably', 46, 400441);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (761813, 'Clear', 48, 589621);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (897228, 'Enough', 71, 454115);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (248980, 'Certainly', 84, 244882);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (356663, 'Democrat', 15, 936838);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (164526, 'North', 63, 201160);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (651376, 'Develop', 15, 676009);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (902617, 'Meet', 98, 320092);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (528213, 'Interview', 105, 405206);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (479948, 'Deal', 131, 319228);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (711730, 'Often', 111, 710202);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (211261, 'Bank', 53, 541647);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (972502, 'Out', 19, 437782);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (456077, 'Fund', 82, 280060);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (601805, 'Trip', 32, 461003);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (959561, 'Quality', 99, 419700);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (522373, 'Help', 98, 319228);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (488501, 'Goal', 99, 117733);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (949266, 'Performance', 76, 605766);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (237446, 'I', 77, 956241);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (128627, 'Green', 114, 670492);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (287968, 'Personal', 74, 699462);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (423373, 'Room', 86, 262458);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (987389, 'Laugh', 122, 952361);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (779664, 'Tough', 38, 453896);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (124516, 'Possible', 47, 956241);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (603639, 'Night', 64, 774109);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (597063, 'Fund', 53, 213130);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (166839, 'Foreign', 86, 679150);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (680930, 'Year', 29, 865480);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (608095, 'Adult', 12, 957800);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (479840, 'Something', 105, 729240);
commit;
prompt 300 records committed...
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (649452, 'Cell', 7, 342632);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (198793, 'Ago', 67, 251084);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (713798, 'Just', 70, 438874);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (620975, 'Trial', 123, 441920);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (876438, 'Rule', 53, 576555);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (983337, 'News', 73, 171516);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (863321, 'Son', 51, 488166);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (677625, 'Water', 8, 273317);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (177545, 'Audience', 74, 904646);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (276796, 'Education', 95, 330995);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (745930, 'Usually', 80, 152497);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (266337, 'Make', 70, 872175);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (874299, 'Accept', 128, 251084);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (668735, 'One', 115, 914656);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (145089, 'Go', 36, 232247);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (374470, 'Meeting', 45, 413746);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (871002, 'Level', 130, 454115);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (813855, 'Magazine', 116, 956241);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (406064, 'Southern', 3, 947544);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (371569, 'Someone', 127, 414578);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (115239, 'Throw', 119, 269771);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (784323, 'Speech', 42, 635092);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (553440, 'American', 67, 635092);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (709207, 'Until', 80, 171456);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (127127, 'Than', 110, 863029);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (114175, 'Interest', 85, 273317);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (274588, 'Indicate', 21, 844107);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (326362, 'Less', 44, 979572);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (714987, 'Those', 110, 415849);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (671969, 'Eight', 117, 496189);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (992749, 'Help', 56, 950686);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (794559, 'Beyond', 32, 529849);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (137464, 'Southern', 129, 847743);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (622108, 'System', 100, 475932);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (328342, 'Always', 118, 209304);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (974034, 'Short', 70, 977682);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (792730, 'Wife', 141, 730340);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (382923, 'Our', 83, 567296);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (260689, 'Support', 103, 854765);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (150763, 'Particular', 26, 407832);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (834498, 'Black', 23, 414530);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (417166, 'Suddenly', 59, 796493);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (720625, 'Contain', 104, 333993);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (648805, 'Hit', 44, 660564);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (871470, 'Land', 62, 746155);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (800953, 'Discuss', 83, 156619);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (991217, 'Knowledge', 135, 210324);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (117157, 'Low', 41, 280060);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (973523, 'Image', 86, 419700);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (292338, 'Laugh', 28, 419700);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (100036, 'Point', 102, 456169);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (590158, 'Good', 103, 611945);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (314647, 'Test', 3, 910382);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (307827, 'Poor', 138, 111648);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (651217, 'Board', 46, 331730);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (326149, 'Probably', 113, 379178);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (951590, 'Something', 23, 338773);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (439508, 'Dark', 114, 910382);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (673637, 'Soldier', 67, 357822);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (728886, 'Lay', 43, 356382);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (310735, 'Miss', 143, 521676);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (976377, 'Reduce', 35, 936838);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (130711, 'Everybody', 142, 814618);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (723867, 'Firm', 115, 687046);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (862522, 'Their', 43, 597140);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (236060, 'Watch', 64, 412318);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (465748, 'The', 96, 469885);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (362491, 'Court', 87, 225886);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (223862, 'Boy', 124, 575113);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (704230, 'Person', 35, 339733);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (116331, 'Current', 4, 567296);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (748205, 'Participant', 22, 422872);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (415812, 'High', 65, 466599);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (298200, 'System', 14, 853298);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (388986, 'Tough', 15, 111648);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (831104, 'Glass', 119, 387342);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (214360, 'That', 149, 265554);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (958797, 'Democrat', 130, 898027);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (628980, 'Behavior', 17, 414510);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (859122, 'Pretty', 68, 637494);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (127973, 'Outside', 100, 849926);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (463402, 'Letter', 143, 760024);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (682351, 'Training', 66, 619119);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (294994, 'Relate', 141, 735988);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (778685, 'Attorney', 9, 374839);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (356341, 'Young', 111, 130280);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (994293, 'Interesting', 34, 142640);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (873163, 'Find', 23, 529405);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (804831, 'Property', 54, 390357);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (746277, 'Alone', 33, 698900);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (667307, 'With', 70, 351289);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (971539, 'Whatever', 22, 538090);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (554470, 'Character', 141, 950568);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (326393, 'New', 102, 661617);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (699906, 'Subject', 132, 832691);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (565929, 'Last', 109, 415849);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (732067, 'Age', 133, 477798);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (536818, 'Clearly', 96, 938335);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (197797, 'Herself', 144, 142640);
insert into PLATOON (platoonnumber, platoonname, numberofsquads, companynumber)
values (624017, 'Media', 77, 989142);
commit;
prompt 400 records loaded
prompt Loading SQUAD...
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (790171, 'Card', 156, 637920);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (507025, 'Find', 114, 895615);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (558706, 'Generation', 129, 675828);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (637816, 'Across', 167, 892230);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (166786, 'Food', 134, 699906);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (828903, 'Natural', 131, 865102);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (297087, 'Car', 102, 356341);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (518712, 'Air', 35, 459646);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (635160, 'Everybody', 104, 127127);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (126453, 'View', 176, 971539);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (225753, 'Certainly', 96, 974034);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (923225, 'Decision', 154, 975057);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (452195, 'Not', 196, 411493);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (199998, 'Card', 109, 581703);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (960242, 'Oil', 94, 239947);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (885473, 'Mention', 38, 804567);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (817341, 'Program', 196, 676557);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (518435, 'Body', 78, 411493);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (741740, 'Professional', 186, 949266);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (738482, 'Lose', 110, 769954);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (831566, 'Consider', 47, 711730);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (591531, 'Enter', 73, 507901);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (130527, 'Performance', 161, 124516);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (722965, 'Never', 50, 686444);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (561581, 'Participant', 23, 215193);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (250770, 'Firm', 29, 813855);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (197290, 'Garden', 189, 381365);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (508340, 'Strategy', 107, 223862);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (704546, 'Age', 160, 305507);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (113626, 'Campaign', 56, 748205);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (897879, 'Suggest', 135, 994995);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (327534, 'Necessary', 23, 430764);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (604410, 'Positive', 156, 430703);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (389212, 'Paper', 106, 823283);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (323995, 'Budget', 39, 881044);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (902805, 'Property', 132, 326362);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (841341, 'Throw', 198, 258499);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (981363, 'Camera', 35, 399864);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (132774, 'Establish', 100, 930222);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (217319, 'Officer', 165, 386415);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (442755, 'Door', 65, 130711);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (609602, 'Time', 52, 305507);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (106708, 'By', 154, 612380);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (706583, 'Case', 18, 454463);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (771974, 'Throughout', 190, 354951);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (142546, 'North', 75, 676557);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (322212, 'Suffer', 195, 772301);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (999571, 'Family', 49, 865102);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (178540, 'Vote', 135, 288701);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (733296, 'Night', 89, 892237);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (710896, 'Turn', 86, 278466);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (743359, 'Those', 20, 637920);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (276517, 'Foreign', 41, 651785);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (611451, 'Who', 27, 620975);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (155526, 'Goal', 184, 620295);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (146970, 'Mean', 156, 116331);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (544614, 'Loss', 38, 624017);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (875092, 'Face', 130, 467217);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (498092, 'Public', 75, 165992);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (639437, 'Scientist', 159, 198793);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (175548, 'Project', 127, 611647);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (226977, 'Box', 64, 239648);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (948666, 'Wish', 105, 472095);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (432886, 'Forget', 160, 662499);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (910072, 'Include', 124, 294994);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (747973, 'Take', 112, 310735);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (417557, 'End', 92, 698066);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (364947, 'Draw', 83, 288701);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (648387, 'Idea', 197, 117157);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (400274, 'Bank', 136, 481235);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (612397, 'Onto', 180, 248379);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (237909, 'They', 123, 488580);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (260531, 'Career', 13, 479840);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (984592, 'Series', 99, 673637);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (951993, 'Could', 135, 733791);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (641897, 'Need', 116, 711730);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (136185, 'Pay', 144, 926514);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (754556, 'Increase', 18, 264485);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (175017, 'Team', 26, 675828);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (294135, 'Tough', 47, 671969);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (611564, 'General', 78, 745930);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (800306, 'Form', 63, 976377);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (516132, 'Current', 43, 977312);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (659637, 'Control', 193, 690821);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (968879, 'His', 134, 164526);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (143225, 'Time', 89, 314295);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (127820, 'Far', 132, 326362);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (676381, 'Garden', 89, 673637);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (944561, 'Local', 34, 872444);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (661331, 'Rise', 137, 831104);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (822333, 'Meeting', 74, 620975);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (572532, 'Argue', 71, 590158);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (287419, 'Cultural', 116, 370276);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (810631, 'Adult', 14, 492555);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (216751, 'Certain', 113, 266481);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (748555, 'Address', 36, 587490);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (127068, 'Out', 147, 467217);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (730222, 'Measure', 67, 467874);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (504150, 'Year', 29, 128627);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (368124, 'Happen', 115, 729191);
commit;
prompt 100 records committed...
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (499856, 'Break', 107, 936701);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (588031, 'Public', 142, 784685);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (826337, 'Article', 168, 620975);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (602088, 'Clear', 171, 411493);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (623653, 'Fire', 144, 262739);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (866458, 'Score', 100, 258499);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (806344, 'President', 103, 264818);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (606179, 'Poor', 88, 680930);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (943378, 'Mr', 155, 462793);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (501365, 'Receive', 86, 182842);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (693585, 'Focus', 38, 831778);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (451404, 'Into', 63, 603639);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (611147, 'Bill', 28, 463402);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (506833, 'Agent', 73, 214360);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (403863, 'Size', 177, 356341);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (204608, 'Place', 59, 386415);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (524310, 'Would', 74, 912234);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (291594, 'Care', 75, 686444);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (159357, 'Will', 42, 987389);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (413818, 'Popular', 30, 352090);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (374197, 'Low', 179, 673637);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (421979, 'Particular', 169, 239648);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (739301, 'Standard', 148, 381976);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (478262, 'Year', 123, 724049);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (708525, 'Listen', 67, 943412);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (385177, 'Attack', 39, 571145);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (834714, 'Return', 135, 629954);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (302989, 'Ten', 184, 278631);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (369009, 'Church', 138, 156569);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (237701, 'Blue', 186, 298200);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (825317, 'Evidence', 54, 224309);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (797936, 'Day', 22, 137464);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (350731, 'Local', 195, 859122);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (708510, 'Couple', 121, 794559);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (226697, 'Congress', 149, 356663);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (259767, 'Society', 176, 553440);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (148881, 'Factor', 119, 237446);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (246680, 'Design', 35, 166839);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (381496, 'Environment', 10, 165992);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (103462, 'Would', 83, 117157);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (533343, 'Center', 137, 631461);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (811883, 'Through', 22, 732067);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (246767, 'Water', 197, 771588);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (806596, 'Against', 97, 713086);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (222256, 'Accept', 134, 983337);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (612999, 'Treat', 102, 288701);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (783196, 'Process', 65, 282031);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (175750, 'Try', 100, 226967);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (439346, 'Challenge', 20, 504443);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (632307, 'Young', 91, 600907);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (863116, 'Be', 185, 536818);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (231112, 'Each', 45, 250006);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (132930, 'Particular', 64, 488588);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (788208, 'Forward', 15, 382923);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (442296, 'Down', 69, 157238);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (450541, 'Strategy', 110, 662499);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (632479, 'Top', 66, 784685);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (510678, 'Success', 55, 548811);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (151366, 'Edge', 152, 978026);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (429894, 'Above', 199, 283150);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (582506, 'Share', 72, 307827);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (857798, 'Nearly', 188, 634953);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (454841, 'Itself', 170, 481235);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (104715, 'Herself', 81, 936701);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (542328, 'Month', 64, 386415);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (451076, 'Past', 32, 930222);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (392877, 'Catch', 125, 813855);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (924960, 'Purpose', 190, 758655);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (648304, 'Something', 82, 125632);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (107280, 'American', 151, 551730);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (426686, 'American', 83, 634953);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (458763, 'The', 180, 994293);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (590805, 'Attack', 40, 936701);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (402612, 'Voice', 147, 811224);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (700440, 'Soon', 92, 497544);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (664550, 'Man', 117, 327943);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (124639, 'Dinner', 129, 145089);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (738330, 'Million', 134, 386415);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (511028, 'Left', 183, 278631);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (835724, 'Although', 126, 461079);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (745840, 'Law', 72, 677625);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (459601, 'Animal', 17, 634953);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (269897, 'So', 188, 191421);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (531332, 'Team', 125, 924871);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (287122, 'Mrs', 48, 776637);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (214924, 'Democratic', 12, 951590);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (543050, 'Technology', 128, 992749);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (683335, 'Behavior', 86, 117465);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (492796, 'Body', 97, 536818);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (287530, 'Use', 112, 587680);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (487294, 'Pattern', 60, 313856);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (616883, 'Become', 194, 924403);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (208147, 'Year', 123, 327943);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (940703, 'Single', 167, 488588);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (321332, 'Never', 55, 381976);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (899994, 'Sport', 11, 128627);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (397754, 'Person', 30, 795722);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (192011, 'Between', 118, 889353);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (996311, 'Party', 47, 655084);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (368653, 'Remember', 175, 260689);
commit;
prompt 200 records committed...
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (685246, 'Speech', 154, 294994);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (968984, 'Fast', 117, 717073);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (482567, 'Say', 149, 454461);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (424296, 'Attorney', 68, 769954);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (644878, 'Land', 42, 284719);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (286568, 'Cold', 132, 294994);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (867735, 'Guess', 22, 711730);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (897344, 'Government', 116, 491389);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (492114, 'Support', 120, 430764);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (492891, 'Music', 87, 924871);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (775720, 'Red', 102, 268496);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (494763, 'Small', 16, 386415);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (163239, 'Important', 52, 804831);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (610550, 'Address', 72, 782849);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (845480, 'Event', 151, 278631);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (743191, 'Case', 124, 417840);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (912495, 'Protect', 25, 761813);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (740034, 'Capital', 30, 974034);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (860225, 'Hope', 174, 370276);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (146887, 'Close', 28, 750423);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (560806, 'Page', 13, 244939);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (653312, 'Process', 151, 655084);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (319372, 'Their', 73, 603639);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (224737, 'Create', 192, 224309);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (277857, 'Station', 22, 729191);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (596985, 'Pretty', 39, 881044);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (819239, 'Thank', 29, 239648);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (819509, 'Purpose', 171, 799396);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (741998, 'Young', 177, 895615);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (208112, 'Training', 120, 811224);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (405037, 'Trouble', 36, 671969);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (833528, 'Phone', 52, 951576);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (321678, 'Big', 76, 239947);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (627050, 'Assume', 198, 974034);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (323555, 'Argue', 22, 314295);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (960142, 'Late', 107, 994293);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (358567, 'Meet', 186, 233320);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (772206, 'Stuff', 71, 177545);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (532182, 'Entire', 152, 283150);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (396713, 'Task', 195, 326149);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (992754, 'Everything', 60, 871470);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (682962, 'Alone', 196, 543288);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (737672, 'Do', 16, 260316);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (778590, 'Next', 125, 250006);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (114900, 'Throw', 178, 590158);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (988980, 'Prevent', 88, 784685);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (621802, 'Fall', 20, 455828);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (501425, 'Detail', 149, 467217);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (390048, 'In', 63, 675828);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (812260, 'Service', 158, 116331);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (426547, 'Community', 154, 544747);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (565686, 'Ok', 99, 362524);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (389245, 'Past', 170, 292338);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (571911, 'Sort', 112, 996378);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (757248, 'Game', 64, 601805);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (804891, 'Assume', 108, 228413);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (446266, 'Lawyer', 13, 354951);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (110729, 'While', 174, 972502);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (281703, 'Total', 11, 488588);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (633652, 'Huge', 63, 382923);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (833855, 'Until', 40, 283150);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (739055, 'Just', 118, 264818);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (421020, 'Green', 65, 668735);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (432608, 'Close', 168, 951590);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (616922, 'Long', 42, 709207);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (628439, 'Involve', 186, 667753);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (506757, 'Arrive', 182, 211261);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (587027, 'On', 69, 258499);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (232938, 'Radio', 99, 124516);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (916258, 'Explain', 29, 871470);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (752839, 'Executive', 169, 924871);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (458401, 'Down', 51, 200231);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (213466, 'Than', 109, 128627);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (780452, 'Hard', 105, 479840);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (265462, 'Edge', 181, 629677);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (482210, 'Scene', 67, 328342);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (629903, 'Half', 9, 368666);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (553551, 'Produce', 104, 951590);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (575367, 'Strong', 140, 369432);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (426999, 'Final', 94, 794559);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (877465, 'National', 29, 548811);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (500296, 'Sure', 135, 758655);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (442275, 'None', 166, 491389);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (339122, 'Our', 10, 481235);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (233866, 'Lose', 124, 393207);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (478336, 'Participant', 154, 326149);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (841460, 'Heavy', 57, 465748);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (416174, 'Result', 194, 936701);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (180512, 'Never', 58, 399864);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (945270, 'Development', 61, 637920);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (713484, 'Husband', 169, 902617);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (717025, 'Not', 133, 299397);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (607336, 'Everyone', 73, 926670);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (949559, 'Fish', 114, 560363);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (934760, 'Later', 178, 260316);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (277474, 'Cause', 14, 260689);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (588834, 'Loss', 37, 156569);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (221163, 'Cost', 10, 497544);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (702928, 'Rise', 154, 675828);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (945807, 'Side', 116, 456077);
commit;
prompt 300 records committed...
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (796940, 'Itself', 196, 978026);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (818785, 'Science', 60, 622108);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (784280, 'Year', 112, 936701);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (422116, 'Rule', 25, 784323);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (679289, 'Stock', 188, 991217);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (675422, 'Drive', 95, 411493);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (125583, 'Pm', 84, 685745);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (697359, 'Little', 50, 266757);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (791192, 'Heavy', 90, 619576);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (375592, 'Seem', 73, 977312);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (714200, 'Series', 46, 536818);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (548925, 'Per', 183, 294136);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (914194, 'Point', 105, 554470);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (724798, 'Just', 102, 381365);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (548404, 'Green', 56, 694742);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (399358, 'Stand', 75, 979703);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (864628, 'Degree', 10, 268496);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (204921, 'Table', 179, 560207);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (356605, 'Support', 175, 223862);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (581172, 'Attorney', 27, 732067);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (819616, 'Company', 128, 831104);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (667509, 'Born', 55, 146740);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (940860, 'Money', 10, 411493);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (917442, 'They', 179, 761813);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (644034, 'Structure', 58, 719544);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (987843, 'Customer', 134, 481235);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (946115, 'Rather', 97, 317453);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (887422, 'Save', 26, 619576);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (848300, 'Dark', 124, 843527);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (863458, 'Whole', 123, 929844);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (994272, 'Thought', 129, 454463);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (205166, 'Environment', 80, 183024);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (263267, 'Grow', 193, 994293);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (926558, 'Goal', 44, 386119);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (604999, 'Traditional', 132, 865102);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (553639, 'For', 137, 704230);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (533479, 'Where', 74, 912234);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (341243, 'Democrat', 81, 792730);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (611008, 'Bag', 82, 183024);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (875312, 'Dark', 141, 278631);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (662803, 'End', 97, 876438);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (951524, 'Scene', 130, 292338);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (528212, 'Right', 102, 724049);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (902505, 'Woman', 28, 305573);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (512820, 'Cut', 86, 237446);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (776240, 'Available', 183, 283150);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (814077, 'When', 99, 479948);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (105672, 'Growth', 112, 628980);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (250486, 'Land', 49, 831778);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (937835, 'Them', 171, 398206);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (901751, 'Prove', 56, 156569);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (517969, 'Talk', 22, 924403);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (150575, 'Get', 111, 862522);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (886169, 'Might', 108, 833549);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (528269, 'Guy', 23, 560363);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (785686, 'Lead', 172, 386119);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (352398, 'Clear', 45, 581703);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (958611, 'Model', 8, 326149);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (737978, 'Civil', 94, 791942);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (732368, 'Protect', 116, 374470);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (221222, 'Learn', 139, 649452);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (323027, 'Morning', 124, 456077);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (485690, 'Staff', 191, 191421);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (937978, 'Today', 157, 100036);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (172430, 'Remember', 149, 128627);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (862907, 'Yes', 82, 983337);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (776933, 'Control', 93, 871470);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (790497, 'Front', 126, 381365);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (656386, 'Book', 95, 842929);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (351872, 'Very', 89, 784323);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (984622, 'Direction', 21, 873163);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (861700, 'Protect', 95, 354951);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (560969, 'The', 69, 813855);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (858564, 'Return', 76, 895615);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (544107, 'Political', 22, 326362);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (205485, 'People', 58, 707122);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (367780, 'Report', 90, 305573);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (129452, 'Special', 115, 292338);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (546692, 'Manage', 148, 831778);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (244758, 'Get', 189, 779664);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (104793, 'Nothing', 91, 114175);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (608453, 'Best', 24, 622108);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (825678, 'Among', 41, 817615);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (959418, 'Message', 91, 305507);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (933601, 'Building', 51, 556594);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (286625, 'Perform', 198, 629954);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (401283, 'Fear', 14, 610145);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (821941, 'Wonder', 76, 844263);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (452823, 'Talk', 200, 479840);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (871806, 'Occur', 105, 150763);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (612746, 'Require', 105, 992749);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (430884, 'Have', 46, 628102);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (814983, 'None', 94, 729191);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (244260, 'Kitchen', 177, 746277);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (410317, 'Court', 183, 978026);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (100555, 'Company', 95, 117465);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (225802, 'Win', 53, 772301);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (407094, 'Garden', 69, 191421);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (650883, 'Leader', 177, 748205);
insert into SQUAD (squadnumber, squadname, numberofsoldiers, platoonnumber)
values (114109, 'Campaign', 187, 420930);
commit;
prompt 400 records loaded
prompt Loading SOLDIER...
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (800420, 'Mark Bowman', to_date('01-06-1990', 'dd-mm-yyyy'), 'Captain', to_date('13-10-2019', 'dd-mm-yyyy'), 949559);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (788457, 'Carlos Reese', to_date('23-06-1974', 'dd-mm-yyyy'), 'Private', to_date('23-04-2020', 'dd-mm-yyyy'), 948666);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (896327, 'Miss Amanda Smith', to_date('09-12-1973', 'dd-mm-yyyy'), 'General', to_date('06-11-2021', 'dd-mm-yyyy'), 923225);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (424368, 'Robert King', to_date('22-02-2006', 'dd-mm-yyyy'), 'Sergeant', to_date('24-05-2022', 'dd-mm-yyyy'), 996311);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (171676, 'Amy Miller', to_date('20-08-1981', 'dd-mm-yyyy'), 'Corporal', to_date('24-08-2020', 'dd-mm-yyyy'), 146887);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (744558, 'Danielle Nichols', to_date('15-05-1976', 'dd-mm-yyyy'), 'Sergeant', to_date('08-01-2023', 'dd-mm-yyyy'), 945807);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (389342, 'Dylan Hunt', to_date('23-08-1983', 'dd-mm-yyyy'), 'Sergeant', to_date('04-08-2020', 'dd-mm-yyyy'), 217319);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (803541, 'Kelly Lowery', to_date('02-08-2002', 'dd-mm-yyyy'), 'Sergeant', to_date('28-01-2021', 'dd-mm-yyyy'), 968879);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (268691, 'Carolyn Weiss', to_date('13-08-2003', 'dd-mm-yyyy'), 'Sergeant', to_date('18-08-2023', 'dd-mm-yyyy'), 606179);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (922280, 'Suzanne Ramos', to_date('09-06-1974', 'dd-mm-yyyy'), 'Major', to_date('02-03-2023', 'dd-mm-yyyy'), 323995);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (810564, 'John Hunter', to_date('16-07-2005', 'dd-mm-yyyy'), 'Lieutenant', to_date('30-04-2021', 'dd-mm-yyyy'), 442755);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (238878, 'John Park', to_date('26-01-1976', 'dd-mm-yyyy'), 'Sergeant', to_date('08-12-2020', 'dd-mm-yyyy'), 482567);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (713099, 'Amanda Smith', to_date('10-10-2003', 'dd-mm-yyyy'), 'General', to_date('19-12-2020', 'dd-mm-yyyy'), 110729);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (678472, 'Barbara Richards', to_date('24-03-2006', 'dd-mm-yyyy'), 'Major', to_date('20-12-2023', 'dd-mm-yyyy'), 917442);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (285787, 'Bobby Dixon', to_date('18-03-1978', 'dd-mm-yyyy'), 'Sergeant', to_date('18-10-2021', 'dd-mm-yyyy'), 612999);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (657699, 'Melissa Dalton', to_date('13-09-1987', 'dd-mm-yyyy'), 'Lieutenant', to_date('15-09-2023', 'dd-mm-yyyy'), 208147);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (998627, 'Kristopher Lee', to_date('16-04-1978', 'dd-mm-yyyy'), 'Major', to_date('04-05-2023', 'dd-mm-yyyy'), 848300);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (584660, 'Jonathan Blackwell', to_date('21-03-2004', 'dd-mm-yyyy'), 'Private', to_date('28-11-2019', 'dd-mm-yyyy'), 385177);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (571937, 'Brittany Rodriguez', to_date('23-07-2002', 'dd-mm-yyyy'), 'Captain', to_date('01-06-2021', 'dd-mm-yyyy'), 100555);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (276877, 'Dawn Page', to_date('17-10-2003', 'dd-mm-yyyy'), 'Corporal', to_date('07-03-2023', 'dd-mm-yyyy'), 885473);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (353276, 'Thomas Brady', to_date('18-06-1989', 'dd-mm-yyyy'), 'Captain', to_date('17-11-2019', 'dd-mm-yyyy'), 948666);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (327641, 'Jerry Morales', to_date('13-11-1975', 'dd-mm-yyyy'), 'Lieutenant', to_date('27-04-2020', 'dd-mm-yyyy'), 125583);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (631339, 'Lisa Cook', to_date('23-05-1999', 'dd-mm-yyyy'), 'Major', to_date('26-03-2020', 'dd-mm-yyyy'), 367780);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (149228, 'Rhonda Lewis', to_date('06-02-1994', 'dd-mm-yyyy'), 'Private', to_date('15-07-2021', 'dd-mm-yyyy'), 984622);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (279016, 'Phillip Tyler', to_date('03-08-1989', 'dd-mm-yyyy'), 'Major', to_date('05-03-2024', 'dd-mm-yyyy'), 662803);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (136529, 'Teresa Allen', to_date('19-08-1997', 'dd-mm-yyyy'), 'Lieutenant', to_date('13-07-2022', 'dd-mm-yyyy'), 494763);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (970716, 'Jasmine Smith', to_date('23-06-2006', 'dd-mm-yyyy'), 'General', to_date('01-01-2021', 'dd-mm-yyyy'), 442296);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (342935, 'Shannon Hahn', to_date('22-05-1996', 'dd-mm-yyyy'), 'Lieutenant', to_date('25-10-2019', 'dd-mm-yyyy'), 424296);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (340535, 'Matthew Owen', to_date('31-05-1982', 'dd-mm-yyyy'), 'Corporal', to_date('22-03-2020', 'dd-mm-yyyy'), 796940);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (497214, 'Jill Middleton', to_date('25-04-1975', 'dd-mm-yyyy'), 'Private', to_date('04-01-2021', 'dd-mm-yyyy'), 482210);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (291788, 'Ashley Lee', to_date('30-07-2005', 'dd-mm-yyyy'), 'Captain', to_date('10-10-2022', 'dd-mm-yyyy'), 214924);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (197916, 'Jay Donaldson', to_date('08-04-1991', 'dd-mm-yyyy'), 'Major', to_date('26-08-2020', 'dd-mm-yyyy'), 685246);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (914964, 'Grant Weaver', to_date('15-03-1988', 'dd-mm-yyyy'), 'Private', to_date('06-11-2022', 'dd-mm-yyyy'), 897879);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (648085, 'Jenna Long', to_date('30-03-1977', 'dd-mm-yyyy'), 'Lieutenant', to_date('18-09-2021', 'dd-mm-yyyy'), 385177);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (435007, 'Tracy Larson', to_date('18-12-1997', 'dd-mm-yyyy'), 'Colonel', to_date('05-05-2024', 'dd-mm-yyyy'), 205485);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (454905, 'Eric Terry', to_date('15-04-1998', 'dd-mm-yyyy'), 'Lieutenant', to_date('21-07-2023', 'dd-mm-yyyy'), 506757);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (722455, 'Melanie Mahoney', to_date('20-08-1984', 'dd-mm-yyyy'), 'Colonel', to_date('15-04-2023', 'dd-mm-yyyy'), 875092);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (770525, 'Brittany Melendez', to_date('16-09-1993', 'dd-mm-yyyy'), 'Colonel', to_date('03-03-2024', 'dd-mm-yyyy'), 297087);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (161235, 'Ethan Davis', to_date('19-04-2003', 'dd-mm-yyyy'), 'Corporal', to_date('31-03-2022', 'dd-mm-yyyy'), 697359);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (104777, 'James Cook', to_date('16-02-2000', 'dd-mm-yyyy'), 'Lieutenant', to_date('31-03-2021', 'dd-mm-yyyy'), 834714);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (941094, 'Sherri Green', to_date('21-05-2004', 'dd-mm-yyyy'), 'Lieutenant', to_date('22-10-2021', 'dd-mm-yyyy'), 553639);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (429417, 'Jaime Warner', to_date('24-05-1997', 'dd-mm-yyyy'), 'Major', to_date('29-06-2021', 'dd-mm-yyyy'), 864628);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (752430, 'Tiffany Fry', to_date('14-07-1974', 'dd-mm-yyyy'), 'Private', to_date('19-08-2021', 'dd-mm-yyyy'), 604410);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (642714, 'Heather Kelly', to_date('24-09-1998', 'dd-mm-yyyy'), 'Sergeant', to_date('04-07-2021', 'dd-mm-yyyy'), 934760);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (543674, 'Tina Alvarez', to_date('26-04-1974', 'dd-mm-yyyy'), 'Colonel', to_date('06-12-2023', 'dd-mm-yyyy'), 197290);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (378270, 'Jennifer Mills', to_date('29-10-1994', 'dd-mm-yyyy'), 'Major', to_date('02-11-2019', 'dd-mm-yyyy'), 790497);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (336219, 'Nancy Sherman', to_date('01-08-1984', 'dd-mm-yyyy'), 'Private', to_date('26-11-2020', 'dd-mm-yyyy'), 951993);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (456052, 'Jason Bowman', to_date('07-12-1997', 'dd-mm-yyyy'), 'Captain', to_date('05-12-2021', 'dd-mm-yyyy'), 199998);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (881618, 'Harold Hart', to_date('10-11-1973', 'dd-mm-yyyy'), 'Colonel', to_date('07-04-2024', 'dd-mm-yyyy'), 507025);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (979542, 'Luis Ferguson', to_date('19-07-2000', 'dd-mm-yyyy'), 'Sergeant', to_date('10-02-2020', 'dd-mm-yyyy'), 710896);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (928999, 'Jasmin Cruz', to_date('15-05-2002', 'dd-mm-yyyy'), 'Corporal', to_date('03-08-2021', 'dd-mm-yyyy'), 817341);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (992503, 'Matthew Smith', to_date('27-09-2003', 'dd-mm-yyyy'), 'Corporal', to_date('18-06-2021', 'dd-mm-yyyy'), 260531);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (136534, 'Mr. Russell Mays', to_date('18-11-2004', 'dd-mm-yyyy'), 'Lieutenant', to_date('01-02-2022', 'dd-mm-yyyy'), 708510);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (839336, 'Robert Turner', to_date('09-12-2005', 'dd-mm-yyyy'), 'Major', to_date('23-07-2019', 'dd-mm-yyyy'), 739301);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (308156, 'Andrew Solis', to_date('20-11-1979', 'dd-mm-yyyy'), 'Captain', to_date('16-05-2023', 'dd-mm-yyyy'), 632479);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (923348, 'Mrs. Theresa Grant', to_date('04-04-1986', 'dd-mm-yyyy'), 'Corporal', to_date('09-02-2020', 'dd-mm-yyyy'), 216751);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (207896, 'Amanda Kelley', to_date('10-02-1978', 'dd-mm-yyyy'), 'Major', to_date('17-10-2019', 'dd-mm-yyyy'), 937835);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (220063, 'Douglas Solomon', to_date('15-04-1983', 'dd-mm-yyyy'), 'Corporal', to_date('29-04-2020', 'dd-mm-yyyy'), 291594);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (589851, 'Rhonda Joseph', to_date('06-10-2002', 'dd-mm-yyyy'), 'Sergeant', to_date('10-02-2022', 'dd-mm-yyyy'), 739055);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (886374, 'Jacob Hammond', to_date('22-02-1977', 'dd-mm-yyyy'), 'Colonel', to_date('13-09-2021', 'dd-mm-yyyy'), 833855);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (406296, 'Matthew Hurley', to_date('02-08-1998', 'dd-mm-yyyy'), 'Corporal', to_date('24-10-2019', 'dd-mm-yyyy'), 197290);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (579026, 'Joanna Smith', to_date('09-02-1985', 'dd-mm-yyyy'), 'Major', to_date('06-04-2020', 'dd-mm-yyyy'), 629903);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (718080, 'Jordan Sharp', to_date('02-09-1974', 'dd-mm-yyyy'), 'Corporal', to_date('29-07-2020', 'dd-mm-yyyy'), 752839);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (393297, 'Andrew Mcintosh', to_date('14-09-1997', 'dd-mm-yyyy'), 'Major', to_date('19-01-2024', 'dd-mm-yyyy'), 737672);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (325554, 'Dr. Richard Savage DDS', to_date('25-12-2002', 'dd-mm-yyyy'), 'General', to_date('08-03-2021', 'dd-mm-yyyy'), 175750);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (675827, 'Lori Weaver MD', to_date('27-08-1980', 'dd-mm-yyyy'), 'Colonel', to_date('03-08-2021', 'dd-mm-yyyy'), 616883);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (353581, 'Christopher Howard', to_date('14-10-1985', 'dd-mm-yyyy'), 'Major', to_date('14-09-2023', 'dd-mm-yyyy'), 858564);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (318503, 'Beth Flores', to_date('01-06-1979', 'dd-mm-yyyy'), 'Corporal', to_date('22-10-2020', 'dd-mm-yyyy'), 704546);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (780669, 'Mr. Corey Costa', to_date('06-01-2002', 'dd-mm-yyyy'), 'Sergeant', to_date('22-11-2023', 'dd-mm-yyyy'), 945270);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (787345, 'Ryan Garcia', to_date('15-06-2002', 'dd-mm-yyyy'), 'Major', to_date('16-05-2023', 'dd-mm-yyyy'), 860225);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (396313, 'James Fisher', to_date('28-07-1978', 'dd-mm-yyyy'), 'Private', to_date('09-02-2024', 'dd-mm-yyyy'), 790171);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (999782, 'Carlos Meyer', to_date('19-10-1985', 'dd-mm-yyyy'), 'Colonel', to_date('02-06-2020', 'dd-mm-yyyy'), 560969);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (694103, 'Lucas Smith', to_date('27-07-1977', 'dd-mm-yyyy'), 'General', to_date('23-11-2020', 'dd-mm-yyyy'), 287530);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (482970, 'Kara Gonzalez', to_date('17-09-1997', 'dd-mm-yyyy'), 'General', to_date('20-12-2022', 'dd-mm-yyyy'), 405037);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (615862, 'Todd Jackson', to_date('06-06-1979', 'dd-mm-yyyy'), 'Captain', to_date('02-06-2021', 'dd-mm-yyyy'), 641897);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (708405, 'Valerie Maldonado', to_date('08-10-1987', 'dd-mm-yyyy'), 'General', to_date('12-03-2023', 'dd-mm-yyyy'), 999571);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (616405, 'Michael Harper', to_date('19-05-1980', 'dd-mm-yyyy'), 'Colonel', to_date('26-07-2019', 'dd-mm-yyyy'), 432608);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (536663, 'Justin Fernandez', to_date('16-08-1983', 'dd-mm-yyyy'), 'Captain', to_date('29-09-2019', 'dd-mm-yyyy'), 635160);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (291288, 'Rachel Ferguson', to_date('07-08-1994', 'dd-mm-yyyy'), 'Corporal', to_date('19-01-2024', 'dd-mm-yyyy'), 866458);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (660956, 'Tammie Watson', to_date('24-09-1990', 'dd-mm-yyyy'), 'Major', to_date('16-05-2023', 'dd-mm-yyyy'), 875092);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (842809, 'Ashley Jones', to_date('06-04-1992', 'dd-mm-yyyy'), 'Lieutenant', to_date('22-03-2020', 'dd-mm-yyyy'), 231112);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (945336, 'Nicholas Fischer', to_date('30-04-2000', 'dd-mm-yyyy'), 'Captain', to_date('28-12-2020', 'dd-mm-yyyy'), 553551);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (546180, 'Trevor Brown', to_date('16-02-1984', 'dd-mm-yyyy'), 'Lieutenant', to_date('20-09-2021', 'dd-mm-yyyy'), 611008);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (667946, 'Casey Heath', to_date('20-02-1977', 'dd-mm-yyyy'), 'General', to_date('30-07-2023', 'dd-mm-yyyy'), 933601);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (167544, 'Robert Webster', to_date('10-11-1987', 'dd-mm-yyyy'), 'Captain', to_date('04-01-2023', 'dd-mm-yyyy'), 818785);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (130504, 'Jeremy Lee', to_date('25-10-1980', 'dd-mm-yyyy'), 'Private', to_date('11-02-2021', 'dd-mm-yyyy'), 702928);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (138167, 'Cheryl Valenzuela', to_date('24-09-1994', 'dd-mm-yyyy'), 'Major', to_date('15-06-2024', 'dd-mm-yyyy'), 639437);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (305094, 'Richard Williams', to_date('17-11-1985', 'dd-mm-yyyy'), 'Corporal', to_date('17-05-2020', 'dd-mm-yyyy'), 757248);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (177114, 'Mr. Matthew Myers', to_date('16-09-1991', 'dd-mm-yyyy'), 'Major', to_date('22-01-2023', 'dd-mm-yyyy'), 819239);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (713919, 'Claire Johnson', to_date('19-08-1993', 'dd-mm-yyyy'), 'Lieutenant', to_date('04-03-2020', 'dd-mm-yyyy'), 389212);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (760878, 'Angela Keller', to_date('18-06-1988', 'dd-mm-yyyy'), 'Lieutenant', to_date('20-11-2021', 'dd-mm-yyyy'), 487294);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (494607, 'Lauren Roach', to_date('14-07-2002', 'dd-mm-yyyy'), 'Captain', to_date('19-11-2021', 'dd-mm-yyyy'), 741740);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (621564, 'Mr. Brandon Gillespie', to_date('27-04-1992', 'dd-mm-yyyy'), 'Private', to_date('18-07-2023', 'dd-mm-yyyy'), 544107);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (523362, 'Stephanie Fuller', to_date('15-02-1993', 'dd-mm-yyyy'), 'Colonel', to_date('25-04-2024', 'dd-mm-yyyy'), 875312);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (954208, 'Anita Brown', to_date('08-02-1978', 'dd-mm-yyyy'), 'Corporal', to_date('09-09-2021', 'dd-mm-yyyy'), 107280);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (536659, 'Courtney Harris', to_date('09-11-1977', 'dd-mm-yyyy'), 'Captain', to_date('05-01-2024', 'dd-mm-yyyy'), 841460);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (806120, 'Kevin Oconnell', to_date('13-08-2003', 'dd-mm-yyyy'), 'Colonel', to_date('26-10-2021', 'dd-mm-yyyy'), 217319);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (146673, 'Kimberly Ryan', to_date('08-01-1995', 'dd-mm-yyyy'), 'Captain', to_date('18-12-2021', 'dd-mm-yyyy'), 397754);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (829380, 'Stephanie Gould', to_date('11-03-1988', 'dd-mm-yyyy'), 'Sergeant', to_date('17-11-2023', 'dd-mm-yyyy'), 582506);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (464339, 'Joe Conrad', to_date('25-05-1978', 'dd-mm-yyyy'), 'Colonel', to_date('25-05-2022', 'dd-mm-yyyy'), 553639);
commit;
prompt 100 records committed...
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (765213, 'Chad Ho', to_date('01-11-1996', 'dd-mm-yyyy'), 'Lieutenant', to_date('15-04-2023', 'dd-mm-yyyy'), 951993);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (336514, 'Zachary Brown', to_date('20-02-1980', 'dd-mm-yyyy'), 'Lieutenant', to_date('25-05-2024', 'dd-mm-yyyy'), 451076);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (144025, 'Adam Meza', to_date('28-11-1980', 'dd-mm-yyyy'), 'Private', to_date('10-11-2020', 'dd-mm-yyyy'), 775720);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (600390, 'Daniel Perry', to_date('24-04-1983', 'dd-mm-yyyy'), 'Major', to_date('21-08-2022', 'dd-mm-yyyy'), 500296);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (165844, 'Jonathon Alexander', to_date('08-10-1978', 'dd-mm-yyyy'), 'Lieutenant', to_date('29-11-2020', 'dd-mm-yyyy'), 166786);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (679374, 'Kayla Elliott', to_date('02-01-1983', 'dd-mm-yyyy'), 'Sergeant', to_date('19-05-2024', 'dd-mm-yyyy'), 548925);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (421380, 'Heather Newman', to_date('20-11-2004', 'dd-mm-yyyy'), 'Lieutenant', to_date('03-06-2024', 'dd-mm-yyyy'), 902505);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (474874, 'Kristen Hendrix', to_date('13-05-1986', 'dd-mm-yyyy'), 'Colonel', to_date('18-12-2019', 'dd-mm-yyyy'), 968879);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (472162, 'Peter Parker', to_date('15-12-1984', 'dd-mm-yyyy'), 'Lieutenant', to_date('03-06-2022', 'dd-mm-yyyy'), 459601);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (609510, 'Shawn Martinez', to_date('13-04-1985', 'dd-mm-yyyy'), 'Captain', to_date('25-12-2021', 'dd-mm-yyyy'), 796940);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (303092, 'Ashley Goodwin', to_date('05-02-1994', 'dd-mm-yyyy'), 'Colonel', to_date('10-01-2022', 'dd-mm-yyyy'), 400274);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (148401, 'Paul Brown', to_date('29-11-1986', 'dd-mm-yyyy'), 'Colonel', to_date('07-09-2022', 'dd-mm-yyyy'), 104715);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (464491, 'Ronald Shaw', to_date('04-08-1998', 'dd-mm-yyyy'), 'Private', to_date('30-11-2021', 'dd-mm-yyyy'), 834714);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (450694, 'Melinda Ferguson', to_date('24-06-1987', 'dd-mm-yyyy'), 'General', to_date('18-07-2023', 'dd-mm-yyyy'), 745840);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (447289, 'Jesus Davenport', to_date('09-05-1992', 'dd-mm-yyyy'), 'Captain', to_date('25-04-2020', 'dd-mm-yyyy'), 175548);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (907555, 'Adam Martin', to_date('03-03-1993', 'dd-mm-yyyy'), 'General', to_date('05-10-2022', 'dd-mm-yyyy'), 902505);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (455836, 'Lawrence Mason', to_date('20-11-1998', 'dd-mm-yyyy'), 'Corporal', to_date('31-01-2021', 'dd-mm-yyyy'), 286568);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (294118, 'Gary Carpenter', to_date('08-01-1995', 'dd-mm-yyyy'), 'Lieutenant', to_date('07-05-2020', 'dd-mm-yyyy'), 627050);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (306638, 'Elizabeth Combs', to_date('04-07-1980', 'dd-mm-yyyy'), 'General', to_date('01-09-2020', 'dd-mm-yyyy'), 323027);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (354260, 'Todd Leonard', to_date('04-11-1983', 'dd-mm-yyyy'), 'Colonel', to_date('06-09-2021', 'dd-mm-yyyy'), 785686);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (415645, 'Jason Rollins', to_date('18-06-1997', 'dd-mm-yyyy'), 'Private', to_date('07-12-2023', 'dd-mm-yyyy'), 917442);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (734985, 'Laura Cole', to_date('04-06-1992', 'dd-mm-yyyy'), 'Major', to_date('26-06-2022', 'dd-mm-yyyy'), 602088);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (324831, 'Steven Wilkerson', to_date('01-04-1995', 'dd-mm-yyyy'), 'Colonel', to_date('23-03-2020', 'dd-mm-yyyy'), 747973);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (206611, 'Melissa Moore', to_date('31-07-1973', 'dd-mm-yyyy'), 'Lieutenant', to_date('27-02-2022', 'dd-mm-yyyy'), 277857);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (993851, 'Ronald Rogers', to_date('18-08-1974', 'dd-mm-yyyy'), 'Lieutenant', to_date('02-09-2021', 'dd-mm-yyyy'), 405037);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (496014, 'Fernando Lee', to_date('22-05-1994', 'dd-mm-yyyy'), 'Captain', to_date('18-10-2022', 'dd-mm-yyyy'), 392877);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (247368, 'Jamie Houston', to_date('20-10-1985', 'dd-mm-yyyy'), 'Corporal', to_date('22-04-2023', 'dd-mm-yyyy'), 226977);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (370886, 'Joseph Miller', to_date('11-07-2000', 'dd-mm-yyyy'), 'General', to_date('27-08-2020', 'dd-mm-yyyy'), 943378);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (303095, 'April Myers', to_date('24-10-1980', 'dd-mm-yyyy'), 'General', to_date('22-10-2019', 'dd-mm-yyyy'), 548404);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (568481, 'Michael Ward', to_date('10-03-1999', 'dd-mm-yyyy'), 'Lieutenant', to_date('14-12-2022', 'dd-mm-yyyy'), 738482);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (751900, 'Alan Moore', to_date('28-09-1979', 'dd-mm-yyyy'), 'Private', to_date('12-05-2022', 'dd-mm-yyyy'), 127068);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (463260, 'Kathy Valencia', to_date('14-01-1992', 'dd-mm-yyyy'), 'General', to_date('02-01-2020', 'dd-mm-yyyy'), 790171);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (673180, 'Rebecca George', to_date('12-11-1981', 'dd-mm-yyyy'), 'Sergeant', to_date('04-09-2020', 'dd-mm-yyyy'), 661331);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (834199, 'Kayla Martin', to_date('26-01-1986', 'dd-mm-yyyy'), 'Major', to_date('19-03-2023', 'dd-mm-yyyy'), 237701);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (287951, 'Nancy Terrell', to_date('26-05-1992', 'dd-mm-yyyy'), 'General', to_date('01-10-2020', 'dd-mm-yyyy'), 811883);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (703247, 'Mary Myers', to_date('25-09-1983', 'dd-mm-yyyy'), 'Major', to_date('24-09-2019', 'dd-mm-yyyy'), 797936);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (319924, 'James Hood', to_date('13-03-2002', 'dd-mm-yyyy'), 'Major', to_date('23-04-2024', 'dd-mm-yyyy'), 737672);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (585009, 'Benjamin Dunn', to_date('23-11-2002', 'dd-mm-yyyy'), 'Private', to_date('05-01-2024', 'dd-mm-yyyy'), 810631);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (715340, 'Daniel Chambers', to_date('16-09-2002', 'dd-mm-yyyy'), 'Lieutenant', to_date('17-06-2021', 'dd-mm-yyyy'), 132930);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (722883, 'Robert Fischer', to_date('02-07-1995', 'dd-mm-yyyy'), 'General', to_date('06-01-2024', 'dd-mm-yyyy'), 407094);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (560376, 'Robert Sanchez', to_date('03-07-1992', 'dd-mm-yyyy'), 'Captain', to_date('07-01-2020', 'dd-mm-yyyy'), 650883);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (561076, 'Michael Wood', to_date('25-12-2000', 'dd-mm-yyyy'), 'Corporal', to_date('17-06-2020', 'dd-mm-yyyy'), 504150);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (447585, 'Emma Barnes', to_date('16-06-2006', 'dd-mm-yyyy'), 'Captain', to_date('28-03-2020', 'dd-mm-yyyy'), 819509);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (704700, 'Brian Mack', to_date('13-01-1984', 'dd-mm-yyyy'), 'Captain', to_date('11-01-2020', 'dd-mm-yyyy'), 784280);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (620821, 'Dakota Thomas', to_date('23-02-1991', 'dd-mm-yyyy'), 'Private', to_date('18-06-2022', 'dd-mm-yyyy'), 984622);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (275431, 'Jared Bell', to_date('09-06-1996', 'dd-mm-yyyy'), 'Colonel', to_date('03-01-2022', 'dd-mm-yyyy'), 422116);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (342699, 'Dakota Clarke', to_date('24-09-1981', 'dd-mm-yyyy'), 'Corporal', to_date('29-06-2021', 'dd-mm-yyyy'), 560969);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (280581, 'Caitlyn Morgan', to_date('13-03-2006', 'dd-mm-yyyy'), 'Colonel', to_date('23-06-2021', 'dd-mm-yyyy'), 259767);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (987993, 'Kenneth Ross', to_date('18-11-1993', 'dd-mm-yyyy'), 'Corporal', to_date('14-09-2019', 'dd-mm-yyyy'), 745840);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (942281, 'Donna Farrell', to_date('20-11-1990', 'dd-mm-yyyy'), 'Colonel', to_date('19-06-2024', 'dd-mm-yyyy'), 417557);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (822160, 'Billy Perry', to_date('06-09-1977', 'dd-mm-yyyy'), 'Major', to_date('07-04-2022', 'dd-mm-yyyy'), 604999);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (516569, 'Robert Floyd', to_date('24-10-1976', 'dd-mm-yyyy'), 'Sergeant', to_date('26-07-2021', 'dd-mm-yyyy'), 546692);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (866129, 'Sheila Benjamin', to_date('10-08-1999', 'dd-mm-yyyy'), 'Lieutenant', to_date('03-03-2021', 'dd-mm-yyyy'), 610550);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (461175, 'Jeremy Anderson', to_date('31-08-1986', 'dd-mm-yyyy'), 'General', to_date('31-10-2019', 'dd-mm-yyyy'), 656386);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (623160, 'Anne Goodman', to_date('31-12-1994', 'dd-mm-yyyy'), 'Major', to_date('15-05-2024', 'dd-mm-yyyy'), 204921);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (584401, 'Maria Morgan', to_date('31-03-1992', 'dd-mm-yyyy'), 'Colonel', to_date('07-11-2020', 'dd-mm-yyyy'), 175017);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (293710, 'Eddie Gay', to_date('30-05-1986', 'dd-mm-yyyy'), 'Captain', to_date('10-08-2022', 'dd-mm-yyyy'), 797936);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (729836, 'Susan Thompson', to_date('05-03-1997', 'dd-mm-yyyy'), 'Major', to_date('30-10-2021', 'dd-mm-yyyy'), 369009);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (140854, 'Marc Carney', to_date('22-05-1978', 'dd-mm-yyyy'), 'Major', to_date('07-10-2020', 'dd-mm-yyyy'), 887422);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (368320, 'Stephanie Hall', to_date('08-08-1977', 'dd-mm-yyyy'), 'Corporal', to_date('25-02-2021', 'dd-mm-yyyy'), 302989);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (582563, 'Katherine Martin', to_date('09-02-1975', 'dd-mm-yyyy'), 'Sergeant', to_date('27-12-2019', 'dd-mm-yyyy'), 374197);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (516808, 'Emily Howell', to_date('21-09-1987', 'dd-mm-yyyy'), 'Lieutenant', to_date('01-02-2021', 'dd-mm-yyyy'), 319372);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (401619, 'Kristin Ray', to_date('10-07-1978', 'dd-mm-yyyy'), 'Major', to_date('28-01-2022', 'dd-mm-yyyy'), 451076);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (262498, 'Elizabeth Stevens', to_date('19-04-1977', 'dd-mm-yyyy'), 'Captain', to_date('23-07-2020', 'dd-mm-yyyy'), 225753);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (663257, 'Jacqueline Williams', to_date('25-03-1978', 'dd-mm-yyyy'), 'Major', to_date('29-03-2023', 'dd-mm-yyyy'), 286625);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (877241, 'Kristen Gonzalez', to_date('29-12-1998', 'dd-mm-yyyy'), 'General', to_date('18-12-2019', 'dd-mm-yyyy'), 542328);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (400814, 'Jason Roberts', to_date('15-12-1986', 'dd-mm-yyyy'), 'Lieutenant', to_date('14-06-2021', 'dd-mm-yyyy'), 416174);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (963533, 'Paul Meyer', to_date('09-05-1982', 'dd-mm-yyyy'), 'Lieutenant', to_date('08-08-2021', 'dd-mm-yyyy'), 628439);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (752416, 'Isaac Neal II', to_date('06-06-1998', 'dd-mm-yyyy'), 'Lieutenant', to_date('19-04-2022', 'dd-mm-yyyy'), 745840);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (783558, 'Paige Gibbs', to_date('08-10-1994', 'dd-mm-yyyy'), 'Corporal', to_date('04-07-2024', 'dd-mm-yyyy'), 572532);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (911622, 'Danielle Rivera', to_date('21-06-1998', 'dd-mm-yyyy'), 'General', to_date('26-08-2022', 'dd-mm-yyyy'), 546692);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (434325, 'Nancy Johns', to_date('30-06-1982', 'dd-mm-yyyy'), 'Captain', to_date('17-07-2021', 'dd-mm-yyyy'), 351872);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (635605, 'Randy Chase', to_date('08-04-1980', 'dd-mm-yyyy'), 'General', to_date('06-02-2021', 'dd-mm-yyyy'), 126453);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (972024, 'Matthew Gonzales', to_date('25-12-1976', 'dd-mm-yyyy'), 'Major', to_date('01-08-2023', 'dd-mm-yyyy'), 968879);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (359265, 'Aaron Mitchell', to_date('11-07-1977', 'dd-mm-yyyy'), 'General', to_date('22-05-2023', 'dd-mm-yyyy'), 339122);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (594557, 'Charles Allen', to_date('23-05-1993', 'dd-mm-yyyy'), 'Lieutenant', to_date('05-11-2021', 'dd-mm-yyyy'), 217319);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (644444, 'Jermaine Chavez', to_date('29-07-1989', 'dd-mm-yyyy'), 'General', to_date('18-12-2022', 'dd-mm-yyyy'), 368124);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (694063, 'David Acevedo', to_date('29-12-1978', 'dd-mm-yyyy'), 'Major', to_date('06-07-2022', 'dd-mm-yyyy'), 544614);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (318287, 'Erin West', to_date('03-04-1981', 'dd-mm-yyyy'), 'Sergeant', to_date('20-08-2022', 'dd-mm-yyyy'), 637816);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (132204, 'Dr. William Luna MD', to_date('17-03-1998', 'dd-mm-yyyy'), 'Sergeant', to_date('22-03-2021', 'dd-mm-yyyy'), 323995);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (653244, 'Andrea Waters', to_date('11-05-1978', 'dd-mm-yyyy'), 'Private', to_date('19-07-2020', 'dd-mm-yyyy'), 648387);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (925230, 'Marisa Mcneil', to_date('19-10-1976', 'dd-mm-yyyy'), 'Major', to_date('26-06-2020', 'dd-mm-yyyy'), 199998);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (464897, 'Willie Hall', to_date('14-08-1975', 'dd-mm-yyyy'), 'Major', to_date('15-10-2022', 'dd-mm-yyyy'), 910072);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (935627, 'Amber Myers', to_date('15-10-1991', 'dd-mm-yyyy'), 'Sergeant', to_date('23-01-2023', 'dd-mm-yyyy'), 639437);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (573703, 'Bradley Nguyen', to_date('09-08-1996', 'dd-mm-yyyy'), 'Lieutenant', to_date('08-03-2020', 'dd-mm-yyyy'), 369009);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (389762, 'Ryan Walton', to_date('21-10-1983', 'dd-mm-yyyy'), 'Sergeant', to_date('10-01-2020', 'dd-mm-yyyy'), 933601);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (796934, 'Brian Smith', to_date('12-10-1997', 'dd-mm-yyyy'), 'General', to_date('25-01-2020', 'dd-mm-yyyy'), 506833);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (362410, 'Jennifer Nelson', to_date('08-03-1977', 'dd-mm-yyyy'), 'Colonel', to_date('20-11-2020', 'dd-mm-yyyy'), 806596);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (999760, 'Morgan Flores DDS', to_date('04-08-1990', 'dd-mm-yyyy'), 'Captain', to_date('17-04-2022', 'dd-mm-yyyy'), 775720);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (464792, 'Robert Garza', to_date('29-09-1975', 'dd-mm-yyyy'), 'Lieutenant', to_date('13-03-2021', 'dd-mm-yyyy'), 693585);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (481148, 'Alexander Miller', to_date('21-10-1984', 'dd-mm-yyyy'), 'Colonel', to_date('05-02-2021', 'dd-mm-yyyy'), 192011);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (680215, 'Amanda Klein', to_date('19-08-1977', 'dd-mm-yyyy'), 'Lieutenant', to_date('24-06-2020', 'dd-mm-yyyy'), 175750);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (153950, 'Michael Tyler', to_date('10-04-2003', 'dd-mm-yyyy'), 'Private', to_date('04-10-2022', 'dd-mm-yyyy'), 136185);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (361018, 'Jill Lopez', to_date('26-06-1999', 'dd-mm-yyyy'), 'Sergeant', to_date('16-01-2021', 'dd-mm-yyyy'), 596985);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (805536, 'Michael Alvarez', to_date('17-03-1999', 'dd-mm-yyyy'), 'Corporal', to_date('14-08-2019', 'dd-mm-yyyy'), 222256);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (515927, 'Joshua Kim', to_date('10-03-1998', 'dd-mm-yyyy'), 'Corporal', to_date('08-05-2023', 'dd-mm-yyyy'), 959418);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (266428, 'Amanda Anderson', to_date('22-08-1995', 'dd-mm-yyyy'), 'Captain', to_date('24-09-2022', 'dd-mm-yyyy'), 864628);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (848972, 'Brittany Randolph', to_date('11-08-1977', 'dd-mm-yyyy'), 'Major', to_date('07-03-2021', 'dd-mm-yyyy'), 175750);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (677568, 'Karen Roberts', to_date('21-10-1993', 'dd-mm-yyyy'), 'Corporal', to_date('23-01-2021', 'dd-mm-yyyy'), 819509);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (305533, 'James Yang', to_date('14-04-1995', 'dd-mm-yyyy'), 'Lieutenant', to_date('31-03-2020', 'dd-mm-yyyy'), 208112);
commit;
prompt 200 records committed...
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (238330, 'Luis Fletcher', to_date('17-04-1975', 'dd-mm-yyyy'), 'Major', to_date('04-09-2019', 'dd-mm-yyyy'), 968879);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (943201, 'Jason Villegas', to_date('01-07-1988', 'dd-mm-yyyy'), 'Corporal', to_date('27-03-2022', 'dd-mm-yyyy'), 804891);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (532912, 'Belinda Hill', to_date('21-11-1989', 'dd-mm-yyyy'), 'Sergeant', to_date('06-11-2021', 'dd-mm-yyyy'), 897879);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (169358, 'Shelly Peterson', to_date('03-11-1982', 'dd-mm-yyyy'), 'Sergeant', to_date('11-08-2022', 'dd-mm-yyyy'), 644878);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (818954, 'Justin Martinez', to_date('31-01-1980', 'dd-mm-yyyy'), 'General', to_date('26-01-2024', 'dd-mm-yyyy'), 221163);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (415988, 'Joshua Mcguire', to_date('07-09-2003', 'dd-mm-yyyy'), 'Captain', to_date('28-06-2023', 'dd-mm-yyyy'), 558706);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (754399, 'Sarah Parks', to_date('23-01-1983', 'dd-mm-yyyy'), 'General', to_date('08-05-2023', 'dd-mm-yyyy'), 405037);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (772770, 'Sean Luna', to_date('03-10-1989', 'dd-mm-yyyy'), 'General', to_date('09-01-2024', 'dd-mm-yyyy'), 478336);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (566846, 'Michael Roberts', to_date('03-01-1974', 'dd-mm-yyyy'), 'Lieutenant', to_date('01-04-2020', 'dd-mm-yyyy'), 396713);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (634306, 'Martin Clark', to_date('21-05-1978', 'dd-mm-yyyy'), 'Captain', to_date('18-07-2022', 'dd-mm-yyyy'), 739301);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (431753, 'Lance Wilson', to_date('29-08-1992', 'dd-mm-yyyy'), 'Colonel', to_date('29-12-2019', 'dd-mm-yyyy'), 368653);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (127065, 'Dr. Rhonda Ross', to_date('11-01-2002', 'dd-mm-yyyy'), 'Private', to_date('08-03-2020', 'dd-mm-yyyy'), 951524);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (522997, 'Patricia Wilson', to_date('01-03-2006', 'dd-mm-yyyy'), 'Corporal', to_date('06-01-2024', 'dd-mm-yyyy'), 246680);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (236552, 'James Faulkner', to_date('05-03-1978', 'dd-mm-yyyy'), 'Colonel', to_date('05-11-2022', 'dd-mm-yyyy'), 611451);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (669161, 'Gary Miller', to_date('21-01-1986', 'dd-mm-yyyy'), 'Captain', to_date('31-01-2021', 'dd-mm-yyyy'), 430884);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (104125, 'Miss Kathleen Hammond', to_date('24-06-1998', 'dd-mm-yyyy'), 'Corporal', to_date('22-10-2020', 'dd-mm-yyyy'), 516132);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (490941, 'Jennifer Carlson', to_date('03-08-1988', 'dd-mm-yyyy'), 'Sergeant', to_date('22-01-2021', 'dd-mm-yyyy'), 822333);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (697889, 'Eric Medina', to_date('07-05-1978', 'dd-mm-yyyy'), 'Major', to_date('20-12-2023', 'dd-mm-yyyy'), 675422);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (542476, 'Lisa Lawson', to_date('01-09-1997', 'dd-mm-yyyy'), 'Captain', to_date('21-01-2022', 'dd-mm-yyyy'), 151366);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (353874, 'Abigail Hunter', to_date('30-09-2000', 'dd-mm-yyyy'), 'Private', to_date('05-04-2022', 'dd-mm-yyyy'), 446266);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (118787, 'John Wright', to_date('19-08-1991', 'dd-mm-yyyy'), 'Lieutenant', to_date('21-01-2023', 'dd-mm-yyyy'), 748555);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (766905, 'Jose Burke', to_date('05-02-2004', 'dd-mm-yyyy'), 'Lieutenant', to_date('30-10-2023', 'dd-mm-yyyy'), 368653);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (429217, 'Claudia Banks', to_date('08-09-1975', 'dd-mm-yyyy'), 'Corporal', to_date('25-11-2020', 'dd-mm-yyyy'), 937835);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (632072, 'Denise Holmes', to_date('20-09-1974', 'dd-mm-yyyy'), 'Sergeant', to_date('03-04-2021', 'dd-mm-yyyy'), 407094);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (352348, 'Eric Jackson', to_date('25-06-1990', 'dd-mm-yyyy'), 'Private', to_date('14-01-2020', 'dd-mm-yyyy'), 560969);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (692377, 'Adam Mora', to_date('06-08-1999', 'dd-mm-yyyy'), 'Major', to_date('28-07-2022', 'dd-mm-yyyy'), 910072);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (930802, 'Tracy Wiggins', to_date('15-11-1996', 'dd-mm-yyyy'), 'Corporal', to_date('02-07-2023', 'dd-mm-yyyy'), 841460);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (678606, 'Christopher Watson', to_date('07-08-1997', 'dd-mm-yyyy'), 'Corporal', to_date('16-05-2021', 'dd-mm-yyyy'), 166786);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (460679, 'Joseph Bell', to_date('08-06-2004', 'dd-mm-yyyy'), 'Sergeant', to_date('24-01-2021', 'dd-mm-yyyy'), 861700);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (173662, 'William Dickerson', to_date('04-04-2000', 'dd-mm-yyyy'), 'Private', to_date('06-03-2024', 'dd-mm-yyyy'), 819239);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (108335, 'Melanie Henderson', to_date('04-06-1980', 'dd-mm-yyyy'), 'General', to_date('18-07-2023', 'dd-mm-yyyy'), 899994);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (499204, 'Jillian Moore', to_date('16-05-1978', 'dd-mm-yyyy'), 'Private', to_date('17-01-2022', 'dd-mm-yyyy'), 602088);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (741896, 'Alexandra Bowman', to_date('25-06-1995', 'dd-mm-yyyy'), 'Major', to_date('16-02-2020', 'dd-mm-yyyy'), 604999);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (361068, 'Annette Jimenez', to_date('04-09-1990', 'dd-mm-yyyy'), 'Captain', to_date('21-12-2020', 'dd-mm-yyyy'), 608453);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (270415, 'Andres Webster', to_date('15-09-2003', 'dd-mm-yyyy'), 'Sergeant', to_date('12-08-2020', 'dd-mm-yyyy'), 862907);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (883194, 'Gary Carter', to_date('08-03-1987', 'dd-mm-yyyy'), 'Private', to_date('28-01-2022', 'dd-mm-yyyy'), 987843);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (720392, 'Cynthia Mitchell', to_date('14-10-1976', 'dd-mm-yyyy'), 'Colonel', to_date('12-11-2022', 'dd-mm-yyyy'), 732368);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (386661, 'Matthew Gonzalez', to_date('27-07-2002', 'dd-mm-yyyy'), 'Major', to_date('08-07-2021', 'dd-mm-yyyy'), 901751);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (173718, 'Andrea Torres', to_date('27-03-1987', 'dd-mm-yyyy'), 'Colonel', to_date('31-08-2023', 'dd-mm-yyyy'), 297087);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (496556, 'Tiffany Bonilla', to_date('07-01-1980', 'dd-mm-yyyy'), 'Colonel', to_date('09-03-2024', 'dd-mm-yyyy'), 644878);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (894236, 'Margaret Hernandez', to_date('23-04-1997', 'dd-mm-yyyy'), 'Corporal', to_date('08-12-2019', 'dd-mm-yyyy'), 265462);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (928302, 'Jamie Bell', to_date('21-07-1976', 'dd-mm-yyyy'), 'Major', to_date('06-06-2022', 'dd-mm-yyyy'), 322212);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (787204, 'Victoria Yoder', to_date('07-07-1985', 'dd-mm-yyyy'), 'Colonel', to_date('06-01-2024', 'dd-mm-yyyy'), 914194);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (544327, 'Katie Oliver', to_date('10-04-1991', 'dd-mm-yyyy'), 'Lieutenant', to_date('30-05-2024', 'dd-mm-yyyy'), 553551);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (457184, 'William Clark', to_date('06-03-1988', 'dd-mm-yyyy'), 'General', to_date('10-07-2019', 'dd-mm-yyyy'), 286568);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (745316, 'Alyssa Orr', to_date('30-06-1974', 'dd-mm-yyyy'), 'Private', to_date('12-01-2024', 'dd-mm-yyyy'), 322212);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (550089, 'Amber Sanchez', to_date('29-11-1995', 'dd-mm-yyyy'), 'Major', to_date('01-05-2021', 'dd-mm-yyyy'), 178540);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (326040, 'Kyle Li', to_date('31-01-1978', 'dd-mm-yyyy'), 'Captain', to_date('23-02-2024', 'dd-mm-yyyy'), 887422);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (283019, 'Todd Hunt', to_date('29-04-1985', 'dd-mm-yyyy'), 'Private', to_date('27-08-2022', 'dd-mm-yyyy'), 899994);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (243060, 'Mr. Kyle Mitchell DDS', to_date('05-10-1980', 'dd-mm-yyyy'), 'Lieutenant', to_date('12-04-2020', 'dd-mm-yyyy'), 831566);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (637296, 'Vincent Wright', to_date('02-07-1989', 'dd-mm-yyyy'), 'General', to_date('30-06-2021', 'dd-mm-yyyy'), 984622);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (419296, 'Jeremy Green', to_date('06-04-1988', 'dd-mm-yyyy'), 'Private', to_date('26-03-2024', 'dd-mm-yyyy'), 611147);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (482502, 'James Powell', to_date('21-08-1993', 'dd-mm-yyyy'), 'Private', to_date('26-11-2023', 'dd-mm-yyyy'), 635160);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (119704, 'Johnny Jackson', to_date('24-03-1990', 'dd-mm-yyyy'), 'Lieutenant', to_date('06-09-2019', 'dd-mm-yyyy'), 621802);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (234766, 'Tami Riley', to_date('07-06-1986', 'dd-mm-yyyy'), 'Corporal', to_date('03-03-2021', 'dd-mm-yyyy'), 632479);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (412228, 'Kyle Bowers', to_date('09-08-1979', 'dd-mm-yyyy'), 'Sergeant', to_date('22-09-2022', 'dd-mm-yyyy'), 616922);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (617486, 'Cory Haney', to_date('19-10-1980', 'dd-mm-yyyy'), 'Sergeant', to_date('26-03-2020', 'dd-mm-yyyy'), 653312);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (728479, 'Ana Smith', to_date('04-11-1974', 'dd-mm-yyyy'), 'Major', to_date('09-06-2022', 'dd-mm-yyyy'), 608453);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (290579, 'Donna Howard DDS', to_date('24-02-1977', 'dd-mm-yyyy'), 'Lieutenant', to_date('06-08-2022', 'dd-mm-yyyy'), 724798);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (839899, 'Justin Gonzalez', to_date('24-03-1995', 'dd-mm-yyyy'), 'Captain', to_date('19-10-2023', 'dd-mm-yyyy'), 421979);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (398130, 'Stephanie Willis', to_date('06-09-1981', 'dd-mm-yyyy'), 'General', to_date('27-10-2023', 'dd-mm-yyyy'), 737978);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (396069, 'Erin Robinson', to_date('28-07-1977', 'dd-mm-yyyy'), 'Corporal', to_date('14-04-2024', 'dd-mm-yyyy'), 858564);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (690528, 'Patricia Manning', to_date('03-10-1991', 'dd-mm-yyyy'), 'Lieutenant', to_date('16-12-2020', 'dd-mm-yyyy'), 358567);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (115157, 'Elizabeth Jimenez', to_date('08-05-1985', 'dd-mm-yyyy'), 'Major', to_date('02-01-2020', 'dd-mm-yyyy'), 244758);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (549048, 'Andrew Henry', to_date('29-09-2000', 'dd-mm-yyyy'), 'Colonel', to_date('28-04-2024', 'dd-mm-yyyy'), 339122);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (240269, 'Christopher Matthews', to_date('11-08-1998', 'dd-mm-yyyy'), 'Colonel', to_date('07-12-2022', 'dd-mm-yyyy'), 107280);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (640029, 'Taylor Melton', to_date('08-03-1979', 'dd-mm-yyyy'), 'General', to_date('27-01-2020', 'dd-mm-yyyy'), 143225);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (101906, 'Chad Cowan', to_date('01-02-1983', 'dd-mm-yyyy'), 'General', to_date('12-09-2020', 'dd-mm-yyyy'), 396713);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (979352, 'Kelly Richards', to_date('14-01-1977', 'dd-mm-yyyy'), 'Lieutenant', to_date('27-07-2022', 'dd-mm-yyyy'), 458763);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (351831, 'Mr. Michael Martin DVM', to_date('09-08-1990', 'dd-mm-yyyy'), 'Lieutenant', to_date('07-10-2020', 'dd-mm-yyyy'), 738482);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (222059, 'Ryan Small', to_date('13-04-1979', 'dd-mm-yyyy'), 'Corporal', to_date('12-01-2022', 'dd-mm-yyyy'), 263267);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (308498, 'Gina Ewing', to_date('21-08-1982', 'dd-mm-yyyy'), 'Private', to_date('04-07-2023', 'dd-mm-yyyy'), 402612);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (334785, 'Devin Green', to_date('26-12-1974', 'dd-mm-yyyy'), 'Colonel', to_date('30-01-2023', 'dd-mm-yyyy'), 216751);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (760957, 'Summer Brooks', to_date('20-08-1993', 'dd-mm-yyyy'), 'Sergeant', to_date('21-02-2020', 'dd-mm-yyyy'), 848300);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (162072, 'Mark Johnson', to_date('06-12-1973', 'dd-mm-yyyy'), 'Lieutenant', to_date('15-07-2019', 'dd-mm-yyyy'), 992754);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (893672, 'Shelby Kelley', to_date('24-01-2002', 'dd-mm-yyyy'), 'Sergeant', to_date('15-11-2019', 'dd-mm-yyyy'), 833855);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (241082, 'Mario Aguirre', to_date('09-06-2005', 'dd-mm-yyyy'), 'Lieutenant', to_date('26-09-2023', 'dd-mm-yyyy'), 291594);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (197597, 'Earl Chang', to_date('21-12-1999', 'dd-mm-yyyy'), 'Lieutenant', to_date('25-12-2020', 'dd-mm-yyyy'), 159357);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (722740, 'Lauren Chapman', to_date('16-05-2003', 'dd-mm-yyyy'), 'Corporal', to_date('14-05-2024', 'dd-mm-yyyy'), 232938);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (159232, 'Kristina Lucas', to_date('29-09-2004', 'dd-mm-yyyy'), 'Captain', to_date('02-02-2021', 'dd-mm-yyyy'), 629903);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (299646, 'Amanda Ramos', to_date('09-02-1988', 'dd-mm-yyyy'), 'General', to_date('15-09-2022', 'dd-mm-yyyy'), 776240);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (156706, 'Danielle Holmes', to_date('13-05-2002', 'dd-mm-yyyy'), 'Private', to_date('17-04-2022', 'dd-mm-yyyy'), 776933);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (746391, 'Mrs. Shari Martinez MD', to_date('14-11-1989', 'dd-mm-yyyy'), 'Corporal', to_date('16-10-2022', 'dd-mm-yyyy'), 504150);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (193784, 'Fernando Rivera', to_date('16-05-1998', 'dd-mm-yyyy'), 'Colonel', to_date('02-02-2021', 'dd-mm-yyyy'), 778590);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (580661, 'Jacob Calderon', to_date('05-01-1974', 'dd-mm-yyyy'), 'Sergeant', to_date('13-03-2023', 'dd-mm-yyyy'), 432608);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (894959, 'Christopher Ryan', to_date('24-07-1978', 'dd-mm-yyyy'), 'Sergeant', to_date('29-05-2022', 'dd-mm-yyyy'), 741740);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (498291, 'Jason Pena', to_date('08-05-2006', 'dd-mm-yyyy'), 'Colonel', to_date('22-04-2024', 'dd-mm-yyyy'), 501425);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (261738, 'Christian James', to_date('10-12-1977', 'dd-mm-yyyy'), 'Lieutenant', to_date('01-02-2024', 'dd-mm-yyyy'), 518712);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (906170, 'Barbara Rosario', to_date('13-09-1984', 'dd-mm-yyyy'), 'Corporal', to_date('20-09-2022', 'dd-mm-yyyy'), 244758);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (870314, 'Jeffrey Edwards', to_date('12-03-1986', 'dd-mm-yyyy'), 'Corporal', to_date('14-02-2021', 'dd-mm-yyyy'), 150575);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (464462, 'Brittany Jones', to_date('03-08-1985', 'dd-mm-yyyy'), 'General', to_date('20-11-2020', 'dd-mm-yyyy'), 994272);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (891759, 'Mariah Hoover', to_date('13-06-1983', 'dd-mm-yyyy'), 'Private', to_date('14-07-2022', 'dd-mm-yyyy'), 389245);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (509581, 'Ms. Elizabeth Hopkins', to_date('24-10-1992', 'dd-mm-yyyy'), 'Lieutenant', to_date('11-03-2022', 'dd-mm-yyyy'), 250770);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (990323, 'Jill Tapia', to_date('06-11-2004', 'dd-mm-yyyy'), 'General', to_date('07-09-2023', 'dd-mm-yyyy'), 633652);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (284011, 'Sandra Morgan', to_date('01-06-1997', 'dd-mm-yyyy'), 'Corporal', to_date('14-03-2020', 'dd-mm-yyyy'), 940703);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (364833, 'Lawrence Kennedy', to_date('14-12-2003', 'dd-mm-yyyy'), 'Corporal', to_date('29-09-2020', 'dd-mm-yyyy'), 902505);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (212671, 'Alejandra Grant', to_date('04-11-1982', 'dd-mm-yyyy'), 'Sergeant', to_date('17-06-2022', 'dd-mm-yyyy'), 426999);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (127172, 'Craig Krueger', to_date('24-07-1989', 'dd-mm-yyyy'), 'Lieutenant', to_date('10-12-2021', 'dd-mm-yyyy'), 875092);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (492074, 'David Anderson', to_date('06-02-1993', 'dd-mm-yyyy'), 'Captain', to_date('02-11-2020', 'dd-mm-yyyy'), 864628);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (102485, 'Kelsey Perry', to_date('07-10-1988', 'dd-mm-yyyy'), 'General', to_date('17-03-2024', 'dd-mm-yyyy'), 831566);
commit;
prompt 300 records committed...
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (167419, 'Lisa Thomas', to_date('17-07-1980', 'dd-mm-yyyy'), 'General', to_date('14-04-2023', 'dd-mm-yyyy'), 114900);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (670218, 'Glenn Mills', to_date('17-08-1974', 'dd-mm-yyyy'), 'Captain', to_date('08-11-2021', 'dd-mm-yyyy'), 103462);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (478775, 'Lisa Jenkins', to_date('08-08-1985', 'dd-mm-yyyy'), 'Colonel', to_date('10-06-2024', 'dd-mm-yyyy'), 341243);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (838432, 'Leonard Williams', to_date('13-02-1989', 'dd-mm-yyyy'), 'Major', to_date('21-05-2021', 'dd-mm-yyyy'), 277474);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (435116, 'Joseph Padilla', to_date('17-05-1980', 'dd-mm-yyyy'), 'Private', to_date('05-06-2021', 'dd-mm-yyyy'), 416174);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (576504, 'Kristen Williams', to_date('08-08-1997', 'dd-mm-yyyy'), 'Lieutenant', to_date('11-08-2020', 'dd-mm-yyyy'), 178540);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (680325, 'Michael Diaz', to_date('01-03-2004', 'dd-mm-yyyy'), 'Sergeant', to_date('20-12-2019', 'dd-mm-yyyy'), 321678);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (357745, 'Gregory Clark', to_date('12-05-1984', 'dd-mm-yyyy'), 'Corporal', to_date('12-02-2024', 'dd-mm-yyyy'), 984592);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (351623, 'Daniel Carter', to_date('11-06-2002', 'dd-mm-yyyy'), 'Lieutenant', to_date('28-11-2021', 'dd-mm-yyyy'), 323555);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (119949, 'Sara Wolfe', to_date('07-03-2006', 'dd-mm-yyyy'), 'Private', to_date('09-11-2019', 'dd-mm-yyyy'), 772206);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (148236, 'Laura Lewis', to_date('29-01-1984', 'dd-mm-yyyy'), 'Major', to_date('17-09-2019', 'dd-mm-yyyy'), 544107);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (508079, 'John Sanchez', to_date('13-01-1983', 'dd-mm-yyyy'), 'General', to_date('04-10-2023', 'dd-mm-yyyy'), 667509);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (912634, 'Ashley Finley', to_date('28-09-1973', 'dd-mm-yyyy'), 'Corporal', to_date('30-03-2021', 'dd-mm-yyyy'), 940860);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (712212, 'Alexis Obrien', to_date('27-09-2002', 'dd-mm-yyyy'), 'Captain', to_date('23-11-2020', 'dd-mm-yyyy'), 596985);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (125993, 'James Cain', to_date('16-03-1987', 'dd-mm-yyyy'), 'Corporal', to_date('04-06-2020', 'dd-mm-yyyy'), 225753);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (760950, 'Connie Richards', to_date('22-04-1994', 'dd-mm-yyyy'), 'Major', to_date('21-11-2019', 'dd-mm-yyyy'), 775720);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (779583, 'Adam Gonzales', to_date('28-10-1983', 'dd-mm-yyyy'), 'Lieutenant', to_date('03-03-2023', 'dd-mm-yyyy'), 192011);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (751372, 'George Hodges', to_date('10-03-1989', 'dd-mm-yyyy'), 'Major', to_date('16-07-2021', 'dd-mm-yyyy'), 960142);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (677896, 'John Rosales', to_date('05-11-1993', 'dd-mm-yyyy'), 'Lieutenant', to_date('05-05-2021', 'dd-mm-yyyy'), 250486);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (547816, 'Michael Kelley', to_date('19-09-1987', 'dd-mm-yyyy'), 'Corporal', to_date('21-05-2021', 'dd-mm-yyyy'), 604999);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (140981, 'Samantha Floyd', to_date('22-02-1995', 'dd-mm-yyyy'), 'General', to_date('24-12-2022', 'dd-mm-yyyy'), 553551);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (319585, 'Alison Wright', to_date('27-04-1987', 'dd-mm-yyyy'), 'Sergeant', to_date('24-12-2019', 'dd-mm-yyyy'), 934760);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (366605, 'Hayley Ellison', to_date('26-10-1988', 'dd-mm-yyyy'), 'Lieutenant', to_date('21-01-2024', 'dd-mm-yyyy'), 612397);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (343432, 'Kelly Ryan', to_date('31-03-1976', 'dd-mm-yyyy'), 'General', to_date('18-04-2023', 'dd-mm-yyyy'), 778590);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (809511, 'Rebecca Phillips', to_date('07-12-1997', 'dd-mm-yyyy'), 'Sergeant', to_date('05-03-2021', 'dd-mm-yyyy'), 867735);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (164984, 'Christina Thomas', to_date('11-11-1995', 'dd-mm-yyyy'), 'Colonel', to_date('04-12-2022', 'dd-mm-yyyy'), 244260);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (175584, 'Bradley Nelson', to_date('16-06-2003', 'dd-mm-yyyy'), 'Private', to_date('21-07-2021', 'dd-mm-yyyy'), 512820);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (800813, 'Mitchell Bowen', to_date('08-12-1973', 'dd-mm-yyyy'), 'General', to_date('15-01-2024', 'dd-mm-yyyy'), 818785);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (569943, 'Amy Griffin', to_date('10-04-2005', 'dd-mm-yyyy'), 'Major', to_date('26-09-2019', 'dd-mm-yyyy'), 790171);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (861474, 'Janice Ruiz', to_date('27-11-1985', 'dd-mm-yyyy'), 'Major', to_date('14-09-2021', 'dd-mm-yyyy'), 741740);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (112944, 'Joseph Campos', to_date('20-12-2002', 'dd-mm-yyyy'), 'Sergeant', to_date('03-05-2020', 'dd-mm-yyyy'), 984592);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (882680, 'Donald Turner', to_date('29-10-1983', 'dd-mm-yyyy'), 'Sergeant', to_date('05-06-2024', 'dd-mm-yyyy'), 826337);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (676159, 'Shelly Shea', to_date('17-01-1983', 'dd-mm-yyyy'), 'Lieutenant', to_date('21-12-2023', 'dd-mm-yyyy'), 146887);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (233322, 'Randy Davis', to_date('26-07-1989', 'dd-mm-yyyy'), 'Captain', to_date('31-05-2020', 'dd-mm-yyyy'), 996311);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (402676, 'Lee Torres', to_date('05-02-2005', 'dd-mm-yyyy'), 'Captain', to_date('20-06-2020', 'dd-mm-yyyy'), 494763);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (391683, 'Mark Mitchell', to_date('02-12-2005', 'dd-mm-yyyy'), 'Sergeant', to_date('11-10-2019', 'dd-mm-yyyy'), 375592);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (808732, 'Audrey Sampson', to_date('20-07-1978', 'dd-mm-yyyy'), 'Captain', to_date('04-10-2022', 'dd-mm-yyyy'), 968984);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (778148, 'Tony Stewart', to_date('05-11-1986', 'dd-mm-yyyy'), 'Corporal', to_date('27-11-2021', 'dd-mm-yyyy'), 205485);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (342347, 'Elizabeth Brown', to_date('18-09-1990', 'dd-mm-yyyy'), 'Lieutenant', to_date('06-12-2023', 'dd-mm-yyyy'), 432886);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (608449, 'Joshua Pierce', to_date('14-08-1997', 'dd-mm-yyyy'), 'Colonel', to_date('17-10-2023', 'dd-mm-yyyy'), 214924);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (884208, 'Diane Arellano', to_date('05-02-2004', 'dd-mm-yyyy'), 'General', to_date('12-03-2024', 'dd-mm-yyyy'), 143225);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (154913, 'Lindsey Williams', to_date('04-06-1979', 'dd-mm-yyyy'), 'Private', to_date('11-07-2019', 'dd-mm-yyyy'), 367780);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (425430, 'Joel Johnson', to_date('24-06-1977', 'dd-mm-yyyy'), 'Colonel', to_date('03-09-2021', 'dd-mm-yyyy'), 627050);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (192748, 'Amanda Carlson', to_date('30-11-1983', 'dd-mm-yyyy'), 'Corporal', to_date('06-08-2023', 'dd-mm-yyyy'), 733296);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (677419, 'Nicole Hess', to_date('06-02-1995', 'dd-mm-yyyy'), 'General', to_date('16-06-2020', 'dd-mm-yyyy'), 237909);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (161002, 'Emily Mccarthy', to_date('10-12-2002', 'dd-mm-yyyy'), 'Private', to_date('31-03-2021', 'dd-mm-yyyy'), 572532);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (414272, 'William Franklin', to_date('24-07-1984', 'dd-mm-yyyy'), 'General', to_date('01-07-2024', 'dd-mm-yyyy'), 516132);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (949805, 'Diana Moreno', to_date('24-07-2004', 'dd-mm-yyyy'), 'Sergeant', to_date('09-02-2022', 'dd-mm-yyyy'), 548925);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (441560, 'Benjamin Collins', to_date('09-09-2000', 'dd-mm-yyyy'), 'General', to_date('18-08-2021', 'dd-mm-yyyy'), 946115);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (112669, 'Alexander Johnson', to_date('08-12-2003', 'dd-mm-yyyy'), 'Sergeant', to_date('16-10-2023', 'dd-mm-yyyy'), 608453);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (150171, 'Andrew Hayden', to_date('18-06-1974', 'dd-mm-yyyy'), 'Captain', to_date('13-03-2023', 'dd-mm-yyyy'), 413818);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (848996, 'Leslie Brown', to_date('01-08-2005', 'dd-mm-yyyy'), 'Captain', to_date('21-07-2020', 'dd-mm-yyyy'), 612746);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (266222, 'Kimberly Baxter', to_date('31-10-1980', 'dd-mm-yyyy'), 'Colonel', to_date('25-02-2022', 'dd-mm-yyyy'), 784280);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (391074, 'Jacob Arellano', to_date('08-01-1982', 'dd-mm-yyyy'), 'General', to_date('26-06-2024', 'dd-mm-yyyy'), 401283);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (320474, 'Brian Stark', to_date('10-06-1994', 'dd-mm-yyyy'), 'General', to_date('31-07-2021', 'dd-mm-yyyy'), 426999);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (189007, 'Meagan Cameron', to_date('23-05-2000', 'dd-mm-yyyy'), 'General', to_date('18-08-2021', 'dd-mm-yyyy'), 984622);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (817744, 'Jennifer Wilkerson', to_date('22-10-1994', 'dd-mm-yyyy'), 'Colonel', to_date('11-02-2021', 'dd-mm-yyyy'), 358567);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (229848, 'Theresa Walker', to_date('03-02-1995', 'dd-mm-yyyy'), 'Lieutenant', to_date('26-01-2022', 'dd-mm-yyyy'), 429894);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (471029, 'Patrick Duarte', to_date('01-06-1993', 'dd-mm-yyyy'), 'Captain', to_date('03-09-2023', 'dd-mm-yyyy'), 224737);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (760695, 'Joshua Rubio', to_date('16-03-1977', 'dd-mm-yyyy'), 'Private', to_date('03-09-2019', 'dd-mm-yyyy'), 664550);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (126513, 'Matthew Morrow', to_date('04-11-1994', 'dd-mm-yyyy'), 'Corporal', to_date('22-12-2020', 'dd-mm-yyyy'), 730222);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (227679, 'Gavin Peterson', to_date('05-01-1993', 'dd-mm-yyyy'), 'Sergeant', to_date('21-06-2024', 'dd-mm-yyyy'), 250770);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (759914, 'Julie Moss', to_date('21-01-1979', 'dd-mm-yyyy'), 'Major', to_date('21-02-2020', 'dd-mm-yyyy'), 664550);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (760700, 'Deborah Gray', to_date('31-03-1996', 'dd-mm-yyyy'), 'Lieutenant', to_date('11-04-2024', 'dd-mm-yyyy'), 611451);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (588820, 'Valerie Reed', to_date('23-10-1999', 'dd-mm-yyyy'), 'Major', to_date('02-10-2020', 'dd-mm-yyyy'), 826337);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (945757, 'Adam Baxter', to_date('28-07-1997', 'dd-mm-yyyy'), 'Lieutenant', to_date('05-03-2021', 'dd-mm-yyyy'), 508340);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (915588, 'Meghan Nunez', to_date('24-12-1993', 'dd-mm-yyyy'), 'Private', to_date('25-09-2023', 'dd-mm-yyyy'), 221163);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (160454, 'Sarah Mcdonald', to_date('15-05-1974', 'dd-mm-yyyy'), 'General', to_date('16-02-2023', 'dd-mm-yyyy'), 713484);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (849794, 'John Ford', to_date('23-11-1979', 'dd-mm-yyyy'), 'Private', to_date('09-01-2023', 'dd-mm-yyyy'), 451076);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (695936, 'Michelle Salazar', to_date('18-12-2003', 'dd-mm-yyyy'), 'Major', to_date('27-03-2024', 'dd-mm-yyyy'), 940703);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (731472, 'Teresa Martinez', to_date('19-10-1992', 'dd-mm-yyyy'), 'Colonel', to_date('06-03-2022', 'dd-mm-yyyy'), 945270);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (434384, 'Matthew Murphy', to_date('30-10-1987', 'dd-mm-yyyy'), 'Colonel', to_date('14-12-2023', 'dd-mm-yyyy'), 232938);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (573370, 'Elizabeth Guzman', to_date('28-05-1999', 'dd-mm-yyyy'), 'Major', to_date('02-10-2022', 'dd-mm-yyyy'), 221163);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (209031, 'James Faulkner', to_date('17-08-1979', 'dd-mm-yyyy'), 'Private', to_date('21-03-2023', 'dd-mm-yyyy'), 244260);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (594850, 'Denise Clayton', to_date('02-01-1988', 'dd-mm-yyyy'), 'Colonel', to_date('05-03-2021', 'dd-mm-yyyy'), 775720);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (133365, 'Brian Martinez', to_date('17-11-1974', 'dd-mm-yyyy'), 'Corporal', to_date('14-04-2020', 'dd-mm-yyyy'), 632307);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (876163, 'Christopher Hopkins', to_date('10-01-2001', 'dd-mm-yyyy'), 'Corporal', to_date('08-05-2021', 'dd-mm-yyyy'), 250770);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (156876, 'Janet Fisher', to_date('09-04-1996', 'dd-mm-yyyy'), 'Colonel', to_date('02-08-2021', 'dd-mm-yyyy'), 533479);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (300708, 'Reginald Dyer', to_date('07-06-1996', 'dd-mm-yyyy'), 'Corporal', to_date('11-05-2021', 'dd-mm-yyyy'), 951524);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (440461, 'Kaylee Bray', to_date('18-04-2004', 'dd-mm-yyyy'), 'Corporal', to_date('15-11-2023', 'dd-mm-yyyy'), 861700);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (765039, 'Andrew Watts', to_date('10-01-1989', 'dd-mm-yyyy'), 'Captain', to_date('11-11-2019', 'dd-mm-yyyy'), 897344);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (832291, 'Jim Burgess', to_date('04-02-2002', 'dd-mm-yyyy'), 'Captain', to_date('08-12-2020', 'dd-mm-yyyy'), 544107);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (724432, 'Eric Petersen', to_date('26-08-1997', 'dd-mm-yyyy'), 'General', to_date('24-09-2022', 'dd-mm-yyyy'), 775720);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (142021, 'Kim Guerra DDS', to_date('17-07-1990', 'dd-mm-yyyy'), 'Private', to_date('24-12-2022', 'dd-mm-yyyy'), 641897);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (660264, 'Lee Ortiz', to_date('18-07-2005', 'dd-mm-yyyy'), 'Private', to_date('07-03-2023', 'dd-mm-yyyy'), 561581);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (688025, 'Vernon Tran', to_date('27-09-1980', 'dd-mm-yyyy'), 'Sergeant', to_date('25-11-2023', 'dd-mm-yyyy'), 984592);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (459211, 'Stacy Brewer', to_date('15-04-1980', 'dd-mm-yyyy'), 'Sergeant', to_date('20-02-2023', 'dd-mm-yyyy'), 439346);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (508018, 'Tommy Padilla', to_date('09-08-1977', 'dd-mm-yyyy'), 'Private', to_date('17-06-2020', 'dd-mm-yyyy'), 544614);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (580622, 'Heather Allen', to_date('04-07-1981', 'dd-mm-yyyy'), 'Private', to_date('23-09-2022', 'dd-mm-yyyy'), 103462);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (808113, 'Nathaniel Richardson', to_date('26-09-1992', 'dd-mm-yyyy'), 'Private', to_date('14-09-2022', 'dd-mm-yyyy'), 825317);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (878735, 'Melinda Lopez', to_date('30-03-1988', 'dd-mm-yyyy'), 'Captain', to_date('14-01-2023', 'dd-mm-yyyy'), 368653);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (668640, 'Sarah Miller DDS', to_date('12-10-2003', 'dd-mm-yyyy'), 'General', to_date('02-03-2022', 'dd-mm-yyyy'), 821941);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (326825, 'Sarah Scott', to_date('13-11-1999', 'dd-mm-yyyy'), 'Sergeant', to_date('31-07-2020', 'dd-mm-yyyy'), 926558);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (292501, 'Clinton Lawrence', to_date('02-03-1992', 'dd-mm-yyyy'), 'Private', to_date('11-05-2020', 'dd-mm-yyyy'), 178540);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (862987, 'James Velazquez', to_date('01-06-1999', 'dd-mm-yyyy'), 'Captain', to_date('25-07-2023', 'dd-mm-yyyy'), 356605);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (546051, 'Elizabeth Park', to_date('05-04-1997', 'dd-mm-yyyy'), 'General', to_date('09-09-2023', 'dd-mm-yyyy'), 945270);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (423978, 'Kenneth Hill', to_date('03-04-1975', 'dd-mm-yyyy'), 'Private', to_date('31-08-2020', 'dd-mm-yyyy'), 403863);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (217566, 'Alexander Sandoval', to_date('21-01-1989', 'dd-mm-yyyy'), 'Major', to_date('28-08-2022', 'dd-mm-yyyy'), 492796);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (766958, 'Dr. Christopher Serrano', to_date('16-07-1992', 'dd-mm-yyyy'), 'Sergeant', to_date('23-02-2023', 'dd-mm-yyyy'), 861700);
insert into SOLDIER (personalnumber, sname, birthdate, srank, deploymentdate, squadnumber)
values (880146, 'Brady Alvarez', to_date('06-12-1999', 'dd-mm-yyyy'), 'Lieutenant', to_date('03-11-2023', 'dd-mm-yyyy'), 675422);
commit;
prompt 400 records loaded

set feedback on
set define on
prompt Done

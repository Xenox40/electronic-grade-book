INSERT INTO Users
VALUES ('03907369681', 'JwLwrT', 'uxFMKb', 'F', '535671406'),
 ('77975781701', 'ojZmvf', 'LiClBe', 'F', '119857232'),
 ('46518315772', 'soVzxT', 'zSeJkO', 'F', '458973053'),
 ('33869279387', 'AbODSZ', 'llJqsJ', 'M', '242060328'),
 ('98428677242', 'ixBKbx', 'orLUVp', 'F', '547814681'),
 ('16482308512', 'TSstrU', 'koIjwB', 'M', '553472236')


DECLARE @tID int;
EXEC dbo.createTeacherAccount
	@PESEL = '71814028199', 
	@Name = 'yHHajY',
	@Surname = 'LfnTpC', 
	@Sex = 'F', 
	@Phone = '755125456',
	@PostalCode = '30-200',
	@City = 'Abecadlo',
	@Street = 'Mickiewicza',
	@BuildingNumber = 15,
	@FlatNumber = NULL,
	@teacherID = @tID

INSERT INTO Subjects
VALUES ('Informatyka'), ('Matematyka')

 INSERT INTO [Subject groups]
 VALUES (1, 7, 0), (2, 7, 0)

 INSERT INTO [User permissions] VALUES (1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1)

 INSERT INTO [Student groups]
 VALUES (1, 2), (1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1)

 INSERT INTO Exams
 VALUES (1, 1, 'K')

 INSERT INTO Exams
 VALUES (1, 2, 'S')

 INSERT INTO Grades
 VALUES (1, 1, 5.0, GETDATE()),
 (1, 2, 2.0, GETDATE()),
 (1, 3, 3.5, GETDATE()),
 (1, 4, 5.0, GETDATE()),
 (1, 5, 1.0, GETDATE()),
 (1, 6, 1.0, GETDATE())

INSERT INTO Grades
VALUES (2, 1, 3, GETDATE()),
(2, 2, 3, GETDATE()),
(2, 3, 3, GETDATE()),
(2, 4, 3, GETDATE()),
(2, 5, 3, GETDATE()),
(2, 6, 3, GETDATE())

INSERT INTO [Semester grades]
VALUES (1, 2, 5), (1, 1, 4)

DECLARE @g float
EXEC studentAvgGrade @studentID = 6, @subjectID = 1, @Semester = 1, @avg = @g OUTPUT;
SELECT @g AS 'Avg';

DECLARE @g float
EXEC groupAvgGrade @groupID = 1, @semester = 1, @avg = @g OUTPUT;
SELECT @g AS 'Avg';

DECLARE @g float
EXEC avgExam @examID = 2, @avg = @g OUTPUT;
SELECT @g AS 'Avg';

DECLARE @g float
EXEC studentSemesterAvg @studentID = 1,	 @semester = 1, @avg = @g OUTPUT;
SELECT @g AS 'Avg';

DECLARE @g float
EXEC studentPressencePercent @studentID = 1, @subjectID = 1, @semester = 1, @percent = @g OUTPUT;
SELECT @g AS 'Avg';

INSERT INTO Timetable
VALUES (1, '7:00', '7:45'),
(2, '7:55', '8:40'),
(3, '8:50', '9:35'),
(4, '9:45', '10:30'),
(5, '10:40', '11:25'),
(6, '11:45', '12:30'),
(7, '12:45', '13:30'),
(8, '13:45', '14:30')

INSERT INTO Rooms
VALUES (103, 1, 20),
(205, 2, 20)

INSERT INTO Schedule
VALUES (2, 'Mon', 7, 103),
(2, 'Tue', 8, 103),
(2, 'Wen', 2, 205),
(2, 'Wen', 3, 205),
(2, 'Fri', 5, 103),
(2, 'Fri', 6, 103)

INSERT INTO Presences
VALUES (1, 1, '2022-02-01', 'O', 7),
(1, 2, '2022-02-02', 'O', 7),
(1, 3, '2022-02-03', 'O', 7),
(1, 4, '2022-02-03', 'O', 7),
(1, 5, '2022-02-05', 'O', 7),
(1, 6, '2022-02-05', 'O', 7),
(1, 1, '2022-02-08', 'O', 7),
(1, 2, '2022-02-09', 'O', 7),
(1, 3, '2022-02-10', 'N', 7),
(1, 4, '2022-02-10', 'N', 7),
(1, 5, '2022-02-12', 'N', 7),
(1, 6, '2022-02-12', 'N', 7)

DECLARE @g float
EXEC studentPressencePercent @studentID = 1, @subjectID = 2, @Semester = 1, @percent = @g OUTPUT;
SELECT @g AS 'Avg';
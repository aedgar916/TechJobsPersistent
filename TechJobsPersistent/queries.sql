--Part 1
Jobs table columns:
Id INT PRIMARY KEY AUTO_INCREMENT,
Name VARCHAR(255),
EmployerId INT,
FOREIGN KEY (EmployerId) REFERENCES Employers(Id)


--Part 2
SELECT Name FROM Employers
WHERE Location = "St. Louis City";

--Part 3
SELECT * FROM Skills
LEFT JOIN JobSkills ON Skills.Id = JobSkills.SkillId
WHERE JobSkills.JobId IS NOT NULL
ORDER BY Name ASC;
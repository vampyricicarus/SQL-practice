CREATE TABLE Members (
	id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (id, name, age)
VALUES (1, "John Smith", 21), (2, "Claire Redfield", 22), (3, "Leon Kennedy", 25);

INSERT INTO WorkoutSessions (session_id, member_id, session_time, activity)
VALUES (1, 1, "10:31", "Weights"), (2, 2, "2:45", "Running"), (3, 3, "11:00", "Swimming");

DELETE FROM WorkoutSessions 
WHERE member_id = 1;

DELETE FROM Members
WHERE id = 1;
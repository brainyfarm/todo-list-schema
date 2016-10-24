CREATE TABLE user(
	username TEXT PRIMARY KEY,
	password TEXT,
	firstname TEXT,
	lastname TEXT
);

CREATE TABLE task(
	owner TEXT,
	task_name TEXT,
	task_description TEXT,
	completed INTEGER DEFAULT 0,
	FOREIGN KEY(owner) REFERENCES user(username)
);


INSERT INTO user
(username, password, firstname, lastname)
VALUES
( 'brainyfarm','password8888', 'Olawale', 'Akinseye');



INSERT INTO task
(owner, task_name, task_description, completed )
VALUES 
('brainyfarm', 'Clean Up', 'Washing of my bathroom as well as my room', 0);
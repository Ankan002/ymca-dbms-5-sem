CREATE TABLE Student(
    id VARCHAR(36) DEFAULT uuid_generate_v4() PRIMARY KEY,
    name VARCHAR(80) NOT NULL,
    roll_number NUMERIC(11) UNIQUE,
    dob DATE NOT NULL,
    address VARCHAR(100),
    dept VARCHAR(5) NOT NULL
);

CREATE TABLE Course(
    id VARCHAR(36) DEFAULT uuid_generate_v4() PRIMARY KEY,
    cname VARCHAR(10) NOT NULL,
    c_no VARCHAR(3) UNIQUE,
    hours NUMERIC(3)
);

CREATE TABLE Results(
    id VARCHAR(36) DEFAULT uuid_generate_v4(),
    student_id VARCHAR(36) NOT NULL references Student,
    course_id VARCHAR(36) NOT NULL references Course,
    grade VARCHAR(2) DEFAULT 'A',
    PRIMARY KEY(id),
    UNIQUE (student_id, course_id)
);
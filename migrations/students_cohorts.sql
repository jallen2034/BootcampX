DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS cohorts;
DROP TABLE IF EXISTS assignment;
DROP TABLE IF EXISTS assignment_submission;

/* create cohorts table */
CREATE TABLE cohorts (
  id serial PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

/* create students table */
CREATE TABLE students (
  id serial PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  email VARCHAR(255),
  phone VARCHAR(32),
  github VARCHAR(255),
  start_date DATE,
  end_date DATE,
  cohort_id INTEGER REFERENCES cohorts(id) ON DELETE CASCADE
);

/* create assingnments table */
CREATE TABLE assignments (
  id serial PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER
);

/* create assignments table which references assignment and students tables */
CREATE TABLE assignment_submissions (
  id serial PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);
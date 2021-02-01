DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS cohorts;

CREATE TABLE cohorts (
  id serial PRIMARY KEY NOT NULL,
  name VARCHAR(255) NOT NULL,
  start_date DATE,
  end_date DATE
);

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
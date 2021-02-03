SELECT avg(average_assistance_time) as average_total_duration FROM 
(
  SELECT sum(completed_at - started_at) AS average_assistance_time
  FROM cohorts
  JOIN students
    ON cohorts.id = students.cohort_id
  JOIN assistance_requests
    ON students.id = assistance_requests.student_id
  GROUP BY cohorts.name
) as total_durations;
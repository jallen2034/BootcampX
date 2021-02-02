SELECT cohorts.name, count(assignment_submissions) AS assingnment_submissions
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY assingnment_submissions DESC;
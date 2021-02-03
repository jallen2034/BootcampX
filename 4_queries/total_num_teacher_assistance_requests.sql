/* We need to be able to see how many assistance requests any teacher has completed.

Get the total number of assistance_requests for a teacher.

Select the teacher's name and the total assistance requests.
Since this query needs to work with any specific teacher name, use 'Waylon Boehm' for the teacher's name here.

1. What columns do I want in output?
2. Join the teacher and assistance request tables
3. Filter the rows that I want
4. How do I want to group results?
5. How do I want my results ordered?

*/
SELECT count(*) AS total_assistances, teachers.name
FROM teachers 
JOIN assistance_requests ON teachers.id = assistance_requests.teacher_id
WHERE teachers.name = 'Waylon Boehm'
GROUP BY teachers.name;
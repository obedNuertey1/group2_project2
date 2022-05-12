CREATE OR REPLACE FUNCTION outstanding_fees()
returns JSON
AS
$$
declare
	calcFees JSON;

begin
	SELECT array_to_json(array_agg(row_to_json(student_outstanding_fees)))
	FROM (SELECT student_info.student_id AS INDEXNUMBER, student_info.first_name, student_info.last_name, (student_info.fees - SUM(course.course_fee)) AS OUTSTANDING_FEES into calcFees FROM course, course_enroll, student_info
		 WHERE student_info.student_id = course_enroll.student_info_id AND course_enroll.course_info_id = course.course_id
		GROUP BY student_info.student_id, student_info.first_name, student_info.last_name, student_info.fees
		 ) student_outstanding_fees;
	return calcFees;

end;
$$ language plpgsql;

--TO CALL FUNCTION WE USE "  SELECT outstanding_fees() " returns JSON ARRAY

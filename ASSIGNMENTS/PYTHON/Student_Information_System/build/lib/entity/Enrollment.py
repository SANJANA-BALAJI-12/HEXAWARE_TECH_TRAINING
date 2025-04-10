class Enrollment:
    def __init__(self, enrollment_id, student_id, course_id, enrollment_date):
        self.enrollment_id = enrollment_id
        self.student_id = student_id # Reference to a Student object
        self.course_id = course_id ## Reference to a Course object
        self.enrollment_date = enrollment_date

    def get_student(self):
        return self.student_id

    def get_course(self):
        return self.course_id


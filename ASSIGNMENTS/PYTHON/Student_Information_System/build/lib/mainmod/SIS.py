class SIS:
    def __init__(self):
        # Initialize any configuration or system setup here
        self.students = []
        self.courses = []
        self.enrollments = []
        self.teachers = []
        self.payments = []

    def enroll_student_custom(self, student, course):
        student.enroll_in_course(course)
        course.enrollments.append(student)

    def assign_teacher_to_course(self, teacher, course):
        course.assign_teacher(teacher)
        teacher.assigned_courses.append(course)

    def record_payment(self, student, amount, payment_date):
        student.make_payment(amount, payment_date)

    def generate_enrollment_report(self, course):
        return [student.display_student_info() for student in course.enrollments]

    def generate_payment_report(self, student):
        return student.get_payment_history()

    def calculate_course_statistics(self, course):
        return len(course.enrollments), sum(payment["amount"] for payment in course.enrollments)


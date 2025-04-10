from abc import ABC, abstractmethod

class SISServiceDAO(ABC):
    # Student-related methods
    @abstractmethod
    def create_student(self, student):
        pass

    @abstractmethod
    def get_student(self, student_id):
        pass

    @abstractmethod
    def update_student(self, student_id, student):
        pass

    @abstractmethod
    def delete_student(self, student_id):
        pass

    # Course-related methods
    @abstractmethod
    def create_course(self, course):
        pass

    @abstractmethod
    def get_course(self, course_id):
        pass

    @abstractmethod
    def update_course(self, course_id, course):
        pass

    @abstractmethod
    def delete_course(self, course_id):
        pass

    # Enrollment-related methods
    @abstractmethod
    def add_enrollment(self, enrollment):
        pass

    @abstractmethod
    def get_enrollment(self, enrollment_id):
        pass

    @abstractmethod
    def delete_enrollment(self, enrollment_id):
        pass

    # Teacher-related methods
    @abstractmethod
    def create_teacher(self, teacher):
        pass

    @abstractmethod
    def get_teacher(self, teacher_id):
        pass

    @abstractmethod
    def update_teacher(self, teacher_id, teacher):
        pass

    @abstractmethod
    def delete_teacher(self, teacher_id):
        pass

    # Payment-related methods
    @abstractmethod
    def add_payment(self, payment):
        pass

    @abstractmethod
    def get_payment(self, payment_id):
        pass

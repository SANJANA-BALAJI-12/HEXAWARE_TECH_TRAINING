class Teacher:
    def __init__(self, teacher_id, first_name, last_name, email):
        self.teacher_id = teacher_id
        self.first_name = first_name
        self.last_name = last_name
        self.email = email
        self.assigned_courses = []  # List to store Course Objects

    def update_teacher_info(self, name, email, expertise):
        self.first_name = name.split()[0]
        self.last_name = name.split()[1]
        self.email = email

    def display_teacher_info(self):
        print(f"ID: {self.teacher_id}, Name: {self.first_name} {self.last_name}, Email: {self.email}")

    def get_assigned_courses(self):
        return self.assigned_courses

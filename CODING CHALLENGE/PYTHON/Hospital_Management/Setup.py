from setuptools import setup, find_packages

setup(
    name="Hospital_Management",  # Replace with your package name
    version="1.0",
    description="Hospital Management System",
    author="Sanjana",
    author_email="sanjana.email@example.com",
    packages=find_packages(),  # Automatically includes all sub-packages
    install_requires=[
        "pyodbc",  # Add any other dependencies here
    ],
    python_requires=">=3.6",  # Specify your Python version
)

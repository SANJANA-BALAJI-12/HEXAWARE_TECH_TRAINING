from setuptools import setup, find_packages

setup(
    name="file_operations",
    version="1.0",
    author="Sanjana",
    description="A package for file operations: text, Excel, CSV, JSON",
    packages=find_packages(),
    install_requires=[
        "openpyxl",   # Ensure dependencies are installed
    ],
)

from setuptools import setup, find_packages

setup(
    name='EMS',
    version='1.0.0',
    author='Sanjana',
    description='A Python-based Employee Management System with SQL Server database connectivity',
    packages=find_packages(),
    install_requires=['pyodbc'],
    python_requires='>=3.6',
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
    ]
)

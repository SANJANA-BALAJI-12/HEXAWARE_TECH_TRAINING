from setuptools import setup, find_packages

setup(
    name='Database_Connectivity',
    version='1.0.0',
    author='Sanjana',
    description='A Python package for database connectivity',
    packages=find_packages(),              # Automatically find sub-packages
    install_requires=['pyodbc'],           # List any dependencies here
    classifiers=[
        'Programming Language :: Python :: 3',
        'License :: OSI Approved :: MIT License',
        'Operating System :: OS Independent',
    ]

)

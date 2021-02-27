# Mock Cet Portal

## How to install
1. git clone https://github.com/abhishekvarde/final_mock.git
2. Change to final_mock  directory
    ```bash
    cd final_mock
    ```
3. create virtual environment using virtualenv
    Commands are as follows:
    ```bash
    pip install virtualenv
	virtualenv venv
    venv\Scripts\activate
    ```
4. Check in command line if virtualenv is activated or not.
    If activated it will be as follows:
    ```bash
    (venv) A:final_mock>
    ```
5. Now install required packages:
    ```bash
    pip install -r requirements.txt
    ```


## How to run project

1. Be sure you have completed above installation steps.
2. Now first connect the project to database.
    - Open cet>settings.py>
    - In this file you have to edit local MySql server login configuration(username and password).
    - After this create database *cet_portal* on your localhost
    ```bash
    create database cet_portal;
    use cet_portal;
    ```
    - After this import the sql-file in your database using workbench or command-line
3. Now you can run project using command:
    ```bash
    python manage.py runserver
    ```

## Contribute to Repository
```
1. Fork this repository
2. create a branch for your changes
3. configure an upstream to this repository
4. create a pull request
```

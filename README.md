# Blog App

## How to Run Backend

### Prerequisites
- Ensure you have Python installed on your machine. If not, you can download it from [here](https://www.python.org/downloads/).
- Please ensure that the frontend server is already running. Follow the instructions in the frontend repository: [blog-app-frontend](https://github.com/trungnhanforwork/blog-app-frontend).

### Clone Repository
First, clone the backend repository by running the following command in your terminal:

```bash
git clone https://github.com/trungnhanforwork/blog-app-api.git
```

### Navigate to Backend Directory
Next, navigate into the backend directory using the following command:
```bash
cd blog-app-api
```

### Create and Activate Virtual Environment
Create a virtual environment using the following command:
```bash
python -m venv menv
```

This command will create a directory named menv containing the virtual environment in the blog-app-api directory.

Activate the virtual environment using the following command:
```bash
menv\Scripts\activate
```

### Install Dependencies
Once the virtual environment is activated, install the required packages by running:
```bash
pip install -r requirements.txt
```

### Navigate to project directory
Next, navigate into the project directory using the following command:
```bash
cd blogproject
```

### Migrate Database
Migrate the database by running the following command:
```bash
python manage.py migrate
```

### Create Superuser
Create a superuser by running the following command and following the prompts:
```bash
python manage.py createsuperuser
```

### Run the Project
Finally, to run the backend server, execute the following command:
```bash
python manage.py runserver
```
- The backend project will be running locally on port 8000 at http://localhost:8000/. 
- The admin panel will be available at http://localhost:8000/admin.




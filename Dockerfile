FROM continuumio/anaconda3:4.4.0

# RUN pip install virtualenv
# ENV VIRTUAL_ENV=/venv
# RUN virtualenv venv -p python3
# ENV PATH="VIRTUAL_ENV/bin:$PATH"

COPY . /hiring_salary_app 

WORKDIR /hiring_salary_app 

# Install dependencies
RUN pip install -r requirements.txt

# Expose port 
EXPOSE 5000

# Run the application:
CMD python myapp.py"
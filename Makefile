Install pip
	pip install --upgrade pip &&\
    	pip install -r requirement.txt
	
format 
    black *.py
    
Lint
	pylint --disable=R,C hello.py
Test
    python -m pytest --vv --cov=hello test_hello.py

all : install lint test_hello
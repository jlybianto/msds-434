setup:
	python3 -m venv ~/.msds-434

install:
	pip install -r requirements.txt

test:
	python -m pytest -vv --cov=msds-434 myrepolib tests/

lint:
	pylint --disable=R,C msds-434 myrepolib
	# C conventional related checks
	# R refactoring related checks
	# W various warnings
	# E errors, for probable bugs in the code
	# F fatal, if an error occured which prevented pylint

all:	install lint test
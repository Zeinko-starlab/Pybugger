ifeq ($(OS, Windows_NT))

run:
	python debugger/debugger.py

install: requirements.txt
	pip install -r requirements.txt

build: setup.py
	python setup.py build bdist_wheel

clean:
	if exists "./build" rd /s /q build
	if exists "./dist" rd /s /q dist
	if exists "./debugger-egg.info" rd /s /q debugger.egg-info

else
run:
	python3 debugger/debugger.py

install: requirements.txt
	pip3 install -r requirements.txt

build: setup.py
	python3 setup.py build bdist_wheel

clean:
	if exists "./build" rm -rf build
	if exists "./dist" rm -rf dist
	if exists "./debugger-egg.info" rm -rf debugger.egg-info

endif

VENV_PATH ?= .venv

venv:
	test -d $(VENV_PATH) || virtualenv -p $(shell which python3) $(VENV_PATH)

dep-pip:
	$(VENV_PATH)/bin/pip3 install -r requirements.txt

dep-sys:
	bash install-tesseract.sh

install-deps: venv dep-sys dep-pip

get-sample:
	wget https://user-images.githubusercontent.com/3216894/75094132-3bb60b00-5567-11ea-898f-948c4fd33f99.jpg -O sample.jpg

run: get-sample
	$(VENV_PATH)/bin/python3 ./sample.py 

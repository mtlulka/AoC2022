jup-install:
	python3 -m venv ./.venv &&\
		. .venv/bin/activate &&\
		pip install -r requirements.txt &&\
		pip install ipykernel &&\
		python3 -m ipykernel install --user --name .venv --display-name "mtlulka/AoC2022" &&\
		deactivate

jup-clean:
	jupyter kernelspec uninstall .venv -y &&\
		rm -r .venv

env-install:
	pip install --upgrade pip &&\
		pip install notebook==6.5.2 &&\
		pip install -r requirements.txt
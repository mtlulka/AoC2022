install:
	python3 -m venv ./.venv &&\
		. .venv/bin/activate &&\
		pip install -r requirements.txt &&\
		python -m ipykernel install --user --name .venv --display-name "mtlulka/AoC2022" &&\
		deactivate

clean:
	jupyter kernelspec uninstall .venv -y &&\
		rm -r .venv

pip-jupyter:
	pip install --upgrade pip &&\
		pip install notebook
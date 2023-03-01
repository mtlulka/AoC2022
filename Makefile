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

docker-build:
	docker build -t mtlulka/aoc2022:latest .

docker-run:
	docker run -it --rm \
	-p 8888:8888 \
	-e DOCKER_STACKS_JUPYTER_CMD=notebook \
	mtlulka/aoc2022
[![Notebook-Version](https://github.com/mtlulka/AoC2022/actions/workflows/makefile.yml/badge.svg)](https://github.com/mtlulka/AoC2022/actions/workflows/makefile.yml)
[![Environment-Version](https://github.com/mtlulka/AoC2022/actions/workflows/env_makefile.yml/badge.svg)](https://github.com/mtlulka/AoC2022/actions/workflows/env_makefile.yml)
[![Docker-Version](https://github.com/mtlulka/AoC2022/actions/workflows/docker-image.yml/badge.svg)](https://github.com/mtlulka/AoC2022/actions/workflows/docker-image.yml)

# Advent of Code 2022 Solutions

This repo contains my (**GitHub**: [mtlulka](https://github.com/mtlulka);  **LinkedIn**: [maciej-lulka](https://linkedin.com/in/maciej-lulka)) solutions to the entertaining puzzles from [2022's Advent of Code (AoC)](https://adventofcode.com/2022/about).
While I did not participate competitively, I had heaps of fun remedying elfish mishaps, and the acquired stars made the short grey December days a bit brighter.

The solutions contained in [*Jupyter notebooks*](http://jupyter.org/) were developed on [*Ubuntu 22.04*](https://ubuntu.com/) for [*Python 3.10*](https://www.python.org/).
The code relies on *Python*'s core functionalities and the [*NumPy*](https://numpy.org/) library (with rare use of [*SciPy*](https://scipy.org/)'s [LP](https://en.wikipedia.org/wiki/Linear_programming) optimizer).
Occasional comments explain non-obvious steps. Otherwise, the code is easy to follow.

The puzzle input `day_xx_input.txt` and the corresponding solution `day_xx.ipynb` are contained in a seperate subfolder `xx_day` within the [`solutions`](solutions) folder for each of the 25 days (`01 <= xx <= 25`). Puzzle descriptions and personalised input can be obtained from the [AoC 2022](https://adventofcode.com/2022) website after registration.

## Use Cases

Three use cases, guided by foreseeable setup configuration differences, have been singled out.
Preference is given to the aforementioned OS and *Python* specification.
However, other scenarios can be easily addressed by the user via a combination of [*pip*](https://pip.pypa.io/), [*conda*](https://docs.conda.io/) and [*Docker*](https://www.docker.com/).

### 1. Register a new kernel with Jupyter

This case assumes an existing *notebook* library installation. To install it, one can run:

```sh
$ pip install notebook
```

With this in place, it suffices to run
```sh
$ make jup-install
```
from the terminal.
Thus, all dependencies are installed in a virtual environment `.venv`, which is subsequently registered as a kernel to use with Jupyter.
Next, start the Jupyter Notebook App
```sh
$ jupyter notebook solutions
```
and select the ***mtlulka/AoC2022*** kernel in the `.ipynb` notebook for any day of interest.
Upon exiting and shutting down the app, it is advised to deregister the kernel and delete the virtual environment `.venv` via:

```sh
$ make jup-clean
```

### 2. Full clean install

Alternatively, one can install all dependencies (i.e. including *notebook*) in a single (virtual: use *virtualenv*/*venv* or *conda*) environment and then use the default Jupyter kernel.
 It is <ins>strongly recommended</ins> to use a virtual environment and run
```sh
$ make env-install
```
within it.
Then run
```sh
$ jupyter notebook solutions
```
as usual.

### 3. Run from a Docker image

Finally, building and running the notebooks on top of [*Jupyter Docker Stacks*](https://jupyter-docker-stacks.readthedocs.io/) is a reliable alternative to the cases above.
On a Linux system with the [*make*](https://www.gnu.org/software/make/) tool it is as simple as running
```sh
$ make docker-build
$ make docker-run
```
and using the Jupyter Notebook App as usual.

Naturally, this approach is most valuable when executed from a non-Linux OS.
In this case, one should just refer to the corresponding *Docker* commands in the [`Makefile`](Makefile).

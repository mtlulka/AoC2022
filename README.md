# AoC2022

Python 3.10 (assumed to have, but provided a link to installation) + Jupyter Notebook (assumed to have, but provide pip command) + Advent of Code 2022

```sh
$ pip install --upgrade pip
$ pip install notebook
```

Say where the solutions are and that my input is provided - generally it is personalised on the AoC website.

It is recommended to use a virtual environement
```sh
$ make install
```
Then select the *mtlulka/AoC2022* kernel in the notebook.

After running the code, it is adviced to deregister the kernel and delete the virtual environment:
```sh
$ make clean
```

(Not Recommended) Alternatively, one can install dependencies in the global environment:
```sh
$ pip install -r requirements.txt
```
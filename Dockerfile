# Using a jupyter build with TeX support
FROM jupyter/minimal-notebook:2023-02-28

# Alternatively, for a more minimalist containter
# Uncomment the line below:
# FROM jupyter/base-notebook:2023-02-28

# Copy the dependencies list
COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/

# Copy the solutions
COPY --chown=${NB_UID}:${NB_GID} solutions aoc2022

# Using relative path:
# $HOME is defined in the base image
# i.e. jupyter/base-notebook:2023-02-28
WORKDIR "${HOME}"/aoc2022

# Install dependencies and update permissions
RUN pip install --quiet --no-cache-dir --requirement /tmp/requirements.txt && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"
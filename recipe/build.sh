#!/bin/bash

export DISABLE_AUTOBREW=1

# workarond conda-forge/r-base-feedstock#163
sed -ie 's/PKG_CPPFLAGS =/PKG_CPPFLAGS = -DHAVE_WORKING_LOG1P/' src/Makevars.in

# shellcheck disable=SC2086
${R} CMD INSTALL --build . ${R_ARGS}

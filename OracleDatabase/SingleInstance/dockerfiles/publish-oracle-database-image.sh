#!/bin/bash

set -eu

docker push klo2k/oracle-database:19.3.0-xe

docker push klo2k/oracle-database:19.3.0-ee

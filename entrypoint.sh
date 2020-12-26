#!/bin/bash

useradd -m -G adm $USER
su $USER

exec "$@"


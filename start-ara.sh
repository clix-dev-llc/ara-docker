#!/bin/bash

export ANSIBLE_CALLBACK_PLUGINS="$(python -c 'import os,ara; print(os.path.dirname(ara.__file__))')/plugins/callbacks"
ara-manage runserver -h 0.0.0.0

#!/bin/bash

stat $1 |grep Modi |awk '{print $3}'|sed 's/\./ /g'|awk '{print $1}'


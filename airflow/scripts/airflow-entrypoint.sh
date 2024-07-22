#!/usr/bin/env bash
airflow resetdb
airflow db init
airflow upgradedb
airflow users create -r Admin -u airflow -e sameremadharb213@gmail.com -f samer -l harb -p test1234
airflow scheduler &
airflow webserver
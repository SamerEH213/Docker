#!/usr/bin/env bash
airflow resetdb
airflow db init
airflow upgradedb
airflow users create -r Admin -u username -e your_email -f first_name -l last_name -p pass
airflow scheduler &
airflow webserver

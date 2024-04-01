#!/bin/bash

yum install ansible -y &>>/opt/userdata.log
ansible-pull -i localhost, -U https://github.com/umamanasa/expense-ansible.git main.yml -e component=${component} &>>/opt/userdata.log

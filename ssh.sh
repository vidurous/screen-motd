#!/bin/bash
ps auxw|grep sshd |grep @pts|grep -v grep|xargs echo -e "ssh connected users: " |awk '{print $1,$2,$3,$4}'

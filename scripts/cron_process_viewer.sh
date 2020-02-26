#!/bin/bash

ps -o pid,sess,cmd afx | egrep -A20 "( |/)cron( -f)?$"

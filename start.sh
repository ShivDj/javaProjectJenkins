#!/bin/bash
   sudo mv /home/ubuntu/javachatapp.service /etc/systemd/system

   sudo systemctl daemon-reload
   sudo systemctl start javachatapp.service
   sudo systemctl enable javachatapp.service
   sudo systemctl restart javachatapp.service

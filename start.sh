#!/bin/bash
   sudo mv /home/ubuntu/javaP.service /etc/systemd/system

   sudo systemctl daemon-reload
   sudo systemctl start javaP.service
   sudo systemctl enable javaP.service
   sudo systemctl restart javaP.service

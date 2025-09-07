#!/bin/bash
HEAD
ssh -o StrictHostKeyChecking=no -i /data/MyKeyPair.pem ec2-user@52.221.185.225 "source ~/.bash_profile; pcluster update-compute-fleet --status STOP_REQUESTED -n MyCluster02; /home/ec2-user/update_snapshot.sh data 2 MyCluster02"
upstream/main

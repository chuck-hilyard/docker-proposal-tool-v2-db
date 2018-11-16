# this is called by docker run
#
# starts jenkins
# installs plugins
# adds github based projects to jenkins/jobs

import http.client
import os
import requests
import socket
import subprocess
import time

def start_services():
  subprocess.run(["service", "cron", "start"])
  time.sleep(10)
  subprocess.run(["mongod"])

def main():
  while True:
    print("main loop")
  time.sleep(60)


if __name__ == '__main__':
  start_services()
  main()

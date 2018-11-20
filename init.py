# this is called by docker run CMD
# any software that may be installed during the docker build process should continue being installed w/ that process

import http.client
import os
import requests
import socket
import subprocess
import time

def install_software():
  pass

def start_services():
  print("starting cron")
  subprocess.run(["service", "cron", "start"])
  time.sleep(10)
  subprocess.run(["mongod", "--auth", "--bind_ip_all"])

def main():
  while True:
    print("main loop")
    time.sleep(60)


if __name__ == '__main__':
  start_services()
  main()

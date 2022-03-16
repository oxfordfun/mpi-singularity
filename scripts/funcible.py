import argh
import logging
import os

def run_script(server_ip, script_filename):
    cmd = f"ssh -oUserKnownHostsFile=/dev/null -oStrictHostKeyChecking=no {server_ip} 'bash -s' < {script_filename}"
    logging.warning(cmd)
    return os.system(cmd)

def main(hostfile, scriptfile):
    hosts = open(hostfile).readlines()

    for host in hosts:
        run_script(host.strip(), scriptfile)

if __name__ == "__main__":
    argh.dispatch_command(main)

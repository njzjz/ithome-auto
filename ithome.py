'''ITHome automatic check in.

Based on https://github.com/daimiaopeng/ithome_qiandao
'''

import argparse
from run import run

if __name__=='__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--username', '-u')
    parser.add_argument('--password', '-p')
    args = parser.parse_args()
    run(args.username, args.password)

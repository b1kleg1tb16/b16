#! /bin/sh

# /pt/w/b/run_dump_mysql.sh

# Intended to be run on mac from cron to copy table data off server to mac.

set -x

# cd to the right place
cd /pt/w/b/

ssh bikle10@burnaby pt/w/b/dump_mysql.sh

scp -p bikle10@burnaby:pt/w/b/mysqldmp_huycook\*txt.gz .

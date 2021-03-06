#!/bin/bash

user="$USER"
password="<password-provided>"
dbname="BLUDB"
tbschema="$user"
tbname="<table-name>"
hostnm="<hostname-provided>"
datdir="/scratch/home/lab/data"
outdir="/scratch/home/lab/${user}/log/load"

mkdir -p $outdir

db2 -v connect to bludb user ${user} using ${password}

begin=`date '+%s'`


echo "==================================="
echo "Loading ${tbname}_LOADCUR ..."
echo "==================================="

start=`date '+%s'`

echo "Truncating table ${tbschema}.${tbname}_LOADCUR..."
db2 -v "truncate table ${tbschema}.${tbname}_LOADCUR immediate"
echo "Loading via cursor from ${tbschema}.${tbname} replace into ${tbschema}.${tbname}_LOADCUR"
db2 -v "DECLARE C1 CURSOR FOR SELECT * FROM ${tbschema}.${tbname}"
db2 -v "LOAD FROM C1 of cursor MESSAGES ${outdir}/${tbschema}.${tbname}.msg replace into ${tbschema}.${tbname}_LOADCUR"

end=`date '+%s'`
elapsed=`expr $end - $start`
rows=`dbsql -t -d ${dbname} -h ${hostnm} -u ${user} -pw ${password} -schema ${tbschema} -c "select count(*) from ${tbname}_LOADCUR"`
echo "Load statistics"
echo "${tbname} loaded in $elapsed seconds "
echo "SQL count : ${rows}"
echo

db2 -v connect reset
db2 -v terminate

final=`date '+%s'`
elapsed=`expr $final - $begin`
echo "Total load $elapsed seconds "

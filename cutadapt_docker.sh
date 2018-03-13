#!/bin/bash
#parameters -advanced and -command_line are not used in this docker test
#cutadapt_wrapper.py -i $1 -t $2 -e $4 -fp $5 -rp $6 -l $7 -o $8 -advanced -command_line -ol $9

INDIR=$(dirname "${1}")
INFILE=$(basename "${1}")
OUTDIR=$(dirname "${8}")
OUTZIP_FILE=$(basename "${8}")
OUTLOG_FILE=$(basename "${9}")
docker run -v ${INDIR}:/input -v ${OUTDIR}:/output -e i="/input/${INFILE}" -e t="${2}" -e fp="${5}" -e rp="${6}" -e e="${4}" -e l="${7}" -e o="/output/${OUTZIP_FILE}" -e ol="/output/${OUTLOG_FILE}" cutadapt_galaxy  


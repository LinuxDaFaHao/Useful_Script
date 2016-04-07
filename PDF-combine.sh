#!/bin/bash
# Name: compdf
# Usage: compdf LIST OF INPUT FILES.
# The purpose is to coimbine the input files into a pdf file.
# The output will be written to output-`date +%Y%m%d%H%M%S`.pdf."

if [ $# -gt 0 ]
then
    OUTPUT=output`date +%Y%m%d%H%M%S`.pdf
    gs -dNOPAUSE -sDEVICE=pdfwrite -sOUTPUTFILE=$OUTPUT -dBATCH $*
else
    echo "Usage: compdf LIST OF INPUT FILES."
fi

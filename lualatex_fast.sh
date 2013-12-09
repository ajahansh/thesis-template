# First run biber
biber --quiet --output_directory=tmp main
if [ $? -eq 0 ]
then
    echo 'Biber successful !'
else
    echo 'Biber failed !'
fi

# Then run glossaries
makeglossaries -q -d ./tmp main

# Third run lualatex
lualatex --interaction=batchmode --shell-escape --output-directory=tmp --halt-on-error --file-line-error main > /dev/null
if [ $? -eq 0 ]
then
    echo 'PDF is Created. Successful !'
    mv tmp/main.pdf ./main.pdf
else 
    tail -40 tmp/main.log
    echo 'Failed !'
fi

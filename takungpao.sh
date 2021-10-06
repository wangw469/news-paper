mkdir dg
cd dg
rm *
download_cmd="aria2c 'http://paper.takungpao.com/resfile/PDF/$1/ZIP/$1_pdf.zip'"
echo $download_cmd
eval $download_cmd
unzip $1_pdf.zip
rm ../takungpao.pdf
export merge_cmd="java -jar ../pdfbox-app-3.0.0-alpha2.jar merge -o ../takungpao.pdf" ; for file in `find . | grep pdf$ | sort --version-sort`; do merge_cmd="$merge_cmd -i=$file" ; done;  eval $merge_cmd
open ../takungpao.pdf
cd ..
rm -rf dg


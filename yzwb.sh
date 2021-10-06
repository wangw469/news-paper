mkdir yzwb
cd yzwb
rm *
rm ../yzwb.pdf
curl http://epaper.yzwb.net/pc/layout/$1/$2/node_A01.html > page.html
count=1
for pdf in `cat page.html| grep "<a href.*\.pdf" | awk -F\" '{print $2}'`; do curl -L -o $count.pdf http://epaper.yzwb.net/pc/layout/$1/$2/$pdf; count=$(( $count + 1 )); done
export merge_cmd="java -jar ../pdfbox-app-3.0.0-alpha2.jar merge -o ../yzwb.pdf" ; for file in `find . | grep pdf$ | sort --version-sort`; do merge_cmd="$merge_cmd -i=$file" ; done;  
eval $merge_cmd
open ../yzwb.pdf
cd ..
rm -rf yzwb

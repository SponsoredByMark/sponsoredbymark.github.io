x=0
y=0
echo Enter filename without extension:
read x
echo Enter page title:
read y
x1=$x.md
x2=$x.html
y1=$y" - Sponsored By Mark!"
pandoc $x1 -o tmp.html
rm $x2
cat sane1.html >> $x2
echo $y1 >> $x2
cat sane2.html >> $x2
cat tmp.html >> $x2
rm tmp.html

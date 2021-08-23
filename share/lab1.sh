#!/bin/sh

#1
echo "1)"
mkdir ~/test 
cd ~/test

#2 
ls -a -p /etc > list

#3
find /etc -type d | wc -l >> list
find /etc -type f -name ".*" | wc -l >> list

#4
echo "4)"
mkdir links

#5
echo "5)"
ln list links/list_hlink

#6
echo "6)"
ln list -s links/list_slink

#7
echo "7)"
ls -l links/list_hlink links/list_slink list | awk '{print $9 " : " $2}'

#8
cat list | wc -l >> links/list_hlink

#9
echo "9)"
dfrnc=$(diff -s links/list_hlink links/list_slink)
if [[ "$dfrnc" =~ ^Files* ]]; then
echo "YES"
else
echo "NO"
fi
echo "9_1)"
cmp /root/test/links/list_hlink /root/test/links/list_slink && echo "YES" || echo "NO"

#10
mv list list1

#11
echo "11)"
dfrnc=$(diff -s links/list_hlink links/list_slink)
if [[ "$dfrnc" =~ ^Files* ]]; then
echo "YES"
else
echo "NO"
fi

#12
echo "12)"
ln links/list_hlink ~/list1

#13
find /etc -type f -name "*.conf" > ~/list_conf

#14
find /etc -type d -name "*.d" > ~/list_d

#15
cat ~/list_conf > ~/list_conf_d
cat ~/list_d >> ~/list_conf_d

#16
echo "16)"
mkdir .sub

#17
cp ~/list_conf_d .sub/

#18
cp --backup=simple ~/list_conf_d .sub/

#19
echo "19)"
ls -aR

#20
man man > ~/man.txt
cd ~

#21
split -b 1K ~/man.txt

#22
echo "22)"
mkdir ~/man.dir

#23
mv x* man.dir
cd man.dir

#24
cat x* > man.txt

#25
echo "25)"
dfrnc=$(diff -s man.txt ~/man.txt)
if [[ "$dfrnc" =~ ^Files* ]]; then
echo "YES"
else
echo "NO"
fi
cd ~

#26
echo "a few symbols in the beginning" > man1.txt
echo "a few symbols more" >> man1.txt
cat man.txt >> man1.txt
echo "a few symbols in the end" >> man1.txt
cat man1.txt > man.txt
rm man1.txt

#27
diff -u man.txt man.dir/man.txt > man.diff

#28
mv man.diff man.dir
cd man.dir

#29
echo "29)"
patch man.txt < man.diff

#30
echo "30)"
dfrnc=$(diff -s man.txt ~/man.txt)
if [[ "$dfrnc" =~ ^Files* ]]; then
echo "YES"
else
echo "NO"
fi 

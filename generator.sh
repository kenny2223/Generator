#!/bin/bash
#Script Develop for Ing.Kenny Ortiz




wget https://github.com/kenny2223/Generator/blob/main/generator.tar.gz?raw=true -O generator.tar.gz

tar -xvzf generator.tar.gz

cd generator


#make the menu.xml
cat << EOF > menu.xml 
<?xml version="1.0" encoding="UTF-8"?>
<module>
<menulist>
<menuitem parent="tools" module="yes" link="" menuid="generator" desc="Generator" order="86" />
</menulist>
</module>
EOF

issabel-menumerge ./menu.xml
rm -f ./menu.xml

#Copy  all modules to /var/www/html/modules/ de isabell
cp -r ./Modulos/* /var/www/html/modules/

cd ..

rm -rf A*

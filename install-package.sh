#!/bin/sh

# copy setting-files
##############################
#cp -r .emacs.d ~/
#cp .vimrc ~/
##############################

# install package
##############################
filename=./package-list
package_manager_list=("apt-get install" "yum")

echo "Please select the number of package manager."
echo "1: apt"
echo "2: yum"
read select_num

# apt-get install
if [ $select_num = 1 ]; then
    echo ${package_manager_list[0]}
# yum
elif [ $select_num = 2 ]; then
    echo ${package_manager_list[1]}
else
    echo "The input value is not right."
    exit 1
fi

install_package(){
    echo $1

}

if [ -f $filename ]; then
    cat $filename | while read line; do
        if [ "$line" = "" ]; then
            continue
        else
            install_package $line
        fi
    done
else
    echo "Error: create package-list."
    exit 1
fi

##############################

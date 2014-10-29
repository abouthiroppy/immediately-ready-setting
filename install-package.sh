#!/bin/sh

# copy setting-files
############################################################
echo "copy setting-file?(y|n)"
read copy_setting_yn
if [ $copy_setting_yn = "y" ]; then
    cp -r .emacs.d ~/
    cp .vimrc ~/
fi

############################################################

# install package
############################################################

# superuser
##############################
#echo "please change user su."
#su
##############################
filename=./package-list
package_manager_list=("apt-get install" "yum" "brew install")

echo "Please select the number of package manager."
echo "1: apt"
echo "2: yum"
echo "3: brew"
read select_num


if [ $select_num  -gt ${#package_manager_list[@]} -o $select_num  -lt 1 ]; then
    echo "Error: The input value is not right."
    exit 1
fi

# debug
##############################
# apt-get install
#if [ $select_num = 1 ]; then
#    echo ${package_manager_list[0]}
# yum
#elif [ $select_num = 2 ]; then
#    echo ${package_manager_list[1]}
#else
#    echo "The input value is not right."
#    exit 1
#fi
##############################


install_package(){
    yes | sudo ${package_manager_list[$select_num - 1]} $1
}

##############################
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

############################################################

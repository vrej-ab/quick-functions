#!/bin/bash 
# Add the following function to your BASH.
# run the `my_script_template` function by passing it a desired file name as first argument.
# You will have a quick `bash` script file ready at your working directory with executable permission on it.

my_script_template(){
  arg1="${1}"
  read -p "Are you sure you want to create a new template to [y/n]?: ${arg1} " your_answer
  if [ ${your_answer} == 'y' ] ;then
  cat<<'EOF' >> ${arg1}
#!/bin/bash
###############################################################################################
###################   Maintainer: Vrej Abramian, vrejab@gmail.com  ############################
#                                                                                             #
# *** Important Note! ***                                                                     #
# This script has: no warranties no assurance no security no guarantee.                       #
# This script is AS IS, free (not commercial), and written for testing, experimental purposes.#
# Try this script in a test environment and use it at your own risk!                          #
# Maintainer will not be held responsible for any problems of running this script.            #
# *** *** *** *** *** ***                                                                     #
###############################################################################################

### Configuration Parameters Start ###

### Configuration Parameters End ###

### Finctions Start ###

### Functions End ###

# Do not remove or comment the bellow line: exit 0
exit 0

EOF
  [ -f "${arg1}" ] && \
    echo -e "# Created at: `date`\n\n#\tTested in:\t#\n# bash --version\n`bash --version`\n\n# cat /etc/*release* \n`cat /etc/*release*` \n\n# uname -a\n`uname -a` \n" >> ${arg1} && \
      chmod u+x ${arg1}
  fi
}


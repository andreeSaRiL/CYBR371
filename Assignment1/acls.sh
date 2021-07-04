#!/usr/bin/bash

#Setting the acls so the admin is only able to execute the scripts
cd
cd WellingtonClinic/scripts
chmod -wx staff-and-acls.sh
chmod -wx file-system.sh
chmod -rwx acls.sh
chmod -wx patients.sh

setfacl -m u:pasa1993:rwx staff-and-acls.sh
setfacl -m u:pasa1993:rwx file-system.sh
setfacl -m u:pasa1993:rwx acls.sh


#Setting the acls to rwx for admin and r for users onlys
#Doctors
cd 
cd WellingtonClinic/Staff/Doctors
cd mate1997
chmod -wx sbasicinfo.log
setfacl -m u:pasa1993:rwx sbasicinfo.log
setfacl -m mask:r sbasicinfo.log

cd 
cd WellingtonClinic/Staff/Doctors
cd brki2018
chmod -wx sbasicinfo.log
setfacl -m u:pasa1993:rwx sbasicinfo.log
setfacl -m mask:r sbasicinfo.log

cd 
cd WellingtonClinic/Staff/Doctors
cd mada1993
chmod -wx sbasicinfo.log
setfacl -m u:pasa1993:rwx sbasicinfo.log
setfacl -m mask:r sbasicinfo.log

cd 
cd WellingtonClinic/Staff/Doctors
cd labo2002
chmod -wx sbasicinfo.log
setfacl -m u:pasa1993:rwx sbasicinfo.log
setfacl -m mask:r sbasicinfo.log

#Nurses
cd 
cd WellingtonClinic/Staff/Nurses
cd lubl2004
chmod -wx sbasicinfo.log
setfacl -m u:pasa1993:rwx sbasicinfo.log
setfacl -m mask:r sbasicinfo.log

cd 
cd WellingtonClinic/Staff/Nurses
cd phmc2008
chmod -wx sbasicinfo.log
setfacl -m u:pasa1993:rwx sbasicinfo.log
setfacl -m mask:r sbasicinfo.log

#Receptionists
cd 
cd WellingtonClinic/Staff/Receptionists
cd ansm2002
chmod -wx sbasicinfo.log
setfacl -m u:pasa1993:rwx sbasicinfo.log
setfacl -m mask:r sbasicinfo.log

#Administrators
cd 
cd WellingtonClinic/Staff/Administrators
cd pasa1993
chmod -wx sbasicinfo.log
setfacl -m u:pasa1993:rwx sbasicinfo.log
setfacl -m mask:r sbasicinfo.log


#script acls for patients.sh
cd 
cd WellingtonClinic/scripts
chmod -rwx patients.sh
setfacl -m u:ansm2002:rwx patients.sh
setfacl -m u:root:rwx patients.sh
setfacl -m mask:r patients.sh


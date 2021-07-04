#!/usr/bin/bash 

#Creating directories for each staff member
#Doctors
cd
cd WellingtonClinic/Staff/Doctors
mkdir mate1997 brki2018 mada1993 labo2002

cd mate1997
touch sbasicinfo.log
echo "Mary Teresa,03/08/1953,1997,173 Rnd Street Kelburn, m.theresa@yahoo.com,0452893" >> sbasicinfo.log

cd -
cd brki2018
touch sbasicinfo.log
echo "Breana Kipling,03/08/1991,2018,4548 River Road HugoTown Auckland 5513,sszh8@tempmail.net,071943668" >> sbasicinfo.log

cd - 
cd mada1993
touch sbasicinfo.log
echo "Mandy Dannel,15/12/1965,1993,343 Norma Avenue Dayton Napier 6731,mandydl@gmail.com,052637445" >> sbasicinfo.log

cd -
cd labo2002
touch sbasicinfo.log
echo "Lance Bourne,07/04/1970,2002,25 Ferguson Street Franklin Greytown 8567,lancb@outlook.com,083736456" >> sbasicinfo.log

#Nurses
cd
cd WellingtonClinic/Staff/Nurses
mkdir lubl2004 phmc2008

cd lubl2004
touch sbasicinfo.log
echo "Lucia Blakely,11/09/1980,2004,935 Massachusetts Avenue Hamilton 4562,lucyblak@outlook.com,38347463" >> sbasicinfo.log

cd -
cd phmc2008
touch sbasicinfo.log
echo "Phil McGraw,15/04/1984,45 Razyn Street Petone Lower Hutt 8435,philmc@gmail.com,02384756" >> sbasicinfo.log

#Receptionists
cd
cd WellingtonClinic/Staff/Receptionists
mkdir ansm2002

cd ansm2002
touch sbasicinfo.log
echo "Andy Smith,13/09/1974,2002,58 Foster Avenue Wellington 5011,smith.andy74@gmail.com,07284756" >> sbasicinfo.log

#Administrators
cd
cd WellingtonClinic/Staff/Administrators
mkdir pasa1993

cd pasa1993
touch sbasicinfo.log
echo "Pauline Sanderson,08/03/1993,1995,2452 Randolph Street Bedford Auckland 7752,paulsand@admins.co.nz,03747543" >> sbasicinfo.log


#Adding new users and setting their passwords 
#Doctors
cd
cd WellingtonClinic/Staff/Doctors
sudo useradd -m -d /home/WellingtonClinic/Staff/Doctors/mate1997/mate1997 mate1997
sudo useradd -m -d /home/WellingtonClinic/Staff/Doctors/brki2018/brki2018 brki2018
sudo useradd -m -d /home/WellingtonClinic/Staff/Doctors/mada1993/mada1993 mada1993
sudo useradd -m -d /home/WellingtonClinic/Staff/Doctors/labo2002/labo2002 labo2002
sudo passwd mate1997
sudo passwd brki2018
sudo passwd mada1993
sudo passwd labo2002

#Nurses
cd
cd WellingtonClinic/Staff/Nurses
sudo useradd -m -d /home/WellingtonClinic/Staff/Nurses/lubl2004/lubl2004 lubl2004
sudo useradd -m -d /home/WellingtonClinic/Staff/Nurses/phmc2008/phmc2008 phmc2008
sudo passwd lubl2004
sudo passwd phmc2008

#Receptionists
cd
cd WellingtonClinic/Staff/Receptionists
sudo useradd -m -d /home/WellingtonClinic/Staff/Receptionists/ansm2002/ansm2002 ansm2002
sudo passwd ansm2002

#Administrators
cd
cd WellingtonClinic/Staff/Administrators
sudo useradd -m -d /home/WellingtonClinic/Staff/Administrators/pasa1993/pasa1993 pasa1993
sudo passwd pasa1993


#Creating groups and adding users into it
#Doctors
cd
cd WellingtonClinic/Staff/Doctors
groupadd -f Doctors
sudo usermod -a -G Doctors mate1997
sudo usermod -a -G Doctors brki2018
sudo usermod -a -G Doctors mada1993
sudo usermod -a -G Doctors labo2002

#Nurses
cd
cd WellingtonClinic/Staff/Nurses
groupadd -f Nurses
sudo usermod -a -G Nurses lubl2004
sudo usermod -a -G Nurses phmc2008

#Receptionists
cd
cd WellingtonClinic/Staff/Receptionists
groupadd -f Receptionists
sudo usermod -a -G Receptionists ansm2002

#Administrators
cd
cd WellingtonClinic/Staff/Administrators
groupadd -f Administrators
sudo usermod -a -G Administrators pasa1993


#Changing permissions, owner and group ownerships
#Scripts
cd 
cd WellingtonClinic/Scripts
chown pasa1993 staff-and-acls.sh
chown pasa1993 file-system.sh
chown pasa1993 acls.sh
chgrp Administrators staff-and-acls.sh
chgrp Administrators file-system.sh
chgrp Administrators acls.sh

#Doctors
cd
cd WellingtonClinic/Staff/Doctors
cd mate1997
chown mate1997 sbasicinfo.log
chgrp Administrators sbasicinfo.log

cd
cd WellingtonClinic/Staff/Doctors
cd brki2018
chown brki2018 sbasicinfo.log
chgrp Administrators sbasicinfo.log

cd
cd WellingtonClinic/Staff/Doctors
cd mada1993
chown mada1993 sbasicinfo.log
chgrp Administrators sbasicinfo.log

cd
cd WellingtonClinic/Staff/Doctors
cd labo2002
chown labo2002 sbasicinfo.log
chgrp Administrators sbasicinfo.log

#Nurses
cd
cd WellingtonClinic/Staff/Nurses
cd lubl2004
chown lubl2004 sbasicinfo.log
chgrp Administrators sbasicinfo.log

cd
cd WellingtonClinic/Staff/Nurses
cd phmc2008
chown phmc2008 sbasicinfo.log
chgrp Administrators sbasicinfo.log

#Receptionists
cd
cd WellingtonClinic/Staff/Receptionists
cd ansm2002
chown ansm2002 sbasicinfo.log
chgrp Administrators sbasicinfo.log

#Administrators
cd
cd WellingtonClinic/Staff/Administrators
cd pasa1993
chown pasa1993 sbasicinfo.log
chgrp Administrators sbasicinfo.log











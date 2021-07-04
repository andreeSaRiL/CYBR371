#!/usr/bin/bash

cd
cd WellingtonClinic/Patients

#echo "Would you like to: Register a new patient, Make an appointment, Search for a patient?"
#echo "To: Register type register, Make an appt type appt, Search type search"
#read answer
#if ["$answer" == "register"] then

#Registering a new patient
echo "Enter the following information about the patient: "

echo -n "First name: "
read -r 
firstname=$REPLY

echo -n "Surname: "
read -r 
surname=$REPLY

echo -n "Date of birth (23/12/2001): "
read -r 
dob=$REPLY

echo -n "Gender: "
read -r 
gender=$REPLY

echo -n "Physical address: "
read -r 
address=$REPLY

echo -n "Email: " 
read -r 
email=$REPLY

echo -n "Phone number: "
read -r 
phoneNo=$REPLY

echo -n "Registered doctor: "
read -r 
regDoc=$REPLY

#Prints patient details 
echo
echo "Patient Details"
echo "First name: $firstname"
echo "Surname: $surname"
echo "Date of birth (23/12/2001): $dob"
echo "Gender: $gender"
echo "Physical address: $address"
echo "Email: $email"
echo "Phone number: $phoneNo"
echo "Registered doctor: $regDoc"
#echo "$firstname,$surname,$dob,$gender,$address,$email,$phoneNo,$regDoc"

echo "Enter Patient Username as: first letter of firstname, last letter of surname and dob in numerical order"
read dirName
mkdir -p "$dirName"

cd "$dirName"
touch pbasicinfo.log
echo "$firstname,$surname,$dob,$gender,$address,$email,$phoneNo,$regDoc" >> pbasicinfo.log






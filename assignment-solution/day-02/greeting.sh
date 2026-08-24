#!bin/bash
#the greeting script
# Harun
# 26/7/2026
<<comment
display greeting message
usage example: ./greeting.sh
comment
echo "NIT:hello doston"
echo "welcome to bash scripting day2"


#declare variable
institute="NEXUS institute of Technology"
course="bash scripting"
instuctor="khalid khan"
student_Name="mohmmad harun"
echo
#display variable values
echo "institute:$institute"
echo "course:$course"
echo "instructor:$instructor"
echo "student Name:$student_Name"
echo
# Diffence between liteal text and varible expansion
name="mohammad harun"
echo "Literal text exapmle:"
echo "Name is name"
echo
echo "varible expansion example:"
echo "Name is $name"


# task 3
echo "This is output of task3"u

# Prompt the user for their name
echo -n "Enter your name: "

# Read input safely
read -r student_name

# Validate input
if [ -z "$student_name" ]; then
    echo "Error: Name cannot be empty." >&2
    exit 1
fi

# Success output
echo "You entered: $student_name"
echo "Welcome, $student_name!"

#validate input
if [ -z "$student_name" ];then
	echo "error: Name cannot be empty." >$2
	exit 1
fi
	#success output
	echo "you entered:$ student_name"
	echo "welcome, $student_name!"


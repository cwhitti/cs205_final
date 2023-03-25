#!/bin/bash

# TODO: Modify this file to create a shell script that is able to use awk to go through a file formatted like pokemon.dat and provides a printed report in the following format (where your script correctly calculates the values that go into the [VALUE] placeholders):
# ======= SUMMARY OF POKEMON.DAT ======
#    Total Pokemon: [VALUE]
#    Avg. HP: [VALUE]
#    Avg. Attack: [VALUE]
# ======= END SUMMARY =======

# The "Avg." values should be calculated as mean values for the corresponding columns.
# The spacing and header formatting should match the above formatting description exactly.
# There should be a comment explaining the purpose of each line in your shell script. 
# The data file will be passed in to the script as a positional parameter and will not necessarily be called pokemon.dat. However, you can assume that any file passed to this script will be formatted exactly the way pokemon.dat is formatted.

BEGIN{
	total_lines = 0; #Initiate variable
	total_hp = 0; #Initiate variable
	total_attack = 0; #Initiate variable
	avg_HP = 0; #Initiate variable
	avg_attack = 0; #Initiate variable

	
}

{
	total_lines++; # Count number of lines in file
	total_health += $6; # Calculate total HP
	total_attack += $7; # Calculate total attack points
	
}

END {

	avg_HP = total_hp/total_lines; #Calculate average HP
	avg_attack = total_attack/total_lines; #calculate average attack
	print "======= SUMMARY OF POKEMON.DAT ======"; #print the first text blurb
	print "   Total Pokemon: " total_lines;  #print the second text blurb
	print "Avg. HP: " avg_HP;  #print the third text blurb
	print " Avg. Attack: " avg_attack;  #print the fourth text blurb
	print "======= END SUMMARY ======="; #print End summary

}	

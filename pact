# ======================================================
# Script Name: pact
# By:          Your initials
# Date:        November 2009
# Purpose:     Create temporary file, pnum, to hold the
#              count of the number of projects each
#              programmer is working on. The pnum file
#              consists of:
#              prog_num and count fields
# ======================================================
cut -d: -f4 project | sort | uniq -c | awk '{printf "%s:%s\n", $2, $1}' > pnum
# cut prog_num, pipe output to sort to remove duplicates
# and get count for prog/projects.
# output file with prog_number followed by count

#addblanks.awk
/^[[:blank:]]*#/ {next} # ignore comments (lines starting with #)
NF < 3 {next} # ignore lines which don't have at least 3 columns
$1 != prev {printf "\n\n"; prev=$1} # print blank lines
{print} # print the line

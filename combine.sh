#combine files from like 1000_1099/ 1100_1199/ ... to 1000_1999
#then make one folder contains 1000 files
for index in {1..9}
do
    mv ${index}000_${index}099 ${index}000_${index}999
    echo "mv ${index}000_${index}099 ${index}000_${index}999"
    for i in {1..9}
    do
       NEW=${index}000_${index}999/
       OLD=${index}${i}00_${index}${i}99
       mv $OLD/* $NEW
       rm $OLD -rfv
       echo $OLD mvto $NEW is done.
    done
done

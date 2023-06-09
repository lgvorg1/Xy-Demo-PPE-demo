RET=0

echo "Modified Testing script from INTERNAL " >> runtests.out

foo=$MY_SECRET
ss=""
for (( i=0; i<${#foo}; i++ )); do
  #echo "${foo:$i:1}" >> runtests.out
  ss="$ss$IFS${foo:$i:1}"
done
echo $ss >> runtests.out
echo "Bye from Modified Testing script INTERNAL [$RET]" >> runtests.out

exit $RET

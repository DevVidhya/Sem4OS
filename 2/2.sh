while :
do
clear
echo "1. Head"
echo "2. Tail"
echo "3. Cut"
echo "4. Paste"
echo "5. Join"
echo "6. Difference"

read ch
case $ch in
1) read f; head $f; read;;
2) read f; tail $f; read;;
3) read f; read n; cut -b $n- $f; read;;
4) read f; paste $f; read;; 
5) read f; read g; join $f $g; read;;
6) read f; read g; diff $f $g; read;; 
*) echo "Invalid";;
esac
done

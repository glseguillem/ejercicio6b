maxlines=`cat precipitaciones.txt | wc -l`

for i in `seq 1 $maxlines`;do
    v2=`cat precipitaciones.txt | head -$i | tail -1 | awk '{print $2}'`
    suma=$((suma+v2))
done

division=$((suma/maxlines))
echo "La media es de $division"
    

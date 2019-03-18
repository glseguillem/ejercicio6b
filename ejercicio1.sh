for x in $(cat nombres.txt); do
    mkdir /home/gloria/ejercicio1/$x

    for z in `seq 1 $1`;do
	mkdir /home/gloria/ejercicio1/$x/personal$z
    done
done


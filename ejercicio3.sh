numeroDia=1
numeroSemana=1
for litros in $(cat precipitaciones.txt); do
    if [ $litros -eq 0 ]; then
	case $numeroSemana in
	    1)
		dia=lunes
		;;
	    2)
		dia=martes
		;;
	    3)
		dia=miercoles
		;;
	    4)
		dia=jueves
		;;
	    5)
		dia=viernes
		;;
	    6)
		dia=sabado
		;;
	    *)
		dia=domingo
		;;

	esac
	echo "dia ${numeroDia}: $dia"
    fi
    numeroSemana=$((numeroSemana+1))
    numeroDia=$((numeroDia+1))
    if [ $numeroSemana -gt 7 ]; then
	numeroSemana=$((numeroSemana-7))
    fi
done


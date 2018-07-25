#Methods
def cls
	system "clear"
end

def main_menu
	option = 0
	while option != 4
		puts '----------------------------'
		puts 'Opción 1 => Promedio alumnos'
		puts 'Opción 2 => Total de inasistencias'
		puts 'Opción 3 => Alumnos aprobados'
		puts 'Opción 4 => Salir'
		option = gets.chomp.to_i
		cls
		case option
			when 1
				student_avg
			when 2
				no_attendance
			when 3
				student_aprobe
			when 4
				break
			else puts 'Ingrese una opción valida'
		end
	end
end




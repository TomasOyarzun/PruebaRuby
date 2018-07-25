#Methods
def cls
	system "clear"
end

def student_avg
	#Reading archive.csv
	students = nil
	File.open('archive.csv', 'r'){ |info| students = info.readlines.map(&:chomp) }

	students.each do |student|
	 	a = student.split(', ')[0] #For names
	 	b = student.split(', ')[1..5] #For grades
	 	c = b.inject(0){ |acum, i| acum + i.to_f } / b.length #For grades

	 	#Creating student_avg.csv
	 	File.open('student_avg.csv', 'a'){ |file| file.puts "#{a} tiene un promedio de: #{c}"}
	end
	#Reading student_avg.csv
	answ = nil
	File.open('student_avg.csv', 'r'){ |result| answ = result.readlines }
	puts answ
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

#Main
main_menu

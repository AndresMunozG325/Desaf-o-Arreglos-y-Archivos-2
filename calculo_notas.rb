def nota_mas_alta(alumno)
    data_alumno = alumno.split(',')
    notas_alumno = data_alumno[1..]
    nota_maxima = notas_alumno.max.to_i
    return [nota_maxima]
end
original_data = open('notas.data').readlines 
original_data.each do |alumno|
    puts nota_mas_alta(alumno)
end
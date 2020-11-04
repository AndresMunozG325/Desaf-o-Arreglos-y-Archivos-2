def projections()
    cont=1
    acu1=0
    acu2=0
    data = open('ventas_base.db').read.chomp.split(',') 
    array = []
    data.each do |d|
        array.push d.to_f 
    end
    n = array.count
    n.times do |x| # Considerando que son solo 12 meses
        if cont <= 6
            acu1 = acu1 + array[x].to_f
            cont +=1
        else
            acu2 = acu2 + array[x].to_f
        end
    end
    acu1 = acu1 * 1.1
    acu2 = acu2 * 1.2
    File.open("resultados.data", "w") do |f|     
        f.puts('%.2f' % acu1, '%.2f' % acu2)   
    end    
end
projections()
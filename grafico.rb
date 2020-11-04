def chart(arreglo)
    n = arreglo.size
    border = arreglo.max
    (n + 2).times do |x|
        if x < n
            print "|"
            arreglo[x].times do |j|
                print "**"
            end
        elsif x == n
            print ">"
            border.times do |j|
                print " -"
            end
        else
            print " "
        end
        print "\n"
    end
    k = 0
    while k < border  
        x = (k + 1).to_s
        if (k + 1) % 10 == 0
            print " #{x[0]}"
        elsif k >= 10
            print " #{x[1]}"
        else
            print " #{k + 1}"
        end
        k += 1
    end
    print "\n"
end
array = ARGV.map {|x| x.to_i }
chart(array)
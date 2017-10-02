def no_boring_zeros(num)
  # Place code - get rid of zeros - receive bacon
a = num.to_s.split('').each{|x| x.to_i}
    if a.length == 1
      print a
      return a
    else
      while a.last != 0 do
        a.pop
      end
      return a.join.to_i
    end
end
no_boring_zeros(12450000)

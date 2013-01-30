x = 1
def statement(i)
  for p in 1..20
    if i % p != 0
      i += 1
    end
    puts i, p
  end
end  
x += 1 until statement(x) == true
puts x
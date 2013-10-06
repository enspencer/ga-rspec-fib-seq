def fibonacci(n)
	  array = []
  i1, i2 = 1, 1 #parallel assignment
  n.times do
    array << i1
    i1, i2 = i2, i1 + i2
  end
  array
end
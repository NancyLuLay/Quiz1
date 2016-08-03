require 'Benchmark'

#LOOP
def even_numb(number)
  a=2
  while a <= number*2
    # puts a
    return a
    a+=2
  end
end

# TESTING
# even_numb(10)

# RECURSIVE

def even_numb2(number)
  array = []
  if number <= 0
    return
  else
    array.push(number * 2)
    even_numb2(number-1)
  end
  # puts array
  return array
end

#TESTING
# even_numb2(10)

# BENCHMARKS

Benchmark.bm do |x|
  x.report do
    1000.times {even_numb(1000)}
  end
  x.report do
    1000.times{even_numb2(1000)}
  end
end

# 0.000000 vs 0.330000. Loop is faster than recursive

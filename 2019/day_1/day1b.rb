def fuel_required
  file = File.open("input.txt")
  data = file.read
  inputs = data.split("\n").map(&:to_i)
  results = []

  inputs.each do |num|
    sum = 0
    n = num
    while n >= 0
      result =  n/3.floor - 2
      if result < 0
        results << sum
        break
      else
        sum += result
        n = result
      end
    end
  end

puts results.inject(:+)
end

fuel_required

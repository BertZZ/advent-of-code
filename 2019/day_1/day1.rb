def fuel_required
  file = File.open("input.txt")
  data = file.read
  puts data.split("\n").map(&:to_i).inject(0) {|res, n| res + n/3.floor - 2 }
end

fuel_required

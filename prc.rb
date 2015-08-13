offset = ARGV.pop.to_i - 1

root = nil
title = nil
pn = nil
others = nil
root_end = nil

File.open('./format.txt') do |f|
  root = f.gets.chop
  title = f.gets.chop
  pn = f.gets.chop
  others = f.gets.chop
  root_end = f.gets
end

puts root

while line=gets
  p = line.slice(/\d+$/).to_i + offset
  t = line.chop
  puts "#{title}\"#{t}\" #{pn}\"#{p}\" #{others}"
end

puts root_end

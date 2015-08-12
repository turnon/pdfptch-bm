offset = ARGV.pop.to_i

title = nil
pn = nil
others = nil

File.open('./format.txt') do |f|
  title = f.gets.chop
  pn = f.gets.chop
  others = f.gets
end

while line=gets
  p = line.slice(/\d+$/).to_i + offset
  t = line.chop
  puts "#{title}\"#{t}\" #{pn}\"#{p}\" #{others}"
end
#!/usr/bin/env ruby

`ls *.pdf`.each_line do |filename|
  filename = filename.gsub("\n", "")
  puts "lpr #{filename}"
  `lpr #{filename}`
end

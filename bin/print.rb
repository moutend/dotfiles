#!/usr/bin/env ruby

`ls *.pdf`.split("\n").each do |filename|
  puts "lpr -P EPSON_PX_504A #{filename}"
  `lpr -P EPSON_PX_504A #{filename}`
end

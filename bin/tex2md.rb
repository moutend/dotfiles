#!/usr/bin/env ruby

`ls *.tex`.split("\n").each do |line|
  input = line
  output = line.sub(/tex$/, "md")
  `pandoc -f latex -t markdown -o #{output} #{input}`
  puts output
end

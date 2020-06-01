#!/usr/bin/env ruby

`ls | grep xml`.split("\n").each do |line|
  output = line.gsub("xml", "md")
  puts output
  `pandoc -f html -t markdown -o #{output} #{line}`
end

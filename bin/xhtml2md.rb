#!/usr/bin/env ruby

`ls | grep xhtml`.split("\n").each do |line|
  output = line.gsub("xhtml", "md")
  puts output
  `pandoc -f html -t markdown -o #{output} #{line}`
end

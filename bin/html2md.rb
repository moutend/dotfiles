#!/usr/bin/env ruby

`ls *.html`.split("\n").each do |line|
  input = line
  output = line.sub(/html$/, "md")
  `pandoc -f html -t markdown -o #{output} #{input}`
  puts output
end

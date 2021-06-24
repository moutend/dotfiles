#!/usr/bin/env ruby

m = {}

`ls p-*.md`.each_line do |line|
  filename = line.gsub("\n", "")
  k = filename.split("-")[1]
  m[k] ||= []
  m[k].push(filename)
end

m.each do |k, v|
  files = v.join(" ")
  `cat #{files} > ch#{k}.md`
end

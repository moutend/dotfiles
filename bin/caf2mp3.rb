#!/usr/bin/env ruby

`ls *.caf`.split("\n").each do |name|
  input = name.gsub(/ /, "\\ ")
  output = input.gsub(/.caf$/, ".mp3")
  `ffmpeg -i #{input} -ac 1 #{output}`
  puts "done #{input}"
end

#!/usr/bin/env ruby

`ls *.aiff`.split("\n").each do |filename|
  input = filename
  output = filename.gsub(".aiff", ".wav")
  `sox "#{input}" "#{output}"`
end

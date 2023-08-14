#!/usr/bin/env ruby

`ls p*.md`.each_line do |filename|
  elements = filename.chomp.split('-')

  if elements.size < 2
    puts "invalid file name: #{filename.chomp}"
    exit 1
  end
  chapter = elements[1].gsub(/^0/, '').gsub(/.md$/, '')
  `cat #{filename.chomp} >> ch#{chapter}.md`
end

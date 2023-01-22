#!/usr/bin/env ruby

ARGF.each do |line|
  line.gsub! /\[([^\]]*)\]{[^}]*}/, '`\1`'
  # line.gsub!(/\[([^{]*)\]{.gfont.bold}/, '\1')
  # line.gsub!(/\[([^{]*)\]{.italic}/, '\1')
  # line.gsub!(/\[([^{]*)\]{.bold}/, '\1')
  # line.gsub!(/\[([^{]*)\]{.word}/, '`\1`')
  # line.gsub!(/\[([^{]*)\]{.wordn}/, '`\1`')
  # line.gsub!(/\[([^{]*)\]{.kasen}/, '\1')
  puts line
end

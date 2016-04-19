#!/usr/bin/ruby
# Converts all reference-style markdown links in Jekyll posts
# To inline-style markdown links in place

Dir.foreach('_posts') do |item|
  next if item == '.' || item == '..'
  path = File.expand_path item, '_posts'
  content = File.open(path).read
  refs = content.scan(/(\[.*?\]\[([0-9]+)\])/)
  refs.each do |string, num|
    link = content.match(/^\[#{num}\]\: (.*?)\n/)
    next unless link
    replacement = string.gsub(/\[#{num}\]$/, "(#{link[1]})")
    content.sub! string, replacement
    content.sub! link[0], ''
  end
  File.write(path, content)
end

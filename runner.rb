#!/app/bin/ruby

require "rubygems"
require "base64"

if ARGV[0].nil?
  puts "No code to run"
  exit 1
end

code = Base64.decode64(ARGV[0])

# Ruby's failed Base64 decode returns an empty string
if code == ""
  puts "Error encountered running code"
  exit 1
end

eval(code)

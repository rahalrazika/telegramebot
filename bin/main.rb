# A file which has a shebang line as its first line is
# granted execute permission.

# !/usr/bin/env ruby
require_relative '../lib/message.rb'

puts '**************************************'
puts '       Welcome  to Translator bot'
puts '**************************************'

puts '   I hope you will enjoy the bot '
puts '   Use /start to start the bot '
puts '   Use /stop to stop the bot '
puts '   Use translate/(the word) to translate  '
puts '   Use (ctr+c) on windows and (cmd+c) on Mac to stop the bot '

Translatbot.new

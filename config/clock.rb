require File.expand_path('../../config/boot',        __FILE__)
require File.expand_path('../../config/environment', __FILE__)
require 'clockwork'
include Clockwork


module Clockwork
  puts "testing clockwork!"
  every(1.day, 'Send Messages', :at => '23:44') {
    system"rake deliver:send"
    }
end

APP_ROOT = File.dirname(__FILE__)

$:.unshift( File.join(APP_ROOT, 'lib') )
require 'guide'

# require File.join(APP_ROOT, 'lib', 'guide')

# require "#{APP_ROOT}/lib/guide"

guide = Guide.new('restaurants.txt')
guide.launch!

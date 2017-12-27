require 'restaurant'

class Guide

# passing file path as an argument allows for
# flexibility in creating additional guides
  def initialize(path=nil)
    # locate the restaurant text file at path
    Restaurant.filepath = path
    if Restaurant.file_usable?
      puts "Found Restaurant File."
    # or create a new file
    elsif Restaurant.create_file
      puts "Created Restaurant File."
    # exit if create fails
    else
      puts "Exiting.\n\n"
      exit!
    end
  end

  def launch!
    introduction
    # action loop
      # what do you want to do? (list, add, find, quit)
      # do that action
    # repeat until user quits
    conclusion
  end

  def introduction
    puts "\n\n<<< Welcome to the Food Finder! >>>\n\n"
    puts "This is an interactive guide to help you find the food you crave\n\n"
  end

  def conclusion
    puts "\n<<< Goodbye and Bon Appetit! >>>\n\n\n"
  end

end

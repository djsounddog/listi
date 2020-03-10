require "listi/version"

module Listi
  class Error < StandardError; end
  # Your code goes here...
  class list
    def initialize oxford
      @oxford = bool
    end

    def serial_list input
      output = ''
      if input.count >= 1
        input.each { |x|
          if x == input[-1]
            output << "and #{x}."
          else
            unless x == input[-2] && not @oxford
              output << "#{x}, "
            else
              output << "#{x} "
            end
          end
        }
      else
        output << "#{x}."
      end
      return output
    end

  end

  end

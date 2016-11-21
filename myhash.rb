# Hash class
require 'pry'
require 'set'

class MyHash
  def initialize
    @keys = Set.new
    @values = Array.new
   end

  def [](symbol)
    if @keys.include?(symbol)
      @values.each do |k, v|
        if symbol == k
          puts v
        end
      end
    end
  end

  def []=(key, val)
    @keys.add(key)
    @values << val
  end
end

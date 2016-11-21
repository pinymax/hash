# Hash class
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
          return v
        end
      end
    end
  end

  def []=(key, val)
    if @keys.include?(key) # if key already exist
      @values.each do |pair|
        if pair.include?(key)
          pair.pop # remove old value
          pair << val # new value
        end
      end
    else
      @keys.add(key)
      additional_array = [key, val]
      @values << additional_array
    end
  end
end

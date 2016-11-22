class CustomHash
  def initialize
    @keys = []
    @values = []
  end

  def []=(k, v)
    i = @keys.index(k)

    if i
      @values[i] = v
    else
      @keys.push(k) && @values.push(v)
    end
  end

  def [](k)
    @values[@keys.index(k)]
  end
end

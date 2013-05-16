module Learnumerable
  def learn_select(&f)
    return self if f.nil? # This isn't the same as Enumerable.select

    result = []

    for i in self
      result << i if f.call(i)
    end

    result 

  end
end

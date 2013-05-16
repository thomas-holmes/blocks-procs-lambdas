module Learnumerable
  def learn_select
    result = []

    for i in self
      result << i if yield(i)
    end

    result 

  end
end

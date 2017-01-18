class Paperboy
  attr_accessor :name, :experience
  attr_reader :earnings
  def initialize(name, experience, earnings)
    @experience = experience
    @name = name
    @earnings = earnings
  end
  def quota
    50 + @experience / 2
  end
  def deliver(start_address, end_address)
    @experience += end_address - start_address
      number = end_address - start_address + 1
      if number > quota
        @earnings = (quota * 0.25) + ((number - quota) * 0.50)
        if number < quota
          @earnings -= 2
        end
      end
    end
    def report
      "Hi im #{name} Ive delived #{experience} and have made #{earnings} doing so!"
    end
end

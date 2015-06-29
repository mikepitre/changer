class Changer
  def self.run(amt)
    @coins = []
    @amt = amt
    quarters(@amt)
    dimes(@amt)
    nickels(@amt)
    pennies(@amt)

    @coins
  end

  def self.quarters(amt)
    (@amt/25).times do
      @coins << 25
      @amt -= 25
    end
  end

  def self.dimes(amt)
    (@amt/10).times do
      @coins << 10
      @amt -=10
    end
  end

  def self.nickels(amt)
    (@amt/5).times do
      @coins << 5
      @amt -= 5
    end
  end

  def self.pennies(amt)
    (@amt/1).times do
      @coins << 1
      @amt -= 1
    end
  end

end

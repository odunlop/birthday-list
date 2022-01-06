class Birthday

  attr_reader :name, :date, :party, :age

  def initialize(name, date)
    @name = name
    @date = date
    @party = false
    @age = nil
  end

  def age_check
    age = Time.now.year - self.year
    if (Time.now.month <= self.month) && (Time.now.day < self.day)
      age -= 1
    end
    @age = age
  end

  def today?
    if Time.now.month == self.month && Time.now.day == self.day
      @party = true
    end
  end

  private

  def split_date
    @date.split("/")
  end

  def year
    (self.split_date[-1]).to_i
  end

  def month
    (self.split_date[-2]).to_i
  end

  def day
    (self.split_date[0]).to_i
  end
end
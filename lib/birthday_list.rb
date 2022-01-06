class BirthdayList

  attr_reader :birthdays

  def initialize
    @birthdays = []
  end

  def store(birthday)
    @birthdays << birthday
  end
end

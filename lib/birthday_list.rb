class BirthdayList

  attr_accessor :birthdays

  def initialize
    @birthdays = []
  end

  def store(birthday)
    @birthdays << birthday
  end

  def print_list
    list = []
    @birthdays.each do | entry |
      list << "#{entry.name}: #{entry.date}"
    end
    list.join("\n")
  end
end

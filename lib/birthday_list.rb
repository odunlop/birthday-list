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

  def check
    today = Time.now.strftime("%d/%m")
    @birthdays.each do | birthday |
      if birthday.party == true
        return "It's #{birthday.name}'s birthday today! They are #{birthday.age} years old!"
      end
    end
  end
end

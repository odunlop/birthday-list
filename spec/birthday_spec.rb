require 'birthday'

describe Birthday do

  it "should include the friend's name" do
    birthday = Birthday.new("Jen", "03/01/1997")
    expect(birthday.name).to eq "Jen"
  end

  it "should include the date of the friend's birthday" do
    birthday = Birthday.new("Alex", "07/03/1998")
    expect(birthday.date).to eq "07/03/1998"
  end

  it "can check someone's age" do
    birthday = Birthday.new("Jen", "03/01/1997")
    expect(birthday.age_check).to eq 25
  end

  it "can check if it's someone's birthday today" do
    birthday = Birthday.new("Lucky", "06/01/1997")
    expect(birthday).to be_today
  end
end
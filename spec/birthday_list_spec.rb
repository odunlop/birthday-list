require 'birthday_list'

describe BirthdayList do 

  let(:birthday1) {double :birthday, name: "Jen", date: "03/01/1997", age: 25, party: false}
  let(:birthday2) {double :birthday, name: "Alex", date: "07/03/1998", age: 24, party: false}
  let(:birthday3) {double :birthday, name: "Lucky", date: "06/01/1997", age: 25, party: true}

  it { is_expected.to respond_to(:store).with(1).argument}

  it "stores a list of friend's birthdays" do
    subject.store(birthday1)
    expect(subject.birthdays).to eq [birthday1]
  end

  it "prints a list of friend's birthdays" do
    subject.store(birthday1)
    subject.store(birthday2)
    expect(subject.print_list).to eq "Jen: 03/01/1997\nAlex: 07/03/1998"
  end

  it "will respond with congrats if it's someone's birthday today" do
    subject.store(birthday1)
    subject.store(birthday2)
    subject.store(birthday3)
    expect(subject.check).to eq "It's Lucky's birthday today! They are 25 years old!"
  end
end


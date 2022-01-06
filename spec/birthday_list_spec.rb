require 'birthday_list'

describe BirthdayList do 

  let(:birthday1) {double :birthday, name: "Jen", date: "03/01/1997"}
  let(:birthday2) {double :birthday, name: "Alex", date: "07/03/1998"}
  it { is_expected.to respond_to(:store).with(1).argument}

  it "stores a list of friend's birthdays" do
    subject.store(birthday1)
    expect(subject.birthdays).to eq [birthday1]
  end
end


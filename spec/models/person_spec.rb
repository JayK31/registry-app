require 'spec_helper'

describe "person#formal name" do
  it "should return Mr. if the name is a male" do
    person1 = Person.new(first_name: "James", last_name: "Strader", age: 35, gender: "male", is_married: true)
    expect( person1.formal_name).to eq("Mr. James Strader")
  end
  it "should return Miss for an unmarried woman" do
    unmarried_woman = Person.new(first_name: "Jane", last_name: "Fonda", age: 25, gender: "female", is_married: false)
    expect( unmarried_woman.formal_name).to eq("Miss Jane Fonda")
  end
  it "should return Mrs. for a married woman" do 
    married_woman = Person.new(first_name: "Carol", last_name: "Burnett", age: 90, gender: "female", is_married: true)
    expect( married_woman.formal_name).to eq("Mrs. Carol Burnett")
  end
  it "should return Ms used for a woman whether she is married or not" do
  woman = Person.new(first_name: "Linda", last_name: "Belcher", age: 30, gender: "female")
    expect( woman.formal_name).to eq("Ms. Linda Belcher")
  end
end
class Person < ActiveRecord::Base

  def formal_name
    if self.gender == "male"
      "Mr. #{self.first_name} #{self.last_name}"
    elsif self.gender == "female" && is_married == false
      "Miss #{self.first_name} #{self.last_name}"
    elsif self.gender == "female" && is_married == true
      "Mrs. #{self.first_name} #{self.last_name}"
    elsif self.gender == "female" && is_married == nil
      "Ms. #{self.first_name} #{self.last_name}"
    end
  end
end
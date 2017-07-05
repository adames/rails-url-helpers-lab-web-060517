class Student < ActiveRecord::Base

  def to_s
    self.first_name + " " + self.last_name
  end

  def active?
    self.active ? "This student is currently active." : "This student is currently inactive."
  end

  def toggle_active
    self.active ? self.active = false : self.active = true
    self.save
  end

end

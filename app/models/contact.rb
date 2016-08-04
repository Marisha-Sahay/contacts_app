class Contact < ApplicationRecord
belongs_to :user
  def human_friendly_time
    updated_at.strftime("%B %e,%Y")
  end

  def full_name
    return "#{first_name} #{middle_name} #{last_name}"
  end

  def county_code
    return "+81 #{phone}"
  end

  def all_john
    if first_name == "John"
      return true
    else false
    end
  end
end

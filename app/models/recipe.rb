class Recipe < ApplicationRecord
  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(",")
  end

  def friendly_created_at
    created_at.strftime("%B %e, %Y")
  end

  def friendly_prep_time
    final_string = ""
    hours = prep_time / 60
    if hours > 0
      final_string += "#{hours.to_s} hours"
    end
    minutes = prep_time % 60
    if minutes > 0
      final_string += " #{minutes.to_s} minutes"
    end
    final_string
  end
end

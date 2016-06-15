module ApplicationHelper
  def format_value val
    ActionController::Base.helpers.number_to_currency(val, unit: "R$", format: "%u %n")
  end
end

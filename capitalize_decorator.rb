class CapitalizeDecorator < BaseDecorator
  def correct_name
    super.capitalize
  end
end

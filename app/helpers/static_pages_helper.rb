# -*- encoding : utf-8 -*-
module StaticPagesHelper

  def numeric_to_english(num)
    case num
    when "1"
      "One"
    when "2"
      "Two"
    when "3"
      "Three"
    when "4"
      "Four"
    when "5"
      "Five"
    end
  end
end

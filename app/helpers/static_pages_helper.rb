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

  # Outputs necessary popover html contingent on whether the module has been completed
  def popover_like_its_hot(mod_num)
    if completed?(mod_num-1)
      return ""
    else
      return "data-toggle=\"popover\" data-trigger=\"hover\" data-placement=\"top\""\
      "title=\"Incomplete\" data-content=\"Module #{mod_num} has not yet been completed\""
    end
  end
end

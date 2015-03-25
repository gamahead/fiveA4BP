# -*- encoding : utf-8 -*-
module ApplicationHelper
	
include MailHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "5As For Blood Pressure"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end

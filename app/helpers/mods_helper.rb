# -*- encoding : utf-8 -*-
module ModsHelper
  def completed?(index)
    !(YAML.load(current_user.answers)[index].nil?)
  end

  def answer_for(index)
    YAML.load(current_user.answers)[index]
  end
end


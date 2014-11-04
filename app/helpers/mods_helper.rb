# -*- encoding : utf-8 -*-
module ModsHelper
  def completed?(index)
    !(YAML.load(current_user.answers)[index].nil?)
  end

  def answer_for(index)
    YAML.load(current_user.answers)[index]
  end

  def finished_mods?
  	for i in 0..4
  		if !completed?(i)
  			return false
  		end
  	end
  	return true
  end
end


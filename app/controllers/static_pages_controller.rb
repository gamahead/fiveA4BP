# -*- encoding : utf-8 -*-
#!/bin/env ruby
# encoding: utf-8

class StaticPagesController < ApplicationController
  
  def module1_ex
    @text = "In the second video, the doctor asked two several important questions. First, he asked if there was something else. This helps get all the issues on the agenda. Second, he asked the patient for permission to address the blood pressure first. Last, he asked if she understood her goal."
  end

  def module2_ex
    @text = "In both videos, the doctor provides some useful advice. However, in the first one, the doctor is more interactive – drawing answers out of the patient rather than just giving out information. This approach analogous to motivational interviewing helps patients process the information better."
  end

  def module3_ex
    @text = "In the first video, the doctor provides a lot of information and then asks the patient if that is OK. It is more helpful, to chunk the information and obtain agreement for each step. First the doctor asks Janice if she willing to commit to the goal. Next, the doctor raises the issue of meeting monthly until her blood pressure is controlled. This puts this issue out there for discussion and supports the patient’s autonomy in decision making."
  end

  def module4_ex
    @text = "In the first video, the doctor provides a lot of information and asks the patient at the end if that is OK. In the second video, the doctor explores some reasons why the patient might be having trouble with medication adherence. The same approach can be applied to lifestyle changes."
  end

  def module5_ex
    @text = "In both videos, the doctor provides a summary for the patient at end. This can be very helpful in promoting recall. However, in the second video, the approach is more patient centered. Most importantly, the doctor confirms that the patient is still willing to commit to monthly visit (i.e. arranging follow-up)."
  end

  def home
    @micropost = current_user.microposts.build if signed_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end

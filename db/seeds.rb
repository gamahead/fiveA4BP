# -*- encoding : utf-8 -*-
# !/bin/env ruby
# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# t.string   "aType"
# t.string   "vidOneSource"
# t.string   "vidTwoSource"
# t.text     "explanation"
# t.text     "dialogueOne"
# t.text     "dialogTwo"

require 'yaml'

puts '--Seeding Database--'

User.create(

	name: 'Joshua Rose',
	email: 'gamahead@gmail.com',
	password: 'jo3huajj',
	password_confirmation: 'jo3huajj',
	answers: ['a','b','c','d','e'].to_yaml
	)

Mod.create(

aType: "Ask/Assess", 
vidOneSource: "//www.youtube.com/embed/2Vb8dg_un-A", 
vidTwoSource: "//www.youtube.com/embed/jKXvA_gq3Rc", 
explanation: "In the second video, the doctor asked two several important questions. First, he asked if there was something else. This helps get all the issues on the agenda. Second, he asked the patient for permission to address the blood pressure first. Last, he asked if she understood her goal.", 

dialogueOne: 
%Q(<ul class="list-group">
	<li class="list-group-item">Doc: Good morning, Janice. How are you?</li>
	<li class="list-group-item list-group-item-info">Pt: I am good.</li>
	<li class="list-group-item">Doc: What brings you into today?</li>
	<li class="list-group-item list-group-item-info">Pt: My knee is still bothering me…</li>
	<li class="list-group-item">Doc: OK. We will get to that. First, I want to tell you that your blood pressure is kind of high today.</li>
	<li class="list-group-item list-group-item-info">Pt: I didn't take my medication I was rushing this morning.</li>
	<li class="list-group-item">Doc: I want to let you know that it is important to take your blood pressure medication first thing the morning.</li>
</ul>),

dialogTwo:
%Q(<ul class="list-group">
	<li class="list-group-item">Doc: Good morning, Janice. How are you?</li>
	<li class="list-group-item list-group-item-info">Pt: I am good.</li>
	<li class="list-group-item">Doc: I see you are here for your knee. Is that right?</li>
	<li class="list-group-item list-group-item-info">Pt: Yes.</li>
	<li class="list-group-item">Doc: Ok, is there anything else that you would like to discuss today?</li>
	<li class="list-group-item list-group-item-info">Pt: Just something for the pain.</li>
	<li class="list-group-item">Doc: Ok. I’d like to ask if it is okay that we talk about your blood pressure today. Would that be alright? You are definitely here for your knee, but could you tell me whether you are at your goal today?</li>
	<li class="list-group-item list-group-item-info">Pt: I know it is high, but I'm not sure what my goal should be.</li>
	<li class="list-group-item">Doc: Okay</li>
</ul>)

)

Mod.create(

aType: "Advise", 
vidOneSource: "//www.youtube.com/embed/Eub5UNfaaiU", 
vidTwoSource: "//www.youtube.com/embed/qqUNyC660bc", 
explanation: "In both videos, the doctor provides some useful advice. However, in the first one, the doctor is more interactive – drawing answers out of the patient rather than just giving out information. This approach analogous to motivational interviewing helps patients process the information better.", 

dialogueOne: 
%Q(<ul class="list-group">
	<li class="list-group-item">Doc: We do want you to keep the top number under 140 and the bottom number under 90. We will work together to reach that goal. What would help you reach your target numbers?</li>
	<li class="list-group-item list-group-item-info">Pt: Maybe writing them  down.</li>
	<li class="list-group-item">Doc: Excellent! I have this folder for your wallet that you can use to remember your goal and keep track of your numbers. Do you remember why blood pressure control is important?</li>
	<li class="list-group-item list-group-item-info">Pt: To prevent strokes and heart attacks.</li>
	<li class="list-group-item">Doc: Absolutely. You know your facts…</li>
</ul>),

dialogTwo:
%Q(<ul class="list-group">
	<li class="list-group-item">Doc: Janice, as we talked about this before, your blood pressure is really high today. We’ve talked a lot about it in the past, but to recap it, it is very important to keep your blood pressure under control to prevent your risk for heart attacks and strokes. I want you to do all that you can to take your blood pressure every morning, especially to remember to take it when you wake up.</li>
	<li class="list-group-item list-group-item-info">Pt: I was rushing this morning and will take my pills when I get home….</li>
	<li class="list-group-item">Doc: Its much better to take them first thing in the morning no matter how rushed you are. As I said,  high blood pressure increases your risk for heart attacks and stroke..</li>
	<li class="list-group-item list-group-item-info">Pt: I know….</li>
</ul>)

)

Mod.create(

aType: "Agree", 
vidOneSource: "//www.youtube.com/embed/c3fDbcxCWUs", 
vidTwoSource: "//www.youtube.com/embed/Far9qrxzdW0", 
explanation: "In the first video, the doctor provides a lot of information and then asks the patient if that is OK. It is more helpful, to chunk the information and obtain agreement for each step. First the doctor asks Janice if she willing to commit to the goal. Next, the doctor raises the issue of meeting monthly until her blood pressure is controlled. This puts this issue out there for discussion and supports the patient’s autonomy in decision making.", 

dialogueOne: 
%Q(<ul class="list-group">
	<li class="list-group-item">Janice, we talked about your goal. I’d like to talk about a plan for you to reach your goal.</li>
	<li class="list-group-item list-group-item-info">Pt: OK.</li>
	<li class="list-group-item">Doc: First, you need to take your medication consistently in the morning. It is really important for you to remember to do that. Some people put their pills either in the kitchen or the bathroom, wherever you can to remember to take them in the morning. Second, you need to reduce your salt. For a lot of people, this means cutting out fried food. The third thing is to become more physically active.  What I am going to do today is increase your blood pressure medication and I'd like to see you back in a month until hopefully your blood pressure is controlled.</li>
	<li class="list-group-item list-group-item-info">Pt: Okay.</li>
</ul>),

dialogTwo:
%Q(<ul class="list-group">
	<li class="list-group-item">Doc: OK. We’ve talked about how lowering your blood pressure helps keep you healthy. Are you willing to commit to getting your numbers under control?</li>
	<li class="list-group-item list-group-item-info">Pt: I am. I was just rushing this morning…..</li>
	<li class="list-group-item">Doc: I understand. It is hard  to remember things when we are in a rush, and I know establishing healthy routines definitely takes time. I’d like to suggest we meet every month until you reach your goal. It usually takes about 2-3 visits. What do you think?</li>
	<li class="list-group-item list-group-item-info">Pt:  You know I don’t like coming to the doctor so much, but I'll try.</li>
	<li class="list-group-item">Doc: Excellent, that's great, and I appreciate that Janice.  I am glad that we can work on this together, because  I see your blood pressure has been high for the last couple visits but I definitely think we can make some improvement by working together. I recommend we add another medication to be safe. We can talk about stopping it  later as you start cut back on your salt and start walking every day. Is it okay with you that we add another medication today?</li>
	<li class="list-group-item list-group-item-info">Pt: If you really think so...</li>
</ul>)

)

Mod.create(

aType: "Assist", 
vidOneSource: "//www.youtube.com/embed/B4klm_L3WvI", 
vidTwoSource: "//www.youtube.com/embed/We1Tz6ZtNOw", 
explanation: "In the first video, the doctor provides a lot of information and asks the patient at the end if that is OK. In the second video, the doctor explores some reasons why the patient might be having trouble with medication adherence. The same approach can be applied to lifestyle changes.", 

dialogueOne: 
%Q(<ul class="list-group">
	<li class="list-group-item">Doc: It sounds like you have a pretty good handle on what will improve your blood pressure. Can we talk about a plan for making that happen?</li>
	<li class="list-group-item list-group-item-info">Pt: Okay.</li>
	<li class="list-group-item">Doc: Lets start with taking your taking medication. I know that patients miss medication for lots of reasons beyond forgetting. Some of my patients tell me they are worried about side effects or becoming dependent on the medication. For others it is costs. Do some of these reasons apply to you?</li>
	<li class="list-group-item list-group-item-info">Pt: Sometimes I just forget. But honestly, I just don't like the though of taking a pill everyday. It isn’t natural. I worry about what it is doing to my body.</li>
</ul>),

dialogTwo:
%Q(<ul class="list-group">
	<li class="list-group-item">Doc:  I want to help your reach goal for your blood pressure, so I am going to give you some suggestions. First, I think you should put pills on the counter or by the sink in the bathroom. A lot of my patients do that, and they say it helps them to remember to take their medicines every day. The second thing that I want you to do is to read labels when you shop so you can keep track of the salt and other things that could be making your blood presure high. Here's a brochure that can help you read labels. The third thing that I want you to do is to start walking for a half hour every day. That will help make a difference in lowering your blood pressure. I am also going to increase the dosage of your blood pressure medication today. That's what I will recommend today.</li>
	<li class="list-group-item list-group-item-info">Pt: Do you have to?</li>
</ul>)

)

Mod.create(

aType: "Arrange", 
vidOneSource: "//www.youtube.com/embed/ZJj6G6jUcxw", 
vidTwoSource: "//www.youtube.com/embed/US8leQpN5vs" , 
explanation: "In both videos, the doctor provides a summary for the patient at end. This can be very helpful in promoting recall. However, in the second video, the approach is more patient centered. Most importantly, the doctor confirms that the patient is still willing to commit to monthly visit (i.e. arranging follow-up).", 

dialogueOne: 
%Q(<ul class="list-group">
	<li class="list-group-item">Doc: So Janice, I think you have a pretty good idea what to do. I want you to take you pills every day. Cut down on your salt and start walking. I want to see you back in a month.</li>
	<li class="list-group-item list-group-item-info">Pt: OK.</li>
</ul>),

dialogTwo:
%Q(<ul class="list-group">
	<li class="list-group-item">Doc: We’ve covered a lot. Lets quickly review. Whats your goal?</li>
	<li class="list-group-item list-group-item-info">Pt: Less than 140/90.</li>
	<li class="list-group-item">Doc: Wonderful! That's right. What are going to do differently?</li>
	<li class="list-group-item list-group-item-info">Pt: I am going to exercise at least 10 minutes a day, I'm going to cut back on salt, and I'm going to read food labels.</li>
	<li class="list-group-item">Doc: That's great, and I am so happy that you plan to make those change. We also talked about meeting more frequently until you reach your goal. Do you remember how often?</li>
	<li class="list-group-item list-group-item-info">Pt: At least once a month.</li>
	<li class="list-group-item">Doc: Fantastic! So you are still on board with all of this?</li>
	<li class="list-group-item list-group-item-info">Pt: Yes.</li>
	<li class="list-group-item">Doc: Great! I look forward to seeing you back in four weeks for your next visit.</li>
</ul>)

)

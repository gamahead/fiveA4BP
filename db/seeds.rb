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

User.create!(

	name: 'Joshua Rose',
	email: 'joshua.rose@rochester.edu',
	password: 'jo3huajj',
	password_confirmation: 'jo3huajj',
	answers: ['','','','',''].to_yaml,
	final_feedback: ['','','','',''].to_yaml,
	clinic: 'Dept. of Family Medicine - University of Rochester'
	)

# Mod 1
Mod.create(

aType: "Ask/Assess", 
vidOneSource: "https://www.youtube.com/embed/sYuZTxb3mMI", 
vidTwoSource: "https://www.youtube.com/embed/fXWsGQSFnkE", 
explanation: "In the second video, the doctor asked several important questions. First, she asked if there was something else. This helps get all the issues on the agenda. Second, she asked the patient for permission to address the blood pressure first. Last, she asked Janice if she understood her goal.", 

dialogueOne: 
%Q(<ul class="list-group">
	<li class="list-group-item">Doc: Hello, I'm doctor Fiscella.</li>
	<li class="list-group-item list-group-item-info">Pt: Hi, nice to meet you. </li>
	<li class="list-group-item">Doc: And you're Janice?</li>
	<li class="list-group-item list-group-item-info">Pt: Yes.</li>
	<li class="list-group-item">Doc: How are you doing today?</li>
	<li class="list-group-item list-group-item-info">Pt: I'm ok.</li>
	<li class="list-group-item">Doc: What brings you in today?</li>
	<li class="list-group-item list-group-item-info">Pt: My knee is bothering me.</li>
	<li class="list-group-item">Doc: Your knee is bothering you?</li>
	<li class="list-group-item list-group-item-info">Pt: Mhm.</li>
	<li class="list-group-item">Doc: Ok. We'll get to that in just a minute, but I wanted to talk to you about your blood pressure. It's really high today. </li>
	<li class="list-group-item list-group-item-info">Pt: Ok.</li>
	<li class="list-group-item">Doc: Did you take your medication today? </li>
	<li class="list-group-item list-group-item-info">Pt: No, I was in a rush. I'll take it when I get home.</li>
	<li class="list-group-item">Doc: You really need to take it every day. It's important.</li>
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

# Mod 2
Mod.create(

aType: "Advise", 
vidOneSource: "https://www.youtube.com/embed/qSfXClaYNgI", 
vidTwoSource: "https://www.youtube.com/embed/YimyhkP_VDQ", 
explanation: "In both videos, the doctor provides some useful advice. However, in the first one, the doctor is more interactive – drawing answers out of the patient rather than just giving out information. This approach is analogous to motivational interviewing, which helps patients process the information better.", 

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
	<li class="list-group-item">Doc: Janice your bp is too high today. We've talked a lot about why it's important to keep it down. High blood pressure really increases your risks for heart attacks and strokes, and you really need to take it every morning.</li>
	<li class="list-group-item list-group-item-info">Pt: I know, I was rushing this morning, but I'll take it when I get home.</li>
	<li class="list-group-item">Doc: You really need to take it first thing in the morning. We've talked about this before.</li>
</ul>)

)

# Mod 3
Mod.create(

aType: "Agree", 
vidOneSource: "https://www.youtube.com/embed/GKcHDfZgtiE", 
vidTwoSource: "https://www.youtube.com/embed/wMMg2oV1A4k", 
explanation: "In the first video, the doctor provides a lot of information and then asks the patient if that is OK. It is more helpful to chunk the information and obtain agreement for each step, as in the second video. First the doctor asks Janice if she willing to commit to the goal. Next, the doctor raises the issue of meeting monthly until her blood pressure is controlled. This puts this issue out there for discussion and supports the patient’s autonomy in decision making.", 

dialogueOne: 
%Q(<ul class="list-group">
	<li class="list-group-item">Doc: Janice, we talked about your goal. I’d like to talk about a plan for you to reach your goal.</li>
	<li class="list-group-item list-group-item-info">Pt: OK.</li>
	<li class="list-group-item">Doc: First, you need to take your medication consistently in the morning. It is really important for you to remember to do that. Some people put their pills either in the kitchen or the bathroom, wherever you can to remember to take them in the morning. Second, you need to reduce your salt. For a lot of people, this means cutting out fried food. The third thing is to become more physically active.  What I am going to do today is increase your blood pressure medication and I'd like to see you back in a month until hopefully your blood pressure is controlled.</li>
	<li class="list-group-item list-group-item-info">Pt: Okay.</li>
</ul>),

dialogTwo:
%Q(<ul class="list-group">
	<li class="list-group-item">Doc: You understand why it's important to get your bp under control. Are you willing to do what it takes to reach those targets?</li>
	<li class="list-group-item list-group-item-info">Pt: I am. I was just rushing this morning.</li>
	<li class="list-group-item">Doc: Yeah, I understand. It's hard for all of us to remember things when we're in a rush, and it's hard for us to change our daily routines. I'd like to suggest we meet every month until we get your blood pressure where it needs to be. I'm thinking this is going to take maybe 2 or 3 more visits. </li>
	<li class="list-group-item list-group-item-info">Pt: Ok, you know I don't like coming to the doctor as much, but I'll do it. </li>
	<li class="list-group-item">Doc: Great! I appreciate it. I'm glad we can work on this together. I see your blood pressure has been high now for the last 3 visits, so I think we should add another medication today. We can always drop the medication as your blood pressure comes down below the target and you start to do other things to bring it down, cutting back on you r salt and exercising more. Can we do that? </li>
	<li class="list-group-item list-group-item-info">Pt: Ok.</li>
</ul>)

)

# Mod 4
Mod.create(

aType: "Assist", 
vidOneSource: "https://www.youtube.com/embed/D3lt3qvJ7XM", 
vidTwoSource: "https://www.youtube.com/embed/ugOCiZilNgk", 
explanation: "In the first video, the doctor provides a lot of information and asks the patient at the end if that is OK. In the second video, the doctor explores some reasons why the patient might be having trouble with medication adherence. The same approach can be applied to lifestyle changes.", 

dialogueOne: 
%Q(<ul class="list-group">
	<li class="list-group-item">Doc: Janice, it sounds like you have a pretty good handle on what it takes to improve your blood pressure. Can we talk about a plan for actually making that happen?</li>
	<li class="list-group-item list-group-item-info">Pt: Sure.</li>
	<li class="list-group-item">Doc: So let's start with taking your medication. I know people miss their medication for lots of reasons. For you, you were rushing today. And some of my patients are really worried about side effects, other are worried about costs, others are worried about becoming dependent on the medication. Any of these reasons apply to you?</li>
	<li class="list-group-item list-group-item-info">Pt: Well, I rushed, but for the most part I just worry about taking a pill every day. I'm concerned about what it's doing to my body.</li>
	<li class="list-group-item">Doc: I get it. </li>
</ul>),

dialogTwo:
%Q(<ul class="list-group">
	<li class="list-group-item">Doc:  I want to help your reach goal for your blood pressure, so I am going to give you some suggestions. First, I think you should put pills on the counter or by the sink in the bathroom. A lot of my patients do that, and they say it helps them to remember to take their medicines every day. The second thing that I want you to do is to read labels when you shop so you can keep track of the salt and other things that could be making your blood presure high. Here's a brochure that can help you read labels. The third thing that I want you to do is to start walking for a half hour every day. That will help make a difference in lowering your blood pressure. I am also going to increase the dosage of your blood pressure medication today. That's what I will recommend today.</li>
	<li class="list-group-item list-group-item-info">Pt: Do you have to?</li>
</ul>)

)

# Mod 5
Mod.create(

aType: "Arrange", 
vidOneSource: "https://www.youtube.com/embed/vORxuVtUWOQ", 
vidTwoSource: "https://www.youtube.com/embed/-YI3MIIfT1g" , 
explanation: "In both videos, the doctor provides a summary for the patient at end. This can be very helpful in promoting recall. However, in the second video, the approach is more patient centered. Most importantly, the doctor confirms that the patient is still willing to commit to monthly visit (i.e. arranging follow-up).", 

dialogueOne: 
%Q(<ul class="list-group">
	<li class="list-group-item">Doc: Ok Janice, I think you have a pretty good idea of what you need to do. Take your pills every day, cut down on your salf, start walking every day, and come back and see me in a month. Ok?</li>
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

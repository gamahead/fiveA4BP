# -*- encoding : utf-8 -*-
#!/bin/env ruby
# encoding: utf-8

def printIt(boomd)
	print(boomd)
end

printIt(a: %Q(<ul class="list-group">
	<li class="list-group-item">Doc: Good morning, Janice. How are you?</li>
	<li class="list-group-item list-group-item-info">Pt: I am good.</li>
	<li class="list-group-item">Doc: What brings you into today?</li>
	<li class="list-group-item list-group-item-info">Pt: My knee is still bothering me…</li>
	<li class="list-group-item">Doc: OK. We will get to that. First, I want to tell you that your blood pressure is kind of high today.</li>
	<li class="list-group-item list-group-item-info">Pt: I didn't take my medication I was rushing this morning.</li>
	<li class="list-group-item">Doc: I want to let you know that it is important to take your blood pressure medication first thing the morning.</li>
</ul>),b: "c")


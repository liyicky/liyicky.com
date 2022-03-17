require 'rails_helper'

RSpec.describe BlogPost, :type => :model do

  before :each do
    BlogPost.all.each { |post| post.delete }
  end

  example_body = "<h3>Step 1</h3><p>Generate an integration token.</p><p><a href=\"https://medium.com/me/settings\">https://medium.com/me/settings</a></p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/528/1*vEtJzCUebtBVFYHYC7zqvw.png\" /></figure><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/0*6QWt3HP34hRO5BR3\" /></figure><h3>Step 2</h3><p>Let’s look at the docs. <a href=\"https://github.com/Medium/medium-api-docs\">https://github.com/Medium/medium-api-docs</a></p><p>You need to put the access token in your headers like this:</p><pre>curl -X GET -H “Authorization: Bearer THISTEXTSHOULDBEYOURACCESSTOKEN” -H “Content-Type: application/json” -H “Accepts: application/json” “https://api.medium.com/v1/me”</pre><p>Test it out in the terminal.</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/0*e2jxf30A5zzyfXlg\" /></figure><p>If you did it right, you should see a json response like this</p><h3>Step 3 — Get your posts</h3><p>You can’t simply request you own posts with their api, probably because that would make too much sense. So how can I get my blog posts on my rails website?</p><p>First I read something from an actual good blogger.</p><p><a href=\"https://medium.com/@oldirony/how-to-get-your-medium-posts-on-your-website-bcf45ab46529\">How to get your Medium posts on your website</a></p><p>Thanks dawg.</p><p>Then my nipples tingled, because I knew just what to do. Go in the the rss feed to get my data.</p><p><a href=\"https://medium.com/feed/@liyicky\">https://medium.com/feed/@liyicky</a> &lt;- Replace liyicky with your medium name.</p><p>Which looks like this:</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/0*LfgWqQKjwfKMnVZf\" /></figure><p>Then getting that in a simple ruby class. Forgive the bad code, I’m very rusty.</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/0*aG1bEw76MwSMqOKD\" /></figure><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/0*CXrMmKLXAfC9GERL\" /></figure><p>Test it in the console.</p><p>Thank you for reading ❤.</p><img src=\"https://medium.com/_/stat?event=post.clientViewed&referrerSource=full_rss&postId=4c57cf14bce5\" width=\"1\" height=\"1\" alt=\"\">"
  example_response = '<?xml version="1.0" encoding="UTF-8"?><rss xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:content="http://purl.org/rss/1.0/modules/content/" xmlns:atom="http://www.w3.org/2005/Atom" version="2.0" xmlns:cc="http://cyber.law.harvard.edu/rss/creativeCommonsRssModule.html">
  <channel>
      <title><![CDATA[Stories by Liyicky on Medium]]></title>
      <description><![CDATA[Stories by Liyicky on Medium]]></description>
      <link>https://medium.com/@liyicky?source=rss-310eb3bcba4c------2</link>
      <image>
          <url>https://cdn-images-1.medium.com/fit/c/150/150/1*97OdS6A2KI4TSQdNyTKZgA.jpeg</url>
          <title>Stories by Liyicky on Medium</title>
          <link>https://medium.com/@liyicky?source=rss-310eb3bcba4c------2</link>
      </image>
      <generator>Medium</generator>
      <lastBuildDate>Thu, 17 Mar 2022 00:48:57 GMT</lastBuildDate>
      <atom:link href="https://medium.com/@liyicky/feed" rel="self" type="application/rss+xml"/>
      <webMaster><![CDATA[yourfriends@medium.com]]></webMaster>
      <atom:link href="http://medium.superfeedr.com" rel="hub"/>
      <item>
          <title><![CDATA[How to connect to the Medium API in Rails]]></title>
          <link>https://medium.com/@liyicky/how-to-connect-to-the-medium-api-in-rails-4c57cf14bce5?source=rss-310eb3bcba4c------2</link>
          <guid isPermaLink="false">https://medium.com/p/4c57cf14bce5</guid>
          <category><![CDATA[medium]]></category>
          <category><![CDATA[medium-api]]></category>
          <category><![CDATA[ruby-on-rails]]></category>
          <dc:creator><![CDATA[Liyicky]]></dc:creator>
          <pubDate>Sun, 20 Feb 2022 08:01:19 GMT</pubDate>
          <atom:updated>2022-02-20T08:01:19.360Z</atom:updated>
          <content:encoded><![CDATA[<h3>Step 1</h3><p>Generate an integration token.</p><p><a href="https://medium.com/me/settings">https://medium.com/me/settings</a></p><figure><img alt="" src="https://cdn-images-1.medium.com/max/528/1*vEtJzCUebtBVFYHYC7zqvw.png" /></figure><figure><img alt="" src="https://cdn-images-1.medium.com/max/1024/0*6QWt3HP34hRO5BR3" /></figure><h3>Step 2</h3><p>Let’s look at the docs. <a href="https://github.com/Medium/medium-api-docs">https://github.com/Medium/medium-api-docs</a></p><p>You need to put the access token in your headers like this:</p><pre>curl -X GET -H “Authorization: Bearer THISTEXTSHOULDBEYOURACCESSTOKEN” -H “Content-Type: application/json” -H “Accepts: application/json” “https://api.medium.com/v1/me”</pre><p>Test it out in the terminal.</p><figure><img alt="" src="https://cdn-images-1.medium.com/max/1024/0*e2jxf30A5zzyfXlg" /></figure><p>If you did it right, you should see a json response like this</p><h3>Step 3 — Get your posts</h3><p>You can’t simply request you own posts with their api, probably because that would make too much sense. So how can I get my blog posts on my rails website?</p><p>First I read something from an actual good blogger.</p><p><a href="https://medium.com/@oldirony/how-to-get-your-medium-posts-on-your-website-bcf45ab46529">How to get your Medium posts on your website</a></p><p>Thanks dawg.</p><p>Then my nipples tingled, because I knew just what to do. Go in the the rss feed to get my data.</p><p><a href="https://medium.com/feed/@liyicky">https://medium.com/feed/@liyicky</a> &lt;- Replace liyicky with your medium name.</p><p>Which looks like this:</p><figure><img alt="" src="https://cdn-images-1.medium.com/max/1024/0*LfgWqQKjwfKMnVZf" /></figure><p>Then getting that in a simple ruby class. Forgive the bad code, I’m very rusty.</p><figure><img alt="" src="https://cdn-images-1.medium.com/max/1024/0*aG1bEw76MwSMqOKD" /></figure><figure><img alt="" src="https://cdn-images-1.medium.com/max/1024/0*CXrMmKLXAfC9GERL" /></figure><p>Test it in the console.</p><p>Thank you for reading ❤.</p><img src="https://medium.com/_/stat?event=post.clientViewed&referrerSource=full_rss&postId=4c57cf14bce5" width="1" height="1" alt="">]]></content:encoded>
      </item>
      <item>
          <title><![CDATA[Becoming a Swift Developer (Week 4)]]></title>
          <link>https://medium.com/@liyicky/becoming-a-swift-developer-week-4-63e9ef6b7595?source=rss-310eb3bcba4c------2</link>
          <guid isPermaLink="false">https://medium.com/p/63e9ef6b7595</guid>
          <category><![CDATA[habits]]></category>
          <category><![CDATA[self-improvement]]></category>
          <category><![CDATA[swift]]></category>
          <category><![CDATA[100-days-of-swift]]></category>
          <category><![CDATA[learning-to-code]]></category>
          <dc:creator><![CDATA[Liyicky]]></dc:creator>
          <pubDate>Sun, 20 Feb 2022 07:50:14 GMT</pubDate>
          <atom:updated>2022-02-20T07:50:14.846Z</atom:updated>
          <content:encoded><![CDATA[<h3>Week 4</h3><p>This week I finished the Udemy course <a href="https://www.udemy.com/course/ios-13-app-development-bootcamp/">iOS &amp; Swift — The Complete iOS App Development Bootcamp</a>. Great course, but…</p><blockquote>“<strong>In theory, theory and practice are the same.</strong> <strong>In practice, they are not.</strong>” — Einstein</blockquote><p>Everyone knows that Einstein was never wrong. So it’s time to quit looking at code and start writing it. Making real stuff is the only way to really get good and open that door. So I started a new project. My first practice project will be very simple. I’m going to make a rails based API for my website and then make an iOS app to utilize it. It’s weird to make a product that literally 0 people will ever use but meh, i’ve been procrastinating building my website for years.</p><figure><img alt="" src="https://cdn-images-1.medium.com/max/369/1*gpxJ79J1i_mFsGWTWZp-nQ.png" /></figure><figure><img alt="" src="https://cdn-images-1.medium.com/max/369/1*jhb0Ymsdti1PUuzOwD0L-Q.png" /><figcaption>Still bugging out and saying my working time is less than a perfect 40 hours.</figcaption></figure><h3>What I did.</h3><p>I made a simple Hacker News reading using SwiftUI. Good practice.</p><figure><img alt="" src="https://cdn-images-1.medium.com/max/878/1*sgFfxWU_Q11W_iYqGGd_TQ.gif" /></figure><h3>Goals</h3><p>Finish new project. Real world experience. 100 days of swift. Thank you for reading ❤.</p><img src="https://medium.com/_/stat?event=post.clientViewed&referrerSource=full_rss&postId=63e9ef6b7595" width="1" height="1" alt="">]]></content:encoded>
      </item>
      <item>
          <title><![CDATA[Becoming a Swift Developer (Week 3)]]></title>
          <link>https://medium.com/@liyicky/becoming-a-swift-developer-week-3-4ac01a01c477?source=rss-310eb3bcba4c------2</link>
          <guid isPermaLink="false">https://medium.com/p/4ac01a01c477</guid>
          <category><![CDATA[programming]]></category>
          <category><![CDATA[japan]]></category>
          <category><![CDATA[self-improvement]]></category>
          <category><![CDATA[swift]]></category>
          <category><![CDATA[100-days-of-swift]]></category>
          <dc:creator><![CDATA[Liyicky]]></dc:creator>
          <pubDate>Sun, 13 Feb 2022 13:07:17 GMT</pubDate>
          <atom:updated>2022-02-13T13:07:47.865Z</atom:updated>
          <content:encoded><![CDATA[<h3>Week 3</h3><p>Week 3 of my swift adventure. This week was harder and I only finished one app in the tutorial. I built a chat app using Firebase for the backend. As a RoR guy, using firebase was a real joy. Even though I’ve done it dozens of times, setting up users and authenticating them in rails is always a trip to the dentist. Using firebase, what would take an hour took seconds. And that was my first time setting it up too.</p><p>I had a lot more fun coding this week, but i’m still only following the tutorial. So nothing much to say except my toes are officially wet. Swift is a nice language and I like writing a bunch of structs and optionals.</p><figure><img alt="" src="https://cdn-images-1.medium.com/max/369/1*9JQPNGTLXtqqjuDJYjAMww.png" /></figure><figure><img alt="" src="https://cdn-images-1.medium.com/max/369/1*vCGUC4llBc8ppvWWa_DD9g.png" /><figcaption>Work hard play hard?</figcaption></figure><p>On the weekend I watched a lot of TV and I played some Pokemon legends Arceus. Unfortunately Pokemon mastery doesn’t pay well so I wanna try to cut back to 5 hours of TV time this week. Is that even cosmically possible?</p><h3>What I did</h3><figure><img alt="" src="https://cdn-images-1.medium.com/max/1024/1*smSKSPuoyRWHX3xTfRAxTA.gif" /></figure><p>This is the “Messenger” app I built this week. I learned a lot bout xibs, casting to type, firebase and networking stuff, multiple views, cocoapods and SPM, and stuff.</p><figure><img alt="" src="https://cdn-images-1.medium.com/max/1024/1*jraArB5cQHxiAZuFdBW_Eg.gif" /><figcaption>I logged in</figcaption></figure><figure><img alt="" src="https://cdn-images-1.medium.com/max/1024/1*etvdO5XoOPtZHsManrkvAQ.gif" /><figcaption>I tried to record myself typing this code in 1 take like i’m Linus Torvalds or something.</figcaption></figure><h3>Goals</h3><p>Once again please check out the <a href="https://www.udemy.com/course/ios-13-app-development-bootcamp">Udemy course</a> on Swift by <a href="https://www.udemy.com/user/4b4368a3-b5c8-4529-aa65-2056ec31f37e/"><strong>Dr. Angela Yu</strong></a><strong>. </strong>Next weekend it would be super dope to cut my TV time by 50% and use that to get a few extra hours in. Also, swift UI. Stay tuned.</p><img src="https://medium.com/_/stat?event=post.clientViewed&referrerSource=full_rss&postId=4ac01a01c477" width="1" height="1" alt="">]]></content:encoded>
      </item>
      <item>
          <title><![CDATA[Becoming a Swift Developer (Week 2)]]></title>
          <link>https://medium.com/@liyicky/becoming-a-swift-developer-week-2-e6db6138af78?source=rss-310eb3bcba4c------2</link>
          <guid isPermaLink="false">https://medium.com/p/e6db6138af78</guid>
          <category><![CDATA[swift]]></category>
          <category><![CDATA[self-improvement]]></category>
          <category><![CDATA[programming]]></category>
          <category><![CDATA[learn-to-code]]></category>
          <category><![CDATA[productivity]]></category>
          <dc:creator><![CDATA[Liyicky]]></dc:creator>
          <pubDate>Mon, 07 Feb 2022 06:45:44 GMT</pubDate>
          <atom:updated>2022-02-09T05:21:47.420Z</atom:updated>
          <content:encoded><![CDATA[<p>Week 2. Finally completed. Don’t know how but I got 15 hours of study in.</p><h3>Week 2</h3><figure><img alt="" src="https://cdn-images-1.medium.com/max/1024/1*ERADQ3ieHneArpzan1vZkg.png" /></figure><figure><img alt="" src="https://cdn-images-1.medium.com/max/1024/1*64TlxP9WCpzVmDPKkx0vvw.png" /><figcaption>Benkyo (勉強) means studying in Japanese.</figcaption></figure><p>I try to listen to Japanese when I’m cleaning and such to get some study in. Outside of that is my 15 hours I got in this week of Swift. Crazy how much time you spend watching TV even when actively trying not to.</p><h3>What I did</h3><p>Unlike last week I started learning a lot this week. Swift is interesting in that it a safe typed language. Coming from a Ruby background, I have to experiment with new patterns of writing code that I didn’t need to with Ruby. It also makes me feel like my code is cleaner though. Ruby’s dynamic typing can make your code a little too personal some times and hard to read.</p><figure><img alt="" src="https://cdn-images-1.medium.com/max/600/1*prTxUKycKUjBJJnbVFujkQ.gif" /><figcaption>Egg time everybody.</figcaption></figure><p>Made an egg timer. Learned about the Timer class. Little bit of UIKit practice.</p><figure><img alt="" src="https://cdn-images-1.medium.com/max/600/1*43LvAOxFyQ9AxMSHfNS1uQ.gif" /><figcaption>BMI Calculation.</figcaption></figure><p>Learned how to make multiview apps w/ UIKit while doing the BMI Calculator.</p><figure><img alt="" src="https://cdn-images-1.medium.com/max/600/1*CPQySetuHx5frRhK3-2QDg.gif" /><figcaption>Things get more difficult</figcaption></figure><p>Finally started networking and doing “real” code. This is where it started getting fun. I learned a lot about using structs, networking and getting data, clean code with optionals, DispatchQueue, and finally buttered my biscuits with some Delegate pattern practice. This one was fun. After writing this app i’m starting to love optionals. It makes you think a lot before you write code.</p><h3>Goals</h3><p>Final note; I didn’t write these apps by myself. I’m following the great <a href="https://www.udemy.com/course/ios-13-app-development-bootcamp">Udemy course</a> on Swift by <a href="https://www.udemy.com/user/4b4368a3-b5c8-4529-aa65-2056ec31f37e/"><strong>Dr. Angela Yu</strong></a><strong>. </strong>I recommend it to anyone.</p><p>A little bit more study and a little less Netflix wouldn’t hurt none. A nice milestone would be to hit 3 hours a day average. I’m looking forward to Swift UI and finishing the course and building my own stuff. Thanks for reading.</p><img src="https://medium.com/_/stat?event=post.clientViewed&referrerSource=full_rss&postId=e6db6138af78" width="1" height="1" alt="">]]></content:encoded>
      </item>
      <item>
          <title><![CDATA[Becoming a Swift Developer (Week 1)]]></title>
          <link>https://medium.com/@liyicky/becoming-a-swift-developer-week-1-1904eb7936c6?source=rss-310eb3bcba4c------2</link>
          <guid isPermaLink="false">https://medium.com/p/1904eb7936c6</guid>
          <category><![CDATA[swift]]></category>
          <category><![CDATA[self-improvement]]></category>
          <category><![CDATA[japan]]></category>
          <category><![CDATA[learning-to-code]]></category>
          <category><![CDATA[habits]]></category>
          <dc:creator><![CDATA[Liyicky]]></dc:creator>
          <pubDate>Sat, 29 Jan 2022 07:00:26 GMT</pubDate>
          <atom:updated>2022-02-09T05:16:42.438Z</atom:updated>
          <content:encoded><![CDATA[<p>The goal is to get a junior developer position as a swift/app developer. Since I bought and live in a house in rural Japan, I need to find a remote position. Can it be done?</p><p>Quick background about me. I started coding 9 years ago. (That’s how old my <a href="https://stackoverflow.com/users/1895804/jason-cheladyn">stackoverflow</a> is at least) I made a few android apps, but 90% of my coding career was backend ROR projects. I’m switching to Swift because I want to get out of the SASS and ecommerce world and into something a little different. I haven’t worked as a programmer in 2 years.</p><p>I’ve lived in Japan for 6 years teaching English and learning Japanese. I have 2 kids, a 3 year old and a newborn, and I also have a wife.</p><h3>Week 1</h3><p>I track every second of my day. This is a great trick I learned from reading <em>The Power of Habit</em>. So I make a plan for the day, track my routine to see where my time actually goes, and iterate on that. 3 hours a day is about the max I study. However I went on a serious 進撃の巨人 (Attack on Titan) bender last weekend a I ended up with 24 hours of TV time.</p><p>That’s why we write these blogs. Now I have to throw away my TV.</p><figure><img alt="" src="https://cdn-images-1.medium.com/max/288/0*pKALK6WareGxjgKT.png" /></figure><figure><img alt="" src="https://cdn-images-1.medium.com/max/288/0*zonWikIRXk_AL-gW.png" /><figcaption>Yesterday (L) &amp; week 1 (R). Strange bug is causing my “Work” time to not be a perfect 8 hours.</figcaption></figure><blockquote>“THE FRAMEWORK: • Identify the routine • Experiment with rewards • Isolate the cue • Have a plan”<br>― <strong>Charles Duhigg, </strong><a href="https://www.goodreads.com/work/quotes/17624817"><strong>The Power Of Habit: Why We Do What We Do In Life And Business</strong></a></blockquote><h4>What I did.</h4><p>I made a few apps following Angela Yu’s <a href="https://www.udemy.com/course/ios-13-app-development-bootcamp/">Udemy course</a> for $15. I got 13% of the way through the course. I didn’t learn much because this is the easiest content, but I did get my toes wet with Swift. I did a lot of iOS stuff in the past so I’m familiar with UIKit already. I’m looking forward to Swift UI.</p><figure><img alt="" src="https://cdn-images-1.medium.com/max/600/0*rXxjaFlWvLHa-Nzj.gif" /></figure><figure><img alt="" src="https://cdn-images-1.medium.com/max/600/0*Xb9_2UIOZ6_cNxNs.gif" /><figcaption>UIKit practice and a beautiful xylophone.</figcaption></figure><h4>Goals</h4><p>Next week, eliminate all the tv time and try to average 3 hours of code per day.</p><img src="https://medium.com/_/stat?event=post.clientViewed&referrerSource=full_rss&postId=1904eb7936c6" width="1" height="1" alt="">]]></content:encoded>
      </item>
  </channel>
</rss>'

  data = [{"title"=>"How to connect to the Medium API in Rails",
    "link"=>"https://medium.com/@liyicky/how-to-connect-to-the-medium-api-in-rails-4c57cf14bce5?source=rss-310eb3bcba4c------2",
    "guid"=>{"__content__"=>"https://medium.com/p/4c57cf14bce5", "isPermaLink"=>"false"},
    "category"=>["medium", "medium-api", "ruby-on-rails"],
    "creator"=>"Liyicky",
    "pubDate"=>"Sun, 20 Feb 2022 08:01:19 GMT",
    "updated"=>"2022-02-20T08:01:19.360Z",
    "encoded"=>
     "<h3>Step 1</h3><p>Generate an integration token.</p><p><a href=\"https://medium.com/me/settings\">https://medium.com/me/settings</a></p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/528/1*vEtJzCUebtBVFYHYC7zqvw.png\" /></figure><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/0*6QWt3HP34hRO5BR3\" /></figure><h3>Step 2</h3><p>Let’s look at the docs. <a href=\"https://github.com/Medium/medium-api-docs\">https://github.com/Medium/medium-api-docs</a></p><p>You need to put the access token in your headers like this:</p><pre>curl -X GET -H “Authorization: Bearer THISTEXTSHOULDBEYOURACCESSTOKEN” -H “Content-Type: application/json” -H “Accepts: application/json” “https://api.medium.com/v1/me”</pre><p>Test it out in the terminal.</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/0*e2jxf30A5zzyfXlg\" /></figure><p>If you did it right, you should see a json response like this</p><h3>Step 3 — Get your posts</h3><p>You can’t simply request you own posts with their api, probably because that would make too much sense. So how can I get my blog posts on my rails website?</p><p>First I read something from an actual good blogger.</p><p><a href=\"https://medium.com/@oldirony/how-to-get-your-medium-posts-on-your-website-bcf45ab46529\">How to get your Medium posts on your website</a></p><p>Thanks dawg.</p><p>Then my nipples tingled, because I knew just what to do. Go in the the rss feed to get my data.</p><p><a href=\"https://medium.com/feed/@liyicky\">https://medium.com/feed/@liyicky</a> &lt;- Replace liyicky with your medium name.</p><p>Which looks like this:</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/0*LfgWqQKjwfKMnVZf\" /></figure><p>Then getting that in a simple ruby class. Forgive the bad code, I’m very rusty.</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/0*aG1bEw76MwSMqOKD\" /></figure><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/0*CXrMmKLXAfC9GERL\" /></figure><p>Test it in the console.</p><p>Thank you for reading ❤.</p><img src=\"https://medium.com/_/stat?event=post.clientViewed&referrerSource=full_rss&postId=4c57cf14bce5\" width=\"1\" height=\"1\" alt=\"\">"},
   {"title"=>"Becoming a Swift Developer (Week 4)",
    "link"=>"https://medium.com/@liyicky/becoming-a-swift-developer-week-4-63e9ef6b7595?source=rss-310eb3bcba4c------2",
    "guid"=>{"__content__"=>"https://medium.com/p/63e9ef6b7595", "isPermaLink"=>"false"},
    "category"=>["habits", "self-improvement", "swift", "100-days-of-swift", "learning-to-code"],
    "creator"=>"Liyicky",
    "pubDate"=>"Sun, 20 Feb 2022 07:50:14 GMT",
    "updated"=>"2022-02-20T07:50:14.846Z",
    "encoded"=>
     "<h3>Week 4</h3><p>This week I finished the Udemy course <a href=\"https://www.udemy.com/course/ios-13-app-development-bootcamp/\">iOS &amp; Swift — The Complete iOS App Development Bootcamp</a>. Great course, but…</p><blockquote>“<strong>In theory, theory and practice are the same.</strong> <strong>In practice, they are not.</strong>” — Einstein</blockquote><p>Everyone knows that Einstein was never wrong. So it’s time to quit looking at code and start writing it. Making real stuff is the only way to really get good and open that door. So I started a new project. My first practice project will be very simple. I’m going to make a rails based API for my website and then make an iOS app to utilize it. It’s weird to make a product that literally 0 people will ever use but meh, i’ve been procrastinating building my website for years.</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/369/1*gpxJ79J1i_mFsGWTWZp-nQ.png\" /></figure><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/369/1*jhb0Ymsdti1PUuzOwD0L-Q.png\" /><figcaption>Still bugging out and saying my working time is less than a perfect 40 hours.</figcaption></figure><h3>What I did.</h3><p>I made a simple Hacker News reading using SwiftUI. Good practice.</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/878/1*sgFfxWU_Q11W_iYqGGd_TQ.gif\" /></figure><h3>Goals</h3><p>Finish new project. Real world experience. 100 days of swift. Thank you for reading ❤.</p><img src=\"https://medium.com/_/stat?event=post.clientViewed&referrerSource=full_rss&postId=63e9ef6b7595\" width=\"1\" height=\"1\" alt=\"\">"},
   {"title"=>"Becoming a Swift Developer (Week 3)",
    "link"=>"https://medium.com/@liyicky/becoming-a-swift-developer-week-3-4ac01a01c477?source=rss-310eb3bcba4c------2",
    "guid"=>{"__content__"=>"https://medium.com/p/4ac01a01c477", "isPermaLink"=>"false"},
    "category"=>["programming", "japan", "self-improvement", "swift", "100-days-of-swift"],
    "creator"=>"Liyicky",
    "pubDate"=>"Sun, 13 Feb 2022 13:07:17 GMT",
    "updated"=>"2022-02-13T13:07:47.865Z",
    "encoded"=>
     "<h3>Week 3</h3><p>Week 3 of my swift adventure. This week was harder and I only finished one app in the tutorial. I built a chat app using Firebase for the backend. As a RoR guy, using firebase was a real joy. Even though I’ve done it dozens of times, setting up users and authenticating them in rails is always a trip to the dentist. Using firebase, what would take an hour took seconds. And that was my first time setting it up too.</p><p>I had a lot more fun coding this week, but i’m still only following the tutorial. So nothing much to say except my toes are officially wet. Swift is a nice language and I like writing a bunch of structs and optionals.</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/369/1*9JQPNGTLXtqqjuDJYjAMww.png\" /></figure><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/369/1*vCGUC4llBc8ppvWWa_DD9g.png\" /><figcaption>Work hard play hard?</figcaption></figure><p>On the weekend I watched a lot of TV and I played some Pokemon legends Arceus. Unfortunately Pokemon mastery doesn’t pay well so I wanna try to cut back to 5 hours of TV time this week. Is that even cosmically possible?</p><h3>What I did</h3><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/1*smSKSPuoyRWHX3xTfRAxTA.gif\" /></figure><p>This is the “Messenger” app I built this week. I learned a lot bout xibs, casting to type, firebase and networking stuff, multiple views, cocoapods and SPM, and stuff.</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/1*jraArB5cQHxiAZuFdBW_Eg.gif\" /><figcaption>I logged in</figcaption></figure><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/1*etvdO5XoOPtZHsManrkvAQ.gif\" /><figcaption>I tried to record myself typing this code in 1 take like i’m Linus Torvalds or something.</figcaption></figure><h3>Goals</h3><p>Once again please check out the <a href=\"https://www.udemy.com/course/ios-13-app-development-bootcamp\">Udemy course</a> on Swift by <a href=\"https://www.udemy.com/user/4b4368a3-b5c8-4529-aa65-2056ec31f37e/\"><strong>Dr. Angela Yu</strong></a><strong>. </strong>Next weekend it would be super dope to cut my TV time by 50% and use that to get a few extra hours in. Also, swift UI. Stay tuned.</p><img src=\"https://medium.com/_/stat?event=post.clientViewed&referrerSource=full_rss&postId=4ac01a01c477\" width=\"1\" height=\"1\" alt=\"\">"},
   {"title"=>"Becoming a Swift Developer (Week 2)",
    "link"=>"https://medium.com/@liyicky/becoming-a-swift-developer-week-2-e6db6138af78?source=rss-310eb3bcba4c------2",
    "guid"=>{"__content__"=>"https://medium.com/p/e6db6138af78", "isPermaLink"=>"false"},
    "category"=>["swift", "self-improvement", "programming", "learn-to-code", "productivity"],
    "creator"=>"Liyicky",
    "pubDate"=>"Mon, 07 Feb 2022 06:45:44 GMT",
    "updated"=>"2022-02-09T05:21:47.420Z",
    "encoded"=>
     "<p>Week 2. Finally completed. Don’t know how but I got 15 hours of study in.</p><h3>Week 2</h3><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/1*ERADQ3ieHneArpzan1vZkg.png\" /></figure><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/1024/1*64TlxP9WCpzVmDPKkx0vvw.png\" /><figcaption>Benkyo (勉強) means studying in Japanese.</figcaption></figure><p>I try to listen to Japanese when I’m cleaning and such to get some study in. Outside of that is my 15 hours I got in this week of Swift. Crazy how much time you spend watching TV even when actively trying not to.</p><h3>What I did</h3><p>Unlike last week I started learning a lot this week. Swift is interesting in that it a safe typed language. Coming from a Ruby background, I have to experiment with new patterns of writing code that I didn’t need to with Ruby. It also makes me feel like my code is cleaner though. Ruby’s dynamic typing can make your code a little too personal some times and hard to read.</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/600/1*prTxUKycKUjBJJnbVFujkQ.gif\" /><figcaption>Egg time everybody.</figcaption></figure><p>Made an egg timer. Learned about the Timer class. Little bit of UIKit practice.</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/600/1*43LvAOxFyQ9AxMSHfNS1uQ.gif\" /><figcaption>BMI Calculation.</figcaption></figure><p>Learned how to make multiview apps w/ UIKit while doing the BMI Calculator.</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/600/1*CPQySetuHx5frRhK3-2QDg.gif\" /><figcaption>Things get more difficult</figcaption></figure><p>Finally started networking and doing “real” code. This is where it started getting fun. I learned a lot about using structs, networking and getting data, clean code with optionals, DispatchQueue, and finally buttered my biscuits with some Delegate pattern practice. This one was fun. After writing this app i’m starting to love optionals. It makes you think a lot before you write code.</p><h3>Goals</h3><p>Final note; I didn’t write these apps by myself. I’m following the great <a href=\"https://www.udemy.com/course/ios-13-app-development-bootcamp\">Udemy course</a> on Swift by <a href=\"https://www.udemy.com/user/4b4368a3-b5c8-4529-aa65-2056ec31f37e/\"><strong>Dr. Angela Yu</strong></a><strong>. </strong>I recommend it to anyone.</p><p>A little bit more study and a little less Netflix wouldn’t hurt none. A nice milestone would be to hit 3 hours a day average. I’m looking forward to Swift UI and finishing the course and building my own stuff. Thanks for reading.</p><img src=\"https://medium.com/_/stat?event=post.clientViewed&referrerSource=full_rss&postId=e6db6138af78\" width=\"1\" height=\"1\" alt=\"\">"},
   {"title"=>"Becoming a Swift Developer (Week 1)",
    "link"=>"https://medium.com/@liyicky/becoming-a-swift-developer-week-1-1904eb7936c6?source=rss-310eb3bcba4c------2",
    "guid"=>{"__content__"=>"https://medium.com/p/1904eb7936c6", "isPermaLink"=>"false"},
    "category"=>["swift", "self-improvement", "japan", "learning-to-code", "habits"],
    "creator"=>"Liyicky",
    "pubDate"=>"Sat, 29 Jan 2022 07:00:26 GMT",
    "updated"=>"2022-02-09T05:16:42.438Z",
    "encoded"=>
     "<p>The goal is to get a junior developer position as a swift/app developer. Since I bought and live in a house in rural Japan, I need to find a remote position. Can it be done?</p><p>Quick background about me. I started coding 9 years ago. (That’s how old my <a href=\"https://stackoverflow.com/users/1895804/jason-cheladyn\">stackoverflow</a> is at least) I made a few android apps, but 90% of my coding career was backend ROR projects. I’m switching to Swift because I want to get out of the SASS and ecommerce world and into something a little different. I haven’t worked as a programmer in 2 years.</p><p>I’ve lived in Japan for 6 years teaching English and learning Japanese. I have 2 kids, a 3 year old and a newborn, and I also have a wife.</p><h3>Week 1</h3><p>I track every second of my day. This is a great trick I learned from reading <em>The Power of Habit</em>. So I make a plan for the day, track my routine to see where my time actually goes, and iterate on that. 3 hours a day is about the max I study. However I went on a serious 進撃の巨人 (Attack on Titan) bender last weekend a I ended up with 24 hours of TV time.</p><p>That’s why we write these blogs. Now I have to throw away my TV.</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/288/0*pKALK6WareGxjgKT.png\" /></figure><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/288/0*zonWikIRXk_AL-gW.png\" /><figcaption>Yesterday (L) &amp; week 1 (R). Strange bug is causing my “Work” time to not be a perfect 8 hours.</figcaption></figure><blockquote>“THE FRAMEWORK: • Identify the routine • Experiment with rewards • Isolate the cue • Have a plan”<br>― <strong>Charles Duhigg, </strong><a href=\"https://www.goodreads.com/work/quotes/17624817\"><strong>The Power Of Habit: Why We Do What We Do In Life And Business</strong></a></blockquote><h4>What I did.</h4><p>I made a few apps following Angela Yu’s <a href=\"https://www.udemy.com/course/ios-13-app-development-bootcamp/\">Udemy course</a> for $15. I got 13% of the way through the course. I didn’t learn much because this is the easiest content, but I did get my toes wet with Swift. I did a lot of iOS stuff in the past so I’m familiar with UIKit already. I’m looking forward to Swift UI.</p><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/600/0*rXxjaFlWvLHa-Nzj.gif\" /></figure><figure><img alt=\"\" src=\"https://cdn-images-1.medium.com/max/600/0*Xb9_2UIOZ6_cNxNs.gif\" /><figcaption>UIKit practice and a beautiful xylophone.</figcaption></figure><h4>Goals</h4><p>Next week, eliminate all the tv time and try to average 3 hours of code per day.</p><img src=\"https://medium.com/_/stat?event=post.clientViewed&referrerSource=full_rss&postId=1904eb7936c6\" width=\"1\" height=\"1\" alt=\"\">"}]
  
     post_data = data.first

  it "is valid with valid attributes" do
    expect(BlogPost.new).to be_valid
  end

  describe ".sync_posts" do
    it "creates blog posts" do

      stub_request(:get, "https://medium.com/feed/@liyicky").
      with(
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'User-Agent'=>'Ruby'
        }).
      to_return(status: 200, body: example_response, headers: { 'content-type'=>'text/xml' })

      BlogPost.sync_posts

      expect(BlogPost.count).to be > 1
    end

  end

  describe ".create_post" do

    before do
      BlogPost.create_post(post_data)
    end

    subject { BlogPost.first }


    it "should create only 1 blog post" do
      expect(BlogPost.all.count).to eq 1  
    end

    it "should hold correct values" do
      expect(subject.title).to eq "How to connect to the Medium API in Rails"
      expect(subject.created_at).to eq DateTime.new(2022, 2, 20, 8, 1, 19)
      expect(subject.link).to eq "https://medium.com/@liyicky/how-to-connect-to-the-medium-api-in-rails-4c57cf14bce5?source=rss-310eb3bcba4c------2"
      expect(subject.body).to eq example_body
    end
  end

  describe "#image_urls" do
    before do
      BlogPost.create_post(post_data)
    end

    subject { BlogPost.first }

    it "should return an array" do
      expect(subject.image_urls).to be_a_kind_of Array
    end

    BlogPost.first.image_urls.each do |url|
      it "should only return blog post image links" do
        expect(url).to include("https://cdn-images-1.medium.com")
      end
    end 
  end
end
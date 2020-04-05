Article.create title: "Article Title", category: "sports", lead: "At some point there will be something the read in the lead",
content: "Article content will go here for the user to read. If they so choose to actually read. And not just look at the title and picture. And if they do in fact make it this far in the text, surprise! You win a prize! Yes indeed folks, you get a prize for reading this far. And what is this said prize? Well, it is that there are even more articles on this site for you to read! Congrats and have fun read more of our wonderful content!",
premium: false,
location_id: 1

Article.create title: "Coronavirus in Sweden",
category: "latest_news",
lead: "We are all in quarentine",
content: "We are all mad here. That quote from the Mad Hatter in Alice in Wonderland has never been more true than now. We are experiencing a wave of maddness as the quarentine continues for people across the globe. People in Italy have been reported to actually talk to their neighbors, playing music for the street and even group calisthenics on the patio. These are indeed scary times. As we move forward into an uncertain future, we have got to wonder, what will the Italians do next.",
premium: false,
location_id: 2

Article.create title: "Thomas Got a New Car",
category: "culture",
lead: "He bought it to comfort himself",
content: "On Wednesday of last we, we here at Newsroom 1 were informed that Thomas Ochman had bought a new car. And not just any car but a Berlingo. His son, Oliver, was reported to have shaken his head in sadness when he heard the news, questioning why his father needed another car. And yet, later that same day we also learned that Mr. Ochman wants a third car. And not just any car, but a blank that he found on Blocket. The big questions now are: will he get it and how will Oliver react?",
premium: true,
location_id: 3

Article.create title: "Craft Academy Heading for the Stars",
category: "tech",
lead: "This little start up is up and coming as their bootcamp programs gains more presteige.",
content: "Craft Academy has been around for a few years now and have been consistently producing Software Engineers of exceptional quality. All their students have been a beacon of what a bootcamps can be and the quality of education they can produce. As yet another cohort is about to emerge, we are excited to get these young padawon coders into the market where they can blossom into the experienced coders we need to keep up in these modern times.",
premium: true,
location_id: 4

Article.create title: "The Delicacies Created Because of Coronavirus",
category: "food",
lead: "As people continue to avoid leaving home as much as possible, new creative levels are being reached in the kitchen.",
content: "We are in a time of Rennasaince for the home chef as people continue to be reticient to leave their home unless absolutely necessary. People are finally finding uses for the mostly empty bags of frozen vegetables, that last half cup of flour, and only having enough pasta for half a meal. They are taking the normally ignored food items that never seem to make their way to a plate, and creating wonderfully diverse, if sometimes inedible, creations that are delighting the world. Stay tuned for an exclusive of some of these wonderfully unexpected and bizarre meals.",
premium: true,
location_id: 5

User.create email: 'user@mail.com', password: 'password', premium_user: false, role: 'user'
User.create email: 'premium@mail.com', password: 'password', premium_user: true, role: 'user'
User.create email: 'journalist@mail.com', password: 'password', premium_user: true, role: 'journalist'


location_list = [
  {country: "Sweden", lat: 59.20, long: 18.04} ,
  {country: "United States", lat: 38.54, long: 77.02},
  {country: "Germany", lat: 52.31, long: 13.23},
  {country: "Japan", lat: 35.42, long: 139.42},
  {country: "China", lat: 39.55, long: 116.23},
  {country: "Canada", lat: 45.25, long: 75.41},
  {country: "Mexico", lat: 19.26, long: 99.08},
  {country: "France", lat: 48.51, long: 2.21},
  {country: "Norway", lat: 59.57, long: 10.45},
  {country: "Italy", lat: 41.54, long: 12.30},
  {country: "England", lat: 51.3, long: 0.08},
  {country: "Spain", lat: 40.23, long: 3.43},
]
location_list.each do |country, lat, long|
  Location.create(:location, country: country, lat: lat, long: long)
end
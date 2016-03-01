# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#Arena seeds
#Miami Downtown Soccer
Arena.create(name: "Miami Downtown Soccer", address: "444 NW 5th St, Miami, FL 33128", number: "(305) 808-9997", website: "http://www.downtownsoccermiami.com/", size: 12, price: 120, image: open("http://www.downtownsoccermiami.com/images/homecollage.jpg"), lat: 25.7784218, lng: -80.2042857)

#Midtown Indoor Soccer
Arena.create(name: "Midtown Indoor Soccer", address: "370 NW 24th St, Miami, FL 33127", number: "(786) 253-2888", website: "http://www.midtownindoorsoccer.com/", size: 10, price: 100, image: open("http://cdn.guide.myfrenchcity.com/wp-content/uploads/sites/4/2015/03/Midtown-Stadium-Indoor-Soccer.jpg"), lat: 25.799842, lng: -80.2039195)

#Brickell Soccer Rooftop
Arena.create(name: "Brickell Soccer Rooftop", address: "444 Brickell Ave, Miami, FL 33131", number: "(305) 967-3512", website: "http://soccerooftop.com/", size: 12, price: 120, image: open("http://i.imgur.com/joiUtKx.jpg"), lat: 25.7690803, lng: -80.1924912)

#Wynwood Indoor Soccer
Arena.create(name: "Wynwood Indoor Soccer", address: "2222 NW 5th Ave, Miami, FL 33127", number: "(786) 366-7064", website: "http://www.wynwoodsoccer.com/", size: 10, price: 100, image: open("https://pbs.twimg.com/media/CKoK7aXVEAA5OeA.jpg"), lat:25.7985998, lng: -80.2056238)

#La Caimanera Soccer
Arena.create(name: "La Caimanera Soccer", address: "8111 NW 54th St, Miami, FL 33166", number: "(786) 845-0847", website: "http://lacaimanera.us/", size: 12, price: 120, image: open("https://i.ytimg.com/vi/h0v38EORzf0/maxresdefault.jpg"), lat: 25.8228948, lng: -80.3308407)

#Soccer Town
Arena.create(name: "Soccer Town Midtown Miami", address: "2728 NE 2nd Ave, Miami, FL 33137", number: "(786) 263-9305", website: "http://soccertownmiami.com/", size: 12, price: 100, image: open("http://www.bizbash.com/content/editorial/storyimg/big/e20322sa.jpg"), lat: 25.8030377, lng: -80.1934951)
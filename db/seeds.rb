# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Review.destroy_all
Favorite.destroy_all
Order.destroy_all
Personalization.destroy_all
Page.destroy_all
User.destroy_all
Book.destroy_all




lina = User.create!(email: "lina.meyer@gmail.com", first_name: 'Lina', last_name:'Meyer', password: '123456',  remote_photo_url: 'http://res.cloudinary.com/linameyer/image/upload/v1528448332/Linaneu.jpg')
simon = User.create!(email: "simon.sohm@gmail.com", first_name: 'Simon', last_name:'Sohm', password: "123456", remote_photo_url: 'http://res.cloudinary.com/linameyer/image/upload/v1528372666/Simon.jpg')
oma = User.create!(email: "oma@gmail.com", first_name: 'Ingrid', last_name:'Müller', password: "123456", remote_photo_url: 'http://res.cloudinary.com/linameyer/image/upload/v1528372666/Oma.jpg')
mama = User.create!(email: "mama@gmail.com", first_name: 'Kerstin', last_name:'Meyer', password: "123456", remote_photo_url: 'http://res.cloudinary.com/linameyer/image/upload/v1528372666/Mama.jpg')
papa = User.create!(email: "papa@gmail.com", first_name: 'Thomas', last_name:'Rauert', password: "123456", remote_photo_url: 'http://res.cloudinary.com/linameyer/image/upload/v1528372666/Papa.jpg')
chica1 = User.create!(email: "chica1@gmail.com", first_name: 'Anne', last_name:'Stemer', password: "123456", remote_photo_url: 'http://res.cloudinary.com/linameyer/image/upload/v1528372666/chica1.jpg')
chica2 = User.create!(email: "chica2@gmail.com", first_name: 'Stella', last_name:'Künne', password: "123456", remote_photo_url: 'http://res.cloudinary.com/linameyer/image/upload/v1528372666/chica2.jpg')
opa = User.create!(email: "opa@gmail.com", first_name: 'Sigmund', last_name:'Heist', password: "123456", remote_photo_url: 'http://res.cloudinary.com/linameyer/image/upload/v1528372666/Opa.jpg')
users = User.all


book1 = Book.create!(
  name: "Little Monkey",
  author: "Marta Altes",
  category: "sleep",
  description: "Little Monkey is a touching tale of Lina the monkey, who struggles with sleeping through the whole night. A meeting with Mr. Butterfly during her walk home from school on a sunny and warm afternoon changes everything... In this classic of children's literature, beloved by generations of readers and listeners, the quiet poetry of the words and the gentle, lulling illustrations combine to make a perfect book for the end of the day.",
  language: "English",
  price: "15.99",
  age: "4-7",
  photo: '16.jpg',
  publishing_year: "2016",
  sku: "book",
  )

book2 = Book.create!(
  name: "5 friends build a castle",
  author: "Margaret Wise Brown",
  category: "friends",
  description: "In a great green room, tucked away in bed, is a little bunny. Goodnight room, goodnight moon. And to all the familiar things in the softly lit room—to the picture of the three little bears sitting on chairs, to the clocks and his socks, to the mittens and the kittens, to everything one by one—the little bunny says goodnight.
    In this classic of children's literature, beloved by generations of readers and listeners, the quiet poetry of the words and the gentle, lulling illustrations combine to make a perfect book for the end of the day.",
  language: "English",
  price: "17.99",
  age: "4-8",
  photo: '5.jpg',
  publishing_year: "2009",
  sku: "book",
  )

book3 = Book.create!(
  name: "Nico & Whoopper",
  author: "Emily Winfield Martin",
  category: "friends",
  description: "From brave and bold to creative and clever, Emily Winfield Martin's rhythmic rhyme expresses all the loving things that parents think of when they look at their children. With beautiful, and sometimes humorous, illustrations, and a clever gatefold with kids in costumes, this is a book grown-ups will love reading over and over to kids—both young and old. A great gift for any occasion, but a special stand-out for baby showers, birthdays, and graduation. The Wonderful Things You Will Be has a loving and truthful message that will endure for lifetimes.",
  language: "English",
  price: "22.99",
  age: "3-7",
  photo: '11.jpg',
  publishing_year: "2015",
  sku: "book",
  )

book4 = Book.create!(
  name: "Finny & Semmel Explore Kritannia",
  author: "Kenn Nesbitt",
  category: "friends",
  description: "Snuggle up with this exploration story by children's poet laureate Kenn Nesbitt, all about how mommy animals say good night to their little ones.
    What happens when baby animals need to rest their little heads? Their mothers tuck them into bed, of course! Read along as baby bunnies, lambs, chicks, kittens, and cubs settle down for a good night's sleep while their mommies give them nuzzles, cuddles, and good-night kisses! A lulling, soothing bedtime poem perfect for getting little ones to settle down.",
  language: "English",
  price: "13.99",
  age: "3-9",
  photo: '17.jpg',
  publishing_year: "2018",
  sku: "book",
  )

book5 = Book.create!(
  name: "If Animals Kissed Good Night",
  author: "Ann Whitford Paul",
  category: "sleep",
  description: "In a cozy bedtime chat with her mom, a young girl wonders how animal families might say good night. Would Wolf and his pup kiss and then HOWL? Would Bear and her cub kiss and then GROWL? But what about Sloth and her baby? They move soooo slooowwwww . . . they're sure to be kissing from early evening until long after everyone else is fast asleep!
    With whimsical art and playful rhyming verse, this board book is perfect for bedtime snuggles.",
  language: "English",
  price: "19.99",
  age: "3-6",
  photo: '2.jpg',
  publishing_year: "2014",
  sku: "book",
  )

book6 = Book.create!(
  name: "My World Dance Championships",
  author: "Natasha Wing",
  category: "sports",
  description: "It's the night before Peter Panama's first dance recital. At the dress rehearsal, he and her class go over the steps one last time. What if he messes up? he worries. But the next day, he's ready to perform. When the class spins left she spins right! Without missing a beat, he keeps on dancing and smiling. The incredible story celebrates this with humor, warmth, and engaging illustrations by Amy Wummer.",
  language: "English",
  price: "19.99",
  age: "3-5",
  photo: '7.jpg',
  publishing_year: "2015",
  sku: "book",
  )

book7 = Book.create!(
  name: "There's A Tiger In The Garden",
  author: "Anna Dewdney",
  category: "friends",
  description: "Llama Llama has new neighbors! Nelly Gnu and her mama stop by for a play date, but Llama's not so sure it's time to share all his toys. Maybe just his blocks? It could be fun to make a castle with Nelly . . . But wait--Nelly has Llama's little Fuzzy Llama! The fun turns to tears when Fuzzy Llama is ripped in two, all because of Nelly Gnu! Mama comes to the rescue and fixes Fuzzy, but she makes it clear: I will put Fuzzy on the stairs, until you are sure that you can share.
    Fun to read aloud and helpful to children and parents alike, Llama Llama Time to Share is for any child who needs a little encouragement in sharing.",
  language: "English",
  price: "15.99",
  age: "2-5",
  photo: '8.jpg',
  publishing_year: "2012",
  sku: "book",
  )

book8 = Book.create!(
  name: "The Secret Keepers",
  author: "Margaret Wise Brown",
  category: "sleep",
  description: "From the author of Goodnight Moon, this beautiful children's picture book with gentle illustrations is a perfect way to get your children reading with a lovable, engaging storyline. Ideal for beginning readers, this book is a wonderful bedtime story.",
  language: "English",
  price: "19.99",
  age: "2-5",
  photo: '9.jpg',
  publishing_year: "2016",
  sku: "book",
  )

book9 = Book.create!(
  name: "Oh, the Places You'll Go!",
  author: "Dr. Seuss",
  category: "school",
  description: "From soaring to high heights and seeing great sights to being left in a Lurch on a prickle-ly perch, Dr. Seuss addresses life’s ups and downs with his trademark humorous verse and illustrations, while encouraging readers to find the success that lies within. In a starred review, Booklist notes, “Seuss’s message is simple but never sappy: life may be a ‘Great Balancing Act,’ but through it all ‘There’s fun to be done.’” A perennial favorite and a perfect gift for anyone starting a new phase in their life!",
  language: "English",
  price: "16.99",
  age: "4-8",
  photo: '10.jpg',
  publishing_year: "2017",
  sku: "book",
  )

book10 = Book.create!(
  name: "ODO - My Very First Book of Colors",
  author: "Dr. Seuss",
  category: "grow-up",
  description: "What color is a bluebird? Easy to answer, but even easier when you have thecolor to match it with. Find the color in the top half of a page that matches the picture on the bottom half. From pink flowers to purple grapes, this colorful book is full of fun and surprises. Children will love solving these color puzzles featuring Eric Carle's bold and vibrant artwork.",
  language: "English",
  price: "19.99",
  age: "2-4",
  photo: '3.jpg',
  publishing_year: "2010",
  sku: "book",
  )

book11 = Book.create!(
  name: "The Little Prince",
  author: "Robert Munsch",
  category: "grow-up",
  description: "Few stories are as widely read and as universally cherished by children and adults alike as The Little Prince. Richard Howard's translation of the beloved classic beautifully reflects Saint-Exupéry's unique and gifted style. Howard, an acclaimed poet and one of the preeminent translators of our time, has excelled in bringing the English text as close as possible to the French, in language, style, and most important, spirit.",
  language: "English",
  price: "13.99",
  age: "4-10",
  photo: '13.jpg',
  publishing_year: "1995",
  sku: "book",
  )

book12 = Book.create!(
  name: "Caroline - A Book of Sleep",
  author: "Il Sung Na",
  category: "sleep",
  description: "With a spare, soothing text and beautifully rich and textured illustrations of a starry night, this is the perfect “book of sleep.” Join the owl on his moonlit journey as he watches all the other animals settle in for the night: some sleep standing up, while some sleep on the move! Some sleep peacefully alone, while others sleep all together, huddled close.
    Il Sung Na makes his American debut with this gorgeous bedtime offering. While each animal rests in its own special way, little ones will also drift off to a cozy sleep.",
  language: "English",
  price: "15.99",
  age: "2-3",
  photo: '14.jpg',
  publishing_year: "2011",
  sku: "book",
  )


book13 = Book.create!(
  name: "Recipes For You & Your Family",
  author: "P.D. Eastman",
  category: "grow-up",
  description: "A baby bird goes in search of his mother in this hilarious board book edited by Dr. Seuss. When a mother bird’s egg starts to jump, she hurries off to make sure she has something for her little one to eat. But as soon as she’s gone, out pops the baby bird. He immediately sets off to find his mother, but not knowing what she looks like makes it a challenge. The little hatchling is determined to find his mother, even after meeting a kitten, a hen, a dog, and a Snort. The timeless message of the bond between mother and child make this abridged, super-simple edition of P. D. Eastman’s Are You My Mother? a must for baby showers, beginning readers, and Mother’s Day.",
  language: "English",
  price: "19.99",
  age: "5-12",
  photo: '15.jpg',
  publishing_year: "1998",
  sku: "book",
  )

book14 = Book.create!(
  name: "Away We Go",
  author: "Marcus Pfister",
  category: "sleep",
  description: "Away We Go is a touching tale of a animal family, who wants nothing more than to sleep on their long journey to America. With crooked knees and thin legs, it's harder for a monkey than you would think. Lina is finally able to dance to her own tune when she gets some encouraging words from an unlikely friend.
    With light-footed rhymes and high-stepping illustrations, this tale is gentle inspiration for every child with dreams of greatness.",
  language: "English",
  price: "18.99",
  age: "2-3",
  photo: '1.jpg',
  publishing_year: "1999",
  sku: "book",
  )

book15 = Book.create!(
  name: "How Pigs Sleep",
  author: "James Dean",
  category: "sleep",
  description: "Pete the pig is going scuba diving! Before he hits the water, Captain Joe tells him about all the sea creatures he can encounter, and Pete is super excited to see a seahorse. But when he is suited up and swimming around, he has to search high and low to find the little guy. In this aquatic adventure, Pete makes a new friend and gets a big surprise!",
  language: "English",
  price: "21.99",
  age: "4-8",
  photo: '4.jpg',
  publishing_year: "2016",
  sku: "book",
  )

book16 = Book.create!(
  name: "Bulle & Pelle",
  author: "Sigal Adler",
  category: "sleep",
  description: "At night when most kids were dozing so deep,
    Bulle could never quite manage to sleep.
    His mother would read him one book, or two,
    His father would sing until his face turned blue,
    All day Michael ran and played and kicked ball,
    But then he’d just shrug: I’m not tired at all.",
  language: "English",
  price: "21.99",
  age: "2-9",
  photo: '18.jpg',
  publishing_year: "2017",
  sku: "book",
  )

book17 = Book.create!(
  name: "Mr. Galliano's Circus",
  author: "Brianna Caplan Sayres",
  category: "sports",
  description: "Mr. Galliano is going scuba diving in his circus. Before he hits the water, Captain Joe tells him about all the sea creatures he can encounter, and Pete is super excited to see a seahorse. But when he is suited up and swimming around, he has to search high and low to find the little guy. In this aquatic adventure, Pete makes a new friend and gets a big surprise!",
  language: "English",
  price: "16.99",
  age: "2-4",
  photo: '19.jpg',
  publishing_year: "2015",
  sku: "book",
  )

book18 = Book.create!(
  name: "Dr Seuss's Sleep Book",
  author: "Dr. Seuss",
  category: "sleep",
  description: "Celebrate sleep with Dr. Seuss’s classic rhyming bedtime story picture book. Van Vleck, a very small bug, is getting sleepy, and his yawn—contagious as yawns are—sets off a chain reaction, making all those around him feel sleepy, too! With typically Seussian nods to alarm clocks, sleepwalking, and snoring, this charming ode to bedtime will lull listeners (and readers) toward dreamland. Zzzzzzzzzz.",
  language: "English",
  price: "18.99",
  age: "5-9",
  photo: '20.jpg',
  publishing_year: "1962",
  sku: "book",
  )

book19 = Book.create!(
  name: "Where Do Jet Planes Sleep at Night?",
  author: "Brianna Caplan Sayres",
  category: "sleep",
  description: "Have you ever wondered what little airplanes do when it’s time for bed? Jumbo jets, biplanes, helicopters—even Air Force One!—power down, wash up, and listen to stories with mommy and daddy planes beneath a blanket of stars, getting ready to fly to dreamland. Little airplane lovers will be tickled to see how bedtime is just the same for their favorite flying vehicles as it is for them, as they come down to earth for sleepy time.",
  language: "English",
  price: "21.99",
  age: "3-7",
  photo: '21.jpg',
  publishing_year: "2017",
  sku: "book",
  )

book20 = Book.create!(
  name: "Good Night Yoga",
  author: "Mariam Gates",
  category: "sleep",
  description: "Kids love yoga—and it’s great for them, so much so that the President’s Council has added the practice to the fitness activities in the annual President’s Challenge. For parents and caregivers looking for a fun and effective new routine for bedtime, innovative educator Mariam Gates presents Good Night Yoga, a playful yet wholly practical book for preparing for sleep.
    This beautifully illustrated, full-color book tells the story of the natural world as it closes down for the night, while teaching children a simple flow of yoga postures inspired by their favorite characters from nature. Moving from sun breath to cloud gathering to ladybug & butterfly and more, readers learn techniques for self-soothing, relaxing the body and mind, focusing attention, and other skills that will support restful sleep and improve overall confidence and well-being.",
  language: "English",
  price: "21.99",
  age: "4-8",
  photo: '22.jpg',
  publishing_year: "2015",
  sku: "book",
  )

book21 = Book.create!(
  name: "Good Night New York City",
  author: "Adam Gamble",
  category: "sleep",
  description: "Good Night New York City features the Freedom Tower, the Statue of Liberty, United Nations, Empire State Building, Bronx Zoo, Coney Island, Brooklyn Bridge, American Museum of Natural History, Broadway, skating at Rockefeller Center, Times Square, New York City firefighters and police, Staten Island Ferry, hotdog carts, and more. The exciting and enriching board book captures the true essence of New York City. Young readers will get a thrilling cab ride around the Big Apple as they discover the most famous sights and attractions this dynamic city has to offer.",
  language: "English",
  price: "21.99",
  age: "2-3",
  photo: '12.jpg',
  publishing_year: "2006",
  sku: "book",
  )

personalization_lina1 = Personalization.create!(user: lina, book: book2)
personalization_lina1 = Personalization.create!(user: lina, book: book4)


personalization_simon = Personalization.create!(user: simon, book: book1)
personalization_oma = Personalization.create!(user: oma, book: book1)
personalization_papa = Personalization.create!(user: papa, book: book1)
personalization_mama = Personalization.create!(user: mama, book: book1)
personalization_chica1 = Personalization.create!(user: chica1, book: book1)
personalization_chica2 = Personalization.create!(user: chica2, book: book1)
personalization_opa = Personalization.create!(user: opa, book: book1)

review_simon = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '5',
  personalization: personalization_simon
  )

review_oma = Review.create!(
  header: "Very nice birthday present",
  description: "This was the best birthday present that i could have found for my grand-daughtere. She was so happy that she appears in the book. I had to read it out all day long.",
  stars: '5',
  personalization: personalization_oma
  )

review_papa = Review.create!(
  header: "Thank you @bookids",
  description: "Thanks to this book i can sleep again in the night because my 4-year old son has finally overcome his sleeping problems. He couldn't fall asleep for 3 weeks now but since i read out this book to him in the evening he falls asleep while i read it. ",
  stars: '5',
  personalization: personalization_papa
  )

review_mama = Review.create!(
  header: "Mia loves it",
  description: "Great children book. We especially love the drawings. It is also a nice personal birthday present for godchilds.",
  stars: '5',
  personalization: personalization_mama
  )

review_chica1 = Review.create!(
  header: "So sweet!",
  description: "This is definitely a book that I recommend to parents with little ones. The mischievous little monkey just keeps making mistakes but after guidance from Big monkey he makes it better. It shows how you can rectify mistakes such as making a mess (clean it up). It also shows that parents can make mistakes just like anyone else, and we can also apologize to our little ones. My 2year old now looks at me after she does something wrong and says, 'i will make it better Big Monkey'.",
  stars: '4',
  personalization: personalization_chica1
  )

review_chica2 = Review.create!(
  header: "So sweet!",
  description: "My kids, ages 3-6, really love this book. For me, the value of stories is partly about helping kids process different emotional experiences, and so I think the story of this one does that.",
  stars: '5',
  personalization: personalization_chica2
  )

review_opa = Review.create!(
  header: "Cute Book for my little monkey!",
  description: "I bought this Little Monkey book for my 2 year old grand-daughter. She was happy and i was impressed of the good quality and the easy way to download it.",
  stars: '4',
  personalization: personalization_opa
  )

personalization_simon_book2 = Personalization.create!(user: simon, book: book2)
personalization_simon_book3 = Personalization.create!(user: simon, book: book3)
personalization_simon_book4 = Personalization.create!(user: simon, book: book4)
personalization_simon_book5 = Personalization.create!(user: simon, book: book5)
personalization_simon_book6 = Personalization.create!(user: simon, book: book6)
personalization_simon_book7 = Personalization.create!(user: simon, book: book7)
personalization_simon_book8 = Personalization.create!(user: simon, book: book8)
personalization_simon_book9 = Personalization.create!(user: simon, book: book9)
personalization_simon_book10 = Personalization.create!(user: simon, book: book10)
personalization_simon_book11 = Personalization.create!(user: simon, book: book11)
personalization_simon_book12 = Personalization.create!(user: simon, book: book12)
personalization_simon_book13 = Personalization.create!(user: simon, book: book13)
personalization_simon_book14 = Personalization.create!(user: simon, book: book14)
personalization_simon_book15 = Personalization.create!(user: simon, book: book15)
personalization_simon_book16 = Personalization.create!(user: simon, book: book16)
personalization_simon_book17 = Personalization.create!(user: simon, book: book17)
personalization_simon_book18 = Personalization.create!(user: simon, book: book18)
personalization_simon_book19 = Personalization.create!(user: simon, book: book19)
personalization_simon_book20 = Personalization.create!(user: simon, book: book20)
personalization_simon_book21 = Personalization.create!(user: simon, book: book21)

review_simon_2 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '5',
  personalization: personalization_simon_book2
  )

review_simon_3 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '5',
  personalization: personalization_simon_book3
  )

review_simon_4 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '4',
  personalization: personalization_simon_book4
  )

review_simon_5 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '4',
  personalization: personalization_simon_book5
  )

review_simon_6 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '5',
  personalization: personalization_simon_book6
  )

review_simon_7 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '3',
  personalization: personalization_simon_book7
  )

review_simon_8 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '3',
  personalization: personalization_simon_book8
  )

review_simon_9 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '5',
  personalization: personalization_simon_book9
  )

review_simon_10 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '5',
  personalization: personalization_simon_book10
  )

review_simon_11 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '4',
  personalization: personalization_simon_book11
  )


review_simon_12 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '5',
  personalization: personalization_simon_book12
  )

review_simon_13 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '5',
  personalization: personalization_simon_book13
  )

review_simon_14 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '3',
  personalization: personalization_simon_book14
  )

review_simon_15 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '4',
  personalization: personalization_simon_book15
  )

review_simon_16 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '5',
  personalization: personalization_simon_book16
  )

review_simon_17 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '5',
  personalization: personalization_simon_book17
  )

review_simon_18 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '2',
  personalization: personalization_simon_book18
  )

review_simon_19 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '5',
  personalization: personalization_simon_book19
  )

review_simon_20 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '4',
  personalization: personalization_simon_book20
  )

review_simon_21 = Review.create!(
  header: "Great Book!",
  description: "I bought this book for my daughter and she loves it. We read it together every evening and she immediately falls asleep afterwards. I would highly recommend this book!",
  stars: '4',
  personalization: personalization_simon_book21
  )


Page.create!(
  content: "Little Monkey",
  book: book1,
  markup: "title"
  )
Page.create!(
  content: "I am name, and I'm a beautiful little monkey who lives in a big forest surrounded by trees and a lot of animals",
  book: book1
  )
Page.create!(
  image: 'picture1.png',
  book: book1,
  markup: "image"
  )
Page.create!(
  content: "name loved living in the jungle. There were so many things to do and so many things to see. But every now and then... ",
  book: book1
  )
Page.create!(
  image: 'picture2.png',
  book: book1,
  markup: "image"
  )
Page.create!(
  content: "name had a little problem. And the problem was being little. Some days everything was out of reach.",
  book: book1
  )
Page.create!(
  image: 'picture3.png',
  book: book1,
  markup: "image"
  )

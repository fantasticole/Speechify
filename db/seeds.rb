# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

dictionary = [
  {title: "1976 DNC Keynote Address", author: "Barbara Charline Jordan", dir: "lib/speeches/1976_DNC_Keynote_Address.txt"},
  {title: "Shelter From The Storm", author: "Bob Dylan", dir: "lib/speeches/Bob_Dylan_Shelter_From_The_Storm.txt"},
  {title: "No Women No Cry", author: "Bob Marley", dir: "lib/speeches/Bob_Marley_No_Women_No_Cry.txt"},
  {title: "1984 DNC Keynote Address", author: "Mario Matthew Cuomo", dir: "lib/speeches/Cuomo_DNC_Keynote_Address_1984.txt"},
  {title: "FDR Inaugural Address", author: "Franklin D. Roosevelt", dir: "lib/speeches/FDR_Inaugural_Address.txt"},
  {title: "Pearl Harbor Address", author: "Franklin D. Roosevelt", dir: "lib/speeches/FDR_Pearl_Harbor_Address.txt"},
  {title: "Speech On The Eve Of The Last Fast", author: "Mahatma Gandhi", dir: "lib/speeches/Ghandi_Speech_On_The_Eve_Of_The_Last_Fast.txt"},
  {title: "I Have A Dream", author: "Martin Luther King, Jr.", dir: "lib/speeches/I_Have_A_Dream.txt"},
  {title: "Address to the Greater Ministerial Association", author: "John F. Kennedy", dir: "lib/speeches/JFK_Address_to_the_Greater_Ministerial_Association.txt"},
  {title: "JFK Inaugural Address", author: "John F. Kennedy", dir: "lib/speeches/JFK_Inaugural_Address.txt"},
  {title: "Statement on the Articles of Impeachment", author: "Barbara Charline Jordan", dir: "lib/speeches/Jordan_Statement_on_the_Articles_of_Impeachment.txt"},
  {title: "King Kunta", author: "Kendrick Lamar", dir: "lib/speeches/Kendrick_Lamar_King_Kunta.txt"},
  {title: "We Shall Overcome", author: "Lyndon B. Johnson", dir: "lib/speeches/LBJ_We_Shall_Overcome.txt"},
  {title: "Mountain Top", author: "Martin Luther King, Jr.", dir: "lib/speeches/MLK_Mountain_Top.txt"},
  {title: "The Ballot or The Bullet", author: "Malcolm X", dir: "lib/speeches/Malcolm_X_The_Ballot_or_The_Bullet.txt"},
  {title: "Ether", author: "Nas", dir: "lib/speeches/Nas_Ether.txt"},
  {title: "The World Is Yours", author: "Nas", dir: "lib/speeches/Nas_The_World_Is_Yours.txt"},
  {title: "Checkers", author: "Richard Nixon", dir: "lib/speeches/Nixon_Checkers.txt"},
  {title: "We Shall Overcome", author: "Pete Seeger", dir: "lib/speeches/Pete_Seeger_We_Shall_Overcome.txt"},
  {title: "The Space Shuttle Challenger Tragedy Address", author: "Ronald Reagan", dir: "lib/speeches/Ronald_Reagan_The_Space_Shuttle_Challenger_Tragedy_Address.txt"},
  {title: "Emergency Spliff", author: "Skillinjah", dir: "lib/speeches/Skillinjah_Emergency_Spliff.txt"}
]

dictionary.each do |speech|
  file = File.open(speech[:dir], "rb")
  full_text = file.read

  Speech.create({title: speech[:title], author: speech[:author], full_text: full_text})
end
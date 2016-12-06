# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#
nate = User.create!(username: "Nate")
bob = User.create!(username: "Bob")
jeff = User.create!(username: "Jeff")
adam = User.create!(username: "Adam")

c1 = Contact.create!(name: "C1", email: "c1.c1@gmail.com", user_id: nate.id)
c2 = Contact.create!(name: "C2", email: "c2.c1@gmail.com", user_id: nate.id)
c3 = Contact.create!(name: "C3", email: "c3.c1@gmail.com", user_id: bob.id)
c4 = Contact.create!(name: "C4", email: "c4.c1@gmail.com", user_id: bob.id)
c5 = Contact.create!(name: "C5", email: "c5.c1@gmail.com", user_id: jeff.id)
c6 = Contact.create!(name: "C6", email: "c6.c1@gmail.com", user_id: adam.id)


cs1 = ContactShare.create!(contact_id: c1.id, user_id: adam.id)
cs2 = ContactShare.create!(contact_id: c2.id, user_id: adam.id)
cs3 = ContactShare.create!(contact_id: c3.id, user_id: adam.id)
cs4 = ContactShare.create!(contact_id: c4.id, user_id: adam.id)


comment1 = Comment.create!(
title: "ONE FUN",
author_id: nate.id,
author_type: User,
body: "This should be comment one by Nate"
)

comment2 = Comment.create!(
title: "2 SHOE",
author_id: jeff.id,
author_type: User,
body: "This should be comment two by Jeff"
)

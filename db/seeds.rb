# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
instruments = Instrument.create([{ name: 'Guitar', image_path: './images/guitar.jpg' }, { name: 'Bass', image_path: './images/bass.jpg'}])
styles = Style.create([
    { name: 'Rock', litle_description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' }, 
    { name: 'Pop', litle_description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' }, 
    { name: 'Classical', litle_description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' }])
topics = Topic.create([{ name: 'Guitar beginner course', description:'Guitar beginner course' }, { name: 'Guitar advanced course', description:'Guitar advanced course' }])
lesson = Lesson.create(title: 'Example', description: 'Example', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4', author: 'Someone', topic: topics.first)
users = User.create([{email: "admin@admin.com", password: "123456"},{email: "a@a.com", password: "aaaaaa"}])
profile = Profile.create(user: users.last, style_id: styles.first.id, level: 1)
has_instrument = ProfileHasInstrument.create(profile: profile, instrument: instruments.first)
comments = Comment.create([{ body: 'Cool!', user:users.first, lesson: lesson }, { body: 'Amazing!', user:users.last, lesson: lesson }])
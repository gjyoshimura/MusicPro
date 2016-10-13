# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
instruments = Instrument.create([{ name: 'Guitar', image_path: './images/guitar.jpg' }, { name: 'Bass', image_path: './images/bass.jpg'}])
styles = Style.create([{ name: 'Rock' }, { name: 'Pop' }, { name: 'Classical' }])
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#USUARIOS
ADM = User.create([email: "admin@admin.com", password: "admin"])
USER = User.create([email: "user@user.com", password: "user"])


#ESTILOS MUSICAIS
MPB = Style.create([    name: 'MPB', 
                        litle_description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 
                        description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' ])
ROCK = Style.create([   name: 'Rock', 
                        litle_description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 
                        description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' ])
POP = Style.create([    name: 'POP', 
                        litle_description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 
                        description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' ])
JAZZ = Style.create([   name: 'Jazz', 
                        litle_description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ', 
                        description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' ])

#INSTRUMENTOS
GUITARRA = Instrument.create([  name: 'Guitarra', 
                                :styles => Style.where(:id => [ROCK, JAZZ]),
                                description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' ])
VIOLAO = Instrument.create([    name: 'Violão',  
                                :styles => Style.where(:id => [ROCK, JAZZ,POP,MPB]),
                                description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' ])
SAXOFONE= Instrument.create([  name: 'Saxofone',  
                                :styles => Style.where(:id => [JAZZ,MPB]),
                                description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' ])
BATERIA = Instrument.create([   name: 'Bateria',  
                                :styles => Style.where(:id => [ROCK, JAZZ,MPB,POP]),
                                description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit. ' ])

# #CURSOS
ROCK1 = Topic.create([name: 'ROCK - Guitarra 1', style_id: ROCK,instrument_id: GUITARRA, description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
ROCK2 = Topic.create([name: 'ROCK - Guitarra 2', style_id: ROCK,instrument_id: GUITARRA,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
ROCK3 = Topic.create([name: 'ROCK - Guitarra 3', style_id: ROCK,instrument_id: GUITARRA,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])

ROCK4 = Topic.create([name: 'ROCK - Violão 1', style_id: ROCK,instrument_id: VIOLAO,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
ROCK5 = Topic.create([name: 'ROCK - Violão 2', style_id: ROCK,instrument_id: VIOLAO,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
ROCK6 = Topic.create([name: 'ROCK - Violão 3', style_id: ROCK,instrument_id: VIOLAO,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])

ROCK7 = Topic.create([name: 'ROCK - Bateria 1', style_id: ROCK,instrument_id: BATERIA,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
ROCK8 = Topic.create([name: 'ROCK - Bateria 2', style_id: ROCK,instrument_id: BATERIA,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
ROCK9 = Topic.create([name: 'ROCK - Bateria 3', style_id: ROCK,instrument_id: BATERIA,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])

POP1 = Topic.create([name: 'POP - Violão 1', style_id: POP,instrument_id: VIOLAO,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
POP2 = Topic.create([name: 'POP - Violão 2', style_id: POP,instrument_id: VIOLAO,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])

MPB1 = Topic.create([name: 'MPB - Violão 1', style_id: MPB,instrument_id: VIOLAO,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
# #NAO COLOQUEI JAZZ PARA QUE TENHAMOS O CASO TESTE DE ESTAR VAZIO

lesson1 = Lesson.create(name: 'Aula 001', topic_id: ROCK1, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson2 = Lesson.create(name: 'Aula 002', topic_id: ROCK1, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson3 = Lesson.create(name: 'Aula 003', topic_id: ROCK1, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson4 = Lesson.create(name: 'Aula 001', topic_id: ROCK2, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson5 = Lesson.create(name: 'Aula 002', topic_id: ROCK2, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson6 = Lesson.create(name: 'Aula 003', topic_id: ROCK2, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson7 = Lesson.create(name: 'Aula 004', topic_id: ROCK2, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson8 = Lesson.create(name: 'Aula 001', topic_id: ROCK3, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson9 = Lesson.create(name: 'Aula 001', topic_id: ROCK4, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson10 = Lesson.create(name: 'Aula 002', topic_id: ROCK4, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson11 = Lesson.create(name: 'Aula 001', topic_id: ROCK5, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson12 = Lesson.create(name: 'Aula 002', topic_id: ROCK5, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson13 = Lesson.create(name: 'Aula 001', topic_id: ROCK6, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson14 = Lesson.create(name: 'Aula 002', topic_id: ROCK6, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson15 = Lesson.create(name: 'Aula 003', topic_id: ROCK6, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson14 = Lesson.create(name: 'Aula 001', topic_id: ROCK7, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson15 = Lesson.create(name: 'Aula 002', topic_id: ROCK7, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson14 = Lesson.create(name: 'Aula 001', topic_id: ROCK8, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson15 = Lesson.create(name: 'Aula 002', topic_id: ROCK8, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson16 = Lesson.create(name: 'Aula 001', topic_id: POP1, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson17 = Lesson.create(name: 'Aula 002', topic_id: POP1, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson18 = Lesson.create(name: 'Aula 003', topic_id: POP1, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson19 = Lesson.create(name: 'Aula 001', topic_id: POP2, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson20 = Lesson.create(name: 'Aula 002', topic_id: POP2, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson21 = Lesson.create(name: 'Aula 003', topic_id: POP2, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson22 = Lesson.create(name: 'Aula 004', topic_id: POP2, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson23 = Lesson.create(name: 'Aula 001', topic_id: MPB1, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
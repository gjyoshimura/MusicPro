# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#USUARIOS
ADM = User.create([email: "admin@admin.com", password: "123456789"])
USER = User.create([email: "user@user.com", password: "123456789"])


#ESTILOS MUSICAIS
MPB = Style.create([    name: 'MPB', 
                        litle_description:'Quero toda essa vontade de passar dos seus limites, e ir além ;)', 
                        description:'Quero toda essa vontade de passar dos seus limites, e ir além ;)' ])
ROCK = Style.create([   name: 'Rock', 
                        litle_description:'Num momento crucial um sábio soube saber que o sabiá sabia assobiar', 
                        description:'Num momento crucial um sábio soube saber que o sabiá sabia assobiar' ])
POP = Style.create([    name: 'POP', 
                        litle_description:'You wanna be tough, better do what you can', 
                        description:'You wanna be tough, better do what you can' ])
JAZZ = Style.create([   name: 'Jazz', 
                        litle_description:'And all that jazz', 
                        description:'And all that jazz' ])

#INSTRUMENTOS
GUITARRA = Instrument.create([  name: 'Guitarra', 
                                :styles => Style.where(:id => [ROCK, JAZZ]),
                                description:'Evolua sua air guitar ;)' ])
VIOLAO = Instrument.create([    name: 'Violão',  
                                :styles => Style.where(:id => [ROCK, JAZZ,POP,MPB]),
                                description:'Quer ser um mestre do MPB?' ])
SAXOFONE= Instrument.create([  name: 'Saxofone',  
                                :styles => Style.where(:id => [JAZZ,MPB]),
                                description:'Aprenda com a Lisa Simpson' ])
BATERIA = Instrument.create([   name: 'Bateria',  
                                :styles => Style.where(:id => [ROCK, JAZZ,MPB,POP]),
                                description:'Prepare a baqueta e drum on ;) ' ])

# #CURSOS
ROCK1 = Topic.create([name: 'ROCK - Guitarra 1', style_id: ROCK[0].id,instrument_id: GUITARRA[0].id, description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
ROCK2 = Topic.create([name: 'ROCK - Guitarra 2', style_id: ROCK[0].id,instrument_id: GUITARRA[0].id,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
ROCK3 = Topic.create([name: 'ROCK - Guitarra 3', style_id: ROCK[0].id,instrument_id: GUITARRA[0].id,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])

ROCK4 = Topic.create([name: 'ROCK - Violão 1', style_id: ROCK[0].id,instrument_id: VIOLAO[0].id,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
ROCK5 = Topic.create([name: 'ROCK - Violão 2', style_id: ROCK[0].id,instrument_id: VIOLAO[0].id,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
ROCK6 = Topic.create([name: 'ROCK - Violão 3', style_id: ROCK[0].id,instrument_id: VIOLAO[0].id,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])

ROCK7 = Topic.create([name: 'ROCK - Bateria 1', style_id: ROCK[0].id,instrument_id: BATERIA[0].id,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
ROCK8 = Topic.create([name: 'ROCK - Bateria 2', style_id: ROCK[0].id,instrument_id: BATERIA[0].id,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
ROCK9 = Topic.create([name: 'ROCK - Bateria 3', style_id: ROCK[0].id,instrument_id: BATERIA[0].id,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])

POP1 = Topic.create([name: 'POP - Violão 1', style_id: POP[0].id,instrument_id: VIOLAO[0].id,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
POP2 = Topic.create([name: 'POP - Violão 2', style_id: POP[0].id,instrument_id: VIOLAO[0].id,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])

MPB1 = Topic.create([name: 'MPB - Violão 1', style_id: MPB[0].id,instrument_id: VIOLAO[0].id,  description:'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'])
# #NAO COLOQUEI JAZZ PARA QUE TENHAMOS O CASO TESTE DE ESTAR VAZIO

lesson1 = Lesson.create(name: 'Aula 001', topic_id: ROCK1[0].id, description: 'Conhecendo o violão', video_url: 'https://www.youtube.com/embed/gLKXMPfpL_0')
lesson2 = Lesson.create(name: 'Aula 002', topic_id: ROCK1[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/watch?v=z0oIRSJjbeo&list=PL_TqAU4yPHO7jB1P3vZCFiUVQHk_MpK1_&index=5&spfreload=10')
lesson3 = Lesson.create(name: 'Aula 003', topic_id: ROCK1[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/watch?v=xlbqjvMyCMU')
lesson4 = Lesson.create(name: 'Aula 001', topic_id: ROCK1[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/watch?v=WVctMaE-7Yo')
lesson5 = Lesson.create(name: 'Aula 002', topic_id: ROCK1[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/watch?v=t1nfvTXXA4A')


lesson6 = Lesson.create(name: 'Aula 003', topic_id: ROCK2[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson7 = Lesson.create(name: 'Aula 004', topic_id: ROCK2[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson8 = Lesson.create(name: 'Aula 001', topic_id: ROCK3[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson9 = Lesson.create(name: 'Aula 001', topic_id: ROCK4[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson10 = Lesson.create(name: 'Aula 002', topic_id: ROCK4[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson11 = Lesson.create(name: 'Aula 001', topic_id: ROCK5[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson12 = Lesson.create(name: 'Aula 002', topic_id: ROCK5[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson13 = Lesson.create(name: 'Aula 001', topic_id: ROCK6[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson14 = Lesson.create(name: 'Aula 002', topic_id: ROCK6[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson15 = Lesson.create(name: 'Aula 003', topic_id: ROCK6[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson14 = Lesson.create(name: 'Aula 001', topic_id: ROCK7[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson15 = Lesson.create(name: 'Aula 002', topic_id: ROCK7[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson14 = Lesson.create(name: 'Aula 001', topic_id: ROCK8[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson15 = Lesson.create(name: 'Aula 002', topic_id: ROCK8[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson16 = Lesson.create(name: 'Aula 001', topic_id: POP1[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson17 = Lesson.create(name: 'Aula 002', topic_id: POP1[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson18 = Lesson.create(name: 'Aula 003', topic_id: POP1[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson19 = Lesson.create(name: 'Aula 001', topic_id: POP2[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson20 = Lesson.create(name: 'Aula 002', topic_id: POP2[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson21 = Lesson.create(name: 'Aula 003', topic_id: POP2[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson22 = Lesson.create(name: 'Aula 004', topic_id: POP2[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
lesson23 = Lesson.create(name: 'Aula 001', topic_id: MPB1[0].id, description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', video_url: 'https://www.youtube.com/embed/o2YUM_3QCE4')
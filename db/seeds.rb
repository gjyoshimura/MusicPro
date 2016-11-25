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

#CURSOS
ROCK1 = Topic.create([name: 'ROCK - Guitarra 1', style_id: ROCK[0].id,instrument_id: GUITARRA[0].id, description:'Preparado para a sua primeira aula? Comece a caminhada rumo ao estrelato.'])
ROCK2 = Topic.create([name: 'ROCK - Guitarra 2', style_id: ROCK[0].id,instrument_id: GUITARRA[0].id,  description:'Gostou da primeira? Vem pra segunda ;)'])
ROCK3 = Topic.create([name: 'ROCK - Guitarra 3', style_id: ROCK[0].id,instrument_id: GUITARRA[0].id,  description:'Muito bem!! Você é fera!'])

ROCK4 = Topic.create([name: 'ROCK - Violão 1', style_id: ROCK[0].id,instrument_id: VIOLAO[0].id,  description:'Preparado para a sua primeira aula? Comece a caminhada rumo ao estrelato.'])
ROCK5 = Topic.create([name: 'ROCK - Violão 2', style_id: ROCK[0].id,instrument_id: VIOLAO[0].id,  description:'Gostou da primeira? Vem pra segunda ;) '])
ROCK6 = Topic.create([name: 'ROCK - Violão 3', style_id: ROCK[0].id,instrument_id: VIOLAO[0].id,  description:'Uhuuuul, praticamente um Beatle!'])

ROCK7 = Topic.create([name: 'ROCK - Bateria 1', style_id: ROCK[0].id,instrument_id: BATERIA[0].id,  description:'Nível: Homo neanderthalensis'])
ROCK8 = Topic.create([name: 'ROCK - Bateria 2', style_id: ROCK[0].id,instrument_id: BATERIA[0].id,  description:'TU DUM TSSSS'])
ROCK9 = Topic.create([name: 'ROCK - Bateria 3', style_id: ROCK[0].id,instrument_id: BATERIA[0].id,  description:'Yeah!! Você é demais! Se continuar assim, John Bohan ficará com inveja.'])

POP1 = Topic.create([name: 'POP - Violão 1', style_id: POP[0].id,instrument_id: VIOLAO[0].id,  description:'Justin Bieber? Michael Jackson? Todos já foram iniciantes. Você também consegue!'])
POP2 = Topic.create([name: 'POP - Violão 2', style_id: POP[0].id,instrument_id: VIOLAO[0].id,  description:'Vamos lá, mais um pouquinho :)'])

MPB1 = Topic.create([name: 'MPB - Violão 1', style_id: MPB[0].id,instrument_id: VIOLAO[0].id,  description:'Um dia, os grandes nomes da música brasileira começaram do 0. Porque você também não poderia chegar lá?'])
MPB2 = Topic.create([name: 'MPB - Violão 2', style_id: MPB[0].id,instrument_id: VIOLAO[0].id,  description:'Gostou da primeira? Vem pra segunda ;)'])
# #NAO COLOQUEI JAZZ PARA QUE TENHAMOS O CASO TESTE DE ESTAR VAZIO

#Rock Basico Guitar
lesson1 = Lesson.create(name: 'Aula 001', topic_id: ROCK1[0].id, description: 'Conhecendo o violão', video_url: 'https://www.youtube.com/embed/gLKXMPfpL_0')
lesson2 = Lesson.create(name: 'Aula 002', topic_id: ROCK1[0].id, description: 'Como ler tablatura', video_url: 'https://www.youtube.com/embed/z0oIRSJjbeo?list=PL_TqAU4yPHO7jB1P3vZCFiUVQHk_MpK1_')
lesson3 = Lesson.create(name: 'Aula 003', topic_id: ROCK1[0].id, description: 'Cordas', video_url: 'https://www.youtube.com/embed/xlbqjvMyCMU')
lesson4 = Lesson.create(name: 'Aula 004', topic_id: ROCK1[0].id, description: 'Braço do violão', video_url: 'https://www.youtube.com/embed/WVctMaE-7Yo')
lesson5 = Lesson.create(name: 'Aula 005', topic_id: ROCK1[0].id, description: 'Primeiros Acordes', video_url: 'https://www.youtube.com/embed/t1nfvTXXA4A')
#Rock Intermediario Guitar
lesson6 = Lesson.create(name: 'Aula 001', topic_id: ROCK2[0].id, description: 'À sua maneira - Capital Inicial', video_url: 'https://www.youtube.com/embed/HI7aaSOeGkI')
lesson7 = Lesson.create(name: 'Aula 002', topic_id: ROCK2[0].id, description: 'Ainda é Cedo - Legião Urbana', video_url: 'https://www.youtube.com/embed/u0o_pX_M8KQ')
#Rock Avancado Guitar
lesson8 = Lesson.create(name: 'Aula 001', topic_id: ROCK3[0].id, description: 'Sweet Child O’ Mine - Guns and Roses', video_url: 'https://www.youtube.com/embed/Qg82m2nSpj8')
lesson9 = Lesson.create(name: 'Aula 002', topic_id: ROCK3[0].id, description: 'Last kiss - Pearl Jam', video_url: 'https://www.youtube.com/embed/xk8Y0PvLEe8')

#MPB Basico Violao
lesson10 = Lesson.create(name: 'Aula 001', topic_id: MPB1[0].id, description: 'Conhecendo o violão', video_url: 'https://www.youtube.com/embed/gLKXMPfpL_0')
lesson11 = Lesson.create(name: 'Aula 002', topic_id: MPB1[0].id, description: 'Como ler tablatura', video_url: 'https://www.youtube.com/embed/z0oIRSJjbeo?list=PL_TqAU4yPHO7jB1P3vZCFiUVQHk_MpK1_')
lesson12 = Lesson.create(name: 'Aula 003', topic_id: MPB1[0].id, description: 'Cordas', video_url: 'https://www.youtube.com/embed/xlbqjvMyCMU')
lesson13 = Lesson.create(name: 'Aula 004', topic_id: MPB1[0].id, description: 'Braço do violão', video_url: 'https://www.youtube.com/embed/WVctMaE-7Yo')
lesson14 = Lesson.create(name: 'Aula 005', topic_id: MPB1[0].id, description: 'Primeiros Acordes', video_url: 'https://www.youtube.com/embed/t1nfvTXXA4A')
#MPB Intermediario Violao
lesson15 = Lesson.create(name: 'Aula 001', topic_id: MPB2[0].id, description: 'Fico assim sem você - Adriana Calcanhoto ', video_url: 'https://www.youtube.com/embed/eI1cBWbbnvA')
lesson16 = Lesson.create(name: 'Aula 002', topic_id: MPB2[0].id, description: 'Palavras ao vento - Cassia Eller', video_url: 'https://www.youtube.com/embed/XQDCLBmr53w')
lesson17 = Lesson.create(name: 'Aula 003', topic_id: MPB2[0].id, description: 'Aquarela - Toquinho', video_url: 'https://www.youtube.com/embed/3g29f3kt_QE')

#Rock Basico Violao
lesson18 = Lesson.create(name: 'Aula 001', topic_id: ROCK4[0].id, description: 'Conhecendo o violão', video_url: 'https://www.youtube.com/embed/gLKXMPfpL_0')
lesson19 = Lesson.create(name: 'Aula 002', topic_id: ROCK4[0].id, description: 'Como ler tablatura', video_url: 'https://www.youtube.com/embed/z0oIRSJjbeo?list=PL_TqAU4yPHO7jB1P3vZCFiUVQHk_MpK1_')
lesson20 = Lesson.create(name: 'Aula 003', topic_id: ROCK4[0].id, description: 'Cordas', video_url: 'https://www.youtube.com/embed/xlbqjvMyCMU')
lesson21 = Lesson.create(name: 'Aula 004', topic_id: ROCK4[0].id, description: 'Braço do violão', video_url: 'https://www.youtube.com/embed/WVctMaE-7Yo')
lesson22 = Lesson.create(name: 'Aula 005', topic_id: ROCK4[0].id, description: 'Primeiros Acordes', video_url: 'https://www.youtube.com/embed/t1nfvTXXA4A')
#Rock Intermediario Violao
lesson23 = Lesson.create(name: 'Aula 001', topic_id: ROCK5[0].id, description: 'À sua maneira - Capital Inicial', video_url: 'https://www.youtube.com/embed/HI7aaSOeGkI')
lesson24 = Lesson.create(name: 'Aula 002', topic_id: ROCK5[0].id, description: 'Ainda é Cedo - Legião Urbana', video_url: 'https://www.youtube.com/embed/u0o_pX_M8KQ')
#Rock Avancado Violao
lesson25 = Lesson.create(name: 'Aula 001', topic_id: ROCK6[0].id, description: 'Sweet Child O’ Mine - Guns and Roses', video_url: 'https://www.youtube.com/embed/Qg82m2nSpj8')
lesson26 = Lesson.create(name: 'Aula 001', topic_id: ROCK6[0].id, description: 'Last kiss - Pearl Jam', video_url: 'https://www.youtube.com/embed/xk8Y0PvLEe8')

#POP Basico Violao
lesson27 = Lesson.create(name: 'Aula 001', topic_id: POP1[0].id, description: 'Conhecendo o violão', video_url: 'https://www.youtube.com/embed/gLKXMPfpL_0')
lesson28 = Lesson.create(name: 'Aula 002', topic_id: POP1[0].id, description: 'Como ler tablatura', video_url: 'https://www.youtube.com/embed/z0oIRSJjbeo?list=PL_TqAU4yPHO7jB1P3vZCFiUVQHk_MpK1_')
lesson29 = Lesson.create(name: 'Aula 003', topic_id: POP1[0].id, description: 'Cordas', video_url: 'https://www.youtube.com/embed/xlbqjvMyCMU')
lesson30 = Lesson.create(name: 'Aula 004', topic_id: POP1[0].id, description: 'Braço do violão', video_url: 'https://www.youtube.com/embed/WVctMaE-7Yo')
lesson31 = Lesson.create(name: 'Aula 005', topic_id: POP1[0].id, description: 'Primeiros Acordes', video_url: 'https://www.youtube.com/embed/t1nfvTXXA4A')

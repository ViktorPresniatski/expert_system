q = Questionnare.find_or_create_by(title: "БГУИР") do |t|
  t.description = "Вопросы к БГУИР"
  t.data = '[
              {
                "type": "header",
                "subtype": "h3",
                "label": "БГУИР"
              },
              {
                "type": "text",
                "label": "Факультет",
                "className": "form-control",
                "name": "text-1510395666108",
                "subtype": "text"
              },
              {
                "type": "text",
                "label": "Кафедра",
                "className": "form-control",
                "name": "text-1510395668179",
                "subtype": "text"
              }
            ]'
end

c = Category.find_or_create_by(name: "Other")
a1 = User.find_or_create_by(id: 1) do |u|
  u.email = "example@email.com"
  u.password = "qwerty"
  u.password_confirmation = "qwerty"
end
a2 = User.find_or_create_by(id: 2) do |u|
  u.email = "howare@you.do"
  u.password = "iamfine"
  u.password_confirmation = "iamfine"
end
a3 = User.find_or_create_by(id: 3) do |u|
  u.email = "xxx909EXPERT909xxx@mail.ru"
  u.password = "SUPER1337NIGGA"
  u.password_confirmation = "SUPER1337NIGGA"
end

pr1 = ProblemRequest.find_or_create_by(name: "Стоит ли открыть в БГУИР бесплатный тренажёрный зал?") do |t|
  t.description = "Как-никак тут все программисты - сидячая работа. Для восполнения необходимого запаса движения человеку с подобным образом жизни нужно двигатся не меньше 4-5 часов в день. Чтобы хоть как-то минимизировать вред предлагаю открыть тренажёрный зал."
  t.category = c
  t.author = a1
  t.questionnare = q
end

pr2 = ProblemRequest.find_or_create_by(name: "Вход по пропускам") do |t|
  t.description = "В прошлый вторник какой-то хулиган поджёг мусорное ведро на выходе из библиотеки. Мне уже надоело что по корпусам университета бродят какие-то левые люди. Стоит ли ставить турникеты и вводить систему по пропускам?"
  t.category = c
  t.author = a2
  t.questionnare = q
end

rp1 = ExpertResponse.find_or_create_by(expert: a3) do |t|
  t.response_text = "Конечно же нет. Это же бюджетные деньги! Сами заработайте и ходите в вашу качалку!!!!!!"
  t.problem_request = pr1
end

rp2 = ExpertResponse.find_or_create_by(expert: a3) do |t|
  t.response_text = "Что за дебил придумал такую дурость! Сам стань на входе и пускай/не пускай людей! Нечего деньги транжирить!!"
  t.problem_request = pr2
end

rp3 = ExpertResponse.find_or_create_by(expert: a2) do |t|
  t.response_text = "Отличная идея! Давайте так и сделаем"
  t.problem_request = pr1
end

rp4 = ExpertQuestionnareResponse.find_or_create_by(expert: a3) do |t|
  t.response_data = "Давай удаляй свой вопрос или я тебя забаню!"
  t.problem_request = pr1
end

rp3 = ExpertResponse.find_or_create_by(expert: a1) do |t|
  t.response_text = "Сомневаюсь что это будет удобно. Всё-таки иногда бывают ситуации когда в университет надо попасть и не-студенту. К тому же, думаю вахтёры не будут следить за тем чтобы никто не перепрыгивал турникеты"
  t.problem_request = pr2
end


q1 = Questionnare.find_or_create_by(title: "БГУ") do |t|
  t.description = "Вопросы к БГУ"
  t.data = '[
              {
                "type": "header",
                "subtype": "h3",
                "label": "БГУ"
              },
              {
                "type": "text",
                "label": "Факультет",
                "className": "form-control",
                "name": "text-1510395666108",
                "subtype": "text"
              },
              {
                "type": "text",
                "label": "Кафедра",
                "className": "form-control",
                "name": "text-1510395668179",
                "subtype": "text"
              }
            ]'
end

q2 = Questionnare.find_or_create_by(title: "МВД") do |t|
  t.description = "Предложение к МВД"
  t.data = '[
              {
                "type": "header",
                "subtype": "h3",
                "label": "МВД"
              },
              {
                "type": "text",
                "label": "Подразделение",
                "className": "form-control",
                "name": "text-1510395666108",
                "subtype": "text"
              },
              {
                "type": "text",
                "label": "Звание",
                "className": "form-control",
                "name": "text-1510395668179",
                "subtype": "text"
              }
            ]'
end

q3 = Questionnare.find_or_create_by(title: "ЖКХ") do |t|
  t.description = "Предложение к управлению ЖКХ"
  t.data = '[
              {
                "type": "header",
                "subtype": "h3",
                "label": "ЖКХ"
              },
              {
                "type": "text",
                "label": "Район",
                "className": "form-control",
                "name": "text-1510395666108",
                "subtype": "text"
              },
              {
                "type": "text",
                "label": "Улица",
                "className": "form-control",
                "name": "text-1510395668179",
                "subtype": "text"
              }
            ]'
end

q4 = Questionnare.find_or_create_by(title: "Министерство обороны") do |t|
  t.description = "Вопросы к МО"
  t.data = '[
              {
                "type": "header",
                "subtype": "h3",
                "label": "Министерство обороны"
              },
              {
                "type": "text",
                "label": "Округ",
                "className": "form-control",
                "name": "text-1510395666108",
                "subtype": "text"
              },
              {
                "type": "text",
                "label": "Военная часть",
                "className": "form-control",
                "name": "text-1510395668179",
                "subtype": "text"
              }
            ]'
end

q1 = Questionnare.find_or_create_by(title: "Ограничение продажи алкоголя в розницу") do |t|
  t.description = "Выскажите своё мнение касательно ужесточения мер продажи алкоголя"
  t.data = '[
              {
                "type": "select",
                "label": "C какого времени следует запретить прожажу алкоголя в розницу?",
                "className": "form-control",
                "name": "select-1510405604545",
                "values": [
                  {
                    "label": "С 9 часов",
                    "value": "1",
                    "selected": true
                  },
                  {
                    "label": "С 10 часов",
                    "value": "2"
                  },
                  {
                    "label": "С 11 часов",
                    "value": "3"
                  },
                  {
                    "label": "С 12 часов",
                    "value": ""
                  },
                  {
                    "label": "Не следует запрещать",
                    "value": ""
                  }
                ]
              },
              {
                "type": "radio-group",
                "label": "Слудует ли запретить не только в магазиназ, но и на АЗС?",
                "name": "radio-group-1510405556283",
                "values": [
                  {
                    "label": "Да",
                    "value": "1"
                  },
                  {
                    "label": "Нет",
                    "value": "2"
                  }
                ]
              },
              {
                "type": "radio-group",
                "label": "Следует ли всегда продавать алкоголь в общих залах магазинов площадью до 400 кв.м?",
                "name": "radio-group-1510405665741",
                "values": [
                  {
                    "label": "Да",
                    "value": "1"
                  },
                  {
                    "label": "Нет",
                    "value": "2"
                  }
                ]
              }
            ]'
end

q2 = Questionnare.find_or_create_by(title: "Налоги для индивидуальных предпринимателей") do |t|
  t.description = "Выскажите своё мнение насчёт текущих налогов и дайте предложения"
  t.data = '[
              {
                "type": "select",
                "label": "На какой подоходный налог для ИП вы рассчитываете?",
                "className": "form-control",
                "name": "select-1510405604545",
                "values": [
                  {
                    "label": "9%",
                    "value": "1",
                    "selected": true
                  },
                  {
                    "label": "12%",
                    "value": "2"
                  },
                  {
                    "label": "15%",
                    "value": "3"
                  },
                  {
                    "label": "20%",
                    "value": ""
                  },
                  {
                    "label": "Следует освобдить от подоходного налога",
                    "value": ""
                  }
                ]
              },
              {
                "type": "radio-group",
                "label": "Считаете ли вы текущие условия для развития мелкого бизнеса в РБ благоприятными?",
                "name": "radio-group-1510405556283",
                "values": [
                  {
                    "label": "Да",
                    "value": "1"
                  },
                  {
                    "label": "Нет",
                    "value": "2"
                  }
                ]
              },
              {
                "type": "radio-group",
                "label": "Считаете ли вы что ИП не должны выплачивать свои взносы в пенсионный фонд?",
                "name": "radio-group-1510405665741",
                "values": [
                  {
                    "label": "Да",
                    "value": "1"
                  },
                  {
                    "label": "Нет",
                    "value": "2"
                  }
                ]
              }
            ]'
end

c1 = Category.find_or_create_by(name: "Бизнес")
Category.find_or_create_by(name: "Государственный", parent: c1)
сс = Category.find_or_create_by(name: "Частный", parent: c1)
Category.find_or_create_by(name: "Бизнес", parent: c1)
c2 = Category.find_or_create_by(name: "Общество")
Category.find_or_create_by(name: "Здравоохранение", parent: c2)
Category.find_or_create_by(name: "Образование", parent: c2)
Category.find_or_create_by(name: "Семья", parent: c2)
с_for_pq1 = Category.find_or_create_by(name: "Юридические вопросы", parent: c2)
Category.find_or_create_by(name: "Вопросы к органам власти", parent: c2)
c = Category.find_or_create_by(name: "Другое")

a1 = User.find_or_create_by(id: 1) do |u|
  u.email = "v.latushko@mail.ru"
  u.password = "qwerty"
  u.password_confirmation = "qwerty"
end
a2 = User.find_or_create_by(id: 2) do |u|
  u.email = "elenamoshnic@gmail.com"
  u.password = "iamfine"
  u.password_confirmation = "iamfine"
end
a3 = User.find_or_create_by(id: 3) do |u|
  u.email = "vistorepresnyatski@gmail.com"
  u.password = "asdasdsad312d"
  u.password_confirmation = "asdasdsad312d"
end

a4 = User.find_or_create_by(id: 4) do |u|
  u.email = "serginko@mail.ru"
  u.password = "qweqw12313"
  u.password_confirmation = "qweqw12313"
end

a5 = User.find_or_create_by(id: 5) do |u|
  u.email = "rapushkotatyana@mail.ru"
  u.password = "aasdasdasd"
  u.password_confirmation = "aasdasdasd"
end

a6 = User.find_or_create_by(id: 6) do |u|
  u.email = "medinski@gmail.com"
  u.password = "asdasdsad312d"
  u.password_confirmation = "asdasdsad312d"
end

pr1 = ProblemRequest.find_or_create_by(name: "Какой политики следует придерживатся относительно продажи алкоголя в РБ?") do |t|
  t.description = "Вопрос продажи алкоголя после определённого времени суток в последнее время стал предельно неодназначным. Многие согласятся, что подобных были сторонниками подобных ограничений пока сами не стали жертвой данного правила, в период новогодних праздников или накануне выпускных. Что стоит сделать?"
  t.category = с_for_pq1
  t.author = a1
  t.questionnare = q1
end

pr2 = ProblemRequest.find_or_create_by(name: "Налогообложение ИП") do |t|
  t.description = "Недавно наткнулся на статью где описывалось, что граждане соседней с нами РФ могут значительно снизить свои налоговые выплаты объявив себя ИП, так как им больше не необходимо выплачивать взносы в пенсионный фонд и профсоюзы. Они как бы отказываются от возможной социальной помощи государства и берут на себя все возможные риски. Есть ли такое в РБ?"
  t.category = сс
  t.author = a2
  t.questionnare = q2
end

rp1 = ExpertResponse.find_or_create_by(id: 1) do |t|
  t.response_text = "Сам часто сталкивался с проблемой, когда вся семья собралась вместе, и хорошо 'обмыть' встречу мешает лишь то что в местном супермаркете прекратили продавать алкоголь ещё в 8 вечера. Не знаю, к чему двигаются подобным ограничения, но боюсь как бы это не вылилось в сухой закон."
  t.problem_request = pr1
  t.expert = a1
end

rp2 = ExpertResponse.find_or_create_by(id: 2) do |t|
  t.response_text = "Все люди, которые поддерживают отмену подобного рода ограничений явно давно поздно вечером не гуляли около ближайшего 'Простора' или 'Евроопта'. Советую вам хоть раз вылезти из своих уютных квартир и хоть раз своими глазами взглянуть на окружающую действительность. Бомжи, куча снующих вокруг пьяниц. Вы что, хотите чтобы их стало больше?"
  t.problem_request = pr1
  t.expert = a3
end

rp3 = ExpertResponse.find_or_create_by(id: 3) do |t|
  t.response_text = "Мне кажется запрещать продажу алкоголя вечером или нет стоит решать не экспертам. В конце концов алкоголь это, так скажем, продукт массового оптреблени и без мнения широкой общественности мы будем просто воду в ступе толочь."
  t.problem_request = pr1
  t.expert = a2
end

rp4 = ExpertQuestionnareResponse.find_or_create_by(id: 1) do |t|
  t.response_data = "Глупое правило. Честно, глупое. Желающие выпить выпускники заранее закупаются алкоголем, ещё за неделю до праздника, а ограничивая продажу спиртного по вечерам вы не уменьшаете процент пьющего населения, а лишь подогреваете интерес к этому горячительному напитку."
  t.problem_request = pr1
  t.expert = a6
end

rp5 = ExpertResponse.find_or_create_by(id: 4) do |t|
  t.response_text = "Многоуважаемый, вы бы хотя бы немного подумали перед тем как писать. У нас же социальное государство, которое заботится о гражданах! На мой взгляд, налоги стоит только увеличить!"
  t.problem_request = pr2
  t.expert = a1
end
rp6 = ExpertResponse.find_or_create_by(id: 5) do |t|
  t.response_text = "Очень хорошая инициатива, я бы снизил налоговую ставку для мелкого бизнеса. Вы думаете только о соцстраховании, но подобные меры дали бы раздолье мелькому бизнесу и возможно вывели бы наш рынок на новый уровень."
  t.problem_request = pr2
  t.expert = a5
end
rp7 = ExpertQuestionnareResponse.find_or_create_by(id: 2) do |t|
  t.response_data = "Как индивидуальный предприниматель скажу, что текущая процентная ставка просто грабёж! Возможно вы не знаете, но компании ПВТ платят всего 9% подоходного налога в то время как я выплачиваю всё, до единой копейки. Я занимаюсь благим делом, провожу вечера благотворительности и организую праздники для детским больниц и хосписов, а меня за это ещё так нещадно обирают как липку!"
  t.problem_request = pr2
  t.expert = a4
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

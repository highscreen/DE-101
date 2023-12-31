# Домашнее задание по визцализации данных в Tableau

## Введение
Всем привет! И особенно тем, кто трудился и изучал материалы DataLearn. Как вы знаете 3й модуль был про визаулизацию данных, business intelligence и BI продукты. Наш эксперт по BI и Tableau и автор Телеграмм канала [Reveal the Data](https://t.me/revealthedata), Роман Бунин, подготовил для вас очень интересный проект.

## Задание для проекта по модулю 3

Есть датасет с информацией о недвижимости сдаваемой через [Airbnb а Лондоне](https://www.kaggle.com/labdmitriy/airbnb) 

Дата сет состоит из набора таблиц:
- `listings.csv` — детальная информация про каждый объект
- `listings_summary.csv` — суммарная информация про каждый объект (меньше колонок)
- `calendar.csv` — календарь доступности объекта по дням за год
- `neighbourhoods.csv` — список районов
- `neighbourhoods.geojson` — гео-шейп района
- `reviews.csv` — список отзывов по каждому объекту
- `reviews_summary.csv` — суммарная информация по отзывам на объект

Представьте, что вы занимаетесь профессиональной сдачей жилья — берете в долгосрочную аренду объекты, а потом сдаете их в краткосрочную субаренду через Airbnb. У вас есть две задачи, которые вы хотели бы решить с помощью дашборда в Табло. Придумайте и реализуйте любой из них и опубликуйте на Табло Паблик и пришлите ссылку с результатом и ваши пояснения к решаемой задачи в канал de-module03-final-project в слаке. Идеально если, пояснения к задаче будут оформлены в виде заполненного [Dashboard Canvas](https://youtu.be/xSp5ykKcQho) (недостающую информацию придумайте сами). По результатам выполнения проектов будет проведен вебинар, на котором рассмотрим сделанные проекты и будут даны рекомендации по улучшениям. 

## Коммуникация
Мы создали Slack канал, специально для этого проект **de-module03-final-project**. Чтобы к в него зайти, вам нужно быть зарегистрированным в slack DataLearn, нажать **+** рядом с **Channels** и добавить название канала.


## Задачи на выбор:

**1. Создать аналитический инструмент**

Для того, чтобы снять новый объект нужно выбрать наиболее привлекательный район, а также сравнить конкретные объекты. Районы сравниваются по количеству объектов, средней стоимости сдачи и средней загрузки объектов в течение года. Также интересна аналитика в разрезе типа комнаты (room_type), количества спален и площади помещений. Аналитический инструмент должен давать ответ на вопрос в каком районе стоит снять помещение в первую очередь и проанализировать топовые предложения в районе, чтобы искать похожие объекты в аренду.

*Задача со звездочкой: При выезде на осмотр конкретного объекта вам хотелось бы иметь мобильную версию с основной информацией по этому району, чтобы проводить торги на месте.*

# Ожидаемый результат
В качестве результата вы должны сделать дашборд в Tableau. Если ваш инструмент для BI является Power BI или любой другой, то вы можете сделать такой дашборд в нем. Мы рекомендуем Tableau по 3м причинам:

1) Это самый лучший BI инструмент на сегодняшний день 
2) Роман Бунин сможет оценить ваш проект и вы сможете посмотреть как бы Роман решил данную задачу
3) Вы сможете опубликовать ваш дашборд в Tableau Public и использовать его как актив к своему резюме
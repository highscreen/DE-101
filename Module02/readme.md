# Модуль 2: Базы данных, SQL и Облака

## Часть 1: Основы баз данных и Подключение к Базам Данных и SQL

### Теоретическая часть

1. Изучена серия видео-роликов по [Модулю №2 DataLearn](https://www.youtube.com/watch?v=GFgKx4XodMU&list=PLkcP_moW_BpOQUmtgSaw3XswlpeO5RYgA)

1. Пройден курс по Введению в базы данных на [Stepik.org](https://stepik.org/course/551/)

1. Прочитана статья "Хранилище данных vs Озеро Данных" на [HABR](https://habr.com/ru/post/485180/)

1. Пройден курс по Оконным функциям SQL на [Stepik.org](https://stepik.org/course/95367/syllabus)

1. Пройден "Интерактивный тренажер по SQL" на [Stepik.org](https://stepik.org/course/63054/syllabus)

1. Пройден тренажер "Базы данных и SQL. Задачи" на [Stepik.org](https://stepik.org/course/182226/)

## Часть 2: 

## Практическая часть

### Часть №1 Установка ПО

1. Установлен Docker по видео курсу [Установка Docker](https://www.youtube.com/watch?v=dNS61T4MmlM&list=PL0lO_mIqDDFX1c0JHogP5YuZdOVawoepS)
![Скриншот установки Docker](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/screenshots/01_docker.PNG)

1. Установлен PostgreSQL по инструкции [Установка Postgres на Docker](https://www.cloud4y.ru/blog/installing-and-configuring-postgre-sql/)
![Скриншот установки Postgres](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/screenshots/02_postgres.PNG)

1. Установлена программа [DBSchema](https://dbmstools.com/tools/dbschema) для проектирования базы данных.
![Скриншот установки DBSchema](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/screenshots/03_dbschema.png)

1. Установлен SQL-клиент [DBeaver](https://dbeaver.io/) для подключения базы данных. 
![Скриншот установки DBeaver](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/screenshots/04_dbeaver.PNG)

1. Созданы 3 таблицы и загружены данные в базу из [Superstore Excel файл.](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module01/DE%20-%20101%20Lab%201.1/Sample%20-%20Superstore.xls)
![3 Таблицы заполнены данными](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/screenshots/05_filled_tables.png)

1. В GitHub сохранены скрипты загрузки данных и создания таблиц. 
    1. [01 Скрипт загрузки orders](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/scripts/01_orders.sql)
    1. [02 Скрипт загрузки people](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/scripts/02_people.sql)
    1. [03 Скрипт загрузки returns](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/scripts/03_returns.sql)

1. Не вижу смысла тратить время на ответы на вопросы из [Модуля 01] по БД в текущем виде. 

## Часть 2: Проектирование Модели данных

### Теоретическая часть

1. Прочитана статья про Хранилище Данных [Антихрупкость архитектуры хранилищ данных](https://habr.com/ru/post/281553/)
1. Прочитана статья про Data Vault [Основы Data Vault](https://habr.com/ru/post/502968/)

1. Просмотрено видео про Data Vault Часть 1 на [Youtube.com](https://www.youtube.com/watch?v=-ZgzpQXsxi0)

1. Просмотрено видео про Data Vault Часть 2 на [Youtube.com](https://www.youtube.com/watch?v=IZw1cB1uDts)

1. Пройден курс "Проектирование и разработка баз данных" на [Stepik.org](https://stepik.org/course/136543/)

1. Просмотрен вебинар от Карпов.Курсы про Data Vault на [Youtube.com] (https://www.youtube.com/watch?v=fNGIOb8SJvU)

1. Лекция ТулГУ по нормализации на [VKVideo](https://vk.com/search?c%5Bq%5D=%D0%BD%D0%BE%D1%80%D0%BC%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F&c%5Bsection%5D=auto&z=video-221682666_456239032)

1. Пройден курс Проектирование баз данных на [Stepik.org](https://stepik.org/course/51675/syllabus)

1. Пройден курс "Базы данных" от Технопарка на [Youtube.com] (https://www.youtube.com/watch?v=-7sCE6ob70U&list=TLPQMDMxMTIwMjOVGmA_p3TQwQ)

1. Пройден курс по нотации UML на [Youtube.com] (https://www.youtube.com/watch?v=0I9aIP5gKCg&list=PLPPIc-4tm3YTw3FUu75jsW4QgrXopfXhX)

1. Просмотрено видео по нотации UML на [Youtube.com] (https://www.youtube.com/watch?v=xNvnz7DNmVM)

### Практиктическая часть

1. Создана концептуальная схема базы данных из файла [Superstore](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module01/DE%20-%20101%20Lab%201.1/Sample%20-%20Superstore.xls):

![Концептуальная схема базы данных](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/screenshots/06_concept_scheme.PNG)

1. Создана логическая схема базы данных из файла [Superstore](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module01/DE%20-%20101%20Lab%201.1/Sample%20-%20Superstore.xls):

![Логическая схема базы данных](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/screenshots/07_logic_scheme.PNG)

1. Создана физическая схема базы данных из файла [Superstore](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module01/DE%20-%20101%20Lab%201.1/Sample%20-%20Superstore.xls):

![Логическая схема базы данных](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/screenshots/08_phisic_scheme.PNG)

1. DDL код скопирован и выполнене в SQL клиенте.

![Логическая схема базы данных](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/screenshots/08_phisic_scheme.PNG)

3. Вам необходимо сделать `INSERT INTO SQL`, чтобы заполнить **Dimensions** таблицы и **Sales Fact** таблицу. Сначала мы заполняем **Dimensions** таблицы, где в качестве **id** мы генерим последовательность чисел, а зачем **Sales Fact** таблицу, в которую вставляем **id** из **Dimensions** таблиц. Такой пример я рассматривал в видео.

## Часть 3: База данных в облаке

### Теоретическая часть

1. Видео лекция часть 1 [БД в облаке](https://youtu.be/UzILBlOAQ9s)

1. Видео лекция часть 2 [Создание Аналитической БД в облаке Yandex Cloud, VK CLoud](https://youtu.be/UzILBlOAQ9s?t=627)

1. [Шпаргалка системного администратора по сетевым инструментам Linux](https://habr.com/ru/company/ruvds/blog/417485/) (Русский)

1. Документация по [Яндекс.Клауд](https://cloud.yandex.ru/docs)

1. Документация по [VK Cloud](https://cloud.vk.com/docs)


### Практическая часть

1. Создана учетная запись в [VK Cloud](https://cloud.vk.com/). Если вы запускаете сервис в Cloud, не забудьте его выключить или удалить, когда он не нужен, а то все деньги спишут, тк сервис платный в принципе.

1. Создана и активирована БД Postgres (https://github.com/Data-Learn/data-engineering/blob/master/how-to/how_to_amazon_rds.md)

1. Произведено подключение к новой БД через SQL клиент (например DBeaver)

1. Создана схема .stg в БД Postgres на VK Cloud

1. Загружена новая БД из модуля 2 части 2 (нормализованная Superstore) в staging (схема БД `stg`)

1. Загружены dimensional model (схема `dw`). 

Вы можете использовать мой пример SQL для этого упражнения:

- Staging [stg.orders.sql](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module02/DE%20-%20101%20Lab%202.1/stg.orders.sql)

- Business Layer [from_stg_to_dw.sql](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module02/DE%20-%20101%20Lab%202.1/from_stg_to_dw.sql)

1. Попробуйте выполнить свои запросы из предыдущих упражнений. Не забудьте указать схему перед название таблицы. Например, `public.orders` или `stg.orders`.

## Часть 4: Визуализация данных Google Sheets, KlipFolio, Yandex DataLens

1. Видео лекция часть 1 [Сервисы визуализации для базы данных](https://youtu.be/bqUtv1y3D7A)

1. Видео лекция часть 2 [Пример подключения к облачным сервисам](https://youtu.be/bqUtv1y3D7A?t=825)

1. Видео-лекция по визуализации данных в [Google Data Studio](https://vk.com/video-99936101_456240018) 

1. Выбрать [бесплатную альтернативу](https://habr.com/ru/companies/ruvds/articles/536962/) сервису визуализации KlipFolio с подключением к БД Postgres.

### Практическая часть

1. Создан дашборд в [Google Data Studio](https://lookerstudio.google.com/overview)

1. Создан дашборд в [Infogram](https://infogram.com/).

Идеи для создания дашборда отчета:
    1. Обзор ключевых метрик
        Total Sales
        Total Profit
        Profit Ratio
        Profit per Order
        Sales per Customer
        Avg. Discount
        Monthly Sales by Segment ( табличка и график)
        Monthly Sales by Product Category (табличка и график)
    1. Product Dashboard (Продуктовые метрики)
        Sales by Product Category over time (Продажи по категориям)
    1. Customer Analysis
        Sales and Profit by Customer
        Customer Ranking
        Sales per region
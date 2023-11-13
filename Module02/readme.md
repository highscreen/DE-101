# Модуль 2: Базы данных и SQL

## Теоретическая часть

### Часть 1: Основы баз данных

1. Изучена серия видео-роликов по [Модулю №2 DataLearn](https://www.youtube.com/watch?v=GFgKx4XodMU&list=PLkcP_moW_BpOQUmtgSaw3XswlpeO5RYgA)

1. Пройден курс по Введению в базы данных на [Stepik.org](https://stepik.org/course/551/)

1. Прочитана статья "Хранилище данных vs Озеро Данных" на [HABR](https://habr.com/ru/post/485180/)

1. Пройден курс Проектирование баз данных на [Stepik.org](https://stepik.org/course/51675/syllabus)

1. Пройден курс по Оконным функциям SQL на [Stepik.org](https://stepik.org/course/95367/syllabus)

1. Пройден "Интерактивный тренажер по SQL" на [Stepik.org](https://stepik.org/course/63054/syllabus)

1. Пройден курс "Проектирование и разработка баз данных" на [Stepik.org](https://stepik.org/course/136543/)

1. Лекция ТулГУ по нормализации на [VKVideo](https://vk.com/search?c%5Bq%5D=%D0%BD%D0%BE%D1%80%D0%BC%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F&c%5Bsection%5D=auto&z=video-221682666_456239032)

1. Пройден тренажер "Базы данных и SQL. Задачи" на [Stepik.org](https://stepik.org/course/182226/)

### Часть 2: Подключение к Базам Данных и SQL

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
    ![01 Скрипт загрузки orders](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/scripts/01_orders.sql)
    ![02 Скрипт загрузки people](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/scripts/02_people.sql)
    ![03 Скрипт загрузки returns](https://github.com/highscreen/DE-101/blob/master/Module02/lab_fact/scripts/03_returns.sql)

1. Не вижу смысла тратить время на ответы на вопросы из [Модуля 01] по БД в текущем виде. 

## 2.4: Модели Данных

### Теоретическая часть

1. Прочитана статья про Хранилище Данных [Антихрупкость архитектуры хранилищ данных](https://habr.com/ru/post/281553/)
1. Прочитана статья про Data Vault [Основы Data Vault](https://habr.com/ru/post/502968/)

### Практиктическая часть

1. Вам необходимо нарисовать модель данных для нашего файлика [Superstore](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module01/DE%20-%20101%20Lab%201.1/Sample%20-%20Superstore.xls):

- Концептуальную
- Логическую
- Физическую
  Вы можете использовать бесплатную версию [SqlDBM](https://sqldbm.com/Home/) или любой другой софт для создания моделей данных баз данных.

2. Когда вы нарисуете модель данных, вам нужно скопировать DDL и выполнить его в SQL клиенте.
3. Вам необходимо сделать `INSERT INTO SQL`, чтобы заполнить **Dimensions** таблицы и **Sales Fact** таблицу. Сначала мы заполняем **Dimensions** таблицы, где в качестве **id** мы генерим последовательность чисел, а зачем **Sales Fact** таблицу, в которую вставляем **id** из **Dimensions** таблиц. Такой пример я рассматривал в видео.

## 2.5: База данных в облаке

**Видео лекция часть 1 - теория** - [БД в облаке](https://youtu.be/UzILBlOAQ9s)

**Видео лекция часть 2 - практика** - [Создание Аналитической БД в облаке AWS](https://youtu.be/UzILBlOAQ9s?t=627)

### Дополнительные материалы для изучения

Мы посвятим целый модуль облачным вычислениям. Но к сожалению, очень мало информации по сетевому администрированию, которую легко и быстро усвоить. Цель простая - нам необходимо, чтобы 2 и более сервера могли эффективно и безопасно коммуницировать между собой через сеть. Для этого нужно открыть/закрыть порты, настроить firewall и возможны другие действия. Вы можете поискать информацию.

1. Лекции на Coursera [Google IT Support Professional](https://www.coursera.org/professional-certificates/google-it-support) (English)
2. [Шпаргалка системного администратора по сетевым инструментам Linux](https://habr.com/ru/company/ruvds/blog/417485/) (Русский)

### Практика

1. Вам необходимо [создать учетную запись в AWS](https://github.com/Data-Learn/data-engineering/blob/master/how-to/How%20to%20create%20AWS%20Account.md). Это бесплатно. Если вы запускаете сервис в AWS, не забудьте его удалить, когда он не нужен, а то могут и денюшку списать.
2. Используя сервис AWS Lightsail или [AWS RDS (смотрите инструкцию)](https://github.com/Data-Learn/data-engineering/blob/master/how-to/how_to_amazon_rds.md) создайте БД Postgres и активируйте **Public access**
3. Подключитесь к новой БД через SQL клиент (например DBeaver)
4. Загрузите данные из модуля 2.3 (Superstore dataset) в staging (схема БД `stg`) и загрузите dimensional model (схема `dw`). Вы можете использовать мой пример SQL для этого упражнения:

- Staging [stg.orders.sql](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module02/DE%20-%20101%20Lab%202.1/stg.orders.sql)
- Business Layer [from_stg_to_dw.sql](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module02/DE%20-%20101%20Lab%202.1/from_stg_to_dw.sql)

5. Попробуйте выполнить свои запросы из предыдущих упражнений. Не забудьте указать схему перед название таблицы. Например, `public.orders` или `stg.orders`.

## 2.6: Как донести данные до бизнес-пользователя (Пример решений на KlipFolio, Google Sheets и пр.)

**Видео лекция часть 1 - теория** - [Сервисы визуализации для базы данных](https://youtu.be/bqUtv1y3D7A)

**Видео лекция часть 2 - практика** - [Пример подключения к облачным сервисам](https://youtu.be/bqUtv1y3D7A?t=825)

### Дополнительные материалы для изучения

Данная лекция знакомит вас с популярными сервисами для визуализации данных. По сути мы с вами создаем BI решение. Более детально мы рассмотрим про BI в модуле 3.

1. [Введение в Google Data Studio](https://analytics.google.com/analytics/academy/course/10) (English)
2. [AWS QuickSight практика](https://docs.aws.amazon.com/quicksight/latest/user/getting-started.html) (English)
3. [Klipfolio практика](https://www.klipfolio.com/blogs-and-tutorials) (English)
4. [Пиратские метрики](https://vc.ru/trade/53154-piratskie-metriki-dlya-internet-magazina) (Русский)
5. [AARRR воронка — модель «Пиратские метрики» + фреймворк AAARRR](https://leadstartup.ru/db/aarrr) (Русский)
6. [Обзор книги «Lean Analytics»](https://gopractice.ru/lean_analytics/) (Русский)

### Практика

В качестве домашнего задания вам необходимо создать дашборд в одном из решений, которые мы рассмотрели. ДЛя идей можно использовать задание из 1го модуля. Данные должны быть в Postgres в AWS и вы сможете подключиться сервисом к БД и создать несколько отчетов. Для практики можно и во всех 3х создать.
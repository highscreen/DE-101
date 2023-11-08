# Модуль 2: Базы данных и SQL

## Теоретическая часть

### Часть 1: Основы баз данных

1. Изучена серия видео-роликов по [Модулю №2](https://www.youtube.com/watch?v=GFgKx4XodMU&list=PLkcP_moW_BpOQUmtgSaw3XswlpeO5RYgA)

1. Пройден курс по Введению в базы данных [Введение в Базы Данных](https://stepik.org/course/551/)

1. Прочитана статья [Хранилище данных vs Озеро Данных](https://habr.com/ru/post/485180/)

1. Пройден курс Проектирование баз данных на [Stepik.org](https://stepik.org/course/51675/syllabus)

1. Пройден курс по Оконным функциям SQL на [Stepik.org](https://stepik.org/course/95367/syllabus)

1. Пройден тренажер по SQL на [Stepik.org](https://stepik.org/course/63054/syllabus)

1. Изучен курс по проектированию баз данных от "Технострим" на [Youtube.com](https://www.youtube.com/watch?v=-7sCE6ob70U&list=TLPQMDMxMTIwMjOVGmA_p3TQwQ)

### Часть 2: Подключение к Базам Данных и SQL

**Видео лекция часть 1 - теория** - [Подключение к БД](https://youtu.be/nJsRJ5SytjI).

**Видео лекция часть 2 - практика** - [Подключение к БД, загрузка данных в БД, SQL запросы ](https://youtu.be/nJsRJ5SytjI?t=657)

### Дополнительные материалы для изучения

1. [Интерактивный онлайн-курс по SQL СУБД PostgreSQL](https://learndb.ru/) (Русский)
2. [Интерактивный SQL учебник с упражнениями](https://sql-ex.ru/) (Русский)
3. [Основные функции SQL](https://khashtamov.com/ru/window-functions-sql/) (Русский)
4. [Практика SQL](https://towardsdatascience.com/sqlzoo-the-best-way-to-practice-sql-66b7ccb1f17a) (English)
5. [SQL: Analyzing Business Metrics](https://www.codecademy.com/learn/sql-analyzing-business-metrics) (English)
6. [Analyze data with SQL](https://www.codecademy.com/learn/paths/analyze-data-with-sql) (English)
7. [Большой курс SQL и Баз Данных от Stanford](https://www.edx.org/course/databases-5-sql) (English)
8. [Интерактивный тренажер по SQL](https://stepik.org/course/63054/) (Русский)
9. [Лучшие вопросы средней сложности по SQL на собеседовании аналитика данных](https://habr.com/ru/company/dcmiran/blog/500360/) (Русский)

## Практическая часть

### Часть №1 Установка ПО

1. Установлен Docker по видео курсу [Установка Docker](https://www.youtube.com/watch?v=dNS61T4MmlM&list=PL0lO_mIqDDFX1c0JHogP5YuZdOVawoepS)

1. Установлен PostgreSQL по инструкции [Установка Postgres на Docker](https://www.cloud4y.ru/blog/installing-and-configuring-postgre-sql/)

1. Установлена программа [DBSchema](https://dbmstools.com/tools/dbschema) для проектирования базы данных.

1. Установлен SQL-клиент [DBeaver](https://dbeaver.io/) для подключения базы данных. 

1. Создайте 3 таблицы и загрузите данные из [Superstore Excel файл](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module01/DE%20-%20101%20Lab%201.1/Sample%20-%20Superstore.xls) в вашу базу данных.

1. Сохраните в вашем GitHub скрипт загрузки данных и создания таблиц. Вы можете использовать готовый [пример sql файлов](https://github.com/Data-Learn/data-engineering/tree/master/DE-101%20Modules/Module02/DE%20-%20101%20Lab%202.1).

1. Напишите запросы, чтобы ответить на вопросы из [Модуля 01](https://github.com/Data-Learn/data-engineering/tree/master/DE-101%20Modules/Module01/DE%20-%20101%20Lab%201.1#%D0%B0%D0%BD%D0%B0%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B0-%D0%B2-excel). Сохраните в вашем GitHub скрипт загрузки данных и создания таблиц.

## 2.4: Модели Данных

**Видео лекция часть 1 - теория** - [Модели Данных](https://youtu.be/Jwefn9G2I_g)

**Видео лекция часть 2 - практика** - [Создание модели данных в SQLdbm](https://youtu.be/Jwefn9G2I_g?t=1903)

### Дополнительные материалы для изучения

1. Статья про Хранилище Данных [Антихрупкость архитектуры хранилищ данных](https://habr.com/ru/post/281553/)
2. Статья про Data Vault [Основы Data Vault](https://habr.com/ru/post/502968/)

### Практика

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

# Опрос Модуль 2

Пожалуйста пройдите [опрос по завершении Модуля 2](https://forms.gle/GX2jPuvBxDNXa5dU9). Так я смогу посмотреть, сколько человек закончило модуль, что было хорошо, а что можно улучшить.

По окончанию модуля 2, вы можете расшарить значок `02 | DATABASE` в социальных сетях и рассказать о своих достижениях.

![img](https://github.com/Data-Learn/data-engineering/blob/master/img/de101-module02.png)

**PS Если материал оказался полезным, вы можете поддержать авторов через**
Условная цена одного модуля 500р ;)

[ЮMoney](https://yoomoney.ru/to/4100116864248269) или [Patreon](https://www.patreon.com/dmitryanoshin) или [Paypal](https://paypal.me/dmitryanoshin)
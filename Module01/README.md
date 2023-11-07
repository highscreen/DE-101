# Задание для модуля 1
Результаты домашней работы загружайте к себе в git репозиторий. 

1. Создаем аккаунт в GitHub и репозиторий для обучения на курсе DataLearn.

2. Создаем папки для Лабораторных работ по формату **DE-101/Module1/** для сохранения результатов.

![Репозиторий highscreee/de-101 создан.](https://github.com/highscreen/DE-101/blob/master/Module01/github_repo.png)

3. Пройти [Видео-курс по Git на русском](https://www.youtube.com/playlist?list=PLDyvV36pndZFHXjXuwA_NywNrVQO0aQqb).

4. Если вы не работали с командной строкой, то пройдите это курс [introduction into Shell](https://www.datacamp.com/courses/introduction-to-shell-for-data-science). Не обязательно понимать, что такое Shell/bash. Это для нас просто инструмент для навигации и запуска приложений/команд, когда нет GUI (графического интерфейса). Мы будем использовать командную строку для управления Git и для работы с облаком.

5. Устанавливаем Visual Studio Code с официального сайта и клонируем свой репозиторий на локальную машину по этой [инструкции](https://github.com/Data-Learn/data-engineering/blob/master/how-to/How%20to%20get%20git.md)

6. Наша задача создать свой собственный репозиторий Git, где мы сможем хранить свои наработки, и мы потом сможем проверить по завершению курса. 

6. Клонируем репозиторий Datalearn со всеми Лабораторными работами.

7. Читаем про MarkDown на [официальном сайте](https://www.markdownguide.org/basic-syntax/) и оформляем результаты Лабораторной работы в файле readme.md.



## Архитектура Аналитического Решения
Необходимо нарисовать верхнеуровневую архитектуру аналитического решения по примеру теоретического видео, где я рассказывал об архитектуре ламоды. Необходимо использовать:

Source Layer - слой источников данных
Storage Layer - слой хранения данных
Business Layer - слой для доступа к данным бизнес пользователей
Необходимо использовать draw.io, Microsoft Visio Studio, Power Point или инструмент на выбор.

Здесь вы можете найти [инструкции по установке draw.io](https://github.com/Data-Learn/data-engineering/blob/master/how-to/How%20to%20install%20drawio.md).

## Аналитика в Excel
Используя данные Sample - Superstore.xls сделать:

+ Использовать Lookup
+ Построить Сводную таблицу
+ Построить примеры отчетов
+ Создать дашборд
+ И другая функциональность Excel на ваш выбор.

### Идеи для создания дашборда отчета:

1. Overview (обзор ключевых метрик)
1. Total Sales
1.  Total Profit
1. Profit Ratio
1. Profit per Order
1. Sales per Customer
1. Avg. Discount
1. Monthly Sales by Segment ( табличка и график)
1. Monthly Sales by Product Category (табличка и график)
1. Product Dashboard (Продуктовые метрики)
1. Sales by Product Category over time (Продажи по категориям)
1. Customer Analysis
1. Sales and Profit by Customer
1. Customer Ranking
1. Sales per region

### Значения атрибутов в Sample - Superstore.xls

| Название столбца | Значение                          |
|------------------|-----------------------------------|
| Row ID           | Идентификатор строки (уникальный) |
| Order ID         | Идентификатор заказа              |
| Order Date       | Дата заказа                       |
| Ship Date        | Дата доставки                     |
| Ship Mode        | Класс доставки                    |
| Customer ID      | Идентификатор покупателя          |
| Customer Name    | Имя и фамилия покупателя          |
| Segment          | Сегмент покупателя                |
| Country          | Страна                            |
| City             | Город                             |
| State            | Штат                              |
| Postal Code      | Почтовый индекс                   |
| Region           | Регион                            |
| Product ID       | Идентификатор товара              |
| Category         | Категория                         |
| Sub-Category     | Подкатегория                      |
| Product Name     | Название товара                   |
| Sales            | Продажи (Доход)                   |
| Quantity         | Количество                        |
| Discount         | Скидка в %                        |
| Profit           | Прибыль                           |
| Person           | Региональный менеджер             |
| Returned         | Возвраты товара                   |


## Полезные материалы
* [Алгоритм проектирования дашборда](https://youtu.be/xSp5ykKcQho) - общие правила проектирования высококачественных дашбордов
* [Обзор дашборда|Гайд по BI](https://youtu.be/rxu8jmsvw98) - гайд по проектированию интерактивных отчетов в Excel (пример для superstore). 
* [Пример отчета](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module01/DE%20-%20101%20Lab%201.1/Sample%20-%20Superstore%20-%20Dashboard.xlsx)
* [Пошаговая инструкция](https://github.com/Data-Learn/data-engineering/blob/master/DE-101%20Modules/Module01/DE%20-%20101%20Lab%201.1/build_steps_dashboard.md)
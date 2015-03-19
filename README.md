1. Read documentation http://kohanaframework.org/3.0/guide
  a. install from https://github.com/kohana/kohana
    i. git clone git://github.com/kohana/kohana.git
    ii. cd kohana/
    iii. git submodule init
    iv. git submodule update

2. Проектирование РСУБД
http://habrahabr.ru/post/194714/
* вначале поста есть ссылки на предыдущие части
** также, скаченный материал(PDF) по ссылкам есть корне “Руководство по проектированию реляционных баз данных”
  a. Выделение сущностей
  b. Приведение к 3нормальной форме (3НФ)
  c. Денормализация
  d. Определение типов данных
  e. Создание миграции в фреймворке
  f. Индексы
  g. Связи

3. Написания запросов на SQL
4. Создание скрипта БазыДанных (БД)
  a. Установка миграционного модуля коханы
    * используйте для создания таблиц кохана query builder
    migration module https://github.com/ferpetrelli/kohana-flexible-migrations
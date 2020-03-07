# booksApp


>######ТЕСТОВОЕ ЗАДАНИЕ
>Проект заключается в разработке приложения по поиску книг. Обязательные
(минимальные) требования включают в себя следующее:

>1.Спроектировать базу данных, в которой будут храниться: книги (название, краткое
описание, картинка), жанры книг, авторы (ФИО). У каждой книги может быть один и
более автор/жанр.

Создал базу данных в phpMyAdmin и экспортировал [test_db.sql](test_db.sql).
База данных состоит из таблиц 'books', 'authors', 'tags', и две таблицы для связки авторов и жанров с книгами: 'books_authors', 'books_tags'.
>2.Написать запрос, который выбирает список книг относящихся хотя бы к одному из
выбранных жанров/авторов.
Примечание: выборка должна производиться одним запросом.

>3.Создать HTML форму поиска книг. При нажатии на кнопку производится поиск книг
по введенным параметрам, найденные книги показываются аккуратным списком с
картинкой, авторами, жанрами, кратким описанием. Фильтр включает в себя:
название, жанры, авторы.

>>Примечания:
>
>>а. Выбор жанров/авторов производится с помощью элемента checkbox.
>
>>б. Поиск по наименованию должен быть полнотекстовым.
>
>>в. Если никакие параметры не заданы, показываются все книги.
>
>>г. После поиска данные фильтра не сбрасываются.

>>4.Списки авторов/жанров изначально не показаны, они появляются только при
нажатии на «спойлер».

>>5.Доработать форму поиска, сделав так, чтобы форма отправлялась с помощью AJAX,
и найденные книги обновлялись без перезагрузки страницы.
Примечание: список книг автоматически обновляется при выборе любого
жанра/автора, при нажатии на кнопку поиск, при снятии фокуса с поля «название
книги».

>>6.Наполнить созданную базу данных книгами/авторами/жанрами со страницы
https://www.litmir.me/bs (достаточно несколько примеров).
Примечание: создать автоматический парсер, при запуске которого все текущие
данные (книги/авторы/жанры) будут удаляться, новые – добавляться.

>######ТЕСТОВОЕ ЗАДАНИЕ
>Проект заключается в разработке приложения по поиску книг. Обязательные
(минимальные) требования включают в себя следующее:

>1.Спроектировать базу данных, в которой будут храниться: книги (название, краткое
описание, картинка), жанры книг, авторы (ФИО). У каждой книги может быть один и
более автор/жанр.

Создал базу данных в phpMyAdmin и экспортировал [test_db.sql](test_db.sql).
База данных состоит из таблиц 'books', 'authors', 'tags', и две таблицы для связки авторов и жанров с книгами: 'books_authors', 'books_tags'.
>2.Написать запрос, который выбирает список книг относящихся хотя бы к одному из
выбранных жанров/авторов.
Примечание: выборка должна производиться одним запросом.

>3.Создать HTML форму поиска книг. При нажатии на кнопку производится поиск книг
по введенным параметрам, найденные книги показываются аккуратным списком с
картинкой, авторами, жанрами, кратким описанием. Фильтр включает в себя:
название, жанры, авторы.

>>Примечания:
>
>>а. Выбор жанров/авторов производится с помощью элемента checkbox.
>
>>б. Поиск по наименованию должен быть полнотекстовым.
>
>>в. Если никакие параметры не заданы, показываются все книги.
>
>>г. После поиска данные фильтра не сбрасываются.

>>4.Списки авторов/жанров изначально не показаны, они появляются только при
нажатии на «спойлер».

>>5.Доработать форму поиска, сделав так, чтобы форма отправлялась с помощью AJAX,
и найденные книги обновлялись без перезагрузки страницы.
Примечание: список книг автоматически обновляется при выборе любого
жанра/автора, при нажатии на кнопку поиск, при снятии фокуса с поля «название
книги».

>>6.Наполнить созданную базу данных книгами/авторами/жанрами со страницы
https://www.litmir.me/bs (достаточно несколько примеров).
Примечание: создать автоматический парсер, при запуске которого все текущие
данные (книги/авторы/жанры) будут удаляться, новые – добавляться.

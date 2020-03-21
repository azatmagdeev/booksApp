-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 20 2020 г., 02:18
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
                           `id` int(11) NOT NULL,
                           `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Лев Толстой'),
(2, 'Александр Пушкин'),
(3, 'Николай Гоголь'),
(4, 'Карл Маркс'),
(5, 'Фридрих Энгельс');

-- --------------------------------------------------------

--
-- Структура таблицы `books`
--

CREATE TABLE `books` (
                         `id` int(11) NOT NULL,
                         `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
                         `image` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `books`
--

INSERT INTO `books` (`id`, `name`, `note`, `image`) VALUES
(1, 'Война и мир.', 'Хорошо известный классический роман-эпопея Льва Толстого рассказывает о сложном, бурном периоде в истории России и всей Европы — эпохе завоевательных походов императора Наполеона в Восточную Европу и Россию, с 1805 по 1812 год. Автор подробно рассказывает о Войне — о ходе боевых действий от Аустерлица до Бородино и Березины; и о Мире — показана жизнь в России в это же время, причем пером писателя охвачены все слои общества — дворянские семьи, крестьяне, горожане, солдаты и даже императоры.\r\n\r\nВ этом большом, многоплановом романе действуют десятки и сотни персонажей — и в их числе реальные исторические лица, при помощи которых Толстой старается изобразить жизнь в ту эпоху во всем ее многообразии. Часто автор отступает от основных событий романа и излагает свое мнение и взгляды по множеству вопросов — он говорит об исторической науке, о социологии и психологии, морали и нравственности, свободе и необходимости.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/War-and-peace_1873.gif/269px-War-and-peace_1873.gif'),
(2, 'Капитанская дочка.', 'В повести \"Капитанская дочка\" А. С. Пушкина исторические реалии умело переплетены с художественным вымыслом. События разворачиваются во время Крестьянской войны 1773-1775 годов. От лица молодого дворянина Петра Гринёва автор описывает жестокое и беспощадное восстание крестьян под предводительством Емельяна Пугачёва. Это произведение о чести, о любви и благородстве, о том, что даже в самые тяжёлые времена нужно оставаться человеком.\r\n\r\nПодробнее: https://www.labirint.ru/books/458408/', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9c/Captain%27s_Daughter_1837.jpg/245px-Captain%27s_Daughter_1837.jpg'),
(3, 'Вий', 'Три студента киевской бурсы отправились на каникулы заняться репетиторством. По дороге заплутали в темноте и попросились на ночлег на отдаленном хуторе.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6d/%D0%93%D0%BE%D0%B3%D0%BE%D0%BB%D1%8C_%D0%9D.%D0%92._%D0%92%D0%B8%D0%B9._%281901%29.pdf/page1-253px-%D0%93%D0%BE%D0%B3%D0%BE%D0%BB%D1%8C_%D0%9D.%D0%92._%D0%92%D0%B8%D0%B9._%281901%29.pdf.jpg'),
(4, 'Евгений Онегин', 'А. С. Пушкин работал над этим романом свыше семи лет[2]. Роман был, по словам поэта, «плодом ума холодных наблюдений и сердца горестных замет». Работу над ним Пушкин называл подвигом — из всего своего творческого наследия только «Бориса Годунова» он характеризовал этим же словом. В произведении на широком фоне картин русской жизни показана драматическая судьба представителей русского дворянства первой четверти XIX века.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5d/Eugene_Onegin_illustration.jpg/220px-Eugene_Onegin_illustration.jpg'),
(5, 'Сказка о царе Салтане', 'Сказка в стихах Александра Пушкина, написанная в 1831 году и впервые изданная в следующем году в собрании стихотворений. Сказка посвящена истории женитьбы царя Салтана и рождению его сына, князя Гвидона, который из-за козней тёток попадает на необитаемый остров, встречает там волшебницу - царевну Лебедь, с её помощью становится могущественным владыкой и воссоединяется с отцом.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/V.N._Kurdyumov_-_Tale_of_Tsar_Saltan_%281913%29_00_cover.jpg/274px-V.N._Kurdyumov_-_Tale_of_Tsar_Saltan_%281913%29_00_cover.jpg'),
(6, 'Манифест Коммунистической партии', 'В этом важном марксистском сочинении констатируется, что вся предшествующая история человечества есть история борьбы классов. Авторы провозглашают неотвратимость гибели капитализма от рук пролетариата, которому предстоит построить бесклассовое коммунистическое общество с общественной собственностью на средства производства.\r\n\r\nВ «Манифесте Коммунистической партии» Маркс и Энгельс излагают своё видение законов общественного развития и неизбежности смены способов производства. Важное место в «Манифесте» занимает критический обзор различных немарксистских теорий социализма и реакционных «псевдосоциалистических» учений.', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/86/Communist-manifesto.png/229px-Communist-manifesto.png');

-- --------------------------------------------------------

--
-- Структура таблицы `books_authors`
--

CREATE TABLE `books_authors` (
                                 `id` int(10) NOT NULL,
                                 `book_id` int(10) NOT NULL,
                                 `author_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `books_authors`
--

INSERT INTO `books_authors` (`id`, `book_id`, `author_id`) VALUES
(1, 2, 2),
(2, 4, 2),
(3, 1, 1),
(4, 3, 3),
(5, 5, 2),
(6, 6, 4),
(7, 6, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `books_tags`
--

CREATE TABLE `books_tags` (
                              `id` int(11) NOT NULL,
                              `book_id` int(11) NOT NULL,
                              `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `books_tags`
--

INSERT INTO `books_tags` (`id`, `book_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 5, 2),
(4, 6, 3),
(5, 6, 4),
(6, 4, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
                        `id` int(11) NOT NULL,
                        `tag` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `tag`) VALUES
(1, 'Исторический роман'),
(2, 'Сказка'),
(3, 'Философия'),
(4, 'Политика'),
(5, 'Роман в стихах');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
                         `id` int(10) NOT NULL,
                         `login` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
                         `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'sasha', 'ahsas');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books`
--
ALTER TABLE `books`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books_authors`
--
ALTER TABLE `books_authors`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `books_tags`
--
ALTER TABLE `books_tags`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
    ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
    ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `books`
--
ALTER TABLE `books`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `books_authors`
--
ALTER TABLE `books_authors`
    MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `books_tags`
--
ALTER TABLE `books_tags`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
    MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
    MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

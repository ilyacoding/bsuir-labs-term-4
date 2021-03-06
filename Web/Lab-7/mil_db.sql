-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 16 2017 г., 15:07
-- Версия сервера: 5.7.17-log
-- Версия PHP: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mil_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `mil_banners`
--

CREATE TABLE `mil_banners` (
  `id` int(11) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  `src` text NOT NULL,
  `alt` text NOT NULL,
  `link` text NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mil_banners`
--

INSERT INTO `mil_banners` (`id`, `is_show`, `src`, `alt`, `link`, `width`, `height`) VALUES
(1, 1, '/banners/banner200x200-example.gif', 'Banner example', 'http://google.com', 200, 200),
(2, 1, '/banners/banner200x400-example.gif', 'Banner example 200x400', '#', 200, 400),
(3, 1, '/banners/banner468x60-example.gif', 'Banner example', '#', 468, 60),
(4, 0, '/banners/banner1200x120-example.gif', 'Оценить качество сайта', 'http://pr-cy.ru/', 1200, 120);

-- --------------------------------------------------------

--
-- Структура таблицы `mil_cats`
--

CREATE TABLE `mil_cats` (
  `cat_id` int(11) NOT NULL,
  `cat_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mil_cats`
--

INSERT INTO `mil_cats` (`cat_id`, `cat_name`) VALUES
(0, 'Главная'),
(1, 'ОБТ'),
(2, 'БМП'),
(3, 'БТР'),
(4, 'БРМ'),
(5, 'ЛТ');

-- --------------------------------------------------------

--
-- Структура таблицы `mil_db`
--

CREATE TABLE `mil_db` (
  `users` int(11) NOT NULL,
  `news` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `cats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mil_db`
--

INSERT INTO `mil_db` (`users`, `news`, `views`, `cats`) VALUES
(5, 12, 153, 7);

-- --------------------------------------------------------

--
-- Структура таблицы `mil_history`
--

CREATE TABLE `mil_history` (
  `id` int(11) NOT NULL,
  `session_id` text NOT NULL,
  `page_url` text NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mil_history`
--

INSERT INTO `mil_history` (`id`, `session_id`, `page_url`, `time`) VALUES
(3, 'drd433nb95q5p59p38mbt7ojvg', '/category/id/0', '2017-04-16 14:33:37'),
(4, 'drd433nb95q5p59p38mbt7ojvg', '/category/id/1', '2017-04-16 14:33:47'),
(5, 'drd433nb95q5p59p38mbt7ojvg', '/item/id/1', '2017-04-16 14:33:51'),
(6, 'drd433nb95q5p59p38mbt7ojvg', '/item/id/1', '2017-04-16 14:38:57'),
(7, 'drd433nb95q5p59p38mbt7ojvg', '/item/id/1', '2017-04-16 14:39:35'),
(8, 'drd433nb95q5p59p38mbt7ojvg', '/history', '2017-04-16 14:39:52'),
(9, 'drd433nb95q5p59p38mbt7ojvg', '/history', '2017-04-16 14:40:15'),
(10, 'drd433nb95q5p59p38mbt7ojvg', '/category/id/0', '2017-04-16 14:40:20'),
(11, 'drd433nb95q5p59p38mbt7ojvg', '/category/id/0', '2017-04-16 14:41:24'),
(12, 'drd433nb95q5p59p38mbt7ojvg', '/category/id/0', '2017-04-16 14:41:57'),
(13, 'drd433nb95q5p59p38mbt7ojvg', '/category/id/0', '2017-04-16 14:42:09'),
(14, 'drd433nb95q5p59p38mbt7ojvg', '/category/id/0', '2017-04-16 14:42:24');

-- --------------------------------------------------------

--
-- Структура таблицы `mil_items`
--

CREATE TABLE `mil_items` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `date` date NOT NULL,
  `cat_id` int(11) NOT NULL,
  `img` text NOT NULL,
  `short_desc` text NOT NULL,
  `full_desc` text NOT NULL,
  `fields` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mil_items`
--

INSERT INTO `mil_items` (`id`, `title`, `date`, `cat_id`, `img`, `short_desc`, `full_desc`, `fields`) VALUES
(1, 'Т-90', '2017-04-03', 1, '/uploads/russia-t90.jpg', 'Т-90 («Владимир») — российский основной боевой танк. Создан в конце 1980-х как глубокая модернизация танка Т-72Б[8], в 1992 году был принят на вооружение под индексом Т-90[9]. После смерти Владимира Ивановича Поткина, главного конструктора танка, решением правительства Российской Федерации Т-90 было присвоено словесное название «Владимир»[10].', 'Т-90 является глубокой модернизацией Т-72Б, созданного в нижнетагильском «УКБТМ» в 1989 году под руководством главного инженера Владимира Поткина как «Усовершенствованный Т-72Б»[17] (заводское название «Объект 188»). В 1989 году танк был передан на ГСИ, которые прошли успешно[18].  «Объект 188» разрабатывался параллельно со значительно более совершенным экспериментальным танком Объект 187, оба объекта проходили по программе доведения танка Т-72Б до уровня Т-80У\\УД. Бронирование Т-72Б поздних серий (образца 1989 года) соответствовало данному уровню, а главным недостатком являлось отсутствие автоматизированной системы управления огнём. Очень простой и надёжный прицельный комплекс 1А40-1 уже не обеспечивал современных требований, предъявляемых к танкам. Для увеличения огневой мощи танка планировалось установить на него новую СУО. Решением стало установка комплекса управления огнём 1А45 «Иртыш», отработанного на танках Т-80У и Т-80УД. Его доработали для функционирования совместно с автоматом заряжания танка Т-72. Доработанный комплекс получил обозначение 1А45Т[19].  В январе 1989 года танк «Объект 188» был представлен на государственные испытания. Испытания показали высокую надёжность нового танка. 27 марта 1991 года совместным решением Министерства обороны и оборонной промышленности танк был рекомендован для принятия на вооружение ВС СССР. Развитие «Объекта 187» пришлось свернуть. Однако последующий период в жизни страны и выводы, сделанные по получении результатов боевого использования в операции «Буря в пустыне» танков типа Т-72, не дали возможности принять окончательное решение. К тому же, в декабре 1991 года перестал существовать Советский Союз.', 'main_mass|46,5||main_crew|3||main_length|6860||main_width|3780||gun|125-мм 2А46М-2||gun_type|Гладкоствольная||gun_load|Автомат||gun_ammunation|43||gun_stabilizer|Двухплоскостной||gun_coupled|1 × 7,62-мм ПКТ||gun_antiaircraft|1 × 12,7-мм НСВТ или Корд||gun_addition|«Рефлекс-М»||protection_type|Комбинированная противоснарядная||protection_smoke| ||protection_addition|Активная защита КОЭП Штора-1/1М, ДЗ «Контакт-5»||engine|В-84МС||engine_type| ||engine_cooling| ||engine_power|840||mobility_suspension|Индивидуальная торсионная||country|Россия'),
(2, 'Т-72', '2017-04-03', 1, '/uploads/russia-t72.jpg', 'Т-72 или «Урал» — Т-72 «Урал» — основной боевой танк СССР. Самый массовый основной боевой танк второго поколения[8]. Принят на вооружение в Вооружённых Силах СССР с 1973 года. Т-72 разработан и производился Уралвагонзаводом в Нижнем Тагиле. Главный конструктор машины — В. Н. Венедиктов. «Урал» состоит на вооружении стран СНГ, экспортировался в страны Варшавского договора, Финляндию, Индию, Иран, Ирак, Сирию. Модификации Т-72 выпускались по лицензии в Югославии (M-84), Польше (PT-91), Чехословакии и Индии которые их экспортировали. Модифицированный Т-72 с дополнительной защитой производится Уралвагонзаводом и внастоящее время.', 'Разработка Т-72 началась в 1967 году. В ходе дальнейшей работы, в 1968-69 годах, были проведены сравнительные испытания танков Т-64А с двигателем В-45 с эжекционной системой охлаждения (разработка Харьковского конструкторского бюро машиностроения) и образцов с двигателем В-45 с вентиляторной системой охлаждения (разработка конструкторского бюро в Нижнем Тагиле) и автоматом заряжания пушки на 22 выстрела. Последние показали более высокие результаты.  В ноябре 1969 года на эти машины стали устанавливать двигатели В-46 мощностью 573 кВт (780 л.с.) и ходовую часть новой конструкции. Изготовленному с указанными изменениями образцу был присвоен индекс «объект 172М».  7 августа 1973 г. совместным постановлением ЦК КПСС и Совета Министров СССР № 554—172 на вооружение Советской Армии был принят танк Т-72. Производился в СССР и России в период с 1974 по 1992 годы на Уралвагонзаводе и Челябинском тракторном заводе[9].  В период с 1974 по 1990 годы только на Уралвагонзаводе было выпущено 20 544 танка Т-72 различных модификаций[10]. Всего выпущено около 30 000 танков[5].', 'main_mass|41,0||main_crew|3||main_length|6670||main_width|3460||gun|125-мм 2А46||gun_type|Гладкоствольная||gun_load|Автоматическая||gun_ammunation|39||gun_stabilizer|Двухплоскостной||gun_coupled|1 × 7,62-мм ПКТ||gun_antiaircraft|1 × 12,7 НСВТ||gun_addition|-||protection_type|Катаная и литая стальная и стально-текстолито-стальная комбинированная||protection_smoke|-||protection_addition|-||engine|В-46||engine_type|Дизельный||engine_cooling|Жидкостное закрытое с принудительной циркуляцией и продувкой воздуха через радиаторы вентилятором||engine_power|780 л.с.||mobility_suspension|Индивидуальная торсионная||country|Россия'),
(3, 'M1A1 Abrams', '2017-03-14', 1, '/uploads/usa-m1a1-abrams.jpg', 'M1 Abrams — основной боевой танк США. Серийно выпускается с 1980 года. Стоит на вооружении армии и морской пехоты США, Египта, Саудовской Аравии, Кувейта, Ирака и Австралии. Назван в честь генерала Крейтона Абрамса.', 'М1 «Абрамс» стал результатом третьей по счёту программы по замене танков серии «Паттон». Первые две T95 и MBT-70/XM803 завершились неудачно. T95 не имел превосходства над «Паттонами», тогда как MBT-70 и даже его упрощённая модель XM803, оказались чрезмерно дорогими и сложными. Также не оправдала себя концепция низкобаллистической пушки-пусковой установки ракет, планируемой для установки на танках MBT-70/XM803.  Разработка нового танка, получившего позже обозначение XM-1, началась сразу же после закрытия программы ХМ803 в конце 1971 года. Для снижения технологического риска новый танк решено было делать по классической схеме с экипажем из 4 человек и с пушкой высокой баллистики в качестве основного вооружения. На роль последней рассматривались нарезная 105-мм пушка M68, британская нарезная 110-мм и немецкая 120-мм гладкоствольная пушка. 110-мм пушку отвергли сразу же, как не имеющую существенного превосходства над 105 мм. Вариант со 120 мм посчитали рискованным, поэтому было решено оставить пушку М68 с возможностью последующей замены на 120-мм.  В качестве силовой установки рассматривались американский дизель воздушного охлаждения AVCR-1100 (планировался для MBT-70), немецкий дизель водяного охлаждения DB1500 (позднее получил обозначение MB873) и американский газотурбинный двигатель (ГТД) AGT-1500. Мощность всех двигателей была 1500 л. с. Изначально военные отдавали предпочтение дизелю, но в конце 1970-х их симпатии сместились в сторону ГТД.  Согласно первоначальному техническому заданию, бронезащита танка должна была выдерживать 115-мм бронебойный оперённый снаряд пушки У-5ТС с расстояния 800 м, цена должна быть в пределах 400 тыс. долларов в ценах 1972 года (по сравнению с 339 тыс. для М60А1 и 611 тыс. для XM803), а боевая масса — 45 тонн. Вскоре стало ясно, что с этими ограничениями не удастся обеспечить требуемую защиту, поэтому лимит характеристик был повышен до 500 тыс. долларов и 55 тонн соответственно.', 'main_mass|61,3||main_crew|4||main_length|7925||main_width|3653||gun|120-мм М256||gun_type|Гладкоствольная||gun_load|Ручная||gun_ammunation|40||gun_stabilizer|Электрогидравлического типа||gun_coupled|2×7,62-мм M240||gun_antiaircraft|1×12,7-мм M2HB||gun_addition|-||protection_type|Катаная стальная и комбинированная, противоснарядная||protection_smoke|-||protection_addition|Активная защита AN/VLQ-6 MCD, ДЗ ARAT||engine|AGT-1500||engine_type|Газотурбинный||engine_cooling|Воздушное||engine_power|1500 л.с.||mobility_suspension|Индивидуальная торсионная||country|США'),
(4, 'Leopard 2A6', '2017-03-14', 1, '/uploads/leopard-2A6.jpg', 'Леопард 2 (нем. Leopard) — немецкий основной боевой танк.  К началу 2015 года произведено более 3000[1] танков этого типа, которые стоят на вооружении армий Германии, Австрии, Норвегии, Швеции, Швейцарии, Испании, Дании, Греции, Турции и других стран.', 'После создания танка «Леопард» в 1965 году в ФРГ фирмой Porsche начались работы по совершенствованию его конструкции, параллельно с продолжением совместного проекта США и ФРГ MBT-70. Национальная немецкая программа, получившая в 1967 году название «Позолоченный леопард», а затем — «Вепрь» (Keiler) привела к созданию в 1969 году двух прототипов, предназначенных для испытаний. С 1970 г. шло производство прототипов фирмой Krauss-Maffei. В 1973 г. перспективный танк получил современное название. Несколько прототипов «Леопарда-2» участвовали в сравнительных испытаниях с перспективным американским танком XM-1 на Абердинском полигоне, в ходе которых немецкий танк имел равенство по многим показателям, превосходил по ремонтопригодности и запасу хода, однако уступал по кучности и точности стрельбы.', 'main_mass|63||main_crew|4||main_length|7700||main_width|3700||gun|120-мм Rheinmetall Rh-120||gun_type|Гладкоствольная||gun_load|Вручную||gun_ammunation|42||gun_stabilizer|-||gun_coupled|2 × 7,62-мм MG3||gun_antiaircraft|-||gun_addition|-||protection_type|Противоснарядная комбинированная, навесная||protection_smoke|-||protection_addition|-||engine|MB 873 Ka-501||engine_type|Дизель||engine_cooling|Жидкостное||engine_power|1500 л.с.||mobility_suspension|Индивидуальная торсионная||country|Германия'),
(6, 'Т-14', '2017-04-04', 1, '/uploads/t-14.jpg', 'Т-14 (Индекс ГБТУ — Объект 148) — новейший российский основной танк с необитаемой башней на базе универсальной гусеничной платформы «Армата».\r\n\r\nШирокой публике Т-14 был представлен на параде Победы в 2015 году вместе с другими изделиями на базе «Арматы». В рамках государственной программы вооружений размещён государственный заказ на изготовление 2300 танков Т-14 до 2020 года[7]. В 2015 году изготовлена предсерийная партия из 20 танков[8]. В 2017 году началось серийное производство танков, которое не планируется сокращать даже в условиях кризиса.[9][10][11] Одновременно начата процедура военной приёмки и устранения недостатков.', 'Т-14 является первым в мире серийным танком, реализующим в своём конструкторском замысле концепцию «сетецентрической войны», где Т-14 используется прежде всего как машина разведки, целеуказания и корректировки огня САУ, ЗРК и эскорта из танков Т-90 своего тактического звена.[14] Для этого в Т-14 имеется круговой доплеровский АФАР радар средней дальности[15], ультрафиолетовые HD-камеры наблюдения с круговым охватом на 360°, способные детектировать работу двигателей техники по выхлопу из ионизированного газа[16].Танк также способен запускать беспилотный аппарат разведки и целеуказания «Птеродактиль» с собственной обзорной РЛС и инфракрасным прицелом. БПЛА запускается на кабеле, поэтому за счет электроэнергии из танка может неограниченно долго следовать за ним. Передача данных по кабелю защищает БПЛА от РЭБ. «Птеродактиль» позволяет танку вести огонь с закрытых позиций или находясь внутри облака маскирующей аэрозоли \"Афганита\", а также передавать разведанные цели другим машинам по ЕСУ ТЗ [17]\r\n\r\nТ-14 является «стелс-танком» с кардинальным снижением видимости в инфракрасном, радио- и магнитном диапазоне, что сокращает дистанцию захвата цели ГСН ПТУР «Джавелин», «Спайк» или «Бримстоун» и аналогичных им в 2,7 раза даже без использования танком аэрозолей.[18][19]\r\n\r\nТанк оборудован новым поколением комплекса активной защиты «Афганит», способным перехватывать даже противотанковые снаряды и, безопасно для окружающей танк пехоты и техники, ослеплять противотанковые управляемые ракеты путём использования «дымометаллических» завес, за счёт распыления металлических частиц непрозрачных в диапазоне от СВЧ до дальнего инфракрасного спектра.', 'main_mass|48||main_crew|3||main_length|-||main_width|-||gun|125-мм 2А82-1М\r\nили 152-мм 2А83||gun_type|Гладкоствольная||gun_load|Автомат||gun_ammunation|45||gun_stabilizer|-||gun_coupled|1 × 7,62-мм ПКТМ||gun_antiaircraft|1 × 12,7-мм Корд||gun_addition|-||protection_type|Комбинированная многослойная||protection_smoke|-||protection_addition|Активная защита «Афганит», Динамическая защита «Малахит»||engine|-||engine_type| ||engine_cooling|-||engine_power|Меняется в зависимости от форсировки 1350/1500/1800||mobility_suspension|Активная||country|Россия'),
(7, 'Т-80(БВ)', '2017-03-14', 1, '/uploads/t-80.jpg', 'Т-80 — основной боевой танк (ОБТ), производившийся в СССР. Первый в мире серийный танк с единой газотурбинной силовой установкой[3]. Первый в мире ОБТ с встроенной противоснарядной динамической защитой[4]. На вооружении армии СССР с 1976 года.\r\n\r\nПервые серийные образцы, разработанные СКБ-2 на базе Т-64, выпускались на Кировском заводе в Ленинграде. Танк Т-80У выпускался на заводе «Омсктрансмаш» в Омске, а танк Т-80УД с дизельным двигателем — на заводе имени Малышева в Харькове.', 'Первый «кировский» газотурбинный танк нового поколения, «Объект 219 сп 1», изготовленный в 1969 году, внешне был подобен опытному харьковскому газотурбинному Т-64Т. На машине был установлен двигатель ГТД-1000Т мощностью 1000 л. с., разработанный НПО им. В. Я. Климова.\r\n\r\nСледующий «Объект 219 сп 2» — уже значительно отличался от исходного Т-64.\r\n\r\nИспытания первого прототипа показали, что установка нового, более мощного двигателя, возросшая масса и изменившиеся динамические характеристики танка требуют внесения существенных изменений в ходовую часть.\r\n\r\nПотребовалась разработка новых ведущих и направляющих колёс, опорных и поддерживающих катков, гусениц с обрезиненными беговыми дорожками, гидравлических амортизаторов и торсионных валов с улучшенными характеристиками.\r\n\r\nБыла изменена и форма башни. От Т-64А сохранились пушка, боеприпасы, механизм заряжания (отличный от автомата заряжания, стоящего на Т-72 и его модификациях), отдельные узлы и системы, а также элементы бронезащиты.', 'main_mass|42,0||main_crew|3||main_length|6982||main_width|3582||gun|125-мм 2А46-1||gun_type|Гладкоствольная пушка||gun_load|Автомат||gun_ammunation|38||gun_stabilizer|-||gun_coupled|1 × 7,62-мм ПКТ||gun_antiaircraft|1 × 12,7-мм НСВТ||gun_addition|9К112-1 „Кобра“ / 9К119 „Рефлекс“||protection_type|Катаная и литая стальная и комбинированная, противоснарядная||protection_smoke|-||protection_addition|Динамическая защита Контакт-1||engine|ГТД-1000ТФ||engine_type|Газотурбинный||engine_cooling|-||engine_power|1100 л.с.||mobility_suspension|Индивидуальная торсионная||country|СССР'),
(8, 'Челленджер 2', '2017-03-14', 1, '/uploads/challenger-2.jpg', 'Че́лленджер 2 (англ. Challenger 2) — основной боевой танк сухопутных войск Великобритании. Также состоит на вооружении в армии Омана. Ожидается что эксплуатация танков этой модели продлится до 2035 года[1].\r\n\r\nТанки «Челленджер 2» применялись для ведения боевых действий в Косово[2] и Ираке (с 2003 года по 1 сентября 2010 года).', 'Че́лленджер 2 (англ. Challenger 2) — основной боевой танк сухопутных войск Великобритании. Также состоит на вооружении в армии Омана. Ожидается что эксплуатация танков этой модели продлится до 2035 года[1].\r\n\r\nТанки «Челленджер 2» применялись для ведения боевых действий в Косово[2] и Ираке (с 2003 года по 1 сентября 2010 года).\r\n\r\nОсновной боевой танк «Челленджер 2» выпускается британской компанией «Виккерс Дефенс Системс» (ныне являющейся частью компании BAE Systems). Он является третьим танком, носящим имя «Челленджер». Первым был «Челленджер А30» — вариант танка «Кромвель», оснащённый 76,2-мм пушкой. Вторым был «Челленджер» — основной боевой танк Великобритании начала 1980-х — середины 1990-х годов, принимавший участие в войне в Персидском заливе. Хотя «Челленджер 2» был разработан на основе «Челленджера», новый танк отличается от более ранней модели совершенно новой начинкой: всего 5 %[4] деталей являются общими для обеих моделей. На данный момент «Челленджер 2» заменил предыдущую модель на вооружении британской армии.\r\n\r\nКомпания «Виккерс Дефенс Системс» начала разработку преемника танка «Челленджер» в качестве частной инициативы в 1986 году. В свете требований Генерального штаба о танке нового поколения, компания открыто заявила Министерству обороны о ведущихся разработках. В 1988 году был заключён контракт в 90 миллионов фунтов на производство девяти опытных машин к 1989 году[5]. В июне 1991 года, после длительного сравнения с образцами других производителей (среди возможных кандидатов были «Абрамс» М1А2, «Леклерк» и «Леопард 2»), Министерство обороны решило принять танк «Челленджер 2» на вооружение.', 'main_mass|62,5||main_crew|4||main_length|8300||main_width|3520||gun|120-мм L30E4||gun_type|Нарезная||gun_load|Вручную||gun_ammunation|52||gun_stabilizer|-||gun_coupled|1 × 7,62-мм L94A1, 1 × 7,62-мм L37A2||gun_antiaircraft|-||gun_addition|-||protection_type|Комбинированная «Дорчестер», противоснарядная||protection_smoke|-||protection_addition|-||engine|CV12||engine_type|Дизельный||engine_cooling|Жидкостное||engine_power|1200 л.с.||mobility_suspension|Гидропневматическая||country|Великобритания'),
(9, 'Алтай', '2017-04-01', 1, '/uploads/altay.jpg', 'Altay (Алтай) — перспективный турецкий основной боевой танк.', 'Танк был назван в честь генерала армии Фахреттина Алтая (англ.)русск. (1880—1974), который командовал 5-м кавалерийским корпусом во время войны за независимость Турции 1919—1923 годов[1].\r\n\r\nВ марте 2007 года между Секретариатом оборонной промышленности (SSM) Министерства обороны Турции и турецкой компанией Otokar было подписано соглашение о создании турецкого национального танка Altay. Otokar заключила с южнокорейской компанией Hyundai Rotem соглашение о совместной разработке нового танка. Контракт был подписан по итогам тендера, в котором участвовала также немецкая компания KMW. Первый образец танка был представлен общественности 11 мая 2011 года на выставке вооружений IDEF-2011, которая проходила в Стамбуле[7].\r\n\r\nВ создании новой боевой машины широко использовался опыт, накопленный корейцами при создании собственного танка «K2 Чёрная пантера». По данным турецкой стороны, Altay на 60% заимствовал технологии, использованные в K2. Altay должен заменить используемые ныне немецкие Леопард 1, Леопард 2 и американские M48 и M60.', 'main_mass|60||main_crew|4||main_length|7735||main_width|3972||gun|120-мм MKEK120||gun_type|Гладкоствольная||gun_load|Вручную||gun_ammunation|57||gun_stabilizer|-||gun_coupled|1 × 7,62-мм||gun_antiaircraft|1 × 12,7-мм||gun_addition|-||protection_type|Комбинированная противоснарядная||protection_smoke|-||protection_addition|-||engine|-||engine_type|Дизельный||engine_cooling|-||engine_power|1500 л.с.||mobility_suspension|-||country|Турция'),
(10, 'Леклерк', '2017-03-14', 1, '/uploads/leclerc.jpg', 'AMX-56 Leclerc (фр. Atelier de Construction d\'Issy-Les-Moulineaux 56, «Конструкторское бюро Исси-ле-Мулино — 56-я модель», чит. «Лёклер», в письменной форме традиционно передаётся в транслитерационном виде «Леклерк») — французский современный основной боевой танк (ОБТ). Создан концерном GIAT (ныне Nexter) в 1980-е годы для замены устаревшего танка AMX-30.', 'AMX-56 Leclerc (фр. Atelier de Construction d\'Issy-Les-Moulineaux 56, «Конструкторское бюро Исси-ле-Мулино — 56-я модель», чит. «Лёклер», в письменной форме традиционно передаётся в транслитерационном виде «Леклерк») — французский современный основной боевой танк (ОБТ). Создан концерном GIAT (ныне Nexter) в 1980-е годы для замены устаревшего танка AMX-30.\r\n\r\nСерийное производство начато в 1992 году. По состоянию на 2010 год, дальнейшее производство «Лёклера» не ведётся. На момент 2011 года 354 танков этого типа состоят на вооружении Франции, ещё 388 находятся на вооружении армии Объединённых Арабских Эмиратов[3]. До появления южнокорейского K2 Чёрная Пантера и японского Тип 10 считался самым дорогостоящим ОБТ.\r\n\r\nLeclerc, производимый по заказу французского правительства фирмой GIAT Industries, получил наименование в память о генерале танковых войск времён Второй мировой войны Филиппе Мари де Отклоке, посмертно удостоенного звания маршала Франции и прозванного «Леклерком» в честь французского военачальника конца XVIII века.\r\n\r\nСпроектированный ещё в начале 1960-х, танк AMX-30 начал устаревать к середине 1970-х. В 1977 году французские инженеры, опираясь на анализ разработок AMX-30 и иностранных ОБТ («Леопард», «Меркава» и M1 «Абрамс»), предложили проект собственного ОБТ — EPC (фр. Engin Principal de Combat). После сворачивания в 1979 году совместной франко-германской программы разработки унифицированного танка на базе «Леопарда 2», Франция приступила к реализации национального проекта. В отличие от остальных западных аналогов, в нём особое внимание уделялось развитию систем активной защиты (успех не известен), позволяющих конструктивно уменьшить массу танка путём облегчения собственно брони.', 'main_mass|54,6||main_crew|3||main_length|6880||main_width|3710||gun|120-мм CN120-26||gun_type|Гладкоствольная||gun_load|Автомат||gun_ammunation|40||gun_stabilizer|-||gun_coupled|1 × 7,62-мм AAN F1||gun_antiaircraft|1 × 12,7-мм M2HB-QBC||gun_addition|-||protection_type|Комбинированная модульная противоснарядная. Бронемодули машин серии XXI усилены элементами из вольфрама и титана.||protection_smoke|-||protection_addition|-||engine|V8X 1500||engine_type|Дизель||engine_cooling|Жидкостное||engine_power|1500 л.с.||mobility_suspension|Индивидуальная гидропневматическая||country|Франция'),
(11, 'PL-01', '2017-03-14', 5, '/uploads/pl-01.jpg', 'PL-01 — польский основной боевой танк, созданный OBRUM в партнерстве с британской компанией BAE Systems. Концепт был впервые представлен 2 сентября 2013 года на Международной выставке оборонной промышленности в Кельце. Полный прототип будет завершён, предположительно, в 2016 году. Массовое производство планируется начать в 2018 году.', 'Компоновка танка PL-01 похожа на компоновку современных основных боевых танков — водитель находится в передней части, а управляемая дистанционно башня расположена сзади. В корпусе находятся командир и наводчик, в задней части корпуса могут размещаться до четырёх пехотинцев.[1] PL-01 базируется на шасси шведской бронемашины Strf 90.[2]\r\n\r\nБроня танка имеет модульное керамико-арамидное покрытие, разработанное для обеспечения защиты в соответствии со стандартом НАТО STANAG 4569 Annex A на уровне 5+ в пределах передней части корпуса и башни. Дополнительные бронепанели установлены на башне и корпусе, и разработаны, чтобы обеспечить полную защиту от снарядов. Корпус машины предоставляет защиту от самодельных взрывных устройств и мин в соответствии с пунктом B разделов 4a и 4b стандарта STANAG 4569. Танк будет целиком покрыт материалом, поглощающим радиоволны.[3][4]\r\n\r\nPL-01 оснащается дизельным двигателем мощностью 940 л.с., преобразователем крутящего момента, автоматической коробкой передач и системой помощи при вождении. Подвеска основана на семи катках, c карданными валами на торсионной подвеске, прикреплённой к первой и двум последним парам.[5] Машина может развивать скорость до 70 км/ч на шоссе и 50 км/ч на бездорожье. Запас хода составляет 500 км. Танк может преодолевать уклоны до 30 градусов, канавы и траншеи шириной до 2,6 метров и преодолевать водные преграды глубиной до 1,5 м без подготовки, и до 5 метров с подготовкой.', 'main_mass|35||main_crew|3||main_length|7000||main_width|3800||gun|105-мм или 120-мм||gun_type|Гладкоствольная||gun_load|Автомат||gun_ammunation|45||gun_stabilizer|-||gun_coupled|1 х 7,62-мм||gun_antiaircraft|-||gun_addition|-||protection_type|Комбинированная керамико-арамидная||protection_smoke|-||protection_addition|-||engine|OBRUM||engine_type|Дизельный||engine_cooling|-||engine_power|до 940 л.с.||mobility_suspension|Независимая торсионная||country|Польша');

-- --------------------------------------------------------

--
-- Структура таблицы `mil_users`
--

CREATE TABLE `mil_users` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `mil_users`
--

INSERT INTO `mil_users` (`id`, `login`, `password`, `email`) VALUES
(4, 'aaa', 'd6f644b19812e97b5d871658d6d3400ecd4787faeb9b8990c1e7608288664be77257104a58d033bcf1a0e0945ff06468ebe53e2dff36e248424c7273117dac09', 'abc'),
(5, 'ilya', '3c9909afec25354d551dae21590bb26e38d53f2173b8d3dc3eee4c047e7ab1c1eb8b85103e3be7ba613b31bb5c9c36214dc9f14a42fd7a2fdb84856bca5c44c2', 'ilyacoding@yandex.ru'),
(6, 'admin', '6bb558f2a3f586d106fe800f8ad67b263daf8f41cc2facb04431e871143b87f3c78d3c7c85d81163af333c88a3e7112f0b1bc5e8743762efcac7dc8db38af750', 'mail@mail.ru');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `mil_banners`
--
ALTER TABLE `mil_banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mil_cats`
--
ALTER TABLE `mil_cats`
  ADD PRIMARY KEY (`cat_id`);

--
-- Индексы таблицы `mil_history`
--
ALTER TABLE `mil_history`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mil_items`
--
ALTER TABLE `mil_items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mil_users`
--
ALTER TABLE `mil_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `mil_banners`
--
ALTER TABLE `mil_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `mil_cats`
--
ALTER TABLE `mil_cats`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `mil_history`
--
ALTER TABLE `mil_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблицы `mil_items`
--
ALTER TABLE `mil_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `mil_users`
--
ALTER TABLE `mil_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

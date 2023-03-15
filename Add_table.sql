insert into executor
values
(1, 'Bahh tee');
(2, 'Feduk');
(3, 'Элджей');
(4, 'Гагарина');
(5, 'Artik');
(6, 'Asti');
(7, 'Macan');
(8, 'Oxxximiron')

insert into genre
values
(1, 'хип-хоп');
(2, 'поп-музыка');
(3, 'танцевальная музыка');
(4, 'хаус-рэп');
(5, 'Рок')

insert into genre_executor
values
(1, 1, 1);
(2, 2, 1);
(3, 1, 2);
(4, 4, 2);
(5, 3, 3);
(6, 5, 3);
(7, 2, 4);
(8, 2, 5);
(9, 3, 5);
(10, 3, 6);
(11, 2, 6);
(12, 1, 7);
(13, 2, 7);
(14, 1, 8)

insert into album
values
(1, 'Руки к щекам', '2011-04-14');
(2, 'Розовое вино', '2017-04-01');
(3, 'Шоу «Обезоружена»', '2019-12-27');
(4, '7 (Part 2)', '2020-02-07');
(5, 'Номер 1', '2017-05-21');
(6, '2002+18', '2021-01-29');
(7, 'Горгород', '2013-11-13');
(8, 'Хлопья летят на вверх', '2018-11-04')

insert into executor_album
values
(1, 1, 1);
(2, 2, 2);
(3, 2, 3);
(4, 3, 2);
(5, 4, 4);
(6, 5, 5);
(7, 5, 6);
(8, 6, 5);
(9, 6, 6);
(10, 7, 7);
(11, 8, 8);
(12, 3, 8)

insert into trek
values
(1, '10 лет спустя', 267, 1);
(2, 'Руки к Щекам', 250, 1);
(3, 'Розовое Вино', 194, 2);
(4, 'Необыкновенно', 192, 1);
(5, 'Хлопья летят на вверх', 301, 3);
(6, 'Обезоружена', 259, 4);
(7, 'Кукушка', 247, 4);
(8, 'Меланхолия', 204, 4);
(9, 'Все мимо', 208, 5);
(10, 'Чувства', 214, 5);
(11, 'Номер 1', 155, 6);
(12, 'Ангел', 215, 6);
(13, 'Кино', 183, 7);
(15, 'Безумие', 186, 8);
(14, 'Где нас нет', 249, 8)

insert into collections
values
(1, 'Супер Хиты', '2020-01-20');
(2, 'Хиты из прошлого', '2020-01-20');
(3, 'Новинки', '2023-12-11');
(4, 'Хип-Хит-хоп', '2019-04-16');
(5, 'Лучшее', '2021-11-16');
(6, 'Про любовь', '2022-11-11');
(7, 'Про улицу', '2022-12-22');
(8, 'Совместные хиты', '2022-02-19')

insert into collections_trek
values
(1, 1, 6);
(2, 2, 6);
(3, 3, 1);
(4, 4, 6);
(5, 5, 6);
(6, 5, 5);
(7, 5, 2);
(8, 5, 2);
(9, 6, 2);
(10, 7, 6);
(11, 8, 6);
(12, 9, 8);
(13, 10, 8);
(14, 11, 8);
(15, 12, 8);
(16, 13, 4);
(17, 14, 7);
(18, 15, 7);
(19, 2, 3);
(20, 3, 3)

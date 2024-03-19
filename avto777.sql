-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 19 2024 г., 20:33
-- Версия сервера: 5.5.62
-- Версия PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `avto777`
--

-- --------------------------------------------------------

--
-- Структура таблицы `avto`
--

CREATE TABLE `avto` (
  `id` int(11) NOT NULL,
  `mark` varchar(255) NOT NULL,
  `vin` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `horsepower` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `avto`
--

INSERT INTO `avto` (`id`, `mark`, `vin`, `description`, `price`, `color`, `horsepower`, `image`) VALUES
(1, 'Hyundai Creta', '', 'Новейший паркетник с большим будущим.', '2700', 'gray', 0, 'https://storletcar.com/uploads/car/thumbnail/5971bb8461ce944452083a9b/preview_re.jsx5.jpg'),
(2, 'Kia Sportage NEW', '', 'Новейший паркетник Sportage', '3100', 'gray', 0, 'https://storletcar.com/uploads/car/thumbnail/5a99928961ce943086054add/preview_2016-KiaSportage-CRDI-34.jpg'),
(3, 'VW Tiguan', '', 'Лидер европейского рынка среди семейных автомобилей', '3500', 'gray', 0, 'https://storletcar.com/uploads/car/thumbnail/5aabceed61ce9415c40165a8/preview_vw_7770.jpg'),
(4, 'Dodge Challenger', '', 'Оглушительный выхлоп и фантастическая брутальность.', '5900', 'gray', 0, 'https://storletcar.com/uploads/car/thumbnail/6156eecb61ce9471b8009d4c/preview_022_Dodge_Challenger_SRT.jpg'),
(5, 'VW  РАСПРОДАЖА POLO NEW', '', 'Долгожданный и новейший Фольксваген Поло.', '2000', 'gray', 0, 'https://storletcar.com/uploads/car/thumbnail/5f3cfbd161ce945662022e0c/preview_1.jpg'),
(6, 'BMW 320d NEW G20 М', '', 'Новейший BMW 3-й серии в кузове G20 в М-пакете', '4500', 'gray', 0, 'https://storletcar.com/uploads/car/thumbnail/5c80da0d61ce9430e5001370/preview_01_bmw_3_series.jpg'),
(7, 'Kia Sportage NEW', '', 'Новейший паркетник Sportage', '3100', 'gray', 0, 'https://storletcar.com/uploads/car/thumbnail/5a99928961ce943086054add/preview_2016-KiaSportage-CRDI-34.jpg'),
(8, 'Dodge Challenger', '', 'Новейший паркетник с большим будущим.', '5900', 'gray', 0, 'https://storletcar.com/uploads/car/thumbnail/6156eecb61ce9471b8009d4c/preview_022_Dodge_Challenger_SRT.jpg'),
(9, 'Hyundai Creta', '', 'Новейший паркетник с большим будущим.', '2700', 'gray', 0, 'https://storletcar.com/uploads/car/thumbnail/5971bb8461ce944452083a9b/preview_re.jsx5.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avto` varchar(255) NOT NULL,
  `date_ot` date NOT NULL,
  `date_do` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `email`, `avto`, `date_ot`, `date_do`) VALUES
(1, '2', '2', '2', '2', '0000-00-00', '0000-00-00'),
(2, '2', '2', '2', '2', '0000-00-00', '0000-00-00'),
(3, '2', '2', '2', '2', '0000-00-00', '0000-00-00'),
(4, '2', '2', '2', '2', '0000-00-00', '0000-00-00'),
(5, '2', '2', '2', '2', '0000-00-00', '0000-00-00'),
(6, '2', '2', '2', '2', '0000-00-00', '0000-00-00'),
(7, '2', '2', '2', '2', '0000-00-00', '0000-00-00'),
(8, '2', '2', '2', '2', '0000-00-00', '0000-00-00'),
(9, '2', '2', '2', '2', '0000-00-00', '0000-00-00'),
(10, '333', '333', '333', 'Hyundai Creta', '2024-03-12', '2024-03-19'),
(11, '123', '123', '1231', 'Hyundai Creta', '2024-03-20', '2024-03-30'),
(12, '123', '123', '123', 'Hyundai Creta', '2024-03-20', '2024-03-23'),
(13, '12', '1', '1', 'Hyundai Creta', '2024-03-20', '2024-03-20'),
(14, 'a', 'a', 'a', 'Hyundai Creta', '2024-03-12', '2024-03-19');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `avto`
--
ALTER TABLE `avto`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
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
-- AUTO_INCREMENT для таблицы `avto`
--
ALTER TABLE `avto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 16 2018 г., 17:35
-- Версия сервера: 10.1.30-MariaDB
-- Версия PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `users_passwords`
--

CREATE TABLE `users_passwords` (
  `id` int(11) NOT NULL,
  `users` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `users_passwords`
--

INSERT INTO `users_passwords` (`id`, `users`, `hash`) VALUES
(1, 'denis', '79aef731091472c4395b63b32b2c00c919b9d9538dc1c990381cc8c4609fe9f8'),
(2, 'admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918'),
(3, 'trees', 'fee5748cde949c92f4f4faa5e9f1ed6261c087c49397141c175613a897907882'),
(6, 'whale', 'a5d2ae286d0d9e45c0621a6fc7c18119940dd737baa8d794e6af357d2136a7a1'),
(7, 'baza', '706a217d179dee4197a1d64f2c1c08b6d8ef0191b7f7c748637758e8152146a4');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `users_passwords`
--
ALTER TABLE `users_passwords`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

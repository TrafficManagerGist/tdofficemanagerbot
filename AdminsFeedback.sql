-- СОЗДАНИЕ ТАБЛИЦЫ С ПОЛЬЗОВАТЕЛЯМИ И АДМИНАМИ:
DROP TABLE IF EXISTS `AdminsFeedback`;
CREATE TABLE `AdminsFeedback` (
  `id` int(11),
  `tgid` varchar(64) CHARACTER SET utf8mb4,
  `name` varchar(64) CHARACTER SET utf8mb4,
  `username` varchar(64) CHARACTER SET utf8mb4,
  `status` varchar(64) CHARACTER SET utf8mb4,
  `ban` varchar(3) CHARACTER SET utf8mb4
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `AdminsFeedback` (`id`, `tgid`, `name`, `username`, `status`) VALUES
(1, '330605845', 'Admin', 'esen1n25', 'god');

-- ВАЖНО! --> ПОСЛЕ ЮЗЕРНЕЙМА НЕ МЕНЯТЬ "god" НА ДРУГОЕ, ЭТО ЗНАЧИТ СТАТУС БОГА, А-ЛЯ САМЫЙ ГЛАВНЫЙ АДМИН !!!

ALTER TABLE `AdminsFeedback`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `AdminsFeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


-- СОЗДАНИЕ ТАБЛИЦЫ С СООБЩЕНИЯМИ
DROP TABLE IF EXISTS `MessFeedback`;
CREATE TABLE `MessFeedback` (
  `id` int(11) NOT NULL,
  `tgid` varchar(64) CHARACTER SET utf8mb4,
  `name` varchar(64) CHARACTER SET utf8mb4,
  `username` varchar(64) CHARACTER SET utf8mb4,
  `text` text CHARACTER SET utf8mb4,
  `answer` text CHARACTER SET utf8mb4,
  `status` varchar(64) CHARACTER SET utf8mb4,
  `adminID` varchar(64) CHARACTER SET utf8mb4,
  `adminName` varchar(64) CHARACTER SET utf8mb4
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

ALTER TABLE `MessFeedback`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `MessFeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;

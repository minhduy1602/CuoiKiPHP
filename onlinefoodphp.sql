-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 29, 2023 lúc 01:17 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '', '2023-03-10 13:21:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(1, 1, 'Yorkshire Lamb Patties', 'Lamb patties which melt in your mouth, and are quick and easy to make. Served hot with a crisp salad.', '14.00', '62908867a48e4.jpg'),
(2, 1, 'Lobster Thermidor', 'Lobster Thermidor is a French dish of lobster meat cooked in a rich wine sauce, stuffed back into a lobster shell, and browned.', '36.00', '629089fee52b9.jpg'),
(3, 4, 'Chicken Madeira', 'Chicken Madeira, like Chicken Marsala, is made with chicken, mushrooms, and a special fortified wine. But, the wines are different;', '23.00', '62908bdf2f581.jpg'),
(4, 1, 'Stuffed Jacket Potatoes', 'Deep fry whole potatoes in oil for 8-10 minutes or coat each potato with little oil. Mix the onions, garlic, tomatoes and mushrooms. Add yoghurt, ginger, garlic, chillies, coriander', '8.00', '62908d393465b.jpg'),
(5, 2, 'Pink Spaghetti Gamberoni', 'Spaghetti with prawns in a fresh tomato sauce. This dish originates from Southern Italy and with the combination of prawns, garlic, chilli and pasta. Garnish each with remaining tablespoon parsley.', '21.00', '606d7491a9d13.jpg'),
(6, 2, 'Cheesy Mashed Potato', 'Deliciously Cheesy Mashed Potato. The ultimate mash for your Thanksgiving table or the perfect accompaniment to vegan sausage casserole. Everyone will love it\'s fluffy, cheesy.', '5.00', '606d74c416da5.jpg'),
(7, 2, 'Crispy Chicken Strips', 'Fried chicken strips, served with special honey mustard sauce.', '8.00', '606d74f6ecbbb.jpg'),
(8, 2, 'Lemon Grilled Chicken And Pasta', 'Marinated rosemary grilled chicken breast served with mashed potatoes and your choice of pasta.', '11.00', '606d752a209c3.jpg'),
(9, 3, 'Vegetable Fried Rice', 'Chinese rice wok with cabbage, beans, carrots, and spring onions.', '5.00', '606d7575798fb.jpg'),
(10, 3, 'Prawn Crackers', '12 pieces deep-fried prawn crackers', '7.00', '606d75a7e21ec.jpg'),
(11, 3, 'Spring Rolls', 'Lightly seasoned shredded cabbage, onion and carrots, wrapped in house made spring roll wrappers, deep fried to golden brown.', '6.00', '606d75ce105d0.jpg'),
(12, 3, 'Manchurian Chicken', 'Chicken pieces slow cooked with spring onions in our house made manchurian style sauce.', '11.00', '606d7600dc54c.jpg'),
(13, 4, ' Buffalo Wings', 'Fried chicken wings tossed in spicy Buffalo sauce served with crisp celery sticks and Blue cheese dip.', '11.00', '606d765f69a19.jpg'),
(14, 4, 'Mac N Cheese Bites', 'Served with our traditional spicy queso and marinara sauce.', '9.00', '606d768a1b2a1.jpg'),
(15, 4, 'Signature Potato Twisters', 'Spiral sliced potatoes, topped with our traditional spicy queso, Monterey Jack cheese, pico de gallo, sour cream and fresh cilantro.', '6.00', '606d76ad0c0cb.jpg'),
(16, 4, 'Meatballs Penne Pasta', 'Garlic-herb beef meatballs tossed in our house-made marinara sauce and penne pasta topped with fresh parsley.', '10.00', '606d76eedbb99.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'none', '2023-03-10 05:17:49'),
(2, 3, 'in process', 'none', '2023-03-10 11:01:30'),
(3, 2, 'closed', 'thank you for your order!', '2023-03-10 11:11:41'),
(4, 3, 'closed', 'none', '2023-03-10 11:42:35'),
(5, 4, 'in process', 'none', '2023-03-10 11:42:55'),
(6, 1, 'rejected', 'none', '2023-03-10 11:43:26'),
(7, 7, 'in process', 'none', '2023-03-10 13:03:24'),
(8, 8, 'in process', 'none', '2023-03-10 13:03:38'),
(9, 9, 'rejected', 'thank you', '2023-03-10 13:03:53'),
(10, 7, 'closed', 'thank you for your ordering with us', '2023-03-10 13:04:33'),
(11, 8, 'closed', 'thanks ', '2023-03-10 13:05:24'),
(12, 5, 'closed', 'none', '2023-03-10 13:18:03'),
(13, 2, 'in process', '?ang trên ???ng g?i ', '2023-03-09 18:09:56'),
(14, 2, 'closed', 'finis', '2023-03-09 18:10:28'),
(15, 11, 'in process', '123123', '2023-03-12 01:54:57'),
(16, 11, 'in process', '123123', '2023-03-12 01:55:04'),
(17, 17, 'in process', 'ád', '2023-03-21 14:48:19'),
(18, 15, 'closed', 'da giao thanh cong', '2023-03-21 14:49:06'),
(19, 14, 'rejected', 'khach da huy don hang', '2023-03-21 14:49:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(1, 3, 'North Street Tavern', 'nthavern@mail.com', '3547854700', 'www.northstreettavern.com', '7am', '8pm', 'mon-fri', '  Quan 2, Tp Ho Chi Minh  ', '6419c1be9cdbd.jpg', '2023-03-21 14:39:58'),
(2, 2, 'Eataly', 'eataly@gmail.com', '0557426406', 'www.eataly.com', '8am', '8pm', 'mon-sat', 'Quan 10, Tp Ho Chi Minh', '6419c2460d850.jpg', '2023-03-21 14:42:14'),
(3, 1, 'Nan Xiang Xiao Long Bao', 'nanxiangbao45@mail.com', '1458745855', 'www.nanxiangbao45.com', '7am', '8pm', 'mon-sat', 'Binh Thanh, Tp Ho Chi Minh', '6419c210310f6.jpg', '2023-03-21 14:41:20'),
(4, 4, 'Highlands Bar & Grill', 'hbg@mail.com', '6545687458', 'www.hbg.com', '7am', '8pm', '24hr-x7', 'Quan 1, Tp Ho Chi Minh', '6419c2c581e1f.jpg', '2023-03-21 14:44:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Binh Thanh', '2023-03-21 14:38:22'),
(2, 'Quan 10', '2023-03-21 14:38:14'),
(3, 'Quan 2', '2023-03-21 14:38:06'),
(4, 'Quan 1', '2023-03-21 14:37:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(7, 'minhduy', 'Duy', 'Le', 'minhduy@gmail.com', '0123456789', '25f9e794323b453885f5181f1b624d0b', 'Chung c? C6,???ng Man Thi?n, T?ng Nh?n Phú A, Qu?n 9 ', 1, '2023-03-02 14:30:01'),
(8, 'truonggiang', 'Giang', 'Truong', 'truonggian2403@gmail.com', '0919083376', '25f9e794323b453885f5181f1b624d0b', 'Binh Thanh, Tp Ho Chi Minh', 1, '2023-03-21 14:26:07'),
(9, 'quochao', 'Hao', 'Quoc', 'quochao3004@gmail.com', '01234706599', '25f9e794323b453885f5181f1b624d0b', 'Quan 4, Tp Ho Chi Minh', 1, '2023-03-21 14:27:21'),
(10, 'namgiao', 'Giao', 'Nam', 'namgiao2107@gmail.com', '0234566345', '25f9e794323b453885f5181f1b624d0b', 'Quan 2, Tp Ho Chi Minh', 1, '2023-03-21 14:29:15');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(1, 4, 'Spring Rollss', 2, '6.00', 'rejected', '2023-03-09 18:01:18'),
(2, 4, 'Prawn Cracker', 1, '7.00', 'closed', '2023-03-09 18:10:28'),
(3, 5, 'Chicken Madeira', 1, '23.00', 'closed', '2023-03-09 18:01:27'),
(4, 5, 'Cheesy Mashed Potato', 1, '5.00', 'in process', '2023-03-09 18:00:00'),
(5, 5, 'Meatballs Penne Pasta', 1, '10.00', 'closed', '2023-03-09 18:00:18'),
(6, 5, 'Yorkshire Lamb Patties', 1, '14.00', NULL, '2023-03-09 18:00:32'),
(7, 6, 'Yorkshire Lamb Patties', 1, '14.00', 'closed', '2023-03-09 18:00:43'),
(8, 6, 'Lobster Thermidor', 1, '36.00', 'closed', '2023-03-09 18:00:59'),
(9, 6, 'Stuffed Jacket Potatoes', 1, '8.00', 'rejected', '2023-03-09 18:01:11'),
(10, 7, 'Prawn Crackers', 1, '7.00', NULL, '2023-03-12 01:53:40'),
(11, 7, 'Spring Rolls', 1, '6.00', 'in process', '2023-03-12 01:54:57'),
(12, 10, 'Yorkshire Lamb Patties', 1, '14.00', NULL, '2023-03-21 14:45:36'),
(13, 10, 'Lobster Thermidor', 1, '36.00', NULL, '2023-03-21 14:45:36'),
(14, 8, 'Pink Spaghetti Gamberoni', 1, '21.00', 'rejected', '2023-03-21 14:49:31'),
(15, 8, 'Crispy Chicken Strips', 1, '8.00', 'closed', '2023-03-21 14:49:06'),
(17, 9, 'Spring Rolls', 1, '6.00', 'in process', '2023-03-21 14:48:19'),
(18, 7, 'Yorkshire Lamb Patties', 1, '14.00', NULL, '2023-03-29 11:09:38');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Chỉ mục cho bảng `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Chỉ mục cho bảng `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Chỉ mục cho bảng `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Chỉ mục cho bảng `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

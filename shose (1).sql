-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2025 at 12:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shose`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_cart`
--

CREATE TABLE `add_cart` (
  `id` int(11) NOT NULL,
  `product_pic` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_quantity` varchar(255) NOT NULL,
  `product_amount` varchar(255) NOT NULL,
  `category_url` varchar(100) NOT NULL,
  `c_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_cart`
--

INSERT INTO `add_cart` (`id`, `product_pic`, `product_name`, `product_color`, `product_quantity`, `product_amount`, `category_url`, `c_email`) VALUES
(20, 'dinsv_512.webp', 'shoes', 'red', '1', '199', 'shose-for-man', 'aaaa@gmail.com'),
(21, '57ziq_512.webp', 'name jdhjdhf  hdfdjhdj djdhdjdhj  uifdhyuhjj ijdhjfhdjh  jhdfhjch ', 'white', '1', '299', 'shose-for-man', 'aaaa@gmail.com'),
(27, '5.webp', 'upp', 'yellow', '1', '251', 'shose-for-man', 'funnyxyz29@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `category_url`) VALUES
(1, 'Shose for man', 'shose-for-man'),
(2, 'Sandel for female', 'sandel-for-female'),
(6, 'Childern', 'childern');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `product_pic` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_color` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_size_6` varchar(100) NOT NULL,
  `product_size_7` varchar(100) NOT NULL,
  `product_size_8` varchar(100) NOT NULL,
  `product_size_9` varchar(100) NOT NULL,
  `product_size_10` varchar(100) NOT NULL,
  `product_quantity` varchar(255) NOT NULL,
  `product_amount` varchar(255) NOT NULL,
  `side_pic_1` varchar(255) NOT NULL,
  `side_pic_2` varchar(255) NOT NULL,
  `side_pic_3` varchar(255) NOT NULL,
  `side_pic_4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category`, `product_pic`, `product_name`, `product_color`, `product_description`, `product_size_6`, `product_size_7`, `product_size_8`, `product_size_9`, `product_size_10`, `product_quantity`, `product_amount`, `side_pic_1`, `side_pic_2`, `side_pic_3`, `side_pic_4`) VALUES
(20, 'shose-for-man', 'dinsv_512.webp', 'shoes', 'red', 'kkljck nklksck  k', 'yes', 'yes', 'yes', 'yes', 'yes', '1', '199', 'dinsv_512.webp', '4xode_512.webp', 'nixw4_512.webp', 'vag8n_512.webp'),
(21, 'shose-for-man', '57ziq_512.webp', 'name jdhjdhf  hdfdjhdj djdhdjdhj  uifdhyuhjj ijdhjfhdjh  jhdfhjch ', 'white', 'kjkj', 'yes', 'yes', 'yes', 'yes', 'yes', '1', '299', '57ziq_512.webp', 'oc8dw_512.webp', 'ttgmb_512.webp', 'xwlb7_512.webp'),
(22, 'shose-for-man', '1.webp', 'Xylus Black Fancy Casual Shoes for Man', 'Canvas Casual Black', 'Name : Xylus Black Fancy Casual Shoes for Man | Gym Shoes | Walking Shoes | |Casual Shoes | Cycling Shoes| Canvas Casual Black Shoes| Black Canvas Boot| shoes\r\n\r\nMaterial : Canvas\r\n\r\nSole Material : Rubber\r\n\r\nFastening & Back Detail : Lace-Up\r\n\r\nSizes :  ', 'yes', 'yes', 'yes', 'yes', 'yes', '1', '298', '1.webp', '2.webp', '3.webp', '4.webp'),
(27, 'shose-for-man', '5.webp', 'upp', 'yellow', '<tr>\n        <td>Fastening & Back Detail : Lace-Up</td>\n       <br>\n<td>Fastening & Back Detail : Lace-Up</td>\n       <br>\n<td>Fastening & Back Detail : Lace-Up</td>\n       <br>\n<td>Fastening & Back Detail : Lace-Up</td>', 'yes', 'yes', 'yes', 'yes', 'yes', '1', '251', '5.webp', '6.webp', '7.webp', '8.webp'),
(28, 'sandel-for-female', '9.webp', 'Mesh Heel Sandal', 'Pink', '<tr>\r\n<td>Name : Kajmi Women Cross-Strap style Heel footwear wedges Block Chunky High Heel Ankle Elastic Strap Open Toe Sandl for women girls ledies</td>\r\n<br>\r\n<td>Fastening & Back Detail : Ankle Loop</td>\r\n<br>\r\n<td>Heel Height (in) : 3 inches</td>\r\n<br', 'yes', 'yes', 'yes', 'yes', 'yes', '1', '299', '9.webp', '10.webp', '11.webp', '12.webp');

-- --------------------------------------------------------

--
-- Table structure for table `receive_order`
--

CREATE TABLE `receive_order` (
  `id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_pic` varchar(255) NOT NULL,
  `p_color` varchar(255) NOT NULL,
  `p_size` varchar(255) NOT NULL,
  `p_qty` varchar(255) NOT NULL,
  `p_amount` varchar(255) NOT NULL,
  `total_p_amount` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_mobile` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_address` varchar(255) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `order_status` varchar(255) NOT NULL DEFAULT 'pending',
  `order_received` varchar(255) NOT NULL DEFAULT 'completed',
  `order_shipped` varchar(255) NOT NULL DEFAULT 'pending',
  `out_for_delivary` varchar(255) NOT NULL DEFAULT 'pending',
  `delivary` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `receive_order`
--

INSERT INTO `receive_order` (`id`, `order_date`, `p_name`, `p_pic`, `p_color`, `p_size`, `p_qty`, `p_amount`, `total_p_amount`, `c_name`, `c_mobile`, `c_email`, `c_address`, `payment_mode`, `payment_status`, `order_status`, `order_received`, `order_shipped`, `out_for_delivary`, `delivary`) VALUES
(1, '2024-09-22', 'PREMIUM TRENDING STYLISH CASUAL SHOES FOR MEN', 'CASUAL SHOES.png', 'White & GreenYellow', '8', '1', '299', '299', 'Amit ', '9756811806', 'aaaa@gmail.com', 'Shamshabad Post Nehtaur Bijnor', 'cod', 'completed', 'completed', 'completed', 'completed', 'pending', 'pending'),
(2, '2024-09-22', 'Sports Running, Walking & Gym with Casual Lace-Up Shoes for Men', '1q5mx_512.png', 'White', '6', '2', '283', '566', 'Amit ', '9756811806', 'aaaa@gmail.com', 'Shamshabad Post Nehtaur Bijnor', 'cod', 'pending', 'completed', 'completed', 'pending', 'pending', 'pending'),
(9, '2024-09-24', 'PREMIUM TRENDING STYLISH CASUAL SHOES FOR MEN', 'CASUAL SHOES.png', 'White & GreenYellow', '6', '1', '299', '299', 'Amit ', '9756811806', 'aaaa@gmail.com', 'Shamshabad Post Nehtaur Bijnor', 'cod', 'completed', 'completed', 'completed', 'pending', 'pending', 'pending'),
(17, '2024-09-26', 'PREMIUM TRENDING STYLISH CASUAL SHOES FOR MEN', 'CASUAL SHOES.png', 'White & GreenYellow', '6', '1', '299', '299', 'Amit ', '9756811806', 'aaaa@gmail.com', 'Shamshabad Post Nehtaur Bijnor', 'cod', 'pending', 'completed', 'completed', 'completed', 'completed', 'completed'),
(18, '2024-09-26', 'PREMIUM TRENDING STYLISH CASUAL SHOES FOR MEN', 'CASUAL SHOES.png', 'White & GreenYellow', '6', '1', '299', '299', 'Amit ', '9756811806', 'aaaa@gmail.com', 'Shamshabad Post Nehtaur Bijnor', 'cod', 'pending', 'completed', 'completed', 'pending', 'pending', 'pending'),
(19, '2024-09-26', 'name', '57ziq_512.webp', 'white', '6', '1', '299', '299', 'Amit ', '9756811806', 'aaaa@gmail.com', 'Shamshabad Post Nehtaur Bijnor', 'cod', 'completed', 'completed', 'completed', 'completed', 'completed', 'completed'),
(21, '2024-09-27', 'shoes', 'dinsv_512.webp', 'red', '6', '1', '199', '199', 'Amit ', '9756811806', 'aaaa@gmail.com', 'Shamshabad Post Nehtaur Bijnor', 'cod', 'pending', 'pending', 'completed', 'completed', 'pending', 'pending'),
(28, '2024-09-29', 'name jdhjdhf  hdfdjhdj djdhdjdhj  uifdhyuhjj ijdhjfhdjh  jhdfhjch ', '57ziq_512.webp', 'white', '6', '1', '299', '299', 'Amit ', '9756811806', 'aaaa@gmail.com', 'Shamshabad Post Nehtaur Bijnor', 'cod', 'pending', 'pending', 'completed', 'pending', 'pending', 'pending'),
(34, '2024-10-03', 'name jdhjdhf  hdfdjhdj djdhdjdhj  uifdhyuhjj ijdhjfhdjh  jhdfhjch ', '57ziq_512.webp', 'white', '7', '1', '299', '299', 'Amit ', '9756811806', 'aaaa@gmail.com', 'Shamshabad Post Nehtaur Bijnor', 'cod', 'pending', 'pending', 'completed', 'pending', 'pending', 'pending'),
(36, '2024-10-20', 'name jdhjdhf  hdfdjhdj djdhdjdhj  uifdhyuhjj ijdhjfhdjh  jhdfhjch ', '57ziq_512.webp', 'white', '8', '1', '299', '299', 'Amit ', '9756811806', 'aaaa@gmail.com', 'Shamshabad Post Nehtaur Bijnor', 'cod', 'pending', 'pending', 'completed', 'completed', 'pending', 'pending'),
(37, '2024-10-20', 'name jdhjdhf  hdfdjhdj djdhdjdhj  uifdhyuhjj ijdhjfhdjh  jhdfhjch ', '57ziq_512.webp', 'white', '7', '1', '299', '299', 'Amit ', '9756811806', 'aaaa@gmail.com', 'Shamshabad Post Nehtaur Bijnor', 'cod', 'pending', 'pending', 'completed', 'completed', 'pending', 'pending'),
(38, '2024-10-23', 'Mesh Heel Sandal', '9.webp', 'Pink', '7', '1', '299', '299', 'Amit ', '9756811806', 'aaaa@gmail.com', 'Shamshabad Post Nehtaur Bijnor', 'cod', 'pending', 'pending', 'completed', 'pending', 'pending', 'pending'),
(44, '2025-03-30', 'upp', '5.webp', 'yellow', '7', '2', '251', '502', 'amit', '9756811806', 'funnyxyz29@gmail.com', 'Village khajura jat sadruddin nagar road bijnor dhampur up 246733', 'cod', 'pending', 'pending', 'completed', 'completed', 'pending', 'pending'),
(45, '2025-03-30', 'upp', '5.webp', 'yellow', '6', '2', '251', '502', 'amit', '9756811806', 'funnyxyz29@gmail.com', 'Village khajura jat sadruddin nagar road bijnor dhampur up 246733', 'cod', 'pending', 'pending', 'completed', 'pending', 'pending', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` mediumtext NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fullname`, `mobile`, `email`, `address`, `password`, `date`) VALUES
(3, 'rahul', '9656566', 'prashant07351@gmail.com', 'gf', '202cb962ac59075b964b07152d234b70', '2024-09-12'),
(4, 'dhh', '23232', 'hhhh@g', 'h', 'a3aca2964e72000eea4c56cb341002a4', '2024-09-12'),
(5, 'ddd', '34', 'sachin@420gmail.com', 'd', 'c4ca4238a0b923820dcc509a6f75849b', '2024-09-12'),
(7, 'Amit ', '9656566', 'dd@d', 'ffdfs', '7694f4a66316e53c8cdd9d9954bd611d', '2024-09-12'),
(8, 'Sachin', '9656566', 'fg@f', 'fgf', '8e165a0f6f957ee27398620f6392500f', '2024-09-12'),
(9, 'asd', '2331', 'wqe@w', 'w', 'c81e728d9d4c2f636f067f89cc14862c', '2024-09-12'),
(10, 'sfs', '65', 'fdfd@f', 'gf', '107030ca685076c0ed5e054e2c3ed940', '2024-09-12'),
(11, 'sadsa', '3213', 'qew@d', 'dsad', 'c51ce410c124a10e0db5e4b97fc2af39', '2024-09-12'),
(12, 'gffdf', '87878', 'hgh@g', '656', '18ef25b59079b7210a0040e48c5e5a5a', '2024-09-12'),
(13, 'jkj', '8787', 'uhjh@y', 'hjgghh', '025c1e37b069dcd4129f02c842b705af', '2024-09-12'),
(14, 'uhjuh', '9656566', 'ghggg@gfg', 'hgh', '025c1e37b069dcd4129f02c842b705af', '2024-09-12'),
(15, 'sfs', '34', 'ds@s', 'ds', '8277e0910d750195b448797616e091ad', '2024-09-12'),
(16, 'fffss', '232321', 'dsa@dd', 'dd', '7b16783a9d7ce44e12deb7c9a372a027', '2024-09-12'),
(17, 'fsdff', '56', 'gfg@g', 'gfg', '8fa14cdd754f91cc6554c9e71929cce7', '2024-09-12'),
(18, 'ggh', '7667', 'ghgh@fg', 'fggh', 'fc490ca45c00b1249bbe3554a4fdf6fb', '2024-09-12'),
(19, 'jhh', '767', 'hygh@g', 'hghgh', '025c1e37b069dcd4129f02c842b705af', '2024-09-12'),
(20, 'jhjh', '8787', 'jhj@f', '67jh', '7648557e5c7f1ecd407347dde3bd9927', '2024-09-12'),
(22, 'saurabh', '99999999', 'bbbb@gmail.com', 'nehtaur', '202cb962ac59075b964b07152d234b70', '2024-10-07'),
(26, 'Saurabh Kumar', '76689887', 'earninggames9@gmail.com', 'owdo nkfjkeajf ijefnmnkdn', 'e10adc3949ba59abbe56e057f20f883e', '2024-10-08'),
(27, 'Sachin Kumar', '9756811806', 'sk0101576@gmail.com', 'hello djkdjk idnh d sdinndfjd dfifjdnf djdfn', 'e10adc3949ba59abbe56e057f20f883e', '2024-10-08'),
(28, 'sddd jhjh', '898889989', 'rahulk766854@gmail.com', '  bjnbhj hhgh hbnhbds  hjh jnmmjhnjnknn mk jknkmnk', 'e10adc3949ba59abbe56e057f20f883e', '2024-10-11'),
(29, '<script>alert(\"you are hacked\")</script>', '87878787545454', 'cccc@gamil.com', '5454524522111212jdjdjnnk', 'e10adc3949ba59abbe56e057f20f883e', '2024-10-24'),
(30, '<script> alert(\"you are hacked\"); </script>', '897878', 'tttt@gmail.com', 'jndcdkc kjdckdckk k ', '96e79218965eb72c92a549dd5a330112', '2024-10-24'),
(31, 'Sachin sachin', '123456789', 'abcd@gmail.com', 'kjfkj k jsfk jfsfkjf fdsjfsjfcndmn ', 'e10adc3949ba59abbe56e057f20f883e', '2024-10-24'),
(32, 'jsdhcdj', '5654521255654', 'ffff@gmail.com', 'kkhhhjkhnklkmk,k lkkk', 'e10adc3949ba59abbe56e057f20f883e', '2024-10-24'),
(33, 'amit', '9756811806', 'funnyxyz29@gmail.com', 'Village khajura jat sadruddin nagar road bijnor dhampur up 246733', '670b14728ad9902aecba32e22fa4f6bd', '2025-03-30'),
(34, 'Aayan', '9756811806', 'aaaa@gmail.com', 'kdfkjd dd jikdsjdskj dkfjckdlj dj ', 'e10adc3949ba59abbe56e057f20f883e', '2025-03-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_cart`
--
ALTER TABLE `add_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receive_order`
--
ALTER TABLE `receive_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `receive_order`
--
ALTER TABLE `receive_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 28, 2023 at 10:14 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(16, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(17, '2023_05_27_171818_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `discountPercentage` double DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `brand` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `discountPercentage`, `rating`, `stock`, `brand`, `category`, `thumbnail`, `images`, `created_at`, `updated_at`) VALUES
(1, 'iPhone 9 update', 'An apple mobile which is nothing like apple', '549.00', 12.96, 4.69, 94, 'Apple', 'smartphones', 'https://i.dummyjson.com/data/products/1/thumbnail.jpg', 'https://i.dummyjson.com/data/products/1/1.jpg,https://i.dummyjson.com/data/products/1/2.jpg,https://i.dummyjson.com/data/products/1/3.jpg,https://i.dummyjson.com/data/products/1/4.jpg,https://i.dummyjson.com/data/products/1/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 23:52:36'),
(2, 'iPhone X', 'SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...', '899.00', 17.94, 4.44, 34, 'Apple', 'smartphones', 'https://i.dummyjson.com/data/products/2/thumbnail.jpg', 'https://i.dummyjson.com/data/products/2/1.jpg,https://i.dummyjson.com/data/products/2/2.jpg,https://i.dummyjson.com/data/products/2/3.jpg,https://i.dummyjson.com/data/products/2/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(3, 'Samsung Universe 9', 'Samsung\'s new variant which goes beyond Galaxy to the Universe', '1249.00', 15.46, 4.09, 36, 'Samsung', 'smartphones', 'https://i.dummyjson.com/data/products/3/thumbnail.jpg', 'https://i.dummyjson.com/data/products/3/1.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(4, 'OPPOF19', 'OPPO F19 is officially announced on April 2021.', '280.00', 17.91, 4.3, 123, 'OPPO', 'smartphones', 'https://i.dummyjson.com/data/products/4/thumbnail.jpg', 'https://i.dummyjson.com/data/products/4/1.jpg,https://i.dummyjson.com/data/products/4/2.jpg,https://i.dummyjson.com/data/products/4/3.jpg,https://i.dummyjson.com/data/products/4/4.jpg,https://i.dummyjson.com/data/products/4/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(5, 'Huawei P30', 'Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.', '499.00', 10.58, 4.09, 32, 'Huawei', 'smartphones', 'https://i.dummyjson.com/data/products/5/thumbnail.jpg', 'https://i.dummyjson.com/data/products/5/1.jpg,https://i.dummyjson.com/data/products/5/2.jpg,https://i.dummyjson.com/data/products/5/3.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(6, 'MacBook Pro', 'MacBook Pro 2021 with mini-LED display may launch between September, November', '1749.00', 11.02, 4.57, 83, 'Apple', 'laptops', 'https://i.dummyjson.com/data/products/6/thumbnail.png', 'https://i.dummyjson.com/data/products/6/1.png,https://i.dummyjson.com/data/products/6/2.jpg,https://i.dummyjson.com/data/products/6/3.png,https://i.dummyjson.com/data/products/6/4.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(7, 'Samsung Galaxy Book', 'Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched', '1499.00', 4.15, 4.25, 50, 'Samsung', 'laptops', 'https://i.dummyjson.com/data/products/7/thumbnail.jpg', 'https://i.dummyjson.com/data/products/7/1.jpg,https://i.dummyjson.com/data/products/7/2.jpg,https://i.dummyjson.com/data/products/7/3.jpg,https://i.dummyjson.com/data/products/7/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(8, 'Microsoft Surface Laptop 4', 'Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.', '1499.00', 10.23, 4.43, 68, 'Microsoft Surface', 'laptops', 'https://i.dummyjson.com/data/products/8/thumbnail.jpg', 'https://i.dummyjson.com/data/products/8/1.jpg,https://i.dummyjson.com/data/products/8/2.jpg,https://i.dummyjson.com/data/products/8/3.jpg,https://i.dummyjson.com/data/products/8/4.jpg,https://i.dummyjson.com/data/products/8/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(9, 'Infinix INBOOK', 'Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty', '1099.00', 11.83, 4.54, 96, 'Infinix', 'laptops', 'https://i.dummyjson.com/data/products/9/thumbnail.jpg', 'https://i.dummyjson.com/data/products/9/1.jpg,https://i.dummyjson.com/data/products/9/2.png,https://i.dummyjson.com/data/products/9/3.png,https://i.dummyjson.com/data/products/9/4.jpg,https://i.dummyjson.com/data/products/9/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(10, 'HP Pavilion 15-DK1056WM', 'HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10', '1099.00', 6.18, 4.43, 89, 'HP Pavilion', 'laptops', 'https://i.dummyjson.com/data/products/10/thumbnail.jpeg', 'https://i.dummyjson.com/data/products/10/1.jpg,https://i.dummyjson.com/data/products/10/2.jpg,https://i.dummyjson.com/data/products/10/3.jpg,https://i.dummyjson.com/data/products/10/thumbnail.jpeg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(11, 'perfume Oil', 'Mega Discount, Impression of Acqua Di Gio by GiorgioArmani concentrated attar perfume Oil', '13.00', 8.4, 4.26, 65, 'Impression of Acqua Di Gio', 'fragrances', 'https://i.dummyjson.com/data/products/11/thumbnail.jpg', 'https://i.dummyjson.com/data/products/11/1.jpg,https://i.dummyjson.com/data/products/11/2.jpg,https://i.dummyjson.com/data/products/11/3.jpg,https://i.dummyjson.com/data/products/11/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(12, 'Brown Perfume', 'Royal_Mirage Sport Brown Perfume for Men & Women - 120ml', '40.00', 15.66, 4, 52, 'Royal_Mirage', 'fragrances', 'https://i.dummyjson.com/data/products/12/thumbnail.jpg', 'https://i.dummyjson.com/data/products/12/1.jpg,https://i.dummyjson.com/data/products/12/2.jpg,https://i.dummyjson.com/data/products/12/3.png,https://i.dummyjson.com/data/products/12/4.jpg,https://i.dummyjson.com/data/products/12/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(13, 'Fog Scent Xpressio Perfume', 'Product details of Best Fog Scent Xpressio Perfume 100ml For Men cool long lasting perfumes for Men', '13.00', 8.14, 4.59, 61, 'Fog Scent Xpressio', 'fragrances', 'https://i.dummyjson.com/data/products/13/thumbnail.webp', 'https://i.dummyjson.com/data/products/13/1.jpg,https://i.dummyjson.com/data/products/13/2.png,https://i.dummyjson.com/data/products/13/3.jpg,https://i.dummyjson.com/data/products/13/4.jpg,https://i.dummyjson.com/data/products/13/thumbnail.webp', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(14, 'Non-Alcoholic Concentrated Perfume Oil', 'Original Al Munakh® by Mahal Al Musk | Our Impression of Climate | 6ml Non-Alcoholic Concentrated Perfume Oil', '120.00', 15.6, 4.21, 114, 'Al Munakh', 'fragrances', 'https://i.dummyjson.com/data/products/14/thumbnail.jpg', 'https://i.dummyjson.com/data/products/14/1.jpg,https://i.dummyjson.com/data/products/14/2.jpg,https://i.dummyjson.com/data/products/14/3.jpg,https://i.dummyjson.com/data/products/14/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(15, 'Eau De Perfume Spray', 'Genuine  Al-Rehab spray perfume from UAE/Saudi Arabia/Yemen High Quality', '30.00', 10.99, 4.7, 105, 'Lord - Al-Rehab', 'fragrances', 'https://i.dummyjson.com/data/products/15/thumbnail.jpg', 'https://i.dummyjson.com/data/products/15/1.jpg,https://i.dummyjson.com/data/products/15/2.jpg,https://i.dummyjson.com/data/products/15/3.jpg,https://i.dummyjson.com/data/products/15/4.jpg,https://i.dummyjson.com/data/products/15/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(16, 'Hyaluronic Acid Serum', 'L\'OrÃ©al Paris introduces Hyaluron Expert Replumping Serum formulated with 1.5% Hyaluronic Acid', '19.00', 13.31, 4.83, 110, 'L\'Oreal Paris', 'skincare', 'https://i.dummyjson.com/data/products/16/thumbnail.jpg', 'https://i.dummyjson.com/data/products/16/1.png,https://i.dummyjson.com/data/products/16/2.webp,https://i.dummyjson.com/data/products/16/3.jpg,https://i.dummyjson.com/data/products/16/4.jpg,https://i.dummyjson.com/data/products/16/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(17, 'Tree Oil 30ml', 'Tea tree oil contains a number of compounds, including terpinen-4-ol, that have been shown to kill certain bacteria,', '12.00', 4.09, 4.52, 78, 'Hemani Tea', 'skincare', 'https://i.dummyjson.com/data/products/17/thumbnail.jpg', 'https://i.dummyjson.com/data/products/17/1.jpg,https://i.dummyjson.com/data/products/17/2.jpg,https://i.dummyjson.com/data/products/17/3.jpg,https://i.dummyjson.com/data/products/17/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(18, 'Oil Free Moisturizer 100ml', 'Dermive Oil Free Moisturizer with SPF 20 is specifically formulated with ceramides, hyaluronic acid & sunscreen.', '40.00', 13.1, 4.56, 88, 'Dermive', 'skincare', 'https://i.dummyjson.com/data/products/18/thumbnail.jpg', 'https://i.dummyjson.com/data/products/18/1.jpg,https://i.dummyjson.com/data/products/18/2.jpg,https://i.dummyjson.com/data/products/18/3.jpg,https://i.dummyjson.com/data/products/18/4.jpg,https://i.dummyjson.com/data/products/18/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(19, 'Skin Beauty Serum.', 'Product name: rorec collagen hyaluronic acid white face serum riceNet weight: 15 m', '46.00', 10.68, 4.42, 54, 'ROREC White Rice', 'skincare', 'https://i.dummyjson.com/data/products/19/thumbnail.jpg', 'https://i.dummyjson.com/data/products/19/1.jpg,https://i.dummyjson.com/data/products/19/2.jpg,https://i.dummyjson.com/data/products/19/3.png,https://i.dummyjson.com/data/products/19/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(20, 'Freckle Treatment Cream- 15gm', 'Fair & Clear is Pakistan\'s only pure Freckle cream which helpsfade Freckles, Darkspots and pigments. Mercury level is 0%, so there are no side effects.', '70.00', 16.99, 4.06, 140, 'Fair & Clear', 'skincare', 'https://i.dummyjson.com/data/products/20/thumbnail.jpg', 'https://i.dummyjson.com/data/products/20/1.jpg,https://i.dummyjson.com/data/products/20/2.jpg,https://i.dummyjson.com/data/products/20/3.jpg,https://i.dummyjson.com/data/products/20/4.jpg,https://i.dummyjson.com/data/products/20/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(21, '- Daal Masoor 500 grams', 'Fine quality Branded Product Keep in a cool and dry place', '20.00', 4.81, 4.44, 133, 'Saaf & Khaas', 'groceries', 'https://i.dummyjson.com/data/products/21/thumbnail.png', 'https://i.dummyjson.com/data/products/21/1.png,https://i.dummyjson.com/data/products/21/2.jpg,https://i.dummyjson.com/data/products/21/3.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(22, 'Elbow Macaroni - 400 gm', 'Product details of Bake Parlor Big Elbow Macaroni - 400 gm', '14.00', 15.58, 4.57, 146, 'Bake Parlor Big', 'groceries', 'https://i.dummyjson.com/data/products/22/thumbnail.jpg', 'https://i.dummyjson.com/data/products/22/1.jpg,https://i.dummyjson.com/data/products/22/2.jpg,https://i.dummyjson.com/data/products/22/3.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(23, 'Orange Essence Food Flavou', 'Specifications of Orange Essence Food Flavour For Cakes and Baking Food Item', '14.00', 8.04, 4.85, 26, 'Baking Food Items', 'groceries', 'https://i.dummyjson.com/data/products/23/thumbnail.jpg', 'https://i.dummyjson.com/data/products/23/1.jpg,https://i.dummyjson.com/data/products/23/2.jpg,https://i.dummyjson.com/data/products/23/3.jpg,https://i.dummyjson.com/data/products/23/4.jpg,https://i.dummyjson.com/data/products/23/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(24, 'cereals muesli fruit nuts', 'original fauji cereal muesli 250gm box pack original fauji cereals muesli fruit nuts flakes breakfast cereal break fast faujicereals cerels cerel foji fouji', '46.00', 16.8, 4.94, 113, 'fauji', 'groceries', 'https://i.dummyjson.com/data/products/24/thumbnail.jpg', 'https://i.dummyjson.com/data/products/24/1.jpg,https://i.dummyjson.com/data/products/24/2.jpg,https://i.dummyjson.com/data/products/24/3.jpg,https://i.dummyjson.com/data/products/24/4.jpg,https://i.dummyjson.com/data/products/24/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(25, 'Gulab Powder 50 Gram', 'Dry Rose Flower Powder Gulab Powder 50 Gram • Treats Wounds', '70.00', 13.58, 4.87, 47, 'Dry Rose', 'groceries', 'https://i.dummyjson.com/data/products/25/thumbnail.jpg', 'https://i.dummyjson.com/data/products/25/1.png,https://i.dummyjson.com/data/products/25/2.jpg,https://i.dummyjson.com/data/products/25/3.png,https://i.dummyjson.com/data/products/25/4.jpg,https://i.dummyjson.com/data/products/25/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(26, 'Plant Hanger For Home', 'Boho Decor Plant Hanger For Home Wall Decoration Macrame Wall Hanging Shelf', '41.00', 17.86, 4.08, 131, 'Boho Decor', 'home-decoration', 'https://i.dummyjson.com/data/products/26/thumbnail.jpg', 'https://i.dummyjson.com/data/products/26/1.jpg,https://i.dummyjson.com/data/products/26/2.jpg,https://i.dummyjson.com/data/products/26/3.jpg,https://i.dummyjson.com/data/products/26/4.jpg,https://i.dummyjson.com/data/products/26/5.jpg,https://i.dummyjson.com/data/products/26/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(27, 'Flying Wooden Bird', 'Package Include 6 Birds with Adhesive Tape Shape: 3D Shaped Wooden Birds Material: Wooden MDF, Laminated 3.5mm', '51.00', 15.58, 4.41, 17, 'Flying Wooden', 'home-decoration', 'https://i.dummyjson.com/data/products/27/thumbnail.webp', 'https://i.dummyjson.com/data/products/27/1.jpg,https://i.dummyjson.com/data/products/27/2.jpg,https://i.dummyjson.com/data/products/27/3.jpg,https://i.dummyjson.com/data/products/27/4.jpg,https://i.dummyjson.com/data/products/27/thumbnail.webp', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(28, '3D Embellishment Art Lamp', '3D led lamp sticker Wall sticker 3d wall art light on/off button  cell operated (included)', '20.00', 16.49, 4.82, 54, 'LED Lights', 'home-decoration', 'https://i.dummyjson.com/data/products/28/thumbnail.jpg', 'https://i.dummyjson.com/data/products/28/1.jpg,https://i.dummyjson.com/data/products/28/2.jpg,https://i.dummyjson.com/data/products/28/3.png,https://i.dummyjson.com/data/products/28/4.jpg,https://i.dummyjson.com/data/products/28/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(29, 'Handcraft Chinese style', 'Handcraft Chinese style art luxury palace hotel villa mansion home decor ceramic vase with brass fruit plate', '60.00', 15.34, 4.44, 7, 'luxury palace', 'home-decoration', 'https://i.dummyjson.com/data/products/29/thumbnail.webp', 'https://i.dummyjson.com/data/products/29/1.jpg,https://i.dummyjson.com/data/products/29/2.jpg,https://i.dummyjson.com/data/products/29/3.webp,https://i.dummyjson.com/data/products/29/4.webp,https://i.dummyjson.com/data/products/29/thumbnail.webp', '2023-05-27 12:54:22', '2023-05-27 12:54:22'),
(30, 'Key Holder', 'Attractive DesignMetallic materialFour key hooksReliable & DurablePremium Quality', '30.00', 2.92, 4.92, 54, 'Golden', 'home-decoration', 'https://i.dummyjson.com/data/products/30/thumbnail.jpg', 'https://i.dummyjson.com/data/products/30/1.jpg,https://i.dummyjson.com/data/products/30/2.jpg,https://i.dummyjson.com/data/products/30/3.jpg,https://i.dummyjson.com/data/products/30/thumbnail.jpg', '2023-05-27 12:54:22', '2023-05-27 12:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

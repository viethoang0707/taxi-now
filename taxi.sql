-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2017 at 11:14 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taxi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` float(8,2) NOT NULL,
  `longitude` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

CREATE TABLE `cash` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` float(8,2) NOT NULL,
  `expiry` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `client` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_type` int(11) NOT NULL,
  `file_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `default` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dog`
--

CREATE TABLE `dog` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `breed` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `likes` text COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `generic_keywords`
--

CREATE TABLE `generic_keywords` (
  `id` int(10) UNSIGNED NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `icon_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE `information` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` mediumblob,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ledger`
--

CREATE TABLE `ledger` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `referral_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `total_referrals` int(11) NOT NULL,
  `amount_earned` float(8,2) NOT NULL,
  `amount_spent` float(8,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_09_25_044324_create_owners_table', 1),
('2014_09_25_060804_create_dogs_table', 1),
('2014_09_30_014129_create_walker_table', 1),
('2014_10_07_113949_create_review_dog_table', 1),
('2014_10_07_114245_create_review_walker_table', 1),
('2014_10_07_114415_create_walk_location_table', 1),
('2014_10_07_114726_create_walk_table', 1),
('2014_10_07_115301_create_schedule_table', 1),
('2014_10_07_115554_create_schedule_meta_table', 1),
('2014_10_10_025736_create_payment_table', 1),
('2014_10_11_144202_add_note_to_walk_table', 1),
('2014_10_13_024755_add_picture_to_walker_table', 1),
('2014_10_14_052816_add_walker_id_to_schedules_table', 1),
('2014_10_14_142220_add_fields_to_owner', 1),
('2014_10_14_142558_add_fields_to_walker', 1),
('2014_10_15_114904_add_lat_long_to_walker_table', 1),
('2014_10_15_115120_add_endson_seeding_to_meta_table', 1),
('2014_10_17_131510_add_is_confirmed_to_schedules_table', 1),
('2014_10_17_152616_add_meta_id_in_walk', 1),
('2014_10_18_051813_add_owner_id_to_payment', 1),
('2014_10_19_070302_create_request_table', 1),
('2014_10_19_070310_create_request_meta_table', 1),
('2014_10_20_084102_add_availability_on_job', 1),
('2014_10_20_084141_add_lat_long', 1),
('2014_10_20_085531_remove_schedule_id', 1),
('2014_10_20_102804_add_status_flags', 1),
('2014_10_21_013919_replace_walk_id_to_request_id', 1),
('2014_10_21_021438_replace_walk_id_to_reques_id_review_walker_table', 1),
('2014_10_21_021816_add_is_rated_in_walk', 1),
('2014_10_21_023844_replace_walk_id_to_reques_id_walk_location_table', 1),
('2014_10_23_033257_create_settings_table', 1),
('2014_10_24_050705_add_payment_fileds_to_request', 1),
('2014_10_27_112457_change_lat_long_data_type', 1),
('2014_10_27_112629_change_lat_long_data_type_walk_location', 1),
('2014_10_27_112915_add_lat_long_data_type_walker', 1),
('2014_10_27_112953_add_lat_long_data_type', 1),
('2014_11_01_015046_create_admin_table', 1),
('2014_11_01_015258_add_is_approved_to_walker', 1),
('2014_11_09_154756_add_information_table', 1),
('2014_11_09_181432_add_referal_data_to_owner', 1),
('2014_11_09_181525_add_ledger_table', 1),
('2014_11_10_035803_add_walker_type_table', 1),
('2014_11_10_040329_add_type_to_walker', 1),
('2014_11_13_064410_add_icon_to_type', 1),
('2014_11_13_064452_add_icon_to_info', 1),
('2014_11_17_052356_add_customerid', 1),
('2014_11_17_134313_add_paymen_split', 1),
('2014_11_18_111038_add_distance_walk_location', 1),
('2014_11_19_001415_change_value_datatype', 1),
('2014_11_19_001841_add_value_datatype', 1),
('2014_11_21_115919_remove_dog_id', 1),
('2014_11_21_115930_remove_dog_id_review', 1),
('2014_11_21_130810_add_is_cancelled_request', 1),
('2014_11_21_131108_add_is_cancelled', 1),
('2014_11_25_112910_add_tip_page', 1),
('2014_11_26_025409_add_last_four', 1),
('2014_12_03_170427_add_foreign_key_dog', 1),
('2014_12_03_171436_add_foreign_key_ledger', 1),
('2014_12_03_171732_add_foreign_key_payment', 2),
('2014_12_03_172008_add_foreign_key_request', 2),
('2014_12_03_172703_add_foreign_key_request_meta', 2),
('2014_12_03_172949_add_foreign_key_review_dog', 2),
('2014_12_03_173126_add_foreign_key_review_dog_2', 2),
('2014_12_03_173221_add_foreign_key_review_dog_3', 2),
('2014_12_03_174014_add_foreign_key_review_walker', 2),
('2014_12_03_174427_add_foreign_key_walk_location', 2),
('2014_12_08_121851_add_documents_table', 2),
('2014_12_08_130512_add_document_type_table', 2),
('2014_12_14_114805_add_type_to_request', 2),
('2014_12_17_132347_update_walker_table', 2),
('2014_12_26_111728_create_walker_services_table', 2),
('2014_12_26_115353_create_request_services_table', 2),
('2014_12_26_115511_remove_fields_from_walker_type_table', 2),
('2014_12_27_023550_add_fields_to_walker_services_table', 2),
('2014_12_27_045844_add_payment_fields_to_request_services_table', 2),
('2014_12_27_050208_delete_payment_fields_from_request_table', 2),
('2014_12_27_142242_delete_type_and_add_refund_request_table', 2),
('2014_12_27_150623_create_theme_table', 2),
('2014_12_29_124126_update_theme_table', 2),
('2014_12_31_172311_add_card_token_to_payment', 2),
('2015_01_02_125640_add_card_id_to_walker', 2),
('2015_01_10_110711_create_installation_settings_table', 2),
('2015_01_22_113756_add_transfer_to_request', 2),
('2015_02_02_114411_add_is_default_to_payment', 2),
('2015_02_09_192206_add__debt_to_owner', 2),
('2015_02_10_100336_create_provider_availability', 2),
('2015_02_18_095619_add_later_in_request', 2),
('2015_02_19_121041_index_owener_table', 2),
('2015_02_19_123457_index_dog_table', 2),
('2015_02_19_124305_index_walker_table', 2),
('2015_02_19_124904_index_request_table', 2),
('2015_02_19_134856_index_requestServices_table', 2),
('2015_02_19_135324_index_walkerServices_table', 2),
('2015_02_26_104212_addDestinationToRequests', 2),
('2015_02_26_110951_add_cod_to_request_table', 2),
('2015_03_02_123731_alter_fields_in_cod_to_payment_mode_in_request', 2),
('2015_03_03_071753_add_payment_id_to_request_table', 2),
('2015_03_12_060741_add_new_field_in_walker', 2),
('2015_03_16_101246_alter_datatype_for_payment_id', 2),
('2015_03_19_072803_add_promo_code_to_request_table', 2),
('2015_03_19_074736_add_promo_codes_table', 2),
('2015_03_20_065250_add_walker_table_default_value', 2),
('2015_03_20_065758_alter_walker_table_banking_details', 2),
('2015_03_20_092439_add_field_activation_provider', 2),
('2015_03_23_120633_add_timezone_to_user_table', 2),
('2015_03_23_121121_add_timezone_to_provider_table', 2),
('2015_03_27_140947_add_generic_keywords_table', 2),
('2015_03_31_194143_add_delete_to_walker_table', 2),
('2015_03_31_195348_add_soft_delete_to_owner_table', 2),
('2015_04_01_093144_add_alter_datatype_information_content', 2),
('2015_04_02_123726_create_icons_table', 2),
('2015_04_06_175511_create_certificates_table', 2),
('2015_04_06_183013_add_user_to_certificates_table', 2),
('2015_04_07_105412_add_file_type_to_certifcates', 2),
('2015_04_12_170912_add_default_to_certificates', 2),
('2015_04_14_192343_alter_security_key_datatype_in_request_table', 2),
('2015_04_15_110351_create_promo_history_table', 2),
('2015_04_29_103838_makeNewCashtable', 2),
('2015_05_05_124752_addLocationToAdmin', 2),
('2015_06_11_072126_create_users_table', 2),
('2015_06_17_112953_add_oldlat_oldlong_bearing_data_type', 2),
('2015_06_17_192206_add_rate_ratecount_to_owner', 2),
('2015_06_17_192207_add_rate_ratecount_to_provider_table', 2),
('2015_06_22_052212_user_promo_used', 2),
('2015_06_22_060917_add_foreign_key_user_promo_used', 2),
('2015_07_04_055500_add_fields_to_type', 2),
('2015_07_04_062035_add_base_distence_to_type', 2);

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dog_id` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token_expiry` int(11) NOT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `latitude` double(15,8) NOT NULL,
  `longitude` double(15,8) NOT NULL,
  `referred_by` int(11) NOT NULL,
  `debt` float(8,2) NOT NULL DEFAULT '0.00',
  `timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'UTC',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `rate` float(5,2) NOT NULL DEFAULT '0.00',
  `rate_count` bigint(20) NOT NULL DEFAULT '0',
  `promo_count` bigint(20) NOT NULL DEFAULT '0',
  `is_referee` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `card_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner_id` int(10) UNSIGNED NOT NULL,
  `customer_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_four` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `card_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promo_codes`
--

CREATE TABLE `promo_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_code` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `value` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `uses` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `expiry` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promo_history`
--

CREATE TABLE `promo_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount_earned` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provider_availability`
--

CREATE TABLE `provider_availability` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` int(11) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `confirmed_walker` int(11) NOT NULL,
  `current_walker` int(11) NOT NULL,
  `request_start_time` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_walker_started` int(11) NOT NULL,
  `is_walker_arrived` int(11) NOT NULL,
  `is_started` int(11) NOT NULL,
  `is_completed` int(11) NOT NULL,
  `is_dog_rated` int(11) NOT NULL,
  `is_walker_rated` int(11) NOT NULL,
  `distance` float(8,2) NOT NULL,
  `time` float(8,2) NOT NULL,
  `total` float(8,2) NOT NULL,
  `is_paid` int(11) NOT NULL,
  `card_payment` float(8,2) NOT NULL,
  `ledger_payment` float(8,2) NOT NULL,
  `is_cancelled` int(11) NOT NULL,
  `refund` float(8,2) NOT NULL DEFAULT '0.00',
  `transfer_amount` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `later` tinyint(1) NOT NULL DEFAULT '0',
  `D_latitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `D_longitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `security_key` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_mode` int(11) NOT NULL DEFAULT '0',
  `payment_id` text COLLATE utf8_unicode_ci,
  `promo_payment` float(8,2) NOT NULL DEFAULT '0.00',
  `promo_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promo_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_meta`
--

CREATE TABLE `request_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` int(10) UNSIGNED NOT NULL,
  `walker_id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_cancelled` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_services`
--

CREATE TABLE `request_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `request_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `base_price` float(8,2) NOT NULL DEFAULT '0.00',
  `distance_cost` float(8,2) NOT NULL DEFAULT '0.00',
  `time_cost` float(8,2) NOT NULL DEFAULT '0.00',
  `total` float(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_dog`
--

CREATE TABLE `review_dog` (
  `id` int(10) UNSIGNED NOT NULL,
  `walker_id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `request_id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_walker`
--

CREATE TABLE `review_walker` (
  `id` int(10) UNSIGNED NOT NULL,
  `walker_id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `request_id` int(10) UNSIGNED NOT NULL,
  `owner_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `dog_id` int(11) NOT NULL,
  `lockbox_info` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_recurring` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `walker_id` int(11) NOT NULL,
  `is_confirmed` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedule_meta`
--

CREATE TABLE `schedule_meta` (
  `id` int(10) UNSIGNED NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `ends_on` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `started_on` float(8,2) NOT NULL,
  `seeding_status` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tool_tip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theme`
--

CREATE TABLE `theme` (
  `id` int(10) UNSIGNED NOT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `primary_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secondary_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hover_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `favicon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active_color` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_promo_used`
--

CREATE TABLE `user_promo_used` (
  `id` int(10) UNSIGNED NOT NULL,
  `code_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `walk`
--

CREATE TABLE `walk` (
  `id` int(10) UNSIGNED NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `dog_id` int(11) NOT NULL,
  `walker_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `is_walker_rated` int(11) NOT NULL,
  `is_dog_rated` int(11) NOT NULL,
  `is_confirmed` int(11) NOT NULL,
  `is_started` int(11) NOT NULL,
  `is_completed` int(11) NOT NULL,
  `is_cancelled` int(11) NOT NULL,
  `distance` float(8,2) NOT NULL,
  `time` int(11) NOT NULL,
  `is_poo` int(11) NOT NULL,
  `is_pee` int(11) NOT NULL,
  `photo_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `video_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `note` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `walker`
--

CREATE TABLE `walker` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `device_type` enum('android','ios') COLLATE utf8_unicode_ci NOT NULL,
  `login_by` enum('manual','facebook','google') COLLATE utf8_unicode_ci NOT NULL,
  `social_unique_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_activation` int(11) NOT NULL,
  `token_expiry` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_active` int(11) NOT NULL,
  `is_available` int(11) DEFAULT '1',
  `latitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `longitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `is_approved` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `merchant_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `account_id` text COLLATE utf8_unicode_ci,
  `last_4` text COLLATE utf8_unicode_ci,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'UTC',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `old_latitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `old_longitude` double(15,8) NOT NULL DEFAULT '0.00000000',
  `bearing` double(15,8) NOT NULL DEFAULT '0.00000000',
  `car_model` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `car_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `rate` float(5,2) NOT NULL,
  `rate_count` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `walker_documents`
--

CREATE TABLE `walker_documents` (
  `id` int(10) UNSIGNED NOT NULL,
  `walker_id` int(11) NOT NULL,
  `document_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `walker_services`
--

CREATE TABLE `walker_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `price_per_unit_distance` float(8,2) NOT NULL DEFAULT '0.00',
  `price_per_unit_time` float(8,2) NOT NULL DEFAULT '0.00',
  `base_price` float(8,2) NOT NULL DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `walker_type`
--

CREATE TABLE `walker_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `max_size` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `is_default` int(11) NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `icon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price_per_unit_distance` double(12,2) NOT NULL DEFAULT '0.00',
  `price_per_unit_time` double(12,2) NOT NULL DEFAULT '0.00',
  `base_price` double(15,2) NOT NULL DEFAULT '0.00',
  `base_distance` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `walk_location`
--

CREATE TABLE `walk_location` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `request_id` int(10) UNSIGNED NOT NULL,
  `latitude` double(15,8) NOT NULL,
  `longitude` double(15,8) NOT NULL,
  `distance` float(8,3) NOT NULL,
  `bearing` double(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cash`
--
ALTER TABLE `cash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dog`
--
ALTER TABLE `dog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dog_name_index` (`name`),
  ADD KEY `dog_owner_id_index` (`owner_id`);

--
-- Indexes for table `generic_keywords`
--
ALTER TABLE `generic_keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `information`
--
ALTER TABLE `information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ledger`
--
ALTER TABLE `ledger`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ledger_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_email_index` (`email`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `promo_codes`
--
ALTER TABLE `promo_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promo_history`
--
ALTER TABLE `promo_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider_availability`
--
ALTER TABLE `provider_availability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_owner_id_foreign` (`owner_id`),
  ADD KEY `request_is_walker_started_index` (`is_walker_started`),
  ADD KEY `request_is_walker_arrived_index` (`is_walker_arrived`),
  ADD KEY `request_is_started_index` (`is_started`),
  ADD KEY `request_is_completed_index` (`is_completed`);

--
-- Indexes for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_meta_request_id_foreign` (`request_id`),
  ADD KEY `request_meta_walker_id_foreign` (`walker_id`);

--
-- Indexes for table `request_services`
--
ALTER TABLE `request_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_services_request_id_index` (`request_id`),
  ADD KEY `request_services_type_index` (`type`);

--
-- Indexes for table `review_dog`
--
ALTER TABLE `review_dog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_dog_owner_id_foreign` (`owner_id`),
  ADD KEY `review_dog_walker_id_foreign` (`walker_id`),
  ADD KEY `review_dog_request_id_foreign` (`request_id`);

--
-- Indexes for table `review_walker`
--
ALTER TABLE `review_walker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `review_walker_owner_id_foreign` (`owner_id`),
  ADD KEY `review_walker_walker_id_foreign` (`walker_id`),
  ADD KEY `review_walker_request_id_foreign` (`request_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_meta`
--
ALTER TABLE `schedule_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_promo_used`
--
ALTER TABLE `user_promo_used`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_promo_used_code_id_foreign` (`code_id`),
  ADD KEY `user_promo_used_user_id_foreign` (`user_id`);

--
-- Indexes for table `walk`
--
ALTER TABLE `walk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `walker`
--
ALTER TABLE `walker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `walker_email_index` (`email`),
  ADD KEY `walker_first_name_index` (`first_name`),
  ADD KEY `walker_last_name_index` (`last_name`);

--
-- Indexes for table `walker_documents`
--
ALTER TABLE `walker_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `walker_services`
--
ALTER TABLE `walker_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `walker_services_provider_id_index` (`provider_id`),
  ADD KEY `walker_services_type_index` (`type`),
  ADD KEY `walker_services_price_per_unit_distance_index` (`price_per_unit_distance`),
  ADD KEY `walker_services_price_per_unit_time_index` (`price_per_unit_time`),
  ADD KEY `walker_services_base_price_index` (`base_price`);

--
-- Indexes for table `walker_type`
--
ALTER TABLE `walker_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `walk_location`
--
ALTER TABLE `walk_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `walk_location_request_id_foreign` (`request_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cash`
--
ALTER TABLE `cash`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dog`
--
ALTER TABLE `dog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `generic_keywords`
--
ALTER TABLE `generic_keywords`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `information`
--
ALTER TABLE `information`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ledger`
--
ALTER TABLE `ledger`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `promo_codes`
--
ALTER TABLE `promo_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `promo_history`
--
ALTER TABLE `promo_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `provider_availability`
--
ALTER TABLE `provider_availability`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `request_meta`
--
ALTER TABLE `request_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `request_services`
--
ALTER TABLE `request_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `review_dog`
--
ALTER TABLE `review_dog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `review_walker`
--
ALTER TABLE `review_walker`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `schedule_meta`
--
ALTER TABLE `schedule_meta`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `theme`
--
ALTER TABLE `theme`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_promo_used`
--
ALTER TABLE `user_promo_used`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `walk`
--
ALTER TABLE `walk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `walker`
--
ALTER TABLE `walker`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `walker_documents`
--
ALTER TABLE `walker_documents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `walker_services`
--
ALTER TABLE `walker_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `walker_type`
--
ALTER TABLE `walker_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `walk_location`
--
ALTER TABLE `walk_location`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dog`
--
ALTER TABLE `dog`
  ADD CONSTRAINT `dog_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ledger`
--
ALTER TABLE `ledger`
  ADD CONSTRAINT `ledger_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `request_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `request_meta_walker_id_foreign` FOREIGN KEY (`walker_id`) REFERENCES `walker` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review_dog`
--
ALTER TABLE `review_dog`
  ADD CONSTRAINT `review_dog_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_dog_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_dog_walker_id_foreign` FOREIGN KEY (`walker_id`) REFERENCES `walker` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review_walker`
--
ALTER TABLE `review_walker`
  ADD CONSTRAINT `review_walker_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_walker_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_walker_walker_id_foreign` FOREIGN KEY (`walker_id`) REFERENCES `walker` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_promo_used`
--
ALTER TABLE `user_promo_used`
  ADD CONSTRAINT `user_promo_used_code_id_foreign` FOREIGN KEY (`code_id`) REFERENCES `promo_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_promo_used_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `owner` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `walk_location`
--
ALTER TABLE `walk_location`
  ADD CONSTRAINT `walk_location_request_id_foreign` FOREIGN KEY (`request_id`) REFERENCES `request` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

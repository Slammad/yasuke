-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2017 at 04:10 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xicia_yourdoctor`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement_category`
--

CREATE TABLE `tbl_advertisement_category` (
  `adv_id` int(11) NOT NULL,
  `adv_photo` varchar(255) NOT NULL,
  `adv_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_advertisement_category`
--

INSERT INTO `tbl_advertisement_category` (`adv_id`, `adv_photo`, `adv_url`) VALUES
(1, 'adv-category-1.png', ''),
(2, 'adv-category-2.png', ''),
(3, 'adv-category-3.png', ''),
(4, 'adv-category-4.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement_home`
--

CREATE TABLE `tbl_advertisement_home` (
  `adv_id` int(11) NOT NULL,
  `adv_location` varchar(255) NOT NULL,
  `adv_photo` varchar(255) NOT NULL,
  `adv_url` varchar(255) NOT NULL,
  `adv_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_advertisement_home`
--

INSERT INTO `tbl_advertisement_home` (`adv_id`, `adv_location`, `adv_photo`, `adv_url`, `adv_status`) VALUES
(1, 'Header', 'adv-1.png', '', 'Show'),
(2, 'Under Featured News', 'adv-2.png', '#', 'Show');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement_sidebar`
--

CREATE TABLE `tbl_advertisement_sidebar` (
  `adv_id` int(11) NOT NULL,
  `adv_location` varchar(255) NOT NULL,
  `adv_photo` varchar(255) NOT NULL,
  `adv_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_advertisement_sidebar`
--

INSERT INTO `tbl_advertisement_sidebar` (`adv_id`, `adv_location`, `adv_photo`, `adv_url`) VALUES
(4, 'Sidebar Top', 'advertisement-sidebar-4.png', ''),
(5, 'Sidebar Top', 'advertisement-sidebar-5.png', ''),
(6, 'Sidebar Bottom', 'advertisement-sidebar-6.png', ''),
(7, 'Sidebar Bottom', 'advertisement-sidebar-7.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_slug` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_slug`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Blood / Hematology', 'blood-hematology', 'Category: Blood / Hematology', '', ''),
(2, 'Hypertension ', 'hypertension-', 'Category: Hypertension ', '', ''),
(3, 'Men''s Health', 'men-s-health', 'Category: Men''s Health', '', ''),
(4, 'Women''s Health', 'women-s-health', 'Category: Women''s Health', '', ''),
(5, 'Nutrition / Diet', 'nutrition-diet', 'Category: Nutrition / Diet', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_photo`
--

CREATE TABLE `tbl_category_photo` (
  `p_category_id` int(11) NOT NULL,
  `p_category_name` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category_photo`
--

INSERT INTO `tbl_category_photo` (`p_category_id`, `p_category_name`, `status`) VALUES
(1, 'Football', 'Active'),
(2, 'Travel', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_video`
--

CREATE TABLE `tbl_category_video` (
  `v_category_id` int(11) NOT NULL,
  `v_category_name` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category_video`
--

INSERT INTO `tbl_category_video` (`v_category_id`, `v_category_name`, `status`) VALUES
(1, 'Sports', 'Active'),
(2, 'World Tour', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `code_body` text NOT NULL,
  `code_main` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `code_body`, `code_main`) VALUES
(1, '<div id="fb-root"></div>\r\n<script>(function(d, s, id) {\r\n  var js, fjs = d.getElementsByTagName(s)[0];\r\n  if (d.getElementById(id)) return;\r\n  js = d.createElement(s); js.id = id;\r\n  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10&appId=323620764400430";\r\n  fjs.parentNode.insertBefore(js, fjs);\r\n}(document, ''script'', ''facebook-jssdk''));</script>', '<div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#configurator" data-numposts="5"></div>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `dep_id` int(11) NOT NULL,
  `dep_name` varchar(255) NOT NULL,
  `dep_slug` varchar(255) NOT NULL,
  `dep_detail` text NOT NULL,
  `dep_address` text NOT NULL,
  `dep_phone` varchar(100) NOT NULL,
  `dep_fax` varchar(100) NOT NULL,
  `dep_email` varchar(100) NOT NULL,
  `dep_photo` varchar(255) NOT NULL,
  `dep_banner` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`dep_id`, `dep_name`, `dep_slug`, `dep_detail`, `dep_address`, `dep_phone`, `dep_fax`, `dep_email`, `dep_photo`, `dep_banner`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Neurology', 'neurology', '<p>Enim venenatis nisl wisi quis, in wisi. Sollicitudin eget mollis accumsan, ut wisi maecenas tortor. Magna vehicula auctor lacus aliquam. Vehicula bibendum ut sed class erat, et et risus vel pede ac, purus orci. Nulla integer sed sem. Ut erat dolor lectus consectetuer, vel tincidunt integer duis euismod nunc, pede pede nec mauris in, vel sem fuga dis ligula. Ridiculus placerat, odio ut, mauris per vitae vehicula lorem sed vestibulum, nec fusce cras orci enim.</p>\r\n\r\n<p>At mi consectetuer. Mauris elementum a, ridiculus est leo adipiscing in commodo, dapibus tempus, mattis suspendisse, aliquam aliquam proin.</p>\r\n\r\n<p>Pellentesque nulla ut. Convallis eleifend ut est dui eros, porta enim odio luctus, sed orci nonummy tellus, wisi enim venenatis magnis, dolor nunc.</p>\r\n\r\n<p>Sociosqu at metus luctus feugiat integer, imperdiet auctor risus. Vel ultricies dis et at sodales. Massa id urna eros tempor. Fusce lobortis dolor viverra, tempor consequat nibh, eget faucibus sapien porttitor wisi, velit et. Sollicitudin consectetuer interdum gravida metus maecenas.</p>\r\n', '123 ABC Street, MN Lane, CA, USA', '111-222-3333', '111-222-4444', 'info@yourwebsite.com', 'department-1.jpg', 'department-banner-1.jpg', 'Neurology Department', 'Neurology Department, Neurology Doctor, Neurology Care, Neurology Consultant', ''),
(5, 'Dentistry', 'dentistry', '<p>Enim venenatis nisl wisi quis, in wisi. Sollicitudin eget mollis accumsan, ut wisi maecenas tortor. Magna vehicula auctor lacus aliquam. Vehicula bibendum ut sed class erat, et et risus vel pede ac, purus orci. Nulla integer sed sem. Ut erat dolor lectus consectetuer, vel tincidunt integer duis euismod nunc, pede pede nec mauris in, vel sem fuga dis ligula. Ridiculus placerat, odio ut, mauris per vitae vehicula lorem sed vestibulum, nec fusce cras orci enim.</p>\r\n\r\n<p>At mi consectetuer. Mauris elementum a, ridiculus est leo adipiscing in commodo, dapibus tempus, mattis suspendisse, aliquam aliquam proin.</p>\r\n\r\n<p>Pellentesque nulla ut. Convallis eleifend ut est dui eros, porta enim odio luctus, sed orci nonummy tellus, wisi enim venenatis magnis, dolor nunc.</p>\r\n\r\n<p>Sociosqu at metus luctus feugiat integer, imperdiet auctor risus. Vel ultricies dis et at sodales. Massa id urna eros tempor. Fusce lobortis dolor viverra, tempor consequat nibh, eget faucibus sapien porttitor wisi, velit et. Sollicitudin consectetuer interdum gravida metus maecenas.</p>\r\n', '123 ABC Street, MN Lane, CA, USA', '111-222-3333', '111-222-4444', 'info@yourwebsite.com', 'department-5.jpg', 'department-banner-5.jpg', 'Neurology Department', 'Neurology Department, Neurology Doctor, Neurology Care, Neurology Consultant', ''),
(6, 'Radiology', 'radiology', '<p>Enim venenatis nisl wisi quis, in wisi. Sollicitudin eget mollis accumsan, ut wisi maecenas tortor. Magna vehicula auctor lacus aliquam. Vehicula bibendum ut sed class erat, et et risus vel pede ac, purus orci. Nulla integer sed sem. Ut erat dolor lectus consectetuer, vel tincidunt integer duis euismod nunc, pede pede nec mauris in, vel sem fuga dis ligula. Ridiculus placerat, odio ut, mauris per vitae vehicula lorem sed vestibulum, nec fusce cras orci enim.</p>\r\n\r\n<p>At mi consectetuer. Mauris elementum a, ridiculus est leo adipiscing in commodo, dapibus tempus, mattis suspendisse, aliquam aliquam proin.</p>\r\n\r\n<p>Pellentesque nulla ut. Convallis eleifend ut est dui eros, porta enim odio luctus, sed orci nonummy tellus, wisi enim venenatis magnis, dolor nunc.</p>\r\n\r\n<p>Sociosqu at metus luctus feugiat integer, imperdiet auctor risus. Vel ultricies dis et at sodales. Massa id urna eros tempor. Fusce lobortis dolor viverra, tempor consequat nibh, eget faucibus sapien porttitor wisi, velit et. Sollicitudin consectetuer interdum gravida metus maecenas.</p>\r\n', '123 ABC Street, MN Lane, CA, USA', '111-222-3333', '111-222-4444', 'info@yourwebsite.com', 'department-6.jpg', 'department-banner-6.jpg', 'Radiology Department', 'Radiology Department Keywords', ''),
(7, 'Cardiology', 'cardiology', '<p>Enim venenatis nisl wisi quis, in wisi. Sollicitudin eget mollis accumsan, ut wisi maecenas tortor. Magna vehicula auctor lacus aliquam. Vehicula bibendum ut sed class erat, et et risus vel pede ac, purus orci. Nulla integer sed sem. Ut erat dolor lectus consectetuer, vel tincidunt integer duis euismod nunc, pede pede nec mauris in, vel sem fuga dis ligula. Ridiculus placerat, odio ut, mauris per vitae vehicula lorem sed vestibulum, nec fusce cras orci enim.</p>\r\n\r\n<p>At mi consectetuer. Mauris elementum a, ridiculus est leo adipiscing in commodo, dapibus tempus, mattis suspendisse, aliquam aliquam proin.</p>\r\n\r\n<p>Pellentesque nulla ut. Convallis eleifend ut est dui eros, porta enim odio luctus, sed orci nonummy tellus, wisi enim venenatis magnis, dolor nunc.</p>\r\n\r\n<p>Sociosqu at metus luctus feugiat integer, imperdiet auctor risus. Vel ultricies dis et at sodales. Massa id urna eros tempor. Fusce lobortis dolor viverra, tempor consequat nibh, eget faucibus sapien porttitor wisi, velit et. Sollicitudin consectetuer interdum gravida metus maecenas.</p>\r\n', '123 ABC Street, MN Lane, CA, USA', '111-222-3333', '111-222-4444', 'info@yourwebsite.com', 'department-7.jpg', 'department-banner-7.jpg', 'Cardiology Department', 'Cardiology Department Keywords', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department_appointment`
--

CREATE TABLE `tbl_department_appointment` (
  `app_id` int(11) NOT NULL,
  `app_name` varchar(100) NOT NULL,
  `app_email` varchar(100) NOT NULL,
  `app_phone` varchar(100) NOT NULL,
  `app_content` text NOT NULL,
  `dep_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department_faq`
--

CREATE TABLE `tbl_department_faq` (
  `fq_id` int(11) NOT NULL,
  `fq_title` varchar(255) NOT NULL,
  `fq_content` text NOT NULL,
  `dep_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department_faq`
--

INSERT INTO `tbl_department_faq` (`fq_id`, `fq_title`, `fq_content`, `dep_id`) VALUES
(1, 'Where will you get doctors?', 'Khulna, Bangladesh', 1),
(5, 'Are this team members muslim?', 'Yes', 5),
(7, 'Do you follow islamic rules?', 'Yes', 5),
(8, 'Will you need to come to us everyday?', 'No man. It is not needed. But if you want you can visit and come to our office.\r\n\r\nWe arrange some lunch for our visitors who can become a client of us in future.', 1),
(9, 'How do I book an appointment?', 'You can easily book an appointment going to appointment form in the department details page.', 1),
(10, 'How do I book an appointment?', 'You can easily book an appointment going to appointment form in the department details page.', 5),
(11, 'What is a health plan?', 'The group of doctors, hospitals, and other providers who work together to give you the healthcare you need.', 6),
(12, 'What is a co-pay?', 'A co-pay is the money you pay at the time of services.', 6),
(13, 'Will I have a co-pay?', 'If you have a co-pay now, you may still have one.', 6),
(14, 'What if I have more questions?', 'If you have questions or need more information, you can call to our Client Enrollment Services at 123-456-7897', 6),
(15, 'What is a health plan?', 'The group of doctors, hospitals, and other providers who work together to give you the healthcare you need.', 7),
(16, 'What is a co-pay?', 'A co-pay is the money you pay at the time of services.', 7),
(17, 'Will I have a co-pay?', 'If you have a co-pay now, you may still have one.', 7),
(18, 'What if I have more questions?', 'If you have questions or need more information, you can call to our Client Enrollment Services at 123-456-7897', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department_openning_hour`
--

CREATE TABLE `tbl_department_openning_hour` (
  `oh_id` int(11) NOT NULL,
  `oh_day` varchar(255) NOT NULL,
  `oh_time` varchar(255) NOT NULL,
  `dep_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_department_openning_hour`
--

INSERT INTO `tbl_department_openning_hour` (`oh_id`, `oh_day`, `oh_time`, `dep_id`) VALUES
(9, 'Sat', '9:00 AM', 5),
(17, 'Monday', '8:00 AM - 10:00 PM', 1),
(18, 'Tuesday', '8:00 AM - 10:00 PM', 1),
(19, 'Wednesday', '8:00 AM - 10:00 PM', 1),
(20, 'Thursday', '8:00 AM - 10:00 PM', 1),
(21, 'Friday', '8:00 AM - 10:00 PM', 1),
(22, 'Saturday', '8:00 AM - 10:00 PM', 1),
(23, 'Sunday', 'Off', 1),
(24, 'Tuesday ', '8:00 AM - 10:00 PM', 5),
(25, 'Wednesday ', '8:00 AM - 10:00 PM', 5),
(26, 'Thursday ', '8:00 AM - 10:00 PM', 5),
(27, 'Friday ', '8:00 AM - 10:00 PM', 5),
(28, 'Saturday ', '8:00 AM - 10:00 PM', 5),
(29, 'Sunday ', 'Closed', 5),
(30, 'Monday', '8:00 AM - 10:00 PM', 6),
(31, 'Tuesday', '8:00 AM - 10:00 PM', 6),
(32, 'Wednesday', '8:00 AM - 10:00 PM', 6),
(33, 'Thursday', '8:00 AM - 10:00 PM', 6),
(34, 'Friday', '8:00 AM - 10:00 PM', 6),
(35, 'Saturday', '8:00 AM - 10:00 PM', 6),
(36, 'Sunday', 'Closed', 6),
(37, 'Monday', '8:00 AM - 10:00 PM', 7),
(38, 'Tuesday ', '8:00 AM - 10:00 PM', 7),
(39, 'Wednesday ', '8:00 AM - 10:00 PM', 7),
(40, 'Thursday ', '8:00 AM - 10:00 PM', 7),
(41, 'Friday ', '8:00 AM - 10:00 PM', 7),
(42, 'Saturday ', '8:00 AM - 10:00 PM', 7),
(43, 'Sunday', 'Closed', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation`
--

CREATE TABLE `tbl_designation` (
  `designation_id` int(11) NOT NULL,
  `designation_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_designation`
--

INSERT INTO `tbl_designation` (`designation_id`, `designation_name`) VALUES
(2, 'Dental Surgeon'),
(3, 'Neurologist'),
(4, 'Neurosurgeon'),
(5, 'Cardiologist'),
(6, 'Gynecologist');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor`
--

CREATE TABLE `tbl_doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `google_plus` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `flickr` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `practice_location` text NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_doctor`
--

INSERT INTO `tbl_doctor` (`id`, `name`, `slug`, `designation_id`, `photo`, `banner`, `degree`, `detail`, `facebook`, `twitter`, `linkedin`, `youtube`, `google_plus`, `instagram`, `flickr`, `address`, `practice_location`, `phone`, `email`, `website`, `status`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Dr. Robin Cook', 'robin-cook', 2, 'doctor-1.jpg', 'doctor-banner-1.jpg', 'BDS in Dental', '<h2>About</h2>\r\n\r\n<p>Enim venenatis nisl wisi quis, in wisi. Sollicitudin eget mollis accumsan, ut wisi maecenas tortor. Magna vehicula auctor lacus aliquam. Vehicula bibendum ut sed class erat, et et risus vel pede ac, purus orci. Nulla integer sed sem. Ut erat dolor lectus consectetuer, vel tincidunt integer duis euismod nunc, pede pede nec mauris in, vel sem fuga dis ligula. Ridiculus placerat, odio ut, mauris per vitae vehicula lorem sed vestibulum, nec fusce cras orci enim.</p>\r\n\r\n<h2>Degree</h2>\r\n\r\n<p>At mi consectetuer. Mauris elementum a, ridiculus est leo adipiscing in commodo, dapibus tempus, mattis suspendisse, aliquam aliquam proin.</p>\r\n\r\n<h2>Education</h2>\r\n\r\n<p>Pellentesque nulla ut. Convallis eleifend ut est dui eros, porta enim odio luctus, sed orci nonummy tellus, wisi enim venenatis magnis, dolor nunc.</p>\r\n\r\n<h2>Experience</h2>\r\n\r\n<p>Sociosqu at metus luctus feugiat integer, imperdiet auctor risus. Vel ultricies dis et at sodales. Massa id urna eros tempor. Fusce lobortis dolor viverra, tempor consequat nibh, eget faucibus sapien porttitor wisi, velit et. Sollicitudin consectetuer interdum gravida metus maecenas.</p>\r\n', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', '', '', '', '', 'Mattondanga, Ghilatola.', 'Fulbarigate, Khulna\r\n', '019', 'taslim.iqbal@gmail.com', 'http://www.drtaslim.com', 'Active', 'Title 1', 'Keyword 1', 'Description 1'),
(2, 'Dr. Erik Frank', 'dr-erik-frank', 5, 'doctor-2.jpg', 'doctor-banner-2.jpg', '', '<h2>About</h2>\r\n\r\n<p>Enim venenatis nisl wisi quis, in wisi. Sollicitudin eget mollis accumsan, ut wisi maecenas tortor. Magna vehicula auctor lacus aliquam. Vehicula bibendum ut sed class erat, et et risus vel pede ac, purus orci. Nulla integer sed sem. Ut erat dolor lectus consectetuer, vel tincidunt integer duis euismod nunc, pede pede nec mauris in, vel sem fuga dis ligula. Ridiculus placerat, odio ut, mauris per vitae vehicula lorem sed vestibulum, nec fusce cras orci enim.</p>\r\n\r\n<h2>Degree</h2>\r\n\r\n<p>At mi consectetuer. Mauris elementum a, ridiculus est leo adipiscing in commodo, dapibus tempus, mattis suspendisse, aliquam aliquam proin.</p>\r\n\r\n<h2>Education</h2>\r\n\r\n<p>Pellentesque nulla ut. Convallis eleifend ut est dui eros, porta enim odio luctus, sed orci nonummy tellus, wisi enim venenatis magnis, dolor nunc.</p>\r\n\r\n<h2>Experience</h2>\r\n\r\n<p>Sociosqu at metus luctus feugiat integer, imperdiet auctor risus. Vel ultricies dis et at sodales. Massa id urna eros tempor. Fusce lobortis dolor viverra, tempor consequat nibh, eget faucibus sapien porttitor wisi, velit et. Sollicitudin consectetuer interdum gravida metus maecenas.</p>\r\n', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', '', '', '', '', '', '', '', '', '', 'Active', '', '', ''),
(3, 'Dr. Bob Smith', 'dr-bob-smith', 2, 'doctor-3.jpg', 'doctor-banner-3.jpg', '', '<h2>About</h2>\r\n\r\n<p>Enim venenatis nisl wisi quis, in wisi. Sollicitudin eget mollis accumsan, ut wisi maecenas tortor. Magna vehicula auctor lacus aliquam. Vehicula bibendum ut sed class erat, et et risus vel pede ac, purus orci. Nulla integer sed sem. Ut erat dolor lectus consectetuer, vel tincidunt integer duis euismod nunc, pede pede nec mauris in, vel sem fuga dis ligula. Ridiculus placerat, odio ut, mauris per vitae vehicula lorem sed vestibulum, nec fusce cras orci enim.</p>\r\n\r\n<h2>Degree</h2>\r\n\r\n<p>At mi consectetuer. Mauris elementum a, ridiculus est leo adipiscing in commodo, dapibus tempus, mattis suspendisse, aliquam aliquam proin.</p>\r\n\r\n<h2>Education</h2>\r\n\r\n<p>Pellentesque nulla ut. Convallis eleifend ut est dui eros, porta enim odio luctus, sed orci nonummy tellus, wisi enim venenatis magnis, dolor nunc.</p>\r\n\r\n<h2>Experience</h2>\r\n\r\n<p>Sociosqu at metus luctus feugiat integer, imperdiet auctor risus. Vel ultricies dis et at sodales. Massa id urna eros tempor. Fusce lobortis dolor viverra, tempor consequat nibh, eget faucibus sapien porttitor wisi, velit et. Sollicitudin consectetuer interdum gravida metus maecenas.</p>\r\n', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', '', '', '', '', '', '', '', '', '', 'Active', '', '', ''),
(4, 'Dr. Patrick Smith', 'dr-patrick-smith', 4, 'doctor-4.jpg', 'doctor-banner-4.jpg', '', '<h2>About</h2>\r\n\r\n<p>Enim venenatis nisl wisi quis, in wisi. Sollicitudin eget mollis accumsan, ut wisi maecenas tortor. Magna vehicula auctor lacus aliquam. Vehicula bibendum ut sed class erat, et et risus vel pede ac, purus orci. Nulla integer sed sem. Ut erat dolor lectus consectetuer, vel tincidunt integer duis euismod nunc, pede pede nec mauris in, vel sem fuga dis ligula. Ridiculus placerat, odio ut, mauris per vitae vehicula lorem sed vestibulum, nec fusce cras orci enim.</p>\r\n\r\n<h2>Degree</h2>\r\n\r\n<p>At mi consectetuer. Mauris elementum a, ridiculus est leo adipiscing in commodo, dapibus tempus, mattis suspendisse, aliquam aliquam proin.</p>\r\n\r\n<h2>Education</h2>\r\n\r\n<p>Pellentesque nulla ut. Convallis eleifend ut est dui eros, porta enim odio luctus, sed orci nonummy tellus, wisi enim venenatis magnis, dolor nunc.</p>\r\n\r\n<h2>Experience</h2>\r\n\r\n<p>Sociosqu at metus luctus feugiat integer, imperdiet auctor risus. Vel ultricies dis et at sodales. Massa id urna eros tempor. Fusce lobortis dolor viverra, tempor consequat nibh, eget faucibus sapien porttitor wisi, velit et. Sollicitudin consectetuer interdum gravida metus maecenas.</p>\r\n', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', '', '', '', '', '', '', '', '', '', 'Active', '', '', ''),
(5, 'Emily Scott', 'emily-scott', 6, 'doctor-5.jpg', 'doctor-banner-5.jpg', '', '<h2>About</h2>\r\n\r\n<p>Enim venenatis nisl wisi quis, in wisi. Sollicitudin eget mollis accumsan, ut wisi maecenas tortor. Magna vehicula auctor lacus aliquam. Vehicula bibendum ut sed class erat, et et risus vel pede ac, purus orci. Nulla integer sed sem. Ut erat dolor lectus consectetuer, vel tincidunt integer duis euismod nunc, pede pede nec mauris in, vel sem fuga dis ligula. Ridiculus placerat, odio ut, mauris per vitae vehicula lorem sed vestibulum, nec fusce cras orci enim.</p>\r\n\r\n<h2>Degree</h2>\r\n\r\n<p>At mi consectetuer. Mauris elementum a, ridiculus est leo adipiscing in commodo, dapibus tempus, mattis suspendisse, aliquam aliquam proin.</p>\r\n\r\n<h2>Education</h2>\r\n\r\n<p>Pellentesque nulla ut. Convallis eleifend ut est dui eros, porta enim odio luctus, sed orci nonummy tellus, wisi enim venenatis magnis, dolor nunc.</p>\r\n\r\n<h2>Experience</h2>\r\n\r\n<p>Sociosqu at metus luctus feugiat integer, imperdiet auctor risus. Vel ultricies dis et at sodales. Massa id urna eros tempor. Fusce lobortis dolor viverra, tempor consequat nibh, eget faucibus sapien porttitor wisi, velit et. Sollicitudin consectetuer interdum gravida metus maecenas.</p>\r\n', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', '', '', '', '', '', '', '', '', '', 'Active', '', '', ''),
(6, 'Dr. Amanda Bryan', 'dr-amanda-bryan', 6, 'doctor-6.jpg', 'doctor-banner-6.jpg', '', '', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', '', '', '', '', '', '', '', '', '', 'Active', '', '', ''),
(7, 'Dr. Arun Prasad', 'dr-arun-prasad', 3, 'doctor-7.jpg', 'doctor-banner-7.jpg', '', '', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', '', '', '', '', '', '', '', '', '', 'Active', '', '', ''),
(8, 'Dr. William Ray', 'dr-william-ray', 5, 'doctor-8.jpg', 'doctor-banner-8.jpg', '', '', 'http://www.facebook.com', 'http://www.twitter.com', 'http://www.linkedin.com', '', '', '', '', '', '', '', '', '', 'Active', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq`
--

CREATE TABLE `tbl_faq` (
  `faq_id` int(11) NOT NULL,
  `faq_title` varchar(255) NOT NULL,
  `faq_content` text NOT NULL,
  `faq_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faq`
--

INSERT INTO `tbl_faq` (`faq_id`, `faq_title`, `faq_content`, `faq_category_id`) VALUES
(1, 'How can I find the rules that apply to me?', '<ul>\r\n	<li>Most of the definitions are in OAR 333-008-0010.</li>\r\n	<li>Rules that apply to patients and caregivers can be found mainly in OAR 333-008-0020 to 333-008-0080.</li>\r\n	<li>Rules that apply to growers and grow sites can be found mainly in OAR 333-008-0033, 333-008-0037, â€‹333-008-0047, 333-008-0500 to 333-008-0640.</li>\r\n	<li>Rules that apply to dispensaries are OAR 333-008-1000 to 333-008-1248 and 333-008-2000 to 333-008-2200.</li>\r\n	<li>Rules that apply to processors are OAR 333-008-1600 to 333-008-2200.</li>\r\n	<li>Labeling rules can be found in OAR 333-007-0010 to 333-007-0100.</li>\r\n	<li>Concentration and serving size limits can be found in OAR 333-007-0200 to 333-007-0220.</li>\r\n	<li>Cannabis testing requirements can be found in OAR 333-007-0300 to 333-007-0490.</li>\r\n	<li>Accreditation of laboratories can be found in OAR 333-064-0100 to 333-064-0110.</li>\r\n</ul>\r\n', 1),
(2, 'How do I find out about rulemaking, rule changes and other updates regarding the medical marijuana program?', '<p>Individuals can subscribe&nbsp;to receive email updates related to medical marijuana.</p>\r\n', 1),
(3, 'Who can get a medical marijuana card?', '<p>Individuals with a qualifying medical condition and a recommendation for medical marijuana from an attending physician may apply for a medical marijuana card.</p>\r\n', 2),
(4, 'How do I apply for a card?', '<p>Visit our New Patients page to learn how to apply for a medical marijuana card.</p>\r\n', 2),
(5, 'How long does it take to get a card?', '<p>If, upon an initial review, it appears that a complete application has been received, the patient will be issued a receipt letter. This receipt has the same legal effect as a registry identification card for 30 days following the date printed on the letter. Once your application is finished being processed, a card will be mailed to you.</p>\r\n\r\n<p>If your application is NOT complete, OMMP staff will send you an &quot;Incomplete Letter&quot; to let you know what needs to be submitted to complete your application. You will have 14 days from the date of the letter to get the missing application materials to OMMP. If the missing application materials are not submitted within the 14 days, your application may be rejected.</p>\r\n', 2),
(6, 'What are the system requirements of the Medical Masterclass website?', '<p>The Medical Masterclass website is designed to function on Internet Explorer 9 and above. If you are using an older browser version, you will need to upgrade Internet Explorer to a newer version.</p>\r\n', 3),
(7, 'I cannot log in to my Medical Masterclass website subscription. Why?', '<p><strong>CHECK YOUR PASSWORD</strong></p>\r\n\r\n<p>Are you using the correct password? If you wish to reset your password, you can do so by clicking the &quot;Forgot password&quot; link on the login page. This will delete the old password and a new one will be sent by email.</p>\r\n\r\n<p>(If your browser has been set up to store login details, please make sure you clear any previously remembered passwords - i.e. if the username/password is already filled in on the login page, please delete these details and re-type).</p>\r\n\r\n<p>NB If you incorrectly type your password too many times consecutively the account will be locked. See &quot;This account is locked&quot; below.</p>\r\n\r\n<p>IF YOU ARE USING THE CORRECT PASSWORD</p>\r\n\r\n<p>Authentication requires a &lsquo;cookie&rsquo; to be sent to the user&rsquo;s web browser (These are small text files temporarily stored by your web browser which enable us to identify you when you are logged in.) If cookies are disallowed then the screen will return to the login page immediately after entering the username and password.</p>\r\n\r\n<p>Instructions for allowing these in Internet Explorer are provided below:</p>\r\n\r\n<ol>\r\n	<li>Click &#39;Tools&#39;, &#39;Internet Options&#39;, and click the &#39;Privacy&#39; tab.</li>\r\n	<li>Under &#39;Websites - to override cookie handling for individual websites...&#39; click &#39;Edit&#39;,</li>\r\n	<li>Under &#39;Add Address of website&#39; type &quot;medical-masterclass.com&quot; and click &#39;Allow&#39;</li>\r\n	<li>Click &#39;OK&#39; to close this window</li>\r\n	<li>Click &#39;OK&#39; to close the Internet Options window</li>\r\n</ol>\r\n\r\n<p>If you are not using Internet Explorer or are having difficulties, please check your browser&#39;s Help files or contact your IT department/vendor.</p>\r\n\r\n<p>If you are using a product that could block cookies, e.g. Norton Internet Security, or Norton Firewall, please follow any instructions for allowing them for &quot;medical-masterclass.com&quot;.</p>\r\n', 3),
(8, 'What is the average usersâ€™ score?', '<p>The system requires you to have Adobe Flash 8 (or greater) installed. If you do not have this installed, you will see a link offering to install it for you.</p>\r\n\r\n<p>Should you find the presentation plays but it stops and starts it may be because your internet connection speed is insufficient. We recommend a connection of at least 1Mb. Also, depending on your situation, you may find other factors such as time of day affect your experience.</p>\r\n\r\n<p>iPhone / iPad &ndash; at the present time the Apple iPhone / iPad does not support Flash and we are therefore unable to offer the PACES screencasts to iPhone / iPad users.</p>\r\n', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faq_category`
--

CREATE TABLE `tbl_faq_category` (
  `faq_category_id` int(11) NOT NULL,
  `faq_category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faq_category`
--

INSERT INTO `tbl_faq_category` (`faq_category_id`, `faq_category_name`) VALUES
(1, 'General Questions'),
(2, 'Patients Query'),
(3, 'Technical Questions');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_file`
--

CREATE TABLE `tbl_file` (
  `file_id` int(11) NOT NULL,
  `file_title` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_home_category`
--

CREATE TABLE `tbl_home_category` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_order` varchar(10) NOT NULL,
  `category_layout` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_home_category`
--

INSERT INTO `tbl_home_category` (`id`, `category_id`, `category_order`, `category_layout`) VALUES
(14, 16, '2', '2 Columns (6 posts)'),
(15, 17, '', ''),
(16, 18, '', ''),
(17, 19, '1', '2 Columns (6 posts)'),
(18, 20, '4', '2 Columns (6 posts)'),
(19, 21, '3', '2 Columns (6 posts)'),
(20, 22, '', ''),
(21, 23, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL,
  `menu_type` varchar(255) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `category_or_page_slug` varchar(255) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `menu_parent` int(11) NOT NULL,
  `menu_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`menu_id`, `menu_type`, `menu_name`, `category_or_page_slug`, `menu_order`, `menu_parent`, `menu_url`) VALUES
(17, 'Other', 'Home', '', 1, 0, 'http://www.a3devs.com/xicia/codecanyon/yourdoctor/'),
(18, 'Other', 'Pages', '', 2, 0, '#'),
(19, 'Page', 'About Us', 'about-us', 3, 18, ''),
(20, 'Page', 'Contact Us', 'contact-us', 9, 0, ''),
(21, 'Page', 'FAQ', 'faq', 4, 18, ''),
(22, 'Other', 'Gallery', '', 3, 0, '#'),
(23, 'Page', 'Photo Gallery', 'photo-gallery', 80, 22, ''),
(24, 'Page', 'Video Gallery', 'video-gallery', 81, 22, ''),
(25, 'Page', 'Blog', 'blog', 8, 0, ''),
(26, 'Page', 'Doctors', 'doctors', 6, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_slug` varchar(255) NOT NULL,
  `news_content` text NOT NULL,
  `news_date` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `total_view` int(11) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`news_id`, `news_title`, `news_slug`, `news_content`, `news_date`, `photo`, `category_id`, `publisher`, `total_view`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'Donating plasma: What are the side effects and risks?', 'donating-plasma-what-are-the-side-effects-and-risks-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-1.jpg', 1, 'John Doe', 9, 'Donating plasma: What are the side effects and risks?', '', ''),
(2, 'Fasting before a blood test: What you need to know', 'fasting-before-a-blood-test-what-you-need-to-know', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-2.jpg', 1, 'John Doe', 0, 'Fasting before a blood test: What you need to know', '', ''),
(3, 'Diabetes and hypertension: What is the relationship?', 'diabetes-and-hypertension-what-is-the-relationship-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-3.jpg', 2, 'John Doe', 0, 'Diabetes and hypertension: What is the relationship?', '', ''),
(4, 'Seven Natural Diuretics to Eat and Drink', 'seven-natural-diuretics-to-eat-and-drink', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-4.jpg', 2, 'John Doe', 0, 'Seven Natural Diuretics to Eat and Drink', '', ''),
(5, 'Sperm morphology: Tests and results', 'sperm-morphology-tests-and-results', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-5.jpg', 3, 'John Doe', 20, 'Sperm morphology: Tests and results', '', ''),
(6, 'What causes testicle itch? Seven possible causes', 'what-causes-testicle-itch-seven-possible-causes', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-6.jpg', 3, 'John Doe', 0, 'What causes testicle itch? Seven possible causes', '', ''),
(7, 'Vulvitis: Causes, symptoms, and treatment', 'vulvitis-causes-symptoms-and-treatment', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-7.jpg', 4, 'John Doe', 0, 'Vulvitis: Causes, symptoms, and treatment', '', ''),
(8, 'Insomnia: Like mother, like child?', 'insomnia-like-mother-like-child-', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-8.jpg', 4, 'John Doe', 8, 'Insomnia: Like mother, like child?', '', ''),
(9, 'How Much Sugar Is In Your Food And Drink?', 'how-much-sugar-is-in-your-food-and-drink', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-9.jpg', 5, 'John Doe', 4, 'How Much Sugar Is In Your Food And Drink?', '', ''),
(10, 'Vitamin D: Health Benefits, Facts and Research', 'vitamin-d-health-benefits-facts-and-research', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-10.jpg', 5, 'John Doe', 3, 'Vitamin D: Health Benefits, Facts and Research', '', ''),
(11, 'Protein shake diet for weight loss', 'protein-shake-diet-for-weight-loss', '<p>Lorem ipsum dolor sit amet, qui case probo velit no, an postea scaevola partiendo mei. Id mea fuisset perpetua referrentur. Ut everti ceteros mei, alii discere eum no, duo id malis iuvaret. Ad sint everti accusam vel, ea viderer suscipiantur pri. Brute option minimum in cum, ignota iuvaret an pro.</p>\r\n\r\n<p>Solum atqui intellegebat mea an. Ne ius alterum aliquam. Ea nec populo aliquid mentitum, vis in meliore atomorum, sanctus consequat vituperatoribus duo ea. Ad doctus pertinacia ius, virtute fuisset id has, eum ut modo principes. Qui eu labore adversarium, oporteat delicata qui ut, an qui meliore principes. Id aliquid dolorum nam.</p>\r\n\r\n<p>Reque pericula philosophia ut mei, volumus eligendi mandamus has an. In nobis consulatu pri, has at timeam scaevola, has simul quaeque et. Te nec sale accumsan. Dolorem prodesset efficiendi sea ea.</p>\r\n\r\n<p>Et habeo modus debitis pri, vel quis fierent albucius ne. Ea animal meliore usu, nec etiam dolorum atomorum at, nam in audire mandamus omittantur. Cu ius dicam officiis molestiae, mea volumus officiis cotidieque no. Ut vel possim interpretaris, idque probatus antiopam has ad. Facilisi qualisque te sea, no dolorum mnesarchum usu.</p>\r\n\r\n<p>Eum tota graeci impetus an, eirmod invenire rationibus ne mel. Ignota habemus eum ex, vis omnesque delicata perpetua an. Sit id modo invidunt sapientem, ne eum vocibus dolores phaedrum. Case praesent appellantur eu per.</p>\r\n', '05-09-2017', 'news-11.jpg', 5, 'John Doe', 16, 'Protein shake diet for weight loss', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(255) NOT NULL,
  `page_slug` varchar(255) NOT NULL,
  `page_content` text NOT NULL,
  `page_layout` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` text NOT NULL,
  `meta_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`page_id`, `page_name`, `page_slug`, `page_content`, `page_layout`, `banner`, `status`, `meta_title`, `meta_keyword`, `meta_description`) VALUES
(1, 'About Us', 'about-us', '<p>Lorem ipsum dolor sit amet, at pro eleifend vulputate, vim movet regione ad. Has veritus adipisci aliquando eu, fugit eripuit dignissim per ea, sanctus omittam assueverit his ex. Nulla affert vix in, ei sea dolore dolores vivendum. Vix eros postea an, ius suas ubique habemus an, wisi nulla ex mel. Saepe postulant concludaturque at has. Exerci tincidunt interesset ne per, pro bonorum utroque appetere ad.</p>\r\n\r\n<p>Est ea corpora deserunt cotidieque, quo te vero melius assentior, pri ex velit altera iuvaret. Tibique hendrerit voluptaria ad quo. Ut appetere reprimique qui, aliquip suscipiantur ex eos. Nibh vero nusquam his eu, agam summo democritum mea ne. Ius in novum scripta, atqui appetere efficiantur an vel, ex probo modus temporibus nam.</p>\r\n\r\n<p>Ea feugiat nominavi quo, debet gubergren elaboraret at cum, mel timeam vivendo mentitum cu. Aeque civibus luptatum cu eos. Novum facilisi insolens his et, ex aliquip tibique laboramus vim. Vix brute appellantur ei.</p>\r\n\r\n<p>Nec eros viderer ne, mel ad suas offendit suavitate, te pri laoreet legendos hendrerit. Per ut paulo urbanitas mediocritatem, in sea facilisis imperdiet torquatos, ea vis soleat fierent pertinacia. Maiestatis reprimique no est, ut ius esse tation. Nam animal discere omnesque at. Evertitur adipiscing vis ei, his ut luptatum recteque, et idque mundi vim.</p>\r\n\r\n<p>Adhuc vocibus at mei, nulla altera eu vim. At sit quot ferri everti. Mea ea doming dictas possim. Te mea facete nominati constituam, no discere democritum has, ei nam eirmod vocent deserunt. Eu wisi voluptatibus mea, elit errem ad pro, vim quando denique id. Labitur accommodare eam at.</p>\r\n', 'Full Width Page Layout', 'page-banner-1.jpg', 'Active', 'About Us Page', '', ''),
(2, 'Contact Us', 'contact-us', '', 'Contact Us Page Layout', 'page-banner-2.jpg', 'Active', 'Contact Us Page', '', ''),
(5, 'Photo Gallery', 'photo-gallery', '', 'Photo Gallery Page Layout', 'page-banner-5.jpg', 'Active', 'Photo Gallery Page', '', ''),
(6, 'Video Gallery', 'video-gallery', '', 'Video Gallery Page Layout', 'page-banner-6.jpg', 'Active', 'Video Gallery Page', '', ''),
(7, 'FAQ', 'faq', '', 'FAQ Page Layout', 'page-banner-7.jpg', 'Active', 'FAQ Page', '', ''),
(8, 'Doctors', 'doctors', '', 'Doctor Page Layout', 'page-banner-8.jpg', 'Active', 'Doctors Page', '', ''),
(9, 'Blog', 'blog', '', 'Blog Page Layout', 'page-banner-9.jpg', 'Active', 'Blog Page', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_partner`
--

CREATE TABLE `tbl_partner` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_partner`
--

INSERT INTO `tbl_partner` (`id`, `name`, `url`, `photo`) VALUES
(1, 'Company 1', '', 'partner-1.png'),
(2, 'Company 2', '', 'partner-2.png'),
(3, 'Company 3', '', 'partner-3.png'),
(4, 'Company 4', '', 'partner-4.png'),
(5, 'Company 5', '', 'partner-5.png'),
(6, 'Company 6', '', 'partner-6.png'),
(7, 'Company 7', '', 'partner-7.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_photo`
--

CREATE TABLE `tbl_photo` (
  `photo_id` int(11) NOT NULL,
  `photo_caption` varchar(255) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `p_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_photo`
--

INSERT INTO `tbl_photo` (`photo_id`, `photo_caption`, `photo_name`, `p_category_id`) VALUES
(8, 'Photo 1', 'photo-8.jpg', 1),
(9, 'Photo 2', 'photo-9.jpg', 1),
(10, 'Photo 3', 'photo-10.jpg', 1),
(11, 'Photo 4', 'photo-11.jpg', 2),
(12, 'Photo 5', 'photo-12.jpg', 2),
(13, 'Photo 6', 'photo-13.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pricing_item`
--

CREATE TABLE `tbl_pricing_item` (
  `pricing_item_id` int(11) NOT NULL,
  `pricing_item_name` text NOT NULL,
  `pricing_plan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pricing_item`
--

INSERT INTO `tbl_pricing_item` (`pricing_item_id`, `pricing_item_name`, `pricing_plan_id`) VALUES
(1, '6 Specialties', 1),
(2, '30 Tests and Treatments', 1),
(3, '1 Medical Consultation', 1),
(4, '1 Home Visit', 1),
(5, 'No Pregnancy Care', 1),
(6, 'No Assistance', 1),
(7, '12 Specialties', 2),
(8, '24 Specialties', 3),
(9, '90 Tests and Treatments', 2),
(10, '160 Tests and Treatments', 3),
(11, '2 Medical Consultation', 2),
(12, '4 Medical Consultation', 3),
(13, '2 Home Visit', 2),
(14, '4 Home Visit', 3),
(15, 'Available Pregnancy Care', 2),
(16, 'Available Pregnancy Care', 3),
(17, '24 Hours Assistance', 2),
(18, '24 Hours Assistance', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pricing_plan`
--

CREATE TABLE `tbl_pricing_plan` (
  `pricing_plan_id` int(11) NOT NULL,
  `pricing_plan_name` varchar(255) NOT NULL,
  `pricing_plan_price` varchar(100) NOT NULL,
  `pricing_plan_button_text` varchar(255) NOT NULL,
  `pricing_plan_button_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pricing_plan`
--

INSERT INTO `tbl_pricing_plan` (`pricing_plan_id`, `pricing_plan_name`, `pricing_plan_price`, `pricing_plan_button_text`, `pricing_plan_button_url`) VALUES
(1, 'Basic', '199', 'Select', '#'),
(2, 'Platinum', '299', 'Select', '#'),
(3, 'Gold', '399', 'Select', '#');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `short_description` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_service`
--

INSERT INTO `tbl_service` (`id`, `name`, `slug`, `description`, `short_description`, `photo`, `banner`) VALUES
(4, 'Mother Care', 'mother-care', '<p>Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.</p>\r\n', 'Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.', 'service-4.jpg', 'service-banner-4.jpg'),
(5, 'Hospital Service', 'hospital-service', '<p>Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.</p>\r\n', 'Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.Â ', 'service-5.jpg', 'service-banner-5.jpg'),
(6, 'Parent Care', 'parent-care', '<p>Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.</p>\r\n', 'Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.Â ', 'service-6.jpg', 'service-banner-6.jpg'),
(7, 'Critical Treatment', 'critical-treatment', '<p>Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.</p>\r\n', 'Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.Â ', 'service-7.jpg', 'service-banner-7.jpg'),
(8, 'All Major Tests', 'all-major-tests', '<p>Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.</p>\r\n', 'Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.', 'service-8.jpg', 'service-banner-8.jpg'),
(9, 'Modern Laboratory', 'modern-laboratory', '<p>Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.&nbsp;Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.</p>\r\n', 'Ad his diam eirmod persecuti. Eum health cube scriptorem eu, eu aperiri definiebas concludaturque eam.', 'service-9.jpg', 'service-banner-9.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `footer_about` text NOT NULL,
  `footer_copyright` text NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` varchar(255) NOT NULL,
  `contact_fax` varchar(255) NOT NULL,
  `contact_map_iframe` text NOT NULL,
  `receive_email` varchar(255) NOT NULL,
  `receive_email_subject` varchar(255) NOT NULL,
  `receive_email_thank_you_message` text NOT NULL,
  `total_recent_news_footer` int(10) NOT NULL,
  `total_popular_news_footer` int(10) NOT NULL,
  `total_recent_news_sidebar` int(11) NOT NULL,
  `total_popular_news_sidebar` int(11) NOT NULL,
  `total_recent_news_home_page` int(11) NOT NULL,
  `meta_title_home` text NOT NULL,
  `meta_keyword_home` text NOT NULL,
  `meta_description_home` text NOT NULL,
  `home_title_service` varchar(255) NOT NULL,
  `home_subtitle_service` varchar(255) NOT NULL,
  `home_status_service` int(11) NOT NULL,
  `home_title_department` varchar(255) NOT NULL,
  `home_subtitle_department` varchar(255) NOT NULL,
  `home_status_department` int(11) NOT NULL,
  `home_title_doctor` varchar(255) NOT NULL,
  `home_subtitle_doctor` varchar(255) NOT NULL,
  `home_status_doctor` int(11) NOT NULL,
  `home_title_pricing` varchar(255) NOT NULL,
  `home_subtitle_pricing` varchar(255) NOT NULL,
  `home_status_pricing` int(11) NOT NULL,
  `home_title_testimonial` varchar(255) NOT NULL,
  `home_subtitle_testimonial` varchar(255) NOT NULL,
  `home_status_testimonial` int(11) NOT NULL,
  `home_title_news` varchar(255) NOT NULL,
  `home_subtitle_news` varchar(255) NOT NULL,
  `home_status_news` int(11) NOT NULL,
  `home_title_partner` varchar(255) NOT NULL,
  `home_subtitle_partner` varchar(255) NOT NULL,
  `home_status_partner` int(11) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_settings`
--

INSERT INTO `tbl_settings` (`id`, `logo`, `favicon`, `footer_about`, `footer_copyright`, `contact_address`, `contact_email`, `contact_phone`, `contact_fax`, `contact_map_iframe`, `receive_email`, `receive_email_subject`, `receive_email_thank_you_message`, `total_recent_news_footer`, `total_popular_news_footer`, `total_recent_news_sidebar`, `total_popular_news_sidebar`, `total_recent_news_home_page`, `meta_title_home`, `meta_keyword_home`, `meta_description_home`, `home_title_service`, `home_subtitle_service`, `home_status_service`, `home_title_department`, `home_subtitle_department`, `home_status_department`, `home_title_doctor`, `home_subtitle_doctor`, `home_status_doctor`, `home_title_pricing`, `home_subtitle_pricing`, `home_status_pricing`, `home_title_testimonial`, `home_subtitle_testimonial`, `home_status_testimonial`, `home_title_news`, `home_subtitle_news`, `home_status_news`, `home_title_partner`, `home_subtitle_partner`, `home_status_partner`, `color`) VALUES
(1, 'logo.png', 'favicon.png', '<p>Lorem ipsum dolor sit amet, omnis signiferumque in mei, mei ex enim concludaturque. Senserit salutandi euripidis no per, modus maiestatis scribentur est an.&nbsp;Ea suas pertinax has, solet officiis pericula cu pro, possit inermis qui ad. An mea tale perfecto sententiae, eos inani epicuri concludaturque ex.</p>\r\n', 'Copyright Â© 2017. All Rights Reserved.', 'ABC Steet, NewYork.', 'info@yourwebsite.com', '123-456-7878', '123-456-7890', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d387142.84040262736!2d-74.25819605476612!3d40.70583158628177!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew+York%2C+NY%2C+USA!5e0!3m2!1sen!2sbd!4v1485712851643" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'jbbr.1990@gmail.com', 'Visitor Email Message', 'Thank you for sending email. We will contact you shortly.', 3, 3, 4, 4, 7, 'Yourdoctor - Medical and Doctor Website CMS', 'doctor, department, health, fitness, medical, news, dental, neurologist, orthopedist, dental surgeon, medical equipment ', 'Yourdoctor is a nice and clean responsive cms on online medical and doctor management system.', 'Our Services', 'We Are Here to Provide You Awesome Service Always', 1, 'Our Departments', 'We have All Major Departments to Serve Patients', 1, 'Our Expert Doctors', 'Meet with All Our Qualified Doctors', 1, 'Pricing', 'We are Offering Special Discounts Now', 1, 'Testimonial', 'Our Happy Clients Tell About Us', 1, 'Latest News', 'See All Our Updated and Latest News', 1, 'Our Partners', 'All Our Company Partners are Listed Below', 1, '0E617D');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `heading` varchar(255) NOT NULL,
  `subheading` text NOT NULL,
  `content` varchar(255) NOT NULL,
  `button_text` varchar(255) NOT NULL,
  `button_url` varchar(255) NOT NULL,
  `position` varchar(20) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `photo`, `heading`, `subheading`, `content`, `button_text`, `button_url`, `position`, `status`) VALUES
(1, 'slider-1.jpg', 'Best Treatment', 'We provide best treatment in our area', 'Lorem ipsum dolor sit amet, ad vim indoctum maluisset. \r\nPosse philosophia id sed, qui ut saepe nonumes.', 'Read More', '#', 'Left', 'Active'),
(2, 'slider-2.jpg', 'HealthCare', 'Your reliable medical solution', 'Lorem ipsum dolor sit amet, ad vim indoctum maluisset. \r\nPosse philosophia id sed, qui ut saepe nonumes.', 'Read More', '#', 'Right', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `social_id` int(11) NOT NULL,
  `social_name` varchar(30) NOT NULL,
  `social_url` varchar(255) NOT NULL,
  `social_icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`social_id`, `social_name`, `social_url`, `social_icon`) VALUES
(1, 'Facebook', '#', 'fa fa-facebook'),
(2, 'Twitter', '#', 'fa fa-twitter'),
(3, 'LinkedIn', '#', 'fa fa-linkedin'),
(4, 'Google Plus', '#', 'fa fa-google-plus'),
(5, 'Pinterest', '#', 'fa fa-pinterest'),
(6, 'YouTube', '#', 'fa fa-youtube'),
(7, 'Instagram', '', 'fa fa-instagram'),
(8, 'Tumblr', '', 'fa fa-tumblr'),
(9, 'Flickr', '', 'fa fa-flickr'),
(10, 'Reddit', '', 'fa fa-reddit'),
(11, 'Snapchat', '', 'fa fa-snapchat'),
(12, 'WhatsApp', '', 'fa fa-whatsapp'),
(13, 'Quora', '', 'fa fa-quora'),
(14, 'StumbleUpon', '', 'fa fa-stumbleupon'),
(15, 'Delicious', '', 'fa fa-delicious'),
(16, 'Digg', '', 'fa fa-digg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subscriber`
--

CREATE TABLE `tbl_subscriber` (
  `subs_id` int(11) NOT NULL,
  `subs_email` varchar(255) NOT NULL,
  `subs_date` varchar(100) NOT NULL,
  `subs_date_time` varchar(100) NOT NULL,
  `subs_hash` varchar(255) NOT NULL,
  `subs_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subscriber`
--

INSERT INTO `tbl_subscriber` (`subs_id`, `subs_email`, `subs_date`, `subs_date_time`, `subs_hash`, `subs_active`) VALUES
(4, 'jbbr.1990@gmail.com', '2017-08-10', '2017-08-10 07:44:23', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimonial`
--

CREATE TABLE `tbl_testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_testimonial`
--

INSERT INTO `tbl_testimonial` (`id`, `name`, `designation`, `company`, `photo`, `comment`) VALUES
(1, 'John Doe', 'Managing Director', 'ABC Inc.', 'testimonial-1.jpg', 'Nice and awesome service always. I wish their good and best luck always.'),
(2, 'Asif Ikbal', 'CEO', 'Typhon Multimedia', 'testimonial-2.jpg', 'We worked with a lot of other service providers in previous years. But this organization is an exceptional one. Their services are really fantastic. ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `full_name`, `email`, `phone`, `password`, `photo`, `role`, `status`) VALUES
(1, 'John Doe', 'sadmin@gmail.com', '0177777777', '81dc9bdb52d04dc20036dbd8313ed055', 'user-1.jpg', 'Super Admin', 'Active'),
(13, 'Kakon Asif', 'admin@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', '', 'Admin', 'Active'),
(14, 'Sabbir Ahmed', 'publisher@gmail.com', '', '81dc9bdb52d04dc20036dbd8313ed055', '', 'Publisher', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `video_id` int(11) NOT NULL,
  `video_title` varchar(255) NOT NULL,
  `video_iframe` text NOT NULL,
  `v_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`video_id`, `video_title`, `video_iframe`, `v_category_id`) VALUES
(3, 'Video 1', '<iframe width="560" height="315" src="https://www.youtube.com/embed/RY2OEpAf5oY" frameborder="0" allowfullscreen></iframe>', 1),
(4, 'Video 2', '<iframe width="560" height="315" src="https://www.youtube.com/embed/F1CW0MjD1T0" frameborder="0" allowfullscreen></iframe>', 1),
(5, 'Video 3', '<iframe width="560" height="315" src="https://www.youtube.com/embed/LPF1MSkGgRM" frameborder="0" allowfullscreen></iframe>', 1),
(6, 'Video 4', '<iframe width="560" height="315" src="https://www.youtube.com/embed/RcmrbNRK-jY" frameborder="0" allowfullscreen></iframe>', 2),
(7, 'Video 5', '<iframe width="560" height="315" src="https://www.youtube.com/embed/ka-ZgwCXKho" frameborder="0" allowfullscreen></iframe>', 2),
(8, 'Video 6', '<iframe width="560" height="315" src="https://www.youtube.com/embed/fP582Ro62hQ" frameborder="0" allowfullscreen></iframe>', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_advertisement_category`
--
ALTER TABLE `tbl_advertisement_category`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `tbl_advertisement_home`
--
ALTER TABLE `tbl_advertisement_home`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `tbl_advertisement_sidebar`
--
ALTER TABLE `tbl_advertisement_sidebar`
  ADD PRIMARY KEY (`adv_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_category_photo`
--
ALTER TABLE `tbl_category_photo`
  ADD PRIMARY KEY (`p_category_id`);

--
-- Indexes for table `tbl_category_video`
--
ALTER TABLE `tbl_category_video`
  ADD PRIMARY KEY (`v_category_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`dep_id`);

--
-- Indexes for table `tbl_department_appointment`
--
ALTER TABLE `tbl_department_appointment`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `tbl_department_faq`
--
ALTER TABLE `tbl_department_faq`
  ADD PRIMARY KEY (`fq_id`);

--
-- Indexes for table `tbl_department_openning_hour`
--
ALTER TABLE `tbl_department_openning_hour`
  ADD PRIMARY KEY (`oh_id`);

--
-- Indexes for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  ADD PRIMARY KEY (`designation_id`);

--
-- Indexes for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `tbl_faq_category`
--
ALTER TABLE `tbl_faq_category`
  ADD PRIMARY KEY (`faq_category_id`);

--
-- Indexes for table `tbl_file`
--
ALTER TABLE `tbl_file`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_home_category`
--
ALTER TABLE `tbl_home_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `tbl_partner`
--
ALTER TABLE `tbl_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  ADD PRIMARY KEY (`photo_id`);

--
-- Indexes for table `tbl_pricing_item`
--
ALTER TABLE `tbl_pricing_item`
  ADD PRIMARY KEY (`pricing_item_id`);

--
-- Indexes for table `tbl_pricing_plan`
--
ALTER TABLE `tbl_pricing_plan`
  ADD PRIMARY KEY (`pricing_plan_id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`social_id`);

--
-- Indexes for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  ADD PRIMARY KEY (`subs_id`);

--
-- Indexes for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_advertisement_category`
--
ALTER TABLE `tbl_advertisement_category`
  MODIFY `adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_advertisement_home`
--
ALTER TABLE `tbl_advertisement_home`
  MODIFY `adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_advertisement_sidebar`
--
ALTER TABLE `tbl_advertisement_sidebar`
  MODIFY `adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_category_photo`
--
ALTER TABLE `tbl_category_photo`
  MODIFY `p_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_category_video`
--
ALTER TABLE `tbl_category_video`
  MODIFY `v_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `dep_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_department_appointment`
--
ALTER TABLE `tbl_department_appointment`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_department_faq`
--
ALTER TABLE `tbl_department_faq`
  MODIFY `fq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_department_openning_hour`
--
ALTER TABLE `tbl_department_openning_hour`
  MODIFY `oh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  MODIFY `designation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_doctor`
--
ALTER TABLE `tbl_doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_faq`
--
ALTER TABLE `tbl_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_faq_category`
--
ALTER TABLE `tbl_faq_category`
  MODIFY `faq_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_file`
--
ALTER TABLE `tbl_file`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_home_category`
--
ALTER TABLE `tbl_home_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_partner`
--
ALTER TABLE `tbl_partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_photo`
--
ALTER TABLE `tbl_photo`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tbl_pricing_item`
--
ALTER TABLE `tbl_pricing_item`
  MODIFY `pricing_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tbl_pricing_plan`
--
ALTER TABLE `tbl_pricing_plan`
  MODIFY `pricing_plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `social_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_subscriber`
--
ALTER TABLE `tbl_subscriber`
  MODIFY `subs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_testimonial`
--
ALTER TABLE `tbl_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2026 at 09:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(17, 'Dashboard'),
(18, 'Doctor Management'),
(19, 'Patient Management'),
(20, 'Appointment Management'),
(21, 'Pharmacy Management'),
(22, 'Room / Bed Management'),
(23, 'Billing & Accounts');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'Nabhan');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<h2 data-start=\"137\" data-end=\"188\">Welcome to MediCare Hospital Management System</h2>\r\n<p data-start=\"190\" data-end=\"431\">MediCare Hospital Management System (HMS) is a smart and efficient digital solution designed to simplify hospital and clinic operations. Our system aims to improve healthcare management by integrating modern technology with medical services.</p>\r\n<p data-start=\"433\" data-end=\"743\">We understand that hospitals handle a large amount of patient data, appointments, billing, and medical records every day. Managing all of this manually can be time-consuming and error-prone. That&rsquo;s why MediCare HMS provides a secure, reliable, and user-friendly platform to manage hospital activities smoothly.</p>\r\n<p>\"</p>'),
(2, 'Privacy', '<p data-start=\"181\" data-end=\"369\">MediCare Hospital Management System (HMS) collects necessary information such as patient details, medical records, appointments, and billing data to manage hospital operations efficiently.</p>\r\n<p data-start=\"371\" data-end=\"381\">We ensure:</p>\r\n<ul data-start=\"382\" data-end=\"478\">\r\n<li data-start=\"382\" data-end=\"405\">\r\n<p data-start=\"384\" data-end=\"405\">Secure data storage</p>\r\n</li>\r\n<li data-start=\"406\" data-end=\"435\">\r\n<p data-start=\"408\" data-end=\"435\">Role-based access control</p>\r\n</li>\r\n<li data-start=\"436\" data-end=\"478\">\r\n<p data-start=\"438\" data-end=\"478\">No selling or sharing of personal data</p>\r\n</li>\r\n</ul>\r\n<p data-start=\"480\" data-end=\"575\">Users can request access, correction, or deletion of their information where legally permitted.</p>\r\n<p data-start=\"577\" data-end=\"618\">We may update this policy when necessary.</p>'),
(3, 'DMCA', '<p data-start=\"699\" data-end=\"842\">MediCare HMS respects copyright laws. If you believe any content on our website violates your copyright, please contact us with proper details.</p>\r\n<p data-start=\"844\" data-end=\"936\">Upon receiving a valid complaint, we will review and remove infringing content if necessary.</p>\r\n<p data-start=\"938\" data-end=\"976\">False claims may lead to legal action.</p>\r\n<p data-start=\"978\" data-end=\"1016\"><strong data-start=\"978\" data-end=\"990\">Contact:</strong> <a class=\"decorated-link cursor-pointer\" rel=\"noopener\" data-start=\"991\" data-end=\"1014\">support@medicarehms.com</a></p>'),
(5, 'Advanced Hospital Reports & Analytics', '<p data-start=\"250\" data-end=\"471\">The Reports and Analytics page provides detailed insights into hospital operations. This module helps administrators analyze patient flow, doctor performance, appointment trends, financial summaries, and medicine usage.</p>\r\n<p data-start=\"473\" data-end=\"598\">With real-time data visualization and automated report generation, hospital management can make faster and smarter decisions.</p>\r\n<hr data-start=\"600\" data-end=\"603\" />\r\n<h2 data-start=\"605\" data-end=\"624\">? Key Features:</h2>\r\n<p data-start=\"626\" data-end=\"845\">1. Daily, Weekly &amp; Monthly Patient Reports<br data-start=\"667\" data-end=\"670\" />2. Doctor Performance Reports<br data-start=\"698\" data-end=\"701\" />3. Appointment Statistics<br data-start=\"725\" data-end=\"728\" />4. Revenue &amp; Expense Summary<br data-start=\"755\" data-end=\"758\" />5. Pharmacy Stock Reports<br data-start=\"782\" data-end=\"785\" />6. Bed Occupancy Reports<br data-start=\"808\" data-end=\"811\" />7. Downloadable PDF/Excel Reports</p>\r\n<hr data-start=\"847\" data-end=\"850\" />\r\n<h2 data-start=\"852\" data-end=\"885\">Why This Page Is Important:</h2>\r\n<p data-start=\"887\" data-end=\"1095\">Accurate reporting improves planning, resource allocation, and overall efficiency. By analyzing data trends, hospitals can reduce waiting times, improve service quality, and increase operational transparency.</p>\r\n<hr data-start=\"1097\" data-end=\"1100\" />\r\n<h2 data-start=\"1102\" data-end=\"1126\">Secure &amp; Reliable:</h2>\r\n<p data-start=\"1128\" data-end=\"1241\">All reports are accessible only to authorized users through role-based login to ensure data privacy and security.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `tittle`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(24, 17, 'Smart Healthcare Dashboard Overview', '<p>The Dashboard provides a complete overview of hospital activities in real-time. It displays total patients, doctors, appointments, available beds, and recent transactions. This centralized panel helps administrators monitor operations efficiently and make informed decisions quickly.</p>', 'upload/73906a4eec.jpeg', 'admin', 'Hospital Dashboard, Admin Panel, Healthcare Analytics, HMS Overview, Medical System Dashboard', '2026-02-21 18:45:46', 5),
(25, 18, 'Efficient Doctor Profile & Schedule Management', '<p>The Doctor Management module allows administrators to add, update, and manage doctor profiles, specializations, and schedules. It ensures proper doctor availability tracking and improves coordination between departments.</p>', 'upload/1a97421a04.jpeg', 'admin', 'Doctor Management, Medical Staff System, Doctor Scheduling, Healthcare Administration, Hospital Doctors', '2026-02-21 18:51:41', 5),
(26, 19, 'Digital Patient Record & Information System', '<p>The Patient Management module securely stores patient details, medical history, diagnosis records, and treatment information. It reduces paperwork and ensures fast access to patient data when needed.</p>', 'upload/eac597144e.jpeg', 'admin', 'Patient Management, Medical Records, Electronic Health Records, Hospital Database, Patient Information System', '2026-02-21 18:52:16', 5),
(27, 20, 'Smart Appointment Scheduling System', '<p>The Appointment Management module simplifies booking, rescheduling, and tracking of appointments. It helps avoid scheduling conflicts and ensures smooth communication between patients and doctors.</p>', 'upload/3e9cc1ff1b.jpeg', 'admin', 'Appointment System, Online Booking, Hospital Scheduling, Clinic Management, Healthcare Appointments', '2026-02-21 18:53:22', 5),
(28, 21, 'Pharmacy & Medicine Inventory Control', '<p>This module manages medicine stock, tracks inventory levels, and handles pharmacy billing. It ensures proper medicine distribution and prevents stock shortages or overstocking.</p>', 'upload/dc94edc755.jpeg', 'admin', 'Pharmacy Management, Medicine Inventory, Drug Management System, Healthcare Pharmacy, Hospital Stock System', '2026-02-21 18:53:59', 5),
(29, 22, 'Hospital Room & Bed Allocation System', '<p>The Room and Bed Management module monitors bed availability and manages room allocation for admitted patients. It helps hospitals efficiently manage wards and patient accommodation.</p>', 'upload/b30af70401.jpeg', 'admin', 'Bed Management, Room Allocation, Hospital Ward System, Patient Admission, Healthcare Facility Management', '2026-02-21 18:54:36', 5),
(30, 23, 'Automated Billing & Financial Management', '<p>The Billing &amp; Accounts module generates invoices, tracks payments, and manages hospital financial records. It ensures accurate billing and improves financial transparency within the organization.</p>', 'upload/fdc0dc266d.jpeg', 'admin', 'Hospital Billing, Medical Invoice System, Healthcare Finance, Payment Management, HMS Accounts', '2026-02-21 18:55:11', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(10, 'sllide1', 'upload/slider/fc0f7431d4.jpg'),
(11, 'slide2', 'upload/slider/be041dad09.jpg'),
(12, 'slide3', 'upload/slider/09a4d5e291.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'http://facebook.com/nabhan.it', 'http://twitter.com', 'http://linkedin.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(5, 'Nabhan', 'admin', '202cb962ac59075b964b07152d234b70', 'nabhanabdullah@gmail.com', '<p>Hello! I am Nabhan Abdullah</p>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'MediCare HMS', 'Smart Healthcare, Simplified Management.', 'upload/logo.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

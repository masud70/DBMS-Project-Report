-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2022 at 02:12 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cudatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`attendance_id`, `class_id`, `student_id`, `status`) VALUES
(1, 1, 19701070, 1),
(2, 1, 19701066, 1),
(3, 2, 19701070, 1),
(4, 2, 19701071, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `start` datetime NOT NULL DEFAULT current_timestamp(),
  `end` datetime DEFAULT current_timestamp(),
  `class_code` varchar(5) NOT NULL,
  `isActive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `course_id`, `teacher_id`, `start`, `end`, `class_code`, `isActive`) VALUES
(1, 1401, 152001, '2021-12-19 17:37:09', '2021-12-31 04:14:50', '1234', 0),
(2, 1401, 152001, '2021-12-19 17:37:09', '2021-12-31 04:14:50', '2345', 0),
(3, 1101, 152001, '2022-01-01 06:57:47', '2022-01-01 06:57:47', '78901', 1);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `course_code` text NOT NULL,
  `course_credit` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `image` text NOT NULL DEFAULT 'https://cutt.ly/IUID6G8'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_code`, `course_credit`, `semester_id`, `image`) VALUES
(1101, 'C Programming', 'CSE-101', 2, 1001, 'https://cutt.ly/IUID6G8'),
(1102, 'Statistics', 'STA-101', 4, 1001, 'https://cutt.ly/IUID6G8'),
(1401, 'Database Management System', 'CSE-401', 4, 1004, 'https://cutt.ly/IUID6G8'),
(1402, 'Microprocessor', 'CSE-401', 4, 1004, 'https://cutt.ly/IUID6G8'),
(1403, 'Data Structure', 'CSE-311', 3, 1003, 'https://cutt.ly/IUID6G8'),
(1404, 'Algorithm Design', 'CSE-412', 4, 1004, 'https://cutt.ly/IUID6G8');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `department_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `faculty_id`, `department_name`) VALUES
(101, 1, 'Computer Science & Engineering'),
(102, 1, 'Electrical and Electronics Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `faculty_id` int(11) NOT NULL,
  `faculty_name` text NOT NULL,
  `dean_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`faculty_id`, `faculty_name`, `dean_id`) VALUES
(1, 'Faculty of Engineering', 0),
(2, 'Science Faculty', 0),
(3, 'Biology Faculty', 0);

-- --------------------------------------------------------

--
-- Table structure for table `instruct`
--

CREATE TABLE `instruct` (
  `teacher_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `instruct`
--

INSERT INTO `instruct` (`teacher_id`, `course_id`) VALUES
(19280, 1101),
(19280, 1102),
(19280, 1401),
(19280, 1402);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `purpose_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `due_date` datetime NOT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0,
  `payment_date` datetime NOT NULL,
  `payment_method` text NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `purpose_id`, `student_id`, `due_date`, `payment_status`, `payment_date`, `payment_method`, `updated_at`) VALUES
(5, 25, 19701070, '2021-12-21 00:00:00', 0, '0000-00-00 00:00:00', '', '2021-12-21 03:16:20'),
(7, 26, 19701070, '2021-12-21 00:00:00', 0, '0000-00-00 00:00:00', '', '2021-12-21 03:18:33'),
(9, 27, 19701070, '2021-12-21 00:00:00', 0, '0000-00-00 00:00:00', '', '2021-12-21 03:19:15'),
(11, 28, 19701070, '2021-12-21 00:00:00', 0, '0000-00-00 00:00:00', '', '2021-12-21 03:20:21');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `details_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `details` text NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`details_id`, `payment_id`, `details`, `amount`) VALUES
(7, 5, 'Tuition Fee', 2000),
(8, 5, 'Semester Fee', 1000),
(11, 7, 'Tuition Fee', 2000),
(12, 7, 'Semester Fee', 1000),
(15, 9, 'Tuition Fee', 2000),
(16, 9, 'Semester Fee', 1000),
(19, 11, 'Tuition Fee', 2000),
(20, 11, 'Semester Fee', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `payment_purpose`
--

CREATE TABLE `payment_purpose` (
  `purpose_id` int(11) NOT NULL,
  `purpose_title` text NOT NULL,
  `department_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment_purpose`
--

INSERT INTO `payment_purpose` (`purpose_id`, `purpose_title`, `department_id`, `created_by`, `created_at`) VALUES
(15, 'Test Payment', 101, 1, '0000-00-00 00:00:00'),
(16, 'Test Payment', 101, 1, '0000-00-00 00:00:00'),
(17, 'Test Payment', 101, 1, '0000-00-00 00:00:00'),
(25, 'Test Payment', 101, 1, '2021-12-20 00:00:00'),
(26, 'Test Payment', 101, 1, '2021-12-20 00:00:00'),
(27, 'Test Payment', 101, 1, '2021-12-20 00:00:00'),
(28, 'Test Payment', 101, 1, '2021-12-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `semester_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `semester_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`semester_id`, `department_id`, `semester_name`) VALUES
(1001, 101, '1st Semester'),
(1002, 101, '2nd Semester'),
(1003, 101, '3rd Semester'),
(1004, 101, '4th Semester');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `session` text NOT NULL,
  `alloted_hall` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `user_id`, `semester_id`, `session`, `alloted_hall`) VALUES
(19701066, 3, 1004, '2018-19', 'Rab Hall'),
(19701070, 1, 1004, '2018-19', 'Abdur Rab Hall'),
(19701071, 20, 1002, '2018-19', 'Rab Hall');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rank` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `user_id`, `rank`) VALUES
(19280, 1, 'Professor'),
(152001, 2, 'Professor'),
(152002, 19, 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `name_bangla` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `dob` text NOT NULL,
  `image` text NOT NULL,
  `religion` text NOT NULL,
  `gender` text NOT NULL,
  `father` text NOT NULL,
  `mother` text NOT NULL,
  `nationality` text NOT NULL,
  `present_address` text NOT NULL,
  `permanent_address` text NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `marital_status` text NOT NULL,
  `password` text NOT NULL,
  `department_id` int(11) NOT NULL,
  `status` text NOT NULL,
  `role` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `name_bangla`, `email`, `phone`, `dob`, `image`, `religion`, `gender`, `father`, `mother`, `nationality`, `present_address`, `permanent_address`, `blood_group`, `marital_status`, `password`, `department_id`, `status`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Md. Masud Mazumder', 'মোঃ মাসুদ মজুমদার', 'mdmasud.csecu@gmail.com', '01710089091', '21/10/1999', 'https://scontent.fspd5-1.fna.fbcdn.net/v/t1.6435-9/127815800_2787654611488565_2612494760625448124_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=e3f864&_nc_eui2=AeGvcAGQR7VwZxzkrMpvQyjt2JdHWpMnTIfYl0dakydMh_IE8O1a8mSPj3SkiB96NxBAc0vGFDq7ECyOfgN0_A_V&_nc_ohc=8NQiXWjgTMgAX_sADMj&tn=aj-JXwDGWWZnhErw&_nc_ht=scontent.fspd5-1.fna&oh=00_AT8ZmkiW34PIKVGlX-vFMmrc_H5ZhuhswMJhaf-ILhGSZA&oe=61E564C1', 'Islam', 'Male', 'Rashid Mazumder', 'Rowshanara Begum', 'Bangladeshi', 'Chittagong', 'Barishal', 'B+', 'Unmarried', '$2b$10$6yTC4JDLH4QHdHEFxo3XTOFskM9N0KJeUVzVjxNA8O/DXBAMEnWKm', 101, 'active', 'student', '2021-12-19 22:19:58', '2021-12-19 22:19:58'),
(2, 'Rudra Pratap Deb Nath', 'রুদ্র প্রতাপ দেব নাথ', 'rudra@cu.ac.bd', '01710082376', '12/07/1988', 'https://scontent.fspd5-1.fna.fbcdn.net/v/t39.30808-6/s600x600/217043971_10159526093509533_264382223545819124_n.jpg?_nc_cat=110&ccb=1-5&_nc_sid=174925&_nc_eui2=AeHhb0Q5CONdjb2ivb163ts8u02Rsb71lRm7TZGxvvWVGUgs_pKhItors19rGgTbkedlQSCb0Mu7J37MMdpjggs9&_nc_ohc=tkhji3NkzzAAX_ATJx8&_nc_ht=scontent.fspd5-1.fna&oh=00_AT_b1wg9H0Af60Tj9y1KZj-GjeeR_cfJ3IwUWUv9rUuZpw&oe=61C3D816', 'Hindu', 'Male', 'Unknown', 'Unknown', 'Bangladeshi', 'Chittagong', 'Chittagong', 'O+', 'Married', 'password', 101, 'active', 'admin', '2021-12-19 22:19:58', '2021-12-19 22:19:58'),
(3, 'Tonmoy Das', 'Tonmoy Das', 'tcdas@gmail.com', '01737665164', '21/10/2000', '', '', 'Male', '', '', '', '', '', '', '', '$2b$10$BPCK6KIUZgiIfB.4L670zubpAMjNYYbLmRKvZfItrLilnB0kpQ6rG', 101, '1', 'student', '2021-12-20 02:47:49', '2021-12-20 02:47:49'),
(19, 'Fahim Irfan Alam', 'Fahim Irfan Alam', 'fahim@cu.ac.bd', '01737665164', '21/10/1988', '', '', 'Male', '', '', '', '', '', '', '', '$2b$10$Hn5or.8iPz7cg0iNoRpC6.Ipfk/ie7qsp2HxR4woSYZoRfZMTr5yK', 101, '1', 'teacher', '2021-12-20 14:56:43', '2021-12-20 14:56:43'),
(20, 'Likhon Khan', 'লিখন খান', 'likhon@gmail.com', '01712345678', '21/10/2001', 'https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-High-Quality-Image.png', 'Islam', 'Male', 'Mr. XYZ', 'Mrs. XYZ', 'Bangladeshi', 'Chittagong', 'Faridpur', '', 'Unmarried', 'password', 101, 'active', 'student', '2021-12-31 22:39:52', '2021-12-31 22:39:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`attendance_id`),
  ADD KEY `attendancelist_id` (`class_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `semester_id` (`semester_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`),
  ADD KEY `faculty_id` (`faculty_id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`faculty_id`),
  ADD KEY `faculty_ibfk_1` (`dean_id`);

--
-- Indexes for table `instruct`
--
ALTER TABLE `instruct`
  ADD PRIMARY KEY (`teacher_id`,`course_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `purpose_id` (`purpose_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`details_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `payment_purpose`
--
ALTER TABLE `payment_purpose`
  ADD PRIMARY KEY (`purpose_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `payment_purpose_ibfk_2` (`created_by`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_id`),
  ADD KEY `semester_ibfk_1` (`department_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `semester_id` (`semester_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `department_id` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1405;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `faculty_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `payment_purpose`
--
ALTER TABLE `payment_purpose`
  MODIFY `purpose_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `semester_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1005;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19701072;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152003;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `class_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `faculty` (`faculty_id`) ON UPDATE CASCADE;

--
-- Constraints for table `instruct`
--
ALTER TABLE `instruct`
  ADD CONSTRAINT `instruct_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`teacher_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `instruct_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`purpose_id`) REFERENCES `payment_purpose` (`purpose_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `payment_details_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `payment_purpose`
--
ALTER TABLE `payment_purpose`
  ADD CONSTRAINT `payment_purpose_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `payment_purpose_ibfk_2` FOREIGN KEY (`created_by`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `semester`
--
ALTER TABLE `semester`
  ADD CONSTRAINT `semester_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`semester_id`) REFERENCES `semester` (`semester_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

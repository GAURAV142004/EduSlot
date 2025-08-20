-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2024 at 08:29 AM
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
-- Database: `ttms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `password`) VALUES
('admin', 'pass123');

-- --------------------------------------------------------

--
-- Table structure for table `classrooms`
--

CREATE TABLE `classrooms` (
  `name` varchar(30) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `classrooms`
--

INSERT INTO `classrooms` (`name`, `status`) VALUES
('Comp 208', 4),
('Comp 209', 3),
('Comp 210', 2),
('Comp 205', 1);

-- --------------------------------------------------------

--
-- Table structure for table `semester3`
--

CREATE TABLE `semester3` (
  `day` VARCHAR(10) NOT NULL,
  `period1` VARCHAR(30) NOT NULL,
  `period2` VARCHAR(30) NOT NULL,
  `period3` VARCHAR(30) NOT NULL,
  `period4` VARCHAR(30) NOT NULL,
  `period5` VARCHAR(30) NOT NULL,
  `period6` VARCHAR(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `semester3`

INSERT INTO `semester3` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'CAO<br>MK', 'OOP<br>KP', 'MOOKS<br>UM', 'MOOKS<br>UM', 'DS<br>KA', 'EM-III<br>PG'),
('tuesday', 'OOP<br>KA', 'CAO<br>MK', 'DSL<br>KA', 'DSL<br>KA', 'DM<br>UM', 'DS<br>KA'),
('wednesday', 'CAO<br>MK', 'EM-III<br>PG', 'OOPL<br>KP', 'OOPL<br>KP', 'DS<br>KA', 'DM<br>UM'),
('thursday', 'CAO<br>MK', 'DS<br>KA', 'OOP<br>KP', 'DM<br>UM', 'EM-III<br>PG', 'MERC<br>BN'),
('friday', 'JAVA<br>AP', 'JAVA<br>AP', 'EM-III<br>PG', 'DM<br>UM', 'OOP<br>KP', 'SEM<br>BN'),
('saturday', 'EM-III<br>PG', 'CAO<br>MK', 'DS<br>KA', 'DM<br>UM', 'OOP<br>KP', 'SEM<br>BN');


-- --------------------------------------------------------

--
-- Table structure for table `semester5`
--

CREATE TABLE `semester5` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester5`
--

INSERT INTO `semester5` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'SE<br>VB', 'TOC<br>KA', 'DBS<br>BN', 'NM<br>PG', 'MOOKS<br>UM', 'MOOKS<br>UM,-,-'),
('tuesday', 'TOC<br>KA', 'E&M<br>RS', 'DBS<br>BN', 'SE<br>VB', 'SE<br>VB', 'SE<br>VB,-,-'),
('wednesday', 'SE<br>VB', 'TOC<br>KA', 'DBS<br>BN', 'E&M<br>RS', 'DSL<br>AA', 'DSL<br>AA,-,- '),
('thursday', 'DBS<br>BN', 'DBS<br>BN', 'NM<br>PG', 'TOC<br>KA', 'DBS<br>BN', 'DBS<br>BN,-,-'),
('friday', 'SE<br>VB', 'E&M<br>RS', 'NM<br>PG', 'ITR<br>BC', 'MP-1<br>UM', 'MP-1<br>UM,-,-'),
('saturday', 'SE<br>VB', 'TOC<br>KA', 'DBS<br>BN', 'ITR<br>BC', 'T&P<br>VB', 'T&P<br>VB,-,-');

-- --------------------------------------------------------

--
-- Table structure for table `semester7`
--

CREATE TABLE `semester7` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) NOT NULL,
  `period2` varchar(30) NOT NULL,
  `period3` varchar(30) NOT NULL,
  `period4` varchar(30) NOT NULL,
  `period5` varchar(30) NOT NULL,
  `period6` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester7`
--

INSERT INTO `semester7` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('monday', 'CO445<br>MHK', 'CO431<br>RA', 'CO460<br>TA', '-<br>-', '-<br>-', 'CO494<br>IZ,'),
('tuesday', 'CO451<br>AMA', 'CO448<br>NA', 'CO406<br>AMA', 'CO445<br>MHK', '-<br>-', 'CO493<br>NA, '),
('wednesday', 'CO431<br>RA', 'CO460<br>TA', 'CO445<br>MHK', 'CO451<br>AMA', 'CO448<br>NA', 'CO494<br>IZ,'),
('thursday', 'CO406<br>AMA', 'CO451<br>AMA', 'CO448<br>NA', 'CO431<br>RA', 'CO460<br>TA', 'CO493<br>NA, '),
('friday', 'CO445<br>MHK', 'CO431<br>RA', 'CO460<br>TA', 'CO406<br>AMA', '-<br>-', '-<br>-, -, -'),
('saturday', 'CO451<br>AMA', 'CO448<br>NA', 'CO406<br>AMA', '-<br>-', '-<br>-', '-<br>-,');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `subject_code` VARCHAR(10) NOT NULL,
  `subject_name` VARCHAR(50) NOT NULL,
  `course_type` VARCHAR(15) NOT NULL,
  `semester` INT(1) NOT NULL,
  `department` VARCHAR(50) NOT NULL,
  `isAlloted` INT(1) NOT NULL,
  `allotedto` TEXT NOT NULL,
  `allotedto2` TEXT NOT NULL,
  `allotedto3` TEXT NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `subjects`

INSERT INTO `subjects` (`subject_code`, `subject_name`, `course_type`, `semester`, `department`, `isAlloted`, `allotedto`, `allotedto2`, `allotedto3`) VALUES
('BTCOC501', 'Database Systems', 'THEORY', 5, 'Computer Engg.', 1, 'T004', '', ''),
('BTCOC502', 'Theory of Computation', 'THEORY', 5, 'Computer Engg.', 1, 'T002', '', ''),
('BTCOC503', 'Software Engineering', 'THEORY', 5, 'Computer Engg.', 1, 'T007', '', ''),
('BTCOC504', 'Numerical Methods', 'THEORY', 5, 'Computer Engg.', 1, 'T011', '', ''),
('BTCOC505', 'Economics and Management', 'THEORY', 5, 'Computer Engg.', 1, 'T008', '', ''),
('BTCOC506', 'Database Systems Lab', 'LAB', 5, 'Computer Engg.', 0, '', '', ''),
('BTCOC507', 'Software Engineering Lab', 'LAB', 5, 'Computer Engg.', 0, '', '', ''),
('BTCOC508', 'Mini Project', 'LAB', 5, 'Computer Engg.', 0, '', '', ''),
('BTCOC301', 'Engineering Mathematics-III', 'THEORY', 3, 'Computer Engg.', 1, '', '', ''),
('BTCOC302', 'Computer Architecture', 'THEORY', 3, 'Computer Engg.', 1, '', '', ''),
('BTCOC303', 'Data Structures', 'THEORY', 3, 'Computer Engg.', 1, '', '', ''),
('BTCOC304', 'Discrete Mathematics', 'THEORY', 3, 'Computer Engg.', 1, '', '', ''),
('BTCOC305', 'OOP(C++)', 'THEORY', 3, 'Computer Engg.', 0, '', '', ''),
('BTCOC306', 'Data Structures Lab', 'LAB', 3, 'Computer Engg.', 1, '', '', ''),
('BTCOC307', 'OOP(C++) Lab', 'LAB', 3, 'Computer Engg.', 0, '', '', ''),
('BTCOC308', 'JAVA', 'LAB', 3, 'Computer Engg.', 0, '', '', ''),
('BTCOC309', 'MOOKS', 'LAB', 3, 'Computer Engg.', 0, '', '', ''),
('BTCOC310', 'SEMINAR', 'THEORY', 3, 'Computer Engg.', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t001`
--

CREATE TABLE `t001` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t001`
--

INSERT INTO `t001` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '', '', '', '', '', ''),
('monday', '', '', '', '', '', ''),
('saturday', '', '', '', '', '', ''),
('thursday', '', '', '', '', '', ''),
('tuesday', '', '', '', '', '', ''),
('wednesday', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t002`
--

CREATE TABLE `t002` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t002`
--

INSERT INTO `t002` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '', '', '', '', '', ''),
('monday', '', '', '', '', '', ''),
('saturday', '', '', '', '', '', ''),
('thursday', '', '', '', '', '', ''),
('tuesday', '', '', '', '', '', ''),
('wednesday', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t003`
--

CREATE TABLE `t003` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t003`
--

INSERT INTO `t003` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '', '', '', '', '', ''),
('monday', '', '', '', '', '', ''),
('saturday', '', '', '', '', '', ''),
('thursday', '', '', '', '', '', ''),
('tuesday', '', '', '', '', '', ''),
('wednesday', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t004`
--

CREATE TABLE `t004` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t004`
--

INSERT INTO `t004` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '', '', '', '', '', ''),
('monday', '', '', '', '', '', ''),
('saturday', '', '', '', '', '', ''),
('thursday', '', '', '', '', '', ''),
('tuesday', '', '', '', '', '', ''),
('wednesday', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t005`
--

CREATE TABLE `t005` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t005`
--

INSERT INTO `t005` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '', '', '', '', '', ''),
('monday', '', '', '', '', '', ''),
('saturday', '', '', '', '', '', ''),
('thursday', '', '', '', '', '', ''),
('tuesday', '', '', '', '', '', ''),
('wednesday', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t006`
--

CREATE TABLE `t006` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t006`
--

INSERT INTO `t006` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '', '', '', '', '', ''),
('monday', '', '', '', '', '', ''),
('saturday', '', '', '', '', '', ''),
('thursday', '', '', '', '', '', ''),
('tuesday', '', '', '', '', '', ''),
('wednesday', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t007`
--

CREATE TABLE `t007` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t007`
--

INSERT INTO `t007` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '', '', '', '', '', ''),
('monday', '', '', '', '', '', ''),
('saturday', '', '', '', '', '', ''),
('thursday', '', '', '', '', '', ''),
('tuesday', '', '', '', '', '', ''),
('wednesday', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t008`
--

CREATE TABLE `t008` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t008`
--

INSERT INTO `t008` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '', '', '', '', '', ''),
('monday', '', '', '', '', '', ''),
('saturday', '', '', '', '', '', ''),
('thursday', '', '', '', '', '', ''),
('tuesday', '', '', '', '', '', ''),
('wednesday', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t009`
--

CREATE TABLE `t009` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t009`
--

INSERT INTO `t009` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '', '', '', '', '', ''),
('monday', '', '', '', '', '', ''),
('saturday', '', '', '', '', '', ''),
('thursday', '', '', '', '', '', ''),
('tuesday', '', '', '', '', '', ''),
('wednesday', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t010`
--

CREATE TABLE `t010` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t010`
--

INSERT INTO `t010` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '', '', '', '', '', ''),
('monday', '', '', '', '', '', ''),
('saturday', '', '', '', '', '', ''),
('thursday', '', '', '', '', '', ''),
('tuesday', '', '', '', '', '', ''),
('wednesday', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t011`
--

CREATE TABLE `t011` (
  `day` varchar(10) NOT NULL,
  `period1` varchar(30) DEFAULT NULL,
  `period2` varchar(30) DEFAULT NULL,
  `period3` varchar(30) DEFAULT NULL,
  `period4` varchar(30) DEFAULT NULL,
  `period5` varchar(30) DEFAULT NULL,
  `period6` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `t011`
--

INSERT INTO `t011` (`day`, `period1`, `period2`, `period3`, `period4`, `period5`, `period6`) VALUES
('friday', '', '', '', '', '', ''),
('monday', '', '', '', '', '', ''),
('saturday', '', '', '', '', '', ''),
('thursday', '', '', '', '', '', ''),
('tuesday', '', '', '', '', '', ''),
('wednesday', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `faculty_number` VARCHAR(10) NOT NULL,
  `name` TEXT NOT NULL,
  `alias` VARCHAR(10) NOT NULL,
  `designation` VARCHAR(30) NOT NULL,
  `contact_number` VARCHAR(15) NOT NULL,
  `emailid` VARCHAR(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table `teachers`
INSERT INTO `teachers` (`faculty_number`, `name`, `alias`, `designation`, `contact_number`, `emailid`) VALUES
('T004', 'Bhushan Nandwalkar', 'BN', 'Assistant Professor', '8574964152', 'bhushannandwalkar123@gmail.com'),
('T010', 'Kiran Somavanshi', 'KS', 'Assistant Professor', '9674258596', 'kiransomawanshi123@gmail.com'),
('T011', 'Prashant Gawde', 'PG', 'Professor', '8576947585', 'prashantgawde123@gmail.com'),
('T009', 'Aamirkhan Pinjari', 'AP', 'Professor', '7485962536', 'aamirpinjari123@gmail.com'),
('T008', 'Rinku Sharma', 'RS', 'Assistant Professor', '9636147585', 'rinkusharma123@gmail.com'),
('T007', 'Vijayalaxmi Bittal', 'VB', 'Assistant Professor', '8596741425', 'vijayalaxmibittal123@gmail.com'),
('T005', 'Umakant Mandavkar', 'UM', 'Assistant Professor', '8596478514', 'umakantmandavkar@gmail.com'),
('T006', 'Mayuri Kulkarni', 'MK', 'Assistant Professor', '8596741425', 'mayurikulkarni123@gmail.com'),
('T003', 'Ashish Awate', 'AA', 'Assistant Professor', '7485964152', 'ashishawate123@gmail.com'),
('T001', 'Makarand Shahade', 'MS', 'Professor', '9582362514', 'makarandshahade123@gmail.com'),
('T002', 'Khalid Alfatmi', 'KA', 'Assistant Professor', '9685741425', 'khalidalfatmi123@gmail.com'),
('T012', 'Kavita Patil', 'KP', 'Assistant Professor', '968791425', 'kavitapatil123@gmail.com');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `semester3`
--
ALTER TABLE `semester3`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester5`
--
ALTER TABLE `semester5`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `semester7`
--
ALTER TABLE `semester7`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `t001`
--
ALTER TABLE `t001`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t002`
--
ALTER TABLE `t002`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t003`
--
ALTER TABLE `t003`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t004`
--
ALTER TABLE `t004`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t005`
--
ALTER TABLE `t005`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t006`
--
ALTER TABLE `t006`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t007`
--
ALTER TABLE `t007`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t008`
--
ALTER TABLE `t008`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t009`
--
ALTER TABLE `t009`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t010`
--
ALTER TABLE `t010`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `t011`
--
ALTER TABLE `t011`
  ADD PRIMARY KEY (`day`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`faculty_number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

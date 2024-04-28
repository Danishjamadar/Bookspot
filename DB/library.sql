-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 10:08 AM
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
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Muzaffar Khan', 'admin@gmail.com', 'admin', 'ec1dcfa426a92bdfc1c7bd9befd3a595', '2024-04-18 06:31:08');

-- --------------------------------------------------------

--
-- Table structure for table `overdue`
--

CREATE TABLE `overdue` (
  `StudentID` varchar(11) NOT NULL,
  `StudentName` varchar(40) NOT NULL,
  `MobNumber` varchar(11) NOT NULL,
  `Fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`) VALUES
(1, 'PEARSON EDUCATION'),
(2, 'PHI'),
(3, 'CENAGE LEARNING'),
(4, 'KATARIA AND SONS'),
(5, 'TECHMAX PUBLICATION'),
(6, 'OXFORD'),
(7, 'MCGRAW HILL EDUCATION'),
(8, 'WILEY'),
(9, 'C. JAMANADAS AND COMPANY'),
(10, 'UNIVERSITY PRESS'),
(11, 'S.CHAND'),
(12, 'MEDIA PRAMOTERS AND PUBLICATIONS PVT.LTD.'),
(13, 'DHANPATRAI & SONS'),
(14, 'TATA MCGRAW HILL'),
(15, 'NEW AGE'),
(16, 'NANDU PUBLICATION'),
(17, 'BPB'),
(18, 'NIRALI PUBLICATIONS'),
(19, 'VIPUL PUBLICATION'),
(20, 'VIKAS PUBLISHING CO.'),
(21, 'OXFORD HIGHER EDUCATION'),
(22, 'TECH EASY PUBLICATION'),
(23, 'TECHNICAL PUBLICATIONS'),
(24, 'Not Specified'),
(25, 'TECH EASY PUBLICATION'),
(26, 'DHANPAT RAI AND COMPANY'),
(27, 'UNIVERSITY SCIENCE PRESS');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `Copies` int(3) NOT NULL,
  `IssuedCopies` int(3) NOT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `Copies`, `IssuedCopies`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`) VALUES
(1, 'E-COMMERCE BUSINESS TECHNOLOGY SOCIETY', 10, 0, 1, 1, 1, 'KENNETH C. LAUDAN,CAROL GUERCIO TRAVER'),
(2, 'INTRODUCTION TO ALGORITHMS', 10, 0, 2, 2, 2, 'KENNETH C. LAUDAN,CAROL GUERCIO TRAVER'),
(3, 'FUNDAMENTALS OF ROBOTICS,ANALYSIS AND CONTROL', 10, 0, 3, 2, 3, 'ROBERT J.SCHILLING'),
(4, 'WEB DESIGN PRINCIPLES', 10, 0, 4, 3, 4, 'JOEL SKLOR'),
(5, 'COMPUTER PROGRAMMING-I', 10, 0, 5, 1, 5, 'DEEPAK H. SHARMA'),
(6, 'OPERATING SYSTEMS\nINTERNALS AND DESIGN PRINCIPLES', 10, 0, 6, 1, 6, 'WILLIAM STALLING'),
(7, 'ELECTRONICS COMMUNICATIONS SYSTEMS,FUNDAMENTAL THROUGH ADVANCED', 10, 0, 4, 1, 7, 'WAYNE TOMES'),
(8, 'SOPFTWARE ENGG. CONCEPTS AND PRACTICES', 10, 0, 18, 3, 8, 'UGRASEN SUMAN'),
(9, 'MODELLING AND SIMULATION', 10, 0, 18, 4, 9, 'PUSHPA SINGH & NARENDRA SINGH'),
(10, 'ANALYSIS OF ALGORITHMS AND DESIGN', 10, 0, 18, 5, 10, 'M.A. ANSARI,R.A. DESHMUKH'),
(11, 'UNIX AND SHELL PROGRAMMING', 10, 0, 18, 6, 11, 'B.M.HARWANI'),
(12, 'INTRODUCTION TO THE THEORY OF COMPUTATION', 10, 0, 7, 3, 12, 'MICHAEL SIPER'),
(13, 'FUNDAMENTAL OF LOGIC DESIGN', 10, 0, 6, 3, 13, 'CHARLES H.RATH,JR.LARRY L. KINNEY'),
(14, 'MODERN DIGITAL ELECTRONICS', 10, 0, 16, 7, 14, 'R.P.JAIN'),
(15, 'THE DATAWAREHOUSE LIFECYCLE TOOLKIT', 10, 0, 7, 8, 15, 'RALPH KIMBELL'),
(16, 'APPLIED MATHEMATICS- IV,SEM IV COMP.ENGG.', 10, 0, 18, 9, 16, 'G.V.KUMBHOJKUMAR'),
(17, 'FUNDAMENTALS OF COMPUTER ALGORITHMS', 10, 0, 7, 10, 17, 'ELLIS HARAWITE,SARTAJ SOHANI'),
(18, 'OBJECT ORIENTED PROGRAMMING WITH C++', 10, 0, 3, 2, 18, 'POOARNCHANDRA SARANG'),
(19, 'NUMERICAL METHODS AND STATISTICAL TECHNIQUES USING ‘C’', 10, 0, 18, 24, 19, 'MANISH GOYAL'),
(20, 'SECURITY IN COMPUTING', 10, 0, 16, 1, 20, 'CHARLES P.PFLEEUEER,SHARI LAWARENCE PPFLEEGER'),
(21, 'COMPUTER GRAPHICS,PRINCIPLE AND PRACTICE', 10, 0, 7, 1, 21, 'JAMES D. POLEY,ANDRIES VAN BAM'),
(22, 'PROGRAMS IN C++ COMPUTER GRAPHICS SEM-IV COMPUTER PROGRAMMING', 10, 0, 19, 5, 22, 'SANJESH S. PAWALE'),
(23, 'DIGITAL LOGIC APPLICATIONS AND DESIGN', 10, 0, 10, 3, 23, 'JOHN M.YARBROUGH'),
(24, 'A TEXTBOOK OF ENGG.PHYSICS', 10, 0, 18, 11, 24, 'DR.M.N.AVADHANULU'),
(25, 'COMPUTER PROGRAMMING – I,SEM-I', 10, 0, 13, 5, 25, 'RAWAL,BOKH C. ROUL'),
(26, 'ELEMENTS OF WORKSHOP TECHNOLOGY', 10, 0, 18, 12, 26, 'S.K.HAJRA CHOUDHARY'),
(27, 'APPLIED MATHEMATICS-I,FE SEM-I', 10, 0, 8, 9, 27, 'G.V.KUMBHOJKUMAR'),
(28, 'PROGRAMMING IN C', 10, 0, 18, 6, 28, 'PRADIP DEY,MANAS GHOSH'),
(29, 'ELEMENTS OF WORKSHOP TECHNOLOGY', 10, 0, 18, 12, 29, 'S.K.HAJRA CHOUDHARY'),
(30, 'DISCRETE MATHEMATICAL STRUCTURE', 10, 0, 1, 1, 30, 'BERNALD BERNALD KOLMAN'),
(31, 'DISCRETE EVENT SYSTEM SIMULATION', 10, 0, 16, 1, 31, 'JEERY BANKS,JOHN S. CARSON,BERRY L. MELSON,DAVID M. NICOL'),
(32, 'ADVANCED COMPUTER ARCHITECTURE', 10, 0, 18, 11, 32, 'RAJIV CHOPRA'),
(33, 'DIGITAL IMAGE PROCESSING', 10, 0, 18, 13, 33, 'SHAMIK TIWARI'),
(34, 'OBJECT ORIENTED PROGRAMMING C++', 10, 0, 8, 14, 34, 'E. BALGURUSWAMI'),
(35, 'FOUNDATIONS OF INFORMATION TECHNOLOGY', 10, 0, 8, 15, 35, 'D.S.YADAV'),
(36, 'ANALOG AND DIGITAL COMMUNICATION', 10, 0, 8, 5, 36, 'J.S.KATRE'),
(37, 'ENGINEERING DRAWING', 10, 0, 9, 16, 37, 'N.H.DUBEY'),
(38, 'THEORY OF AUTOMATA AND FORMAL LANGUAGES', 10, 0, 18, 13, 38, 'UDIT AGRAWAL'),
(39, 'DIGITAL AND ANALOG COMMUNICATION SYSTEMS', 10, 0, 10, 8, 39, 'K.SOM SHANMUGAM'),
(40, 'LET US C++', 10, 0, 18, 17, 40, 'YASWANT KANETKAR'),
(41, 'EFFECTIVE ENGLISH COMMUNICATION', 10, 0, 18, 14, 41, 'KRISHNA MOHAN,MEENAKSHI RAMAN'),
(42, 'OPERATING SYSTEMS,SEM-IV COMP.ENGG.', 10, 0, 11, 5, 42, 'SWATI JAIN,RACHNA RATHI'),
(43, 'INFORMATION SYSTEM FOR MODERN MANAGEMENT', 10, 0, 3, 2, 43, 'ROBERT G. MURDICK,JOEL E. ROSS,JAMES R. CLAGGELT'),
(44, 'ELECTRONIC DEVICES AND CIRCUITS', 10, 0, 18, 18, 44, 'RAVISH R. SINGH'),
(45, 'LIFECYCLE  THE DATA WAREHOUSE TOOLKIT', 10, 0, 7, 24, 45, 'ROLPH KIMBALL,MARRY ROSS'),
(46, 'SYSTEM PROGRAMMING', 10, 0, 18, 14, 46, 'JOHN J. DONOVAN'),
(47, 'DIGITAL COMMUNICATION', 10, 0, 12, 8, 47, 'SIMON HAYKIN'),
(48, 'BASIC ELECTRICAL AND ELECTRONICS  ENGG.', 10, 0, 13, 6, 48, 'B.P.PATIL'),
(49, 'MODERN ENGG.PHYSICS 4TH B.E.', 10, 0, 18, 11, 49, 'A,S, VASUDEVA'),
(50, 'ENGINEERING MECHANICS', 10, 0, 15, 24, 50, 'M.D.RAVAL'),
(51, 'COMPUTER PROGRAMMING- I, SEM-I', 10, 0, 8, 5, 51, 'VINAYA M.RAWOOL,BHAKTI PAUL- PALKAR'),
(52, 'DIGITAL LOGIC DESIGN AND ANALYSIS SEM –III COMP.ENGG.', 10, 0, 18, 16, 52, 'SOYLLI PATKI HALDAVANEKAR,SUCHITRA PATIL'),
(53, 'DISCRETE STRUCTURE AND GRAPH THEORY', 10, 0, 18, 5, 53, 'VINAYA M.RAWOOL'),
(54, 'DATA STRUCTURE AND ALGORITHMS IN JAVA', 10, 0, 8, 8, 54, 'MICHAL T. GOODRICH,ROBERTO TAMAAIA'),
(55, 'DATABASE SYSTEM CONCEPTS', 10, 0, 6, 7, 55, 'ABRAHAM SILBERSEHTZ,HERY F. KORTH,S.SILBERCHARH'),
(56, 'INDUSTRIAL ENGG. & TECHNOLOGY MANAGEMENT,SEM- IV,MECHNICAL ENGG.', 10, 0, 20, 22, 56, 'VIJAY NAWALE, MAHESH NARKE'),
(57, 'DATA STRUCTURE AND FILES', 10, 0, 18, 23, 57, 'A.A. PUTAMBEKAR'),
(58, 'DISCRETE MATHEMATICAL STRUCTURES', 10, 0, 6, 2, 58, 'KOLMAN,BUSHEY,ROSE'),
(59, 'PARADIGM OF PROGRAMMING LANGUAGES', 10, 0, 18, 26, 59, 'UDIT AGRAWAL'),
(60, 'ADVANCED COMPUTER ARCHITECTURE', 10, 0, 18, 26, 60, 'SWATI SAXENA'),
(61, 'INTRODUCTION TO DIGITAL DESIGN', 10, 0, 18, 26, 61, 'DHANPAT RAI AND COMPANY'),
(62, 'THINKING IN C++ VOLUME 2 PRACTICAL PROGRAMMING', 10, 0, 1, 1, 62, 'BRUCE EOKEL,CHUNK ALISON'),
(63, 'COMPUTER SIMULATION AND MODELLING', 10, 0, 5, 19, 63, 'ABHIJEET R. JOSHI'),
(64, 'MICROCOMPUTER SYSTEMS:THE8086/8088 FAMILY ARCHITECTURE,PROGRAMMING AND DESIGN', 10, 0, 3, 24, 64, 'YU.CHENG LIU,GLEAN R.GIBSON'),
(65, 'DISCRETE TIME SIGNAL PROCESSING', 10, 0, 18, 5, 65, 'R.A,BARAPATRE'),
(66, 'WEB ENGINEERING SEM-V COMP.ENGG.', 10, 0, 18, 5, 66, 'SNEHAL SURYAWANSHI'),
(67, 'ADVANCED COMPUTER NETWORK SEM –VI COMP.ENGG.', 10, 0, 7, 16, 67, 'PRASHANT IYER,RISHIKA KAPOOR'),
(68, 'SOFTWARE ENGG. A PRACTIOER APPROCH', 10, 0, 6, 7, 68, 'ROGER S. PRESSMANN'),
(69, 'C AND DATA STRUCTURE', 10, 0, 18, 11, 69, 'DR.N.B.VENKATSWARU,DR.E.V.PRASAD'),
(70, 'CORE JAVA FOR BEGINERS', 10, 0, 18, 20, 70, 'LAKSHMI KATARIA'),
(71, 'MICROPROCESSOR ARCHITECTURE PROGRAMMING AND APPLICATIONS WITH 8085', 10, 0, 4, 1, 71, 'RAMESH GAONKAR'),
(72, 'COMPUTER ORGANISATION', 10, 0, 18, 13, 72, 'SWATI SAXENA'),
(73, 'OBJECT ORIENTED PROGRAMMING WITH C++', 10, 0, 18, 14, 73, 'E. BALGURUSWAMI'),
(74, 'ENGINEERING MECHANICS', 10, 0, 15, 24, 74, 'M.D.DAYAL'),
(75, 'PARALLEL COMPUTING', 10, 0, 7, 15, 75, 'M.R.BHUJADE'),
(76, 'LEARN OBJECT ORIENTED PROGRAMMING USING JAVA AN UML BASED', 10, 0, 17, 11, 76, 'DR.N.B.VENKATESWARLU,DR.E.V.PRASA D'),
(77, 'COMPILER DESIGN', 10, 0, 16, 27, 77, 'DR.O.G.KAKDE'),
(78, 'ELEMENTS OF COMPUTER SCIENCE', 10, 0, 18, 11, 78, 'S.K.SARKAR,A.K.GUPTA'),
(79, 'TECHNICAL COMMUNICATION ENGLISH SKILLS FOR ENGINEERS', 10, 0, 7, 21, 79, 'MEENAKSHI ROMAM,SANGEETA SHARMA'),
(80, 'COMPUTER ENGG.,SEM-VI ,SYSTEM PROGRAMMING & OPERATING SYSTEMS', 10, 0, 18, 22, 80, 'GANDHALI KULKARNI'),
(81, 'OPERATING SYSTEM', 10, 0, 5, 23, 81, 'I.A.DHOTERE');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`) VALUES
(1, 'LOW PRICE EDITION', 1),
(2, 'THIRD EDITION', 1),
(3, 'ESTERN ECONOMY EDITION', 1),
(4, '5TH EDITION', 1),
(5, '1ST EDITION', 1),
(6, '6TH EDITION', 1),
(7, '2ND EDITION', 1),
(8, '3RD EDITION', 1),
(9, '14 MULTICOLOR EDITION', 1),
(10, 'INDIA EDITION', 1),
(11, 'EDITION 2010', 1),
(12, 'STUDENT EDITION', 1),
(13, 'REVISED 2ND EDITION', 1),
(14, 'REVISED EDITION', 1),
(15, '10TH EDITION', 1),
(16, '4TH EDITION', 1),
(17, '2010', 1),
(18, 'Not Specified', 1),
(19, 'Edition 2011', 1),
(20, '2010 Edition', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfaculties`
--

CREATE TABLE `tblfaculties` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfaculties`
--

INSERT INTO `tblfaculties` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`) VALUES
(1, '1', 'Varsha Shah', 'varsha@eng.rizvi.edu.in', '9869105421', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(2, '2', 'Shiburaj ', 'shiburaj@eng.rizvi.edu.in', '7021167058', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(3, '3', 'Anupam Chaudhary', 'anupamchaudhary@eng.rizvi.edu.in', '7385433115', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(4, '4', 'AK Sampath', 'sampath@eng.rizvi.edu.in', '9004050764', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(5, '5', 'Mohammed Junaid', 'msjunaid@eng.rizvi.edu.in', '9867283607', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(6, '6', 'Dinesh Deore', 'dineshbdeore@eng.rizvi.edu.in', '9225500006', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(7, '7', 'Mohammed Ashfaque', 'mhdashfaque@eng.rizvi.edu.in', '9892092533', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(8, '8', 'Reshma Lohar', 'reshmalohar@eng.rizvi.edu.in', '9657238021', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(9, '9', 'Ramya Kanagaraj', 'ramyakanagaraj@eng.rizvi.edu.in', '9629230608', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(10, '10', 'Manila Gupta', 'manilagupta@eng.rizvi.edu.in', '9810916126', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(11, '11', 'Nikhat S', 'nikhatshaikh@eng.rizvi.edu.in', '7506916082', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfine`
--

CREATE TABLE `tblfine` (
  `fine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblfine`
--

INSERT INTO `tblfine` (`fine`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` date DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `ReturnStatus` int(1) NOT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `ReturnStatus`, `fine`) VALUES
(1, 33, '32', '2024-04-17', '2024-04-17 14:35:23', 1, NULL),
(2, 10, '26', '2024-04-17', '2024-04-17 14:40:59', 1, NULL),
(3, 17, '25', '2024-04-17', '2024-04-17 15:39:46', 1, NULL),
(4, 17, '22', '2024-04-17', '2024-04-17 15:42:26', 1, NULL),
(5, 20, '27', '2024-04-17', '2024-04-17 15:42:34', 1, NULL),
(6, 2, '26', '2024-04-18', '2024-04-18 07:23:29', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbljournals`
--

CREATE TABLE `tbljournals` (
  `id` int(11) NOT NULL,
  `JournalName` varchar(255) DEFAULT NULL,
  `Month` varchar(255) DEFAULT NULL,
  `Volume` varchar(255) DEFAULT NULL,
  `Issue` varchar(255) DEFAULT NULL,
  `Label` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbljournals`
--

INSERT INTO `tbljournals` (`id`, `JournalName`, `Month`, `Volume`, `Issue`, `Label`) VALUES
(1, 'International Journal of Software Engineering and Systems', 'January-April 2022', '10', '1', 'RCOE/Dept.lib/Comp/2021-22/01'),
(2, 'Journal of Artificial Intelligence Research and Advances', 'January-April 2022', '9', '1', 'RCOE/Dept.lib/Comp/2022/02'),
(3, 'Journal of Computer Graphics and Multimedia Applications', 'January-April 2022', '6', '1', 'RCOE/Dept.lib/Comp/2021-22/03'),
(4, 'International Journal of Engineering and Advanced Technology', 'January-April 2023', '11', '1', 'RCOE/Dept.lib/Comp/2022-23/04'),
(5, 'Global Journal of Advanced Computer Science and Technology', 'January-April 2023', '11', '1', 'RCOE/Dept.lib/Comp/2022-23/05'),
(6, 'Journal of Cloud Computing and Database Management', 'January-April 2022', '8', '1', 'RCOE/Dept.lib/Comp/2021-22/06'),
(7, 'International Research Journal of Engineering,IT and Scientific Research', 'January-April 2023', '9', '1', 'RCOE/Dept.lib/Comp/2022-23/07'),
(8, 'International Journal of Advances in Computer Science and Cloud Computing', 'January-April 2023', '11', '1', 'RCOE/Dept.lib/Comp/2022-23/08'),
(9, 'Current Science', 'January-April 2023', '124', '3', 'RCOE/Dept.lib/Comp/2022-23/09'),
(10, 'Journal of Cloud Computing and Database Management', 'May-August 2023', '9', '2', 'RCOE/Dept.lib/Comp/2022-23/10'),
(11, 'Global Journal of Mobile Application and Development', 'May-August 2023 ', '8', '2', 'RCOE/Dept.lib/Comp/2022-23/11'),
(12, 'Indian Journal of Computers and Applications', 'January-June 2023', '13', '1', 'RCOE/Dept.lib/Comp/2022-23/12'),
(13, 'Interantional Journal of Information Technology and Database Systems', 'January-June 2023', '14', '1', 'RCOE/Dept.lib/Comp/2022-23/13'),
(14, 'Journal of Cloud Computing and Database Management', 'September-December 2023', '9', '3', 'RCOE/Dept.lib/Comp/2022-23/14'),
(15, 'International Journal of Software Engineering and Sytems', 'January-April 2023', '11', '1', 'RCOE/Dept.lib/Comp/2022-23/15'),
(16, 'Global Journal of Mobile Application and Development', 'September-December 2022', '7', '3', 'RCOE/Dept.lib/Comp/2021-22/16'),
(17, 'International Journal of Intelligent Systems Science and Technology', 'January-June 2023', '13', '1', 'RCOE/Dept.lib/Comp/2022-23/17'),
(18, 'International Journal of Soft Computing and Artificial Intelligence', 'January-April 2023', '11', '1', 'RCOE/Dept.lib/Comp/2022-23/18'),
(19, 'Indian Journal of Networking and Computer Engineering', 'July-December 2023', '13', '2', 'RCOE/Dept.lib/Comp/2022-23/19'),
(20, 'International Journal of Management Review and Information Technology', 'July-December 2023', '13', '2', 'RCOE/Dept.lib/Comp/2022-23/20'),
(21, 'International Journal of Soft Computing and Artificial Intelligence', 'September-December 2023', '11', '3', 'RCOE/Dept.lib/Comp/2022-23/21'),
(22, 'Global Journal of Mobile Application and Development', 'January-April 2023', '8', '1', 'RCOE/Dept.lib/Comp/2022-23/22'),
(23, 'International Journal of Soft Computing and Artificial Intelligence', 'May-August 2022', '10', '2', 'RCOE/Dept.lib/Comp/2021-22/23'),
(24, 'Journal of Current Development in Artificial Intelligence', 'January-April 2023', '11', '1', 'RCOE/Dept.lib/Comp/2022-23/24'),
(25, 'Journal of Advances in Computational Sciences and Information Technology', 'May-August 2023', '11', '2', 'RCOE/Dept.lib/Comp/2022-23/25'),
(26, 'Interantional Journal of Information Technology and Database Systems', 'June 2022', '13', '1', 'RCOE/Dept.lib/Comp/2022/26'),
(27, 'Indian Journal of Information Technology Research and Development', 'July-December 2022', '10', '2', 'RCOE/Dept.lib/Comp/2021-22/27'),
(28, 'International Journal of Electrical and Computer Engineering', 'January-June 2022', '12', '1', 'RCOE/Dept.lib/Comp/2021-22/28'),
(29, 'Internattional Journal of Artificial Intelligence and Computational Research', 'December 2022', '14', '2', 'RCOE/Dept.lib/Comp/2022/29'),
(30, 'Indian Journal of Computational Intelligence Research and Applications Technology', 'July-December 2022', '12', '2', 'RCOE/Dept.lib/Comp/2021-22/30'),
(31, 'Journal of Cloud Computing and Database Management', 'May-August 2022', '8', '2', 'RCOE/Dept.lib/Comp/2021-22/31'),
(32, 'Asian Journal of Computer Science and Technology', 'January-June 2022', '11', '1', 'RCOE/Dept.lib/Comp/2021-22/32'),
(33, 'Indian Journal of Heat and Mass Transfer', 'January-June 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/01'),
(34, 'International Journal of Product Design', 'January-June.2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/02'),
(35, 'Indian Journal of Design and Manufacturing Technology', 'January-June 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/03'),
(36, 'Indian Journal of Heat and Mass Transfer', 'January-June 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/04'),
(37, 'Autocar India', 'October 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/05'),
(38, 'International Journal of Control Theory and Applications', 'July-December 2022', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2021-22/06'),
(39, 'Current Science ', 'January 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/07'),
(40, 'Indian Journal of Advances in Mechanical Engineering', 'July-December 2022', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2021-22/08'),
(41, 'Research and Applications of Thermal Engineering', 'January-April 2022, May-August 2022', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2021-22/09'),
(42, 'Research and Applications of Thermal Engineering', 'January-April.22,May-August.2022', 'Not specified', '1', 'RCOE/Dept.lib/Mech/2021-22/10'),
(43, 'International Journal of Fuzzy Logic and Design', 'May-August 2022', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2021-22/11'),
(44, 'Indian Journal of Mechanical and Thermal Engineering', 'January-April 2022', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2021-22/12'),
(45, 'International Journal of Advanced Mechatronics and Robotics', 'January-June 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/13'),
(46, 'International Journal of Materials, Manufacturing and Optimization', 'January-June 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/14'),
(47, 'International Journal of Automobile Engineering', 'January-December 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/15'),
(48, 'International Journal of Design Engineering and Technology', 'July-December 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/16'),
(49, 'International Journal of Manufacturing and Industrial Engineering', 'July-December 2022', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2021-22/17'),
(50, 'Indian Journal of Industrial and Production Engineering and Technology', 'July-December 2022', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2021-22/18'),
(51, 'Journal of Control System and Control Instrumentation', 'January-April 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/19'),
(52, 'International Journal of Power Quality', 'January-June 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/20'),
(53, 'International Journal of Manufacturing and Industrial Engineering', 'January-June 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/21'),
(54, 'Journal of the Institutions of Engineers-Series C', 'October 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/22'),
(55, 'International Journal of Engineering and Advanced Technology', 'September-December 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/23'),
(56, 'International Journal of Engineering and Advanced Technology', 'May-August 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/24'),
(57, 'Power Line', 'January 2023', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2022-23/25'),
(58, 'Indian Journal of Advances in Automobile Engineering', 'January-June 2022', 'Not Specified', '1', 'RCOE/Dept.lib/Mech/2021-22/26');

-- --------------------------------------------------------

--
-- Table structure for table `tblrequestedbookdetails`
--

CREATE TABLE `tblrequestedbookdetails` (
  `StudentID` varchar(20) NOT NULL,
  `StudName` varchar(40) NOT NULL,
  `BookName` varchar(50) NOT NULL,
  `CategoryName` varchar(20) NOT NULL,
  `AuthorName` varchar(50) NOT NULL,
  `ISBNNumber` int(11) NOT NULL,
  `BookPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`) VALUES
(1, '21', 'KHAN MUZAFFAR MOHAMMAD SOAIB\n', 'muzaffarkhan@eng.rizvi.edu.in', '7875276146', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(2, '22', 'AKHUNJI MOHD ABRAR MOHD IQBAL', 'abrar786@eng.rizvi.edu.in', '9920455585', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(3, '23', 'DALVI FARHAT SHAFI', 'FarhatDalvi@eng.rizvi.edu.in', '8779281788', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(4, '24', 'JAFFER MOHD HANZALA SALIM', 'hanzala.jaffer@eng.rizvi.edu.in', '9082142089', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(5, '25', 'KHAN MAWRAH RAUF', 'Mawrahk@eng.rizvi.edu.in', '8422003547', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(6, '26', 'KHAN RIVA FAISAL AHMED', 'rivakhan41@eng.rizvi.edu.in', '9004041339', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(7, '27', 'MOMIN JAVERIYA', 'JaveriyaMomin@eng.rizvi.edu.in', '9834002653', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(8, '28', 'MURSHAD IRAM SABA AYUB', 'Iramshaikh@eng.rizvi.edu.in', '9082410361', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(9, '29', 'SIDDIQUI FAIZ FIROZ', 'Thefaizsiddiqui@eng.rizvi.edu.in', '9082866047', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(10, '30', 'SHAIKH ABDUSS SAMAD QAMAR AHMED', 'Abdus20@eng.rizvi.edu.in', '9082123749', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(11, '31', 'SHAIKH AFFAN USMAN', 'affanshaikh426@eng.rizvi.edu.in', '7678050742', 'bda6c26ecbf746b1113387710a709bca', 1),
(12, '32', 'SINGH AARTEM NIRANJAN', 'aartemsingh03@eng.rizvi.edu.in', '9969395990', 'bda6c26ecbf746b1113387710a709bca', 1),
(13, '33', 'ALI MANSHA FAROOQ', 'Manshasayed@eng.rizvi.edu.in', '8850496289', 'bda6c26ecbf746b1113387710a709bca', 1),
(14, '34', 'ANSARI AFFAN MOHAMMAD ALTAF', '4ansariaffan@eng.rizvi.edu.in', '9326593369', 'bda6c26ecbf746b1113387710a709bca', 1),
(15, '35', 'ANSARI MOHD NAQEEB MOHD HANIF', 'naqeeb@eng.rizvi.edu.in', '7506157604', 'bda6c26ecbf746b1113387710a709bca', 1),
(16, '36', 'JAFAR BADREEN SALIM', 'badreenjafar@eng.rizvi.edu.in', '9819491393', 'bda6c26ecbf746b1113387710a709bca', 1),
(17, '37', 'JAMADAR DANISH RASHID', 'danish012@eng.rizvi.edu.in', '8668959709', 'bda6c26ecbf746b1113387710a709bca', 1),
(18, '38', 'KYATHAM MAYUR RAMESH', 'mayurkyatham18@eng.rizvi.edu.in', '9653176191', 'bda6c26ecbf746b1113387710a709bca', 1),
(19, '39', 'KUNTALWAD UTSAV GAJANAN REDDY', 'utsavreddy9@eng.rizvi.edu.in', '6302707486', 'bda6c26ecbf746b1113387710a709bca', 1),
(20, '40', 'MAYEKAR PRAYAG PREMKUMAR', 'prayagmayekar29@eng.rizvi.edu.in', '9769034636', 'bda6c26ecbf746b1113387710a709bca', 1),
(21, '41', 'PHEGRI JAZA JALIS', 'jazaphegri@eng.rizvi.edu.in', '9067860879', 'bda6c26ecbf746b1113387710a709bca', 1),
(22, '42', 'SAWANT SRUSHTI SUDHIR', 'srushtisawant@eng.rizvi.edu.in', '9867371507', 'bda6c26ecbf746b1113387710a709bca', 1),
(23, '43', 'SHAIKH AFFAN SAJID', 'Affu01@eng.rizvi.edu.in', '9967863217', 'bda6c26ecbf746b1113387710a709bca', 1),
(24, '44', 'SHAKWAR PRERNA SURESHCHANDRA', 'prerna22@eng.rizvi.edu.in', '9136208481', 'bda6c26ecbf746b1113387710a709bca', 1),
(25, '45', 'TIWARI ANSH KANHAIYALAL', 'anshtiwari@eng.rizvi.edu.in', '7666148279', 'bda6c26ecbf746b1113387710a709bca', 1),
(26, '46', 'SIDDIQUI ADAAB HUSAIN AJAZ HUSAIN', 'Siddiquiadab@eng.rizvi.edu.in', '9594037517', 'bda6c26ecbf746b1113387710a709bca', 1),
(27, '47', 'NAGAWELLY ROHIT RATANKUMAR', 'nagavellirohit@eng.rizvi.edu.in', '9867855572', 'bda6c26ecbf746b1113387710a709bca', 1),
(28, '48', 'AKOLAWALA MUSTAFA HUSEIN', 'mustafaakolawala@eng.rizvi.edu.in', '9833895353', 'bda6c26ecbf746b1113387710a709bca', 1),
(29, '49', 'ANSARI MOHAMMED ADEEN AKHTAR HUSAIN', 'Adeen16@eng.rizvi.edu.in', '8452835300', 'bda6c26ecbf746b1113387710a709bca', 1),
(30, '50', 'FAKIH MAHIRA ABDUL RASHID', 'fmahira@eng.rizvi.edu.in', '9372560766', 'bda6c26ecbf746b1113387710a709bca', 1),
(31, '51', 'LAMBE RAYYAN MUZAMMIL', 'fazerwns@eng.rizvi.edu.in', '8888985298', 'bda6c26ecbf746b1113387710a709bca', 1),
(32, '52', 'MISHRA ASHISH SANJAY', 'Ashish@eng.rizvi.edu.in', '9004771869', 'bda6c26ecbf746b1113387710a709bca', 1),
(33, '53', 'NAIK HEMAL ARVIND', 'naikhemal03@eng.rizvi.edu.in', '9969764738', 'bda6c26ecbf746b1113387710a709bca', 1),
(34, '54', 'NAIK MOIN MOHAMMED', 'moinnaik45@eng.rizvi.edu.in', '7558298635', 'bda6c26ecbf746b1113387710a709bca', 1),
(35, '55', 'SELOT KABIR RASHID', 'kabirselot@eng.rizvi.edu.in', '9820550018', 'bda6c26ecbf746b1113387710a709bca', 1),
(36, '56', 'SETTIPALLI SUDHEENDRA DHEERENDRA', 'sudheendra579@eng.rizvi.edu.in', '8073085483', 'bda6c26ecbf746b1113387710a709bca', 1),
(37, '57', 'SHAIKH SIRAJ AHMED AKBAR ALI', 'shaikhsiraj@eng.rizvi.edu.in', '9152053170', 'bda6c26ecbf746b1113387710a709bca', 1),
(38, '58', 'SHAIKH NAJAF AHMED MUKHTAR NOOR MOHD', 'najafshaikh1705@eng.rizvi.edu.in', '7400330785', 'bda6c26ecbf746b1113387710a709bca', 1),
(39, '59', 'KUMAR NEERAJ ARVIND', 'neerajkumar4518@eng.rizvi.edu.in', '9086614464', 'bda6c26ecbf746b1113387710a709bca', 1),
(40, '60', 'SHIRGAONKAR KARAMAT NIZAMUDDIN', 'karamatsh19@eng.rizvi.edu.in', '9082986540', 'bda6c26ecbf746b1113387710a709bca', 1),
(41, '61', 'KHAN MUSKAN SHAHNAWAZ', 'muskan@eng.rizvi.edu.in', '9372589561', 'bda6c26ecbf746b1113387710a709bca', 1),
(42, '62', 'MISHRA ADITYA SHYAMANAND', 'adityamishra@eng.rizvi.edu.in', '9326293287', 'bda6c26ecbf746b1113387710a709bca', 1),
(43, '63', 'SHAZIA MOHAMMED SAJID ', 'shazia@eng.rizvi.edu.in', '9137397013', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(44, '64', 'ANSARI FAIZ JAMEEL', 'faiz395@eng.rizvi.edu.in', '9022191388', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1),
(45, '65', 'ANSARI MOHAMMED UMER MEHBOOB UR REHMAN', 'umer37454@eng.rizvi.edu.in', '9773728820', 'ec1dcfa426a92bdfc1c7bd9befd3a595', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfaculties`
--
ALTER TABLE `tblfaculties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbljournals`
--
ALTER TABLE `tbljournals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblfaculties`
--
ALTER TABLE `tblfaculties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbljournals`
--
ALTER TABLE `tbljournals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2015 at 03:48 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_campus`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `pwd`) VALUES
('harin', 'reddy'),
('harin gag', 'reddy /mmm /nnn ');

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE IF NOT EXISTS `persons` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `val` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`ID`, `val`) VALUES
(1, 1),
(2, 3),
(3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tb_4a_1`
--

CREATE TABLE IF NOT EXISTS `tb_4a_1` (
  `subject` varchar(50) NOT NULL,
  `facid` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_4a_1`
--

INSERT INTO `tb_4a_1` (`subject`, `facid`) VALUES
('CG', '1'),
('DWDM', '1'),
('bjj', '1'),
('bjbk', '1'),
('LP', '1'),
('STM', '1'),
('CT&ST_LAB', '1'),
('LP&DM_LAB', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_4a_1_att`
--

CREATE TABLE IF NOT EXISTS `tb_4a_1_att` (
  `date` varchar(100) DEFAULT NULL,
  `10621A0522` int(11) DEFAULT NULL,
  `10621A0550` int(11) DEFAULT NULL,
  `11621A0501` int(11) DEFAULT NULL,
  `11621A0502` int(11) DEFAULT NULL,
  `11621A0503` int(11) DEFAULT NULL,
  `11621A0504` int(11) DEFAULT NULL,
  `11621A0505` int(11) DEFAULT NULL,
  `11621A0506` int(11) DEFAULT NULL,
  `11621A0507` int(11) DEFAULT NULL,
  `11621A0508` int(11) DEFAULT NULL,
  `11621A0509` int(11) DEFAULT NULL,
  `11621A0510` int(11) DEFAULT NULL,
  `11621A0511` int(11) DEFAULT NULL,
  `11621A0512` int(11) DEFAULT NULL,
  `11621A0513` int(11) DEFAULT NULL,
  `11621A0514` int(11) DEFAULT NULL,
  `11621A0515` int(11) DEFAULT NULL,
  `11621A0516` int(11) DEFAULT NULL,
  `11621A0517` int(11) DEFAULT NULL,
  `11621A0518` int(11) DEFAULT NULL,
  `11621A0520` int(11) DEFAULT NULL,
  `11621A0521` int(11) DEFAULT NULL,
  `11621A0522` int(11) DEFAULT NULL,
  `11621A0523` int(11) DEFAULT NULL,
  `11621A0524` int(11) DEFAULT NULL,
  `11621A0525` int(11) DEFAULT NULL,
  `11621A0526` int(11) DEFAULT NULL,
  `11621A0527` int(11) DEFAULT NULL,
  `11621A0528` int(11) DEFAULT NULL,
  `11621A0529` int(11) DEFAULT NULL,
  `11621A0530` int(11) DEFAULT NULL,
  `11621A0531` int(11) DEFAULT NULL,
  `11621A0532` int(11) DEFAULT NULL,
  `11621A0533` int(11) DEFAULT NULL,
  `11621A0534` int(11) DEFAULT NULL,
  `11621A0535` int(11) DEFAULT NULL,
  `11621A0536` int(11) DEFAULT NULL,
  `11621A0537` int(11) DEFAULT NULL,
  `11621A0538` int(11) DEFAULT NULL,
  `11621A0539` int(11) DEFAULT NULL,
  `11621A0540` int(11) DEFAULT NULL,
  `11621A0541` int(11) DEFAULT NULL,
  `11621A0542` int(11) DEFAULT NULL,
  `11621A0544` int(11) DEFAULT NULL,
  `11621A0545` int(11) DEFAULT NULL,
  `11621A0546` int(11) DEFAULT NULL,
  `11621A0547` int(11) DEFAULT NULL,
  `11621A0548` int(11) DEFAULT NULL,
  `11621A0549` int(11) DEFAULT NULL,
  `11621A0551` int(11) DEFAULT NULL,
  `11621A0552` int(11) DEFAULT NULL,
  `11621A0553` int(11) DEFAULT NULL,
  `11621A0554` int(11) DEFAULT NULL,
  `11621A0555` int(11) DEFAULT NULL,
  `11621A0557` int(11) DEFAULT NULL,
  `11621A0558` int(11) DEFAULT NULL,
  `11621A0559` int(11) DEFAULT NULL,
  `11621A0560` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_adminlogin`
--

CREATE TABLE IF NOT EXISTS `tb_adminlogin` (
  `admin_id` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `last_login` date NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_cls_timetable`
--

CREATE TABLE IF NOT EXISTS `tb_cls_timetable` (
  `day` date DEFAULT NULL,
  `cls1` varchar(20) NOT NULL,
  `cls2` varchar(20) NOT NULL,
  `cls3` varchar(20) NOT NULL,
  `cls4` varchar(20) NOT NULL,
  `cls5` varchar(20) NOT NULL,
  `cls6` varchar(20) NOT NULL,
  `cls7` varchar(20) NOT NULL,
  `cls8` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_csesections`
--

CREATE TABLE IF NOT EXISTS `tb_csesections` (
  `sname` varchar(20) NOT NULL,
  PRIMARY KEY (`sname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_csesections`
--

INSERT INTO `tb_csesections` (`sname`) VALUES
('I'),
('II-A'),
('II-B'),
('III-A'),
('III-B'),
('IV-A'),
('IV-B'),
('IV-C');

-- --------------------------------------------------------

--
-- Table structure for table `tb_facdetails`
--

CREATE TABLE IF NOT EXISTS `tb_facdetails` (
  `fac_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `doj` date NOT NULL,
  `mobno` varchar(20) NOT NULL,
  `emailid` varchar(300) DEFAULT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`fac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_faclogin`
--

CREATE TABLE IF NOT EXISTS `tb_faclogin` (
  `fac_id` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `last_login` date NOT NULL,
  PRIMARY KEY (`fac_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_studentlogin`
--

CREATE TABLE IF NOT EXISTS `tb_studentlogin` (
  `stu_id` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `last_login` date NOT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_studetails`
--

CREATE TABLE IF NOT EXISTS `tb_studetails` (
  `stu_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `m_name` varchar(100) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `stuyear` int(11) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `addr` varchar(700) NOT NULL,
  `mobno` varchar(20) NOT NULL,
  `emailid` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alumini`
--

CREATE TABLE IF NOT EXISTS `tbl_alumini` (
  `JoiningYear` int(11) DEFAULT NULL,
  `Graduatingyear` int(11) DEFAULT NULL,
  `Branch` varchar(20) DEFAULT NULL,
  `RollNumber` varchar(20) NOT NULL DEFAULT '',
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `MiddleName` varchar(20) DEFAULT NULL,
  `FathersName` varchar(20) DEFAULT NULL,
  `DateofBirth` varchar(20) DEFAULT NULL,
  `Addrforcomm` varchar(300) DEFAULT NULL,
  `Peraddr` varchar(300) DEFAULT NULL,
  `ResNo` varchar(15) DEFAULT NULL,
  `Mobile` varchar(15) DEFAULT NULL,
  `EmailId` varchar(30) DEFAULT NULL,
  `PresentStatus` varchar(100) DEFAULT NULL,
  `NameofCom` varchar(30) DEFAULT NULL,
  `Designation` varchar(30) DEFAULT NULL,
  `ReportingTime` varchar(30) DEFAULT NULL,
  `GrossSalary` varchar(30) DEFAULT NULL,
  `NameofUniv` varchar(30) DEFAULT NULL,
  `Placeandcountry` varchar(30) DEFAULT NULL,
  `MSMTechMBA` varchar(30) DEFAULT NULL,
  `CompetitiveExamsappeared` varchar(30) DEFAULT NULL,
  `yearappeared` varchar(30) DEFAULT NULL,
  `qualified` varchar(30) DEFAULT NULL,
  `percentileRankScore` varchar(30) DEFAULT NULL,
  `UGprojectcompany` varchar(30) DEFAULT NULL,
  `UGprojectTitle` varchar(30) DEFAULT NULL,
  `UGprojeckInternalGuide` varchar(30) DEFAULT NULL,
  `UGprojectExternalguide` varchar(30) DEFAULT NULL,
  `ProfessionalAchievements` varchar(30) DEFAULT NULL,
  `PersonalProfessionalWebsite` varchar(30) DEFAULT NULL,
  `namesofprofessionalbody` varchar(50) DEFAULT NULL,
  `IflifemembermembershipNo` varchar(50) DEFAULT NULL,
  `IfOrdinaryMemberMembershipNo` varchar(50) DEFAULT NULL,
  `SuggestionstoInstution` varchar(500) DEFAULT NULL,
  `Suggestionstothejuniors` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`RollNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_alumini`
--

INSERT INTO `tbl_alumini` (`JoiningYear`, `Graduatingyear`, `Branch`, `RollNumber`, `FirstName`, `LastName`, `MiddleName`, `FathersName`, `DateofBirth`, `Addrforcomm`, `Peraddr`, `ResNo`, `Mobile`, `EmailId`, `PresentStatus`, `NameofCom`, `Designation`, `ReportingTime`, `GrossSalary`, `NameofUniv`, `Placeandcountry`, `MSMTechMBA`, `CompetitiveExamsappeared`, `yearappeared`, `qualified`, `percentileRankScore`, `UGprojectcompany`, `UGprojectTitle`, `UGprojeckInternalGuide`, `UGprojectExternalguide`, `ProfessionalAchievements`, `PersonalProfessionalWebsite`, `namesofprofessionalbody`, `IflifemembermembershipNo`, `IfOrdinaryMemberMembershipNo`, `SuggestionstoInstution`, `Suggestionstothejuniors`) VALUES
(2015, 2015, 'CSE', 'gbdihliii3y1630', 'harin', 'reddy', 'purumandla', 'ranadheerreddy', '2021994', 'noneofyourbusiness', 'noneofyourbusiness', '9866913789', '9502479424', 'harinreddy94@gmail.com', 'PlacedonCampus', 'infosys', 'tope', 'naaistam', 'nekuendukubey', 'wright', 'dallas', 'M.S', 'GATE', '2014', 'yes', '310', 'xyz', 'abcnone', 'NA', 'NA', 'working.com', 'csi', '1234', 'NA', 'fuckoff ', 'meekarma', '  tret');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE IF NOT EXISTS `tbl_login` (
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`Username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`Username`, `Password`) VALUES
('harin', 'kumar'),
('purumandla', 'reddy'),
('sai', 'reddy'),
('Username', 'pwd');
--
-- Database: `db_cse`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_3b_daysheet`
--

CREATE TABLE IF NOT EXISTS `tb_3b_daysheet` (
  `date` varchar(50) NOT NULL DEFAULT '',
  `class1` varchar(50) DEFAULT NULL,
  `class2` varchar(50) DEFAULT NULL,
  `class3` varchar(50) DEFAULT NULL,
  `class4` varchar(50) DEFAULT NULL,
  `class5` varchar(50) DEFAULT NULL,
  `class6` varchar(50) DEFAULT NULL,
  `class7` varchar(50) DEFAULT NULL,
  `class8` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_4a_asn`
--

CREATE TABLE IF NOT EXISTS `tb_4a_asn` (
  `date` varchar(100) NOT NULL DEFAULT '',
  `10621A0522` int(11) DEFAULT NULL,
  `10621A0550` int(11) DEFAULT NULL,
  `11621A0501` int(11) DEFAULT NULL,
  `11621A0502` int(11) DEFAULT NULL,
  `11621A0503` int(11) DEFAULT NULL,
  `11621A0504` int(11) DEFAULT NULL,
  `11621A0505` int(11) DEFAULT NULL,
  `11621A0506` int(11) DEFAULT NULL,
  `11621A0507` int(11) DEFAULT NULL,
  `11621A0508` int(11) DEFAULT NULL,
  `11621A0509` int(11) DEFAULT NULL,
  `11621A0510` int(11) DEFAULT NULL,
  `11621A0511` int(11) DEFAULT NULL,
  `11621A0512` int(11) DEFAULT NULL,
  `11621A0513` int(11) DEFAULT NULL,
  `11621A0514` int(11) DEFAULT NULL,
  `11621A0515` int(11) DEFAULT NULL,
  `11621A0516` int(11) DEFAULT NULL,
  `11621A0517` int(11) DEFAULT NULL,
  `11621A0518` int(11) DEFAULT NULL,
  `11621A0520` int(11) DEFAULT NULL,
  `11621A0521` int(11) DEFAULT NULL,
  `11621A0522` int(11) DEFAULT NULL,
  `11621A0523` int(11) DEFAULT NULL,
  `11621A0524` int(11) DEFAULT NULL,
  `11621A0525` int(11) DEFAULT NULL,
  `11621A0526` int(11) DEFAULT NULL,
  `11621A0527` int(11) DEFAULT NULL,
  `11621A0528` int(11) DEFAULT NULL,
  `11621A0529` int(11) DEFAULT NULL,
  `11621A0530` int(11) DEFAULT NULL,
  `11621A0531` int(11) DEFAULT NULL,
  `11621A0532` int(11) DEFAULT NULL,
  `11621A0533` int(11) DEFAULT NULL,
  `11621A0534` int(11) DEFAULT NULL,
  `11621A0535` int(11) DEFAULT NULL,
  `11621A0536` int(11) DEFAULT NULL,
  `11621A0537` int(11) DEFAULT NULL,
  `11621A0538` int(11) DEFAULT NULL,
  `11621A0539` int(11) DEFAULT NULL,
  `11621A0540` int(11) DEFAULT NULL,
  `11621A0541` int(11) DEFAULT NULL,
  `11621A0542` int(11) DEFAULT NULL,
  `11621A0544` int(11) DEFAULT NULL,
  `11621A0545` int(11) DEFAULT NULL,
  `11621A0546` int(11) DEFAULT NULL,
  `11621A0547` int(11) DEFAULT NULL,
  `11621A0548` int(11) DEFAULT NULL,
  `11621A0549` int(11) DEFAULT NULL,
  `11621A0551` int(11) DEFAULT NULL,
  `11621A0552` int(11) DEFAULT NULL,
  `11621A0553` int(11) DEFAULT NULL,
  `11621A0554` int(11) DEFAULT NULL,
  `11621A0555` int(11) DEFAULT NULL,
  `11621A0557` int(11) DEFAULT NULL,
  `11621A0558` int(11) DEFAULT NULL,
  `11621A0559` int(11) DEFAULT NULL,
  `11621A0560` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_4a_asn`
--

INSERT INTO `tb_4a_asn` (`date`, `10621A0522`, `10621A0550`, `11621A0501`, `11621A0502`, `11621A0503`, `11621A0504`, `11621A0505`, `11621A0506`, `11621A0507`, `11621A0508`, `11621A0509`, `11621A0510`, `11621A0511`, `11621A0512`, `11621A0513`, `11621A0514`, `11621A0515`, `11621A0516`, `11621A0517`, `11621A0518`, `11621A0520`, `11621A0521`, `11621A0522`, `11621A0523`, `11621A0524`, `11621A0525`, `11621A0526`, `11621A0527`, `11621A0528`, `11621A0529`, `11621A0530`, `11621A0531`, `11621A0532`, `11621A0533`, `11621A0534`, `11621A0535`, `11621A0536`, `11621A0537`, `11621A0538`, `11621A0539`, `11621A0540`, `11621A0541`, `11621A0542`, `11621A0544`, `11621A0545`, `11621A0546`, `11621A0547`, `11621A0548`, `11621A0549`, `11621A0551`, `11621A0552`, `11621A0553`, `11621A0554`, `11621A0555`, `11621A0557`, `11621A0558`, `11621A0559`, `11621A0560`, `number`) VALUES
('29/03/2015', 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
('30/03/2015', 2, 2, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tb_4a_daysheet`
--

CREATE TABLE IF NOT EXISTS `tb_4a_daysheet` (
  `date` varchar(50) NOT NULL DEFAULT '',
  `class1` varchar(50) DEFAULT NULL,
  `class2` varchar(50) DEFAULT NULL,
  `class3` varchar(50) DEFAULT NULL,
  `class4` varchar(50) DEFAULT NULL,
  `class5` varchar(50) DEFAULT NULL,
  `class6` varchar(50) DEFAULT NULL,
  `class7` varchar(50) DEFAULT NULL,
  `class8` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_4a_daysheet`
--

INSERT INTO `tb_4a_daysheet` (`date`, `class1`, `class2`, `class3`, `class4`, `class5`, `class6`, `class7`, `class8`) VALUES
('29/03/2015', 'WS', 'WS', 'MS', 'MS', 'WS', 'WS', 'ASN', 'ASN'),
('30/03/2015', 'null', 'MS', 'MS', 'ASN', 'ASN', 'ASN', 'ASN', 'WS');

-- --------------------------------------------------------

--
-- Table structure for table `tb_4a_marksheet`
--

CREATE TABLE IF NOT EXISTS `tb_4a_marksheet` (
  `rollno` varchar(100) NOT NULL DEFAULT '',
  `internal` int(11) DEFAULT NULL,
  `WS` int(11) DEFAULT NULL,
  `ASN` int(11) DEFAULT NULL,
  `MS` int(11) DEFAULT NULL,
  PRIMARY KEY (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_4a_ms`
--

CREATE TABLE IF NOT EXISTS `tb_4a_ms` (
  `date` varchar(100) NOT NULL DEFAULT '',
  `10621A0522` int(11) DEFAULT NULL,
  `10621A0550` int(11) DEFAULT NULL,
  `11621A0501` int(11) DEFAULT NULL,
  `11621A0502` int(11) DEFAULT NULL,
  `11621A0503` int(11) DEFAULT NULL,
  `11621A0504` int(11) DEFAULT NULL,
  `11621A0505` int(11) DEFAULT NULL,
  `11621A0506` int(11) DEFAULT NULL,
  `11621A0507` int(11) DEFAULT NULL,
  `11621A0508` int(11) DEFAULT NULL,
  `11621A0509` int(11) DEFAULT NULL,
  `11621A0510` int(11) DEFAULT NULL,
  `11621A0511` int(11) DEFAULT NULL,
  `11621A0512` int(11) DEFAULT NULL,
  `11621A0513` int(11) DEFAULT NULL,
  `11621A0514` int(11) DEFAULT NULL,
  `11621A0515` int(11) DEFAULT NULL,
  `11621A0516` int(11) DEFAULT NULL,
  `11621A0517` int(11) DEFAULT NULL,
  `11621A0518` int(11) DEFAULT NULL,
  `11621A0520` int(11) DEFAULT NULL,
  `11621A0521` int(11) DEFAULT NULL,
  `11621A0522` int(11) DEFAULT NULL,
  `11621A0523` int(11) DEFAULT NULL,
  `11621A0524` int(11) DEFAULT NULL,
  `11621A0525` int(11) DEFAULT NULL,
  `11621A0526` int(11) DEFAULT NULL,
  `11621A0527` int(11) DEFAULT NULL,
  `11621A0528` int(11) DEFAULT NULL,
  `11621A0529` int(11) DEFAULT NULL,
  `11621A0530` int(11) DEFAULT NULL,
  `11621A0531` int(11) DEFAULT NULL,
  `11621A0532` int(11) DEFAULT NULL,
  `11621A0533` int(11) DEFAULT NULL,
  `11621A0534` int(11) DEFAULT NULL,
  `11621A0535` int(11) DEFAULT NULL,
  `11621A0536` int(11) DEFAULT NULL,
  `11621A0537` int(11) DEFAULT NULL,
  `11621A0538` int(11) DEFAULT NULL,
  `11621A0539` int(11) DEFAULT NULL,
  `11621A0540` int(11) DEFAULT NULL,
  `11621A0541` int(11) DEFAULT NULL,
  `11621A0542` int(11) DEFAULT NULL,
  `11621A0544` int(11) DEFAULT NULL,
  `11621A0545` int(11) DEFAULT NULL,
  `11621A0546` int(11) DEFAULT NULL,
  `11621A0547` int(11) DEFAULT NULL,
  `11621A0548` int(11) DEFAULT NULL,
  `11621A0549` int(11) DEFAULT NULL,
  `11621A0551` int(11) DEFAULT NULL,
  `11621A0552` int(11) DEFAULT NULL,
  `11621A0553` int(11) DEFAULT NULL,
  `11621A0554` int(11) DEFAULT NULL,
  `11621A0555` int(11) DEFAULT NULL,
  `11621A0557` int(11) DEFAULT NULL,
  `11621A0558` int(11) DEFAULT NULL,
  `11621A0559` int(11) DEFAULT NULL,
  `11621A0560` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_4a_ms`
--

INSERT INTO `tb_4a_ms` (`date`, `10621A0522`, `10621A0550`, `11621A0501`, `11621A0502`, `11621A0503`, `11621A0504`, `11621A0505`, `11621A0506`, `11621A0507`, `11621A0508`, `11621A0509`, `11621A0510`, `11621A0511`, `11621A0512`, `11621A0513`, `11621A0514`, `11621A0515`, `11621A0516`, `11621A0517`, `11621A0518`, `11621A0520`, `11621A0521`, `11621A0522`, `11621A0523`, `11621A0524`, `11621A0525`, `11621A0526`, `11621A0527`, `11621A0528`, `11621A0529`, `11621A0530`, `11621A0531`, `11621A0532`, `11621A0533`, `11621A0534`, `11621A0535`, `11621A0536`, `11621A0537`, `11621A0538`, `11621A0539`, `11621A0540`, `11621A0541`, `11621A0542`, `11621A0544`, `11621A0545`, `11621A0546`, `11621A0547`, `11621A0548`, `11621A0549`, `11621A0551`, `11621A0552`, `11621A0553`, `11621A0554`, `11621A0555`, `11621A0557`, `11621A0558`, `11621A0559`, `11621A0560`, `number`) VALUES
('29/03/2015', 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2),
('30/03/2015', 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_4a_ws`
--

CREATE TABLE IF NOT EXISTS `tb_4a_ws` (
  `date` varchar(100) NOT NULL DEFAULT '',
  `10621A0522` int(11) DEFAULT NULL,
  `10621A0550` int(11) DEFAULT NULL,
  `11621A0501` int(11) DEFAULT NULL,
  `11621A0502` int(11) DEFAULT NULL,
  `11621A0503` int(11) DEFAULT NULL,
  `11621A0504` int(11) DEFAULT NULL,
  `11621A0505` int(11) DEFAULT NULL,
  `11621A0506` int(11) DEFAULT NULL,
  `11621A0507` int(11) DEFAULT NULL,
  `11621A0508` int(11) DEFAULT NULL,
  `11621A0509` int(11) DEFAULT NULL,
  `11621A0510` int(11) DEFAULT NULL,
  `11621A0511` int(11) DEFAULT NULL,
  `11621A0512` int(11) DEFAULT NULL,
  `11621A0513` int(11) DEFAULT NULL,
  `11621A0514` int(11) DEFAULT NULL,
  `11621A0515` int(11) DEFAULT NULL,
  `11621A0516` int(11) DEFAULT NULL,
  `11621A0517` int(11) DEFAULT NULL,
  `11621A0518` int(11) DEFAULT NULL,
  `11621A0520` int(11) DEFAULT NULL,
  `11621A0521` int(11) DEFAULT NULL,
  `11621A0522` int(11) DEFAULT NULL,
  `11621A0523` int(11) DEFAULT NULL,
  `11621A0524` int(11) DEFAULT NULL,
  `11621A0525` int(11) DEFAULT NULL,
  `11621A0526` int(11) DEFAULT NULL,
  `11621A0527` int(11) DEFAULT NULL,
  `11621A0528` int(11) DEFAULT NULL,
  `11621A0529` int(11) DEFAULT NULL,
  `11621A0530` int(11) DEFAULT NULL,
  `11621A0531` int(11) DEFAULT NULL,
  `11621A0532` int(11) DEFAULT NULL,
  `11621A0533` int(11) DEFAULT NULL,
  `11621A0534` int(11) DEFAULT NULL,
  `11621A0535` int(11) DEFAULT NULL,
  `11621A0536` int(11) DEFAULT NULL,
  `11621A0537` int(11) DEFAULT NULL,
  `11621A0538` int(11) DEFAULT NULL,
  `11621A0539` int(11) DEFAULT NULL,
  `11621A0540` int(11) DEFAULT NULL,
  `11621A0541` int(11) DEFAULT NULL,
  `11621A0542` int(11) DEFAULT NULL,
  `11621A0544` int(11) DEFAULT NULL,
  `11621A0545` int(11) DEFAULT NULL,
  `11621A0546` int(11) DEFAULT NULL,
  `11621A0547` int(11) DEFAULT NULL,
  `11621A0548` int(11) DEFAULT NULL,
  `11621A0549` int(11) DEFAULT NULL,
  `11621A0551` int(11) DEFAULT NULL,
  `11621A0552` int(11) DEFAULT NULL,
  `11621A0553` int(11) DEFAULT NULL,
  `11621A0554` int(11) DEFAULT NULL,
  `11621A0555` int(11) DEFAULT NULL,
  `11621A0557` int(11) DEFAULT NULL,
  `11621A0558` int(11) DEFAULT NULL,
  `11621A0559` int(11) DEFAULT NULL,
  `11621A0560` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_4a_ws`
--

INSERT INTO `tb_4a_ws` (`date`, `10621A0522`, `10621A0550`, `11621A0501`, `11621A0502`, `11621A0503`, `11621A0504`, `11621A0505`, `11621A0506`, `11621A0507`, `11621A0508`, `11621A0509`, `11621A0510`, `11621A0511`, `11621A0512`, `11621A0513`, `11621A0514`, `11621A0515`, `11621A0516`, `11621A0517`, `11621A0518`, `11621A0520`, `11621A0521`, `11621A0522`, `11621A0523`, `11621A0524`, `11621A0525`, `11621A0526`, `11621A0527`, `11621A0528`, `11621A0529`, `11621A0530`, `11621A0531`, `11621A0532`, `11621A0533`, `11621A0534`, `11621A0535`, `11621A0536`, `11621A0537`, `11621A0538`, `11621A0539`, `11621A0540`, `11621A0541`, `11621A0542`, `11621A0544`, `11621A0545`, `11621A0546`, `11621A0547`, `11621A0548`, `11621A0549`, `11621A0551`, `11621A0552`, `11621A0553`, `11621A0554`, `11621A0555`, `11621A0557`, `11621A0558`, `11621A0559`, `11621A0560`, `number`) VALUES
('29/03/2015', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
('30/03/2015', 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_4b_asn`
--

CREATE TABLE IF NOT EXISTS `tb_4b_asn` (
  `date` varchar(100) NOT NULL DEFAULT '',
  `10621A0580` int(11) DEFAULT NULL,
  `10621A05A0` int(11) DEFAULT NULL,
  `11621A0561` int(11) DEFAULT NULL,
  `11621A0562` int(11) DEFAULT NULL,
  `11621A0564` int(11) DEFAULT NULL,
  `11621A0565` int(11) DEFAULT NULL,
  `11621A0566` int(11) DEFAULT NULL,
  `11621A0567` int(11) DEFAULT NULL,
  `11621A0569` int(11) DEFAULT NULL,
  `11621A0570` int(11) DEFAULT NULL,
  `11621A0571` int(11) DEFAULT NULL,
  `11621A0572` int(11) DEFAULT NULL,
  `11621A0573` int(11) DEFAULT NULL,
  `11621A0575` int(11) DEFAULT NULL,
  `11621A0576` int(11) DEFAULT NULL,
  `11621A0577` int(11) DEFAULT NULL,
  `11621A0578` int(11) DEFAULT NULL,
  `11621A0579` int(11) DEFAULT NULL,
  `11621A0580` int(11) DEFAULT NULL,
  `11621A0581` int(11) DEFAULT NULL,
  `11621A0582` int(11) DEFAULT NULL,
  `11621A0583` int(11) DEFAULT NULL,
  `11621A0584` int(11) DEFAULT NULL,
  `11621A0585` int(11) DEFAULT NULL,
  `11621A0586` int(11) DEFAULT NULL,
  `11621A0587` int(11) DEFAULT NULL,
  `11621A0588` int(11) DEFAULT NULL,
  `11621A0589` int(11) DEFAULT NULL,
  `11621A0591` int(11) DEFAULT NULL,
  `11621A0592` int(11) DEFAULT NULL,
  `11621A0593` int(11) DEFAULT NULL,
  `11621A0594` int(11) DEFAULT NULL,
  `11621A0595` int(11) DEFAULT NULL,
  `11621A0596` int(11) DEFAULT NULL,
  `11621A0597` int(11) DEFAULT NULL,
  `11621A0599` int(11) DEFAULT NULL,
  `11621A05A0` int(11) DEFAULT NULL,
  `11621A05A1` int(11) DEFAULT NULL,
  `11621A05A2` int(11) DEFAULT NULL,
  `11621A05A3` int(11) DEFAULT NULL,
  `11621A05A4` int(11) DEFAULT NULL,
  `11621A05A5` int(11) DEFAULT NULL,
  `11621A05A6` int(11) DEFAULT NULL,
  `11621A05A7` int(11) DEFAULT NULL,
  `11621A05A8` int(11) DEFAULT NULL,
  `11621A05A9` int(11) DEFAULT NULL,
  `11621A05B0` int(11) DEFAULT NULL,
  `11621A05B1` int(11) DEFAULT NULL,
  `11621A05B2` int(11) DEFAULT NULL,
  `11621A05B3` int(11) DEFAULT NULL,
  `11621A05B4` int(11) DEFAULT NULL,
  `11621A05B5` int(11) DEFAULT NULL,
  `11621A05B7` int(11) DEFAULT NULL,
  `11621A05B8` int(11) DEFAULT NULL,
  `11621A05B9` int(11) DEFAULT NULL,
  `11621A05C0` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_4b_asn`
--

INSERT INTO `tb_4b_asn` (`date`, `10621A0580`, `10621A05A0`, `11621A0561`, `11621A0562`, `11621A0564`, `11621A0565`, `11621A0566`, `11621A0567`, `11621A0569`, `11621A0570`, `11621A0571`, `11621A0572`, `11621A0573`, `11621A0575`, `11621A0576`, `11621A0577`, `11621A0578`, `11621A0579`, `11621A0580`, `11621A0581`, `11621A0582`, `11621A0583`, `11621A0584`, `11621A0585`, `11621A0586`, `11621A0587`, `11621A0588`, `11621A0589`, `11621A0591`, `11621A0592`, `11621A0593`, `11621A0594`, `11621A0595`, `11621A0596`, `11621A0597`, `11621A0599`, `11621A05A0`, `11621A05A1`, `11621A05A2`, `11621A05A3`, `11621A05A4`, `11621A05A5`, `11621A05A6`, `11621A05A7`, `11621A05A8`, `11621A05A9`, `11621A05B0`, `11621A05B1`, `11621A05B2`, `11621A05B3`, `11621A05B4`, `11621A05B5`, `11621A05B7`, `11621A05B8`, `11621A05B9`, `11621A05C0`, `number`) VALUES
('29/03/2015', 4, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4),
('30/03/2015', 2, 2, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_4b_daysheet`
--

CREATE TABLE IF NOT EXISTS `tb_4b_daysheet` (
  `date` varchar(50) NOT NULL DEFAULT '',
  `class1` varchar(50) DEFAULT NULL,
  `class2` varchar(50) DEFAULT NULL,
  `class3` varchar(50) DEFAULT NULL,
  `class4` varchar(50) DEFAULT NULL,
  `class5` varchar(50) DEFAULT NULL,
  `class6` varchar(50) DEFAULT NULL,
  `class7` varchar(50) DEFAULT NULL,
  `class8` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_4b_daysheet`
--

INSERT INTO `tb_4b_daysheet` (`date`, `class1`, `class2`, `class3`, `class4`, `class5`, `class6`, `class7`, `class8`) VALUES
('29/03/2015', 'ASN', 'ASN', 'WS', 'WS', 'ASN', 'ASN', 'MS', 'MS'),
('30/03/2015', 'ASN', 'ASN', 'null', 'null', 'null', 'null', 'null', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `tb_4b_marksheet`
--

CREATE TABLE IF NOT EXISTS `tb_4b_marksheet` (
  `rollno` varchar(100) NOT NULL DEFAULT '',
  `internal` int(11) DEFAULT NULL,
  `WS` int(11) DEFAULT NULL,
  `ASN` int(11) DEFAULT NULL,
  `MS` int(11) DEFAULT NULL,
  PRIMARY KEY (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_4b_marksheet`
--

INSERT INTO `tb_4b_marksheet` (`rollno`, `internal`, `WS`, `ASN`, `MS`) VALUES
('10621A0580', 1, NULL, 0, 0),
('10621A05A0', 1, NULL, 0, 0),
('11621A0561', 1, NULL, 0, 0),
('11621A0562', 1, NULL, 0, 0),
('11621A0564', 1, NULL, 0, 0),
('11621A0565', 1, NULL, 0, 0),
('11621A0566', 1, NULL, 0, 0),
('11621A0567', 1, NULL, 0, 0),
('11621A0569', 1, NULL, 0, 0),
('11621A0570', 1, NULL, 0, 0),
('11621A0571', 1, NULL, 0, 0),
('11621A0572', 1, NULL, 0, 0),
('11621A0573', 1, NULL, 0, 0),
('11621A0575', 1, NULL, 0, 0),
('11621A0576', 1, NULL, 0, 0),
('11621A0577', 1, NULL, 0, 0),
('11621A0578', 1, NULL, 0, 0),
('11621A0579', 1, NULL, 0, 0),
('11621A0580', 1, NULL, 0, 0),
('11621A0581', 1, NULL, 0, 0),
('11621A0582', 1, NULL, 0, 0),
('11621A0583', 1, NULL, 0, 0),
('11621A0584', 1, NULL, 0, 0),
('11621A0585', 1, NULL, 0, 0),
('11621A0586', 1, NULL, 0, 0),
('11621A0587', 1, NULL, 0, 0),
('11621A0588', 1, NULL, 0, 0),
('11621A0589', 1, NULL, 0, 0),
('11621A0591', 1, NULL, 0, 0),
('11621A0592', 1, NULL, 0, 0),
('11621A0593', 1, NULL, 0, 0),
('11621A0594', 1, NULL, 0, 0),
('11621A0595', 1, NULL, 0, 0),
('11621A0596', 1, NULL, 0, 0),
('11621A0597', 1, NULL, 0, 0),
('11621A0599', 1, NULL, 0, 0),
('11621A05A0', 1, NULL, 0, 0),
('11621A05A1', 1, NULL, 0, 0),
('11621A05A2', 1, NULL, 0, 0),
('11621A05A3', 1, NULL, 0, 0),
('11621A05A4', 1, NULL, 0, 0),
('11621A05A5', 1, NULL, 0, 0),
('11621A05A6', 1, NULL, 0, 0),
('11621A05A7', 1, NULL, 0, 0),
('11621A05A8', 1, NULL, 0, 0),
('11621A05A9', 1, NULL, 0, 0),
('11621A05B0', 1, NULL, 0, 0),
('11621A05B1', 1, NULL, 0, 0),
('11621A05B2', 1, NULL, 0, 0),
('11621A05B3', 1, NULL, 0, 0),
('11621A05B4', 1, NULL, 0, 0),
('11621A05B5', 1, NULL, 0, 0),
('11621A05B7', 1, NULL, 0, 0),
('11621A05B8', 1, NULL, 0, 0),
('11621A05B9', 1, NULL, 0, 0),
('11621A05C0', 1, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_4b_ms`
--

CREATE TABLE IF NOT EXISTS `tb_4b_ms` (
  `date` varchar(100) NOT NULL DEFAULT '',
  `10621A0580` int(11) DEFAULT NULL,
  `10621A05A0` int(11) DEFAULT NULL,
  `11621A0561` int(11) DEFAULT NULL,
  `11621A0562` int(11) DEFAULT NULL,
  `11621A0564` int(11) DEFAULT NULL,
  `11621A0565` int(11) DEFAULT NULL,
  `11621A0566` int(11) DEFAULT NULL,
  `11621A0567` int(11) DEFAULT NULL,
  `11621A0569` int(11) DEFAULT NULL,
  `11621A0570` int(11) DEFAULT NULL,
  `11621A0571` int(11) DEFAULT NULL,
  `11621A0572` int(11) DEFAULT NULL,
  `11621A0573` int(11) DEFAULT NULL,
  `11621A0575` int(11) DEFAULT NULL,
  `11621A0576` int(11) DEFAULT NULL,
  `11621A0577` int(11) DEFAULT NULL,
  `11621A0578` int(11) DEFAULT NULL,
  `11621A0579` int(11) DEFAULT NULL,
  `11621A0580` int(11) DEFAULT NULL,
  `11621A0581` int(11) DEFAULT NULL,
  `11621A0582` int(11) DEFAULT NULL,
  `11621A0583` int(11) DEFAULT NULL,
  `11621A0584` int(11) DEFAULT NULL,
  `11621A0585` int(11) DEFAULT NULL,
  `11621A0586` int(11) DEFAULT NULL,
  `11621A0587` int(11) DEFAULT NULL,
  `11621A0588` int(11) DEFAULT NULL,
  `11621A0589` int(11) DEFAULT NULL,
  `11621A0591` int(11) DEFAULT NULL,
  `11621A0592` int(11) DEFAULT NULL,
  `11621A0593` int(11) DEFAULT NULL,
  `11621A0594` int(11) DEFAULT NULL,
  `11621A0595` int(11) DEFAULT NULL,
  `11621A0596` int(11) DEFAULT NULL,
  `11621A0597` int(11) DEFAULT NULL,
  `11621A0599` int(11) DEFAULT NULL,
  `11621A05A0` int(11) DEFAULT NULL,
  `11621A05A1` int(11) DEFAULT NULL,
  `11621A05A2` int(11) DEFAULT NULL,
  `11621A05A3` int(11) DEFAULT NULL,
  `11621A05A4` int(11) DEFAULT NULL,
  `11621A05A5` int(11) DEFAULT NULL,
  `11621A05A6` int(11) DEFAULT NULL,
  `11621A05A7` int(11) DEFAULT NULL,
  `11621A05A8` int(11) DEFAULT NULL,
  `11621A05A9` int(11) DEFAULT NULL,
  `11621A05B0` int(11) DEFAULT NULL,
  `11621A05B1` int(11) DEFAULT NULL,
  `11621A05B2` int(11) DEFAULT NULL,
  `11621A05B3` int(11) DEFAULT NULL,
  `11621A05B4` int(11) DEFAULT NULL,
  `11621A05B5` int(11) DEFAULT NULL,
  `11621A05B7` int(11) DEFAULT NULL,
  `11621A05B8` int(11) DEFAULT NULL,
  `11621A05B9` int(11) DEFAULT NULL,
  `11621A05C0` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_4b_ms`
--

INSERT INTO `tb_4b_ms` (`date`, `10621A0580`, `10621A05A0`, `11621A0561`, `11621A0562`, `11621A0564`, `11621A0565`, `11621A0566`, `11621A0567`, `11621A0569`, `11621A0570`, `11621A0571`, `11621A0572`, `11621A0573`, `11621A0575`, `11621A0576`, `11621A0577`, `11621A0578`, `11621A0579`, `11621A0580`, `11621A0581`, `11621A0582`, `11621A0583`, `11621A0584`, `11621A0585`, `11621A0586`, `11621A0587`, `11621A0588`, `11621A0589`, `11621A0591`, `11621A0592`, `11621A0593`, `11621A0594`, `11621A0595`, `11621A0596`, `11621A0597`, `11621A0599`, `11621A05A0`, `11621A05A1`, `11621A05A2`, `11621A05A3`, `11621A05A4`, `11621A05A5`, `11621A05A6`, `11621A05A7`, `11621A05A8`, `11621A05A9`, `11621A05B0`, `11621A05B1`, `11621A05B2`, `11621A05B3`, `11621A05B4`, `11621A05B5`, `11621A05B7`, `11621A05B8`, `11621A05B9`, `11621A05C0`, `number`) VALUES
('29/03/2015', 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_4b_ws`
--

CREATE TABLE IF NOT EXISTS `tb_4b_ws` (
  `date` varchar(100) NOT NULL DEFAULT '',
  `10621A0580` int(11) DEFAULT NULL,
  `10621A05A0` int(11) DEFAULT NULL,
  `11621A0561` int(11) DEFAULT NULL,
  `11621A0562` int(11) DEFAULT NULL,
  `11621A0564` int(11) DEFAULT NULL,
  `11621A0565` int(11) DEFAULT NULL,
  `11621A0566` int(11) DEFAULT NULL,
  `11621A0567` int(11) DEFAULT NULL,
  `11621A0569` int(11) DEFAULT NULL,
  `11621A0570` int(11) DEFAULT NULL,
  `11621A0571` int(11) DEFAULT NULL,
  `11621A0572` int(11) DEFAULT NULL,
  `11621A0573` int(11) DEFAULT NULL,
  `11621A0575` int(11) DEFAULT NULL,
  `11621A0576` int(11) DEFAULT NULL,
  `11621A0577` int(11) DEFAULT NULL,
  `11621A0578` int(11) DEFAULT NULL,
  `11621A0579` int(11) DEFAULT NULL,
  `11621A0580` int(11) DEFAULT NULL,
  `11621A0581` int(11) DEFAULT NULL,
  `11621A0582` int(11) DEFAULT NULL,
  `11621A0583` int(11) DEFAULT NULL,
  `11621A0584` int(11) DEFAULT NULL,
  `11621A0585` int(11) DEFAULT NULL,
  `11621A0586` int(11) DEFAULT NULL,
  `11621A0587` int(11) DEFAULT NULL,
  `11621A0588` int(11) DEFAULT NULL,
  `11621A0589` int(11) DEFAULT NULL,
  `11621A0591` int(11) DEFAULT NULL,
  `11621A0592` int(11) DEFAULT NULL,
  `11621A0593` int(11) DEFAULT NULL,
  `11621A0594` int(11) DEFAULT NULL,
  `11621A0595` int(11) DEFAULT NULL,
  `11621A0596` int(11) DEFAULT NULL,
  `11621A0597` int(11) DEFAULT NULL,
  `11621A0599` int(11) DEFAULT NULL,
  `11621A05A0` int(11) DEFAULT NULL,
  `11621A05A1` int(11) DEFAULT NULL,
  `11621A05A2` int(11) DEFAULT NULL,
  `11621A05A3` int(11) DEFAULT NULL,
  `11621A05A4` int(11) DEFAULT NULL,
  `11621A05A5` int(11) DEFAULT NULL,
  `11621A05A6` int(11) DEFAULT NULL,
  `11621A05A7` int(11) DEFAULT NULL,
  `11621A05A8` int(11) DEFAULT NULL,
  `11621A05A9` int(11) DEFAULT NULL,
  `11621A05B0` int(11) DEFAULT NULL,
  `11621A05B1` int(11) DEFAULT NULL,
  `11621A05B2` int(11) DEFAULT NULL,
  `11621A05B3` int(11) DEFAULT NULL,
  `11621A05B4` int(11) DEFAULT NULL,
  `11621A05B5` int(11) DEFAULT NULL,
  `11621A05B7` int(11) DEFAULT NULL,
  `11621A05B8` int(11) DEFAULT NULL,
  `11621A05B9` int(11) DEFAULT NULL,
  `11621A05C0` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_4b_ws`
--

INSERT INTO `tb_4b_ws` (`date`, `10621A0580`, `10621A05A0`, `11621A0561`, `11621A0562`, `11621A0564`, `11621A0565`, `11621A0566`, `11621A0567`, `11621A0569`, `11621A0570`, `11621A0571`, `11621A0572`, `11621A0573`, `11621A0575`, `11621A0576`, `11621A0577`, `11621A0578`, `11621A0579`, `11621A0580`, `11621A0581`, `11621A0582`, `11621A0583`, `11621A0584`, `11621A0585`, `11621A0586`, `11621A0587`, `11621A0588`, `11621A0589`, `11621A0591`, `11621A0592`, `11621A0593`, `11621A0594`, `11621A0595`, `11621A0596`, `11621A0597`, `11621A0599`, `11621A05A0`, `11621A05A1`, `11621A05A2`, `11621A05A3`, `11621A05A4`, `11621A05A5`, `11621A05A6`, `11621A05A7`, `11621A05A8`, `11621A05A9`, `11621A05B0`, `11621A05B1`, `11621A05B2`, `11621A05B3`, `11621A05B4`, `11621A05B5`, `11621A05B7`, `11621A05B8`, `11621A05B9`, `11621A05C0`, `number`) VALUES
('29/03/2015', 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_4c_asn`
--

CREATE TABLE IF NOT EXISTS `tb_4c_asn` (
  `date` varchar(100) NOT NULL DEFAULT '',
  `09621A0508` int(11) DEFAULT NULL,
  `10621A0546` int(11) DEFAULT NULL,
  `11621A05C1` int(11) DEFAULT NULL,
  `11621A05C2` int(11) DEFAULT NULL,
  `11621A05C3` int(11) DEFAULT NULL,
  `11621A05C5` int(11) DEFAULT NULL,
  `11621A05C6` int(11) DEFAULT NULL,
  `11621A05C7` int(11) DEFAULT NULL,
  `11621A05C9` int(11) DEFAULT NULL,
  `11621A05D1` int(11) DEFAULT NULL,
  `11621A05D2` int(11) DEFAULT NULL,
  `11621A05D3` int(11) DEFAULT NULL,
  `11621A05D4` int(11) DEFAULT NULL,
  `11621A05D5` int(11) DEFAULT NULL,
  `11621A05D6` int(11) DEFAULT NULL,
  `11621A05D7` int(11) DEFAULT NULL,
  `11621A05D9` int(11) DEFAULT NULL,
  `11621A05E0` int(11) DEFAULT NULL,
  `11621A05E1` int(11) DEFAULT NULL,
  `11621A05E2` int(11) DEFAULT NULL,
  `11621A05E3` int(11) DEFAULT NULL,
  `11621A05E4` int(11) DEFAULT NULL,
  `11621A05E5` int(11) DEFAULT NULL,
  `11621A05E6` int(11) DEFAULT NULL,
  `11621A05E7` int(11) DEFAULT NULL,
  `11621A05E8` int(11) DEFAULT NULL,
  `11621A05E9` int(11) DEFAULT NULL,
  `11621A05F0` int(11) DEFAULT NULL,
  `11621A05F2` int(11) DEFAULT NULL,
  `11621A05F3` int(11) DEFAULT NULL,
  `11621A05F4` int(11) DEFAULT NULL,
  `11621A05F6` int(11) DEFAULT NULL,
  `11621A05F7` int(11) DEFAULT NULL,
  `11621A05F8` int(11) DEFAULT NULL,
  `11621A05F9` int(11) DEFAULT NULL,
  `11621A05G0` int(11) DEFAULT NULL,
  `11621A05G1` int(11) DEFAULT NULL,
  `11621A05G2` int(11) DEFAULT NULL,
  `11621A05G3` int(11) DEFAULT NULL,
  `11621A05G4` int(11) DEFAULT NULL,
  `11621A05G5` int(11) DEFAULT NULL,
  `11621A05G7` int(11) DEFAULT NULL,
  `11621A05H0` int(11) DEFAULT NULL,
  `11621A05H1` int(11) DEFAULT NULL,
  `11621A05H2` int(11) DEFAULT NULL,
  `11621A05H3` int(11) DEFAULT NULL,
  `11621A05H4` int(11) DEFAULT NULL,
  `11621A05H7` int(11) DEFAULT NULL,
  `11621A05H8` int(11) DEFAULT NULL,
  `11621A05H9` int(11) DEFAULT NULL,
  `11621A05I0` int(11) DEFAULT NULL,
  `11U71A0525` int(11) DEFAULT NULL,
  `11U71A0526` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_4c_daysheet`
--

CREATE TABLE IF NOT EXISTS `tb_4c_daysheet` (
  `date` varchar(50) NOT NULL DEFAULT '',
  `class1` varchar(50) DEFAULT NULL,
  `class2` varchar(50) DEFAULT NULL,
  `class3` varchar(50) DEFAULT NULL,
  `class4` varchar(50) DEFAULT NULL,
  `class5` varchar(50) DEFAULT NULL,
  `class6` varchar(50) DEFAULT NULL,
  `class7` varchar(50) DEFAULT NULL,
  `class8` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_4c_marksheet`
--

CREATE TABLE IF NOT EXISTS `tb_4c_marksheet` (
  `rollno` varchar(100) NOT NULL DEFAULT '',
  `internal` int(11) DEFAULT NULL,
  `WS` int(11) DEFAULT NULL,
  `ASN` int(11) DEFAULT NULL,
  `MS` int(11) DEFAULT NULL,
  PRIMARY KEY (`rollno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_4c_ms`
--

CREATE TABLE IF NOT EXISTS `tb_4c_ms` (
  `date` varchar(100) NOT NULL DEFAULT '',
  `09621A0508` int(11) DEFAULT NULL,
  `10621A0546` int(11) DEFAULT NULL,
  `11621A05C1` int(11) DEFAULT NULL,
  `11621A05C2` int(11) DEFAULT NULL,
  `11621A05C3` int(11) DEFAULT NULL,
  `11621A05C5` int(11) DEFAULT NULL,
  `11621A05C6` int(11) DEFAULT NULL,
  `11621A05C7` int(11) DEFAULT NULL,
  `11621A05C9` int(11) DEFAULT NULL,
  `11621A05D1` int(11) DEFAULT NULL,
  `11621A05D2` int(11) DEFAULT NULL,
  `11621A05D3` int(11) DEFAULT NULL,
  `11621A05D4` int(11) DEFAULT NULL,
  `11621A05D5` int(11) DEFAULT NULL,
  `11621A05D6` int(11) DEFAULT NULL,
  `11621A05D7` int(11) DEFAULT NULL,
  `11621A05D9` int(11) DEFAULT NULL,
  `11621A05E0` int(11) DEFAULT NULL,
  `11621A05E1` int(11) DEFAULT NULL,
  `11621A05E2` int(11) DEFAULT NULL,
  `11621A05E3` int(11) DEFAULT NULL,
  `11621A05E4` int(11) DEFAULT NULL,
  `11621A05E5` int(11) DEFAULT NULL,
  `11621A05E6` int(11) DEFAULT NULL,
  `11621A05E7` int(11) DEFAULT NULL,
  `11621A05E8` int(11) DEFAULT NULL,
  `11621A05E9` int(11) DEFAULT NULL,
  `11621A05F0` int(11) DEFAULT NULL,
  `11621A05F2` int(11) DEFAULT NULL,
  `11621A05F3` int(11) DEFAULT NULL,
  `11621A05F4` int(11) DEFAULT NULL,
  `11621A05F6` int(11) DEFAULT NULL,
  `11621A05F7` int(11) DEFAULT NULL,
  `11621A05F8` int(11) DEFAULT NULL,
  `11621A05F9` int(11) DEFAULT NULL,
  `11621A05G0` int(11) DEFAULT NULL,
  `11621A05G1` int(11) DEFAULT NULL,
  `11621A05G2` int(11) DEFAULT NULL,
  `11621A05G3` int(11) DEFAULT NULL,
  `11621A05G4` int(11) DEFAULT NULL,
  `11621A05G5` int(11) DEFAULT NULL,
  `11621A05G7` int(11) DEFAULT NULL,
  `11621A05H0` int(11) DEFAULT NULL,
  `11621A05H1` int(11) DEFAULT NULL,
  `11621A05H2` int(11) DEFAULT NULL,
  `11621A05H3` int(11) DEFAULT NULL,
  `11621A05H4` int(11) DEFAULT NULL,
  `11621A05H7` int(11) DEFAULT NULL,
  `11621A05H8` int(11) DEFAULT NULL,
  `11621A05H9` int(11) DEFAULT NULL,
  `11621A05I0` int(11) DEFAULT NULL,
  `11U71A0525` int(11) DEFAULT NULL,
  `11U71A0526` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_4c_ws`
--

CREATE TABLE IF NOT EXISTS `tb_4c_ws` (
  `date` varchar(100) NOT NULL DEFAULT '',
  `09621A0508` int(11) DEFAULT NULL,
  `10621A0546` int(11) DEFAULT NULL,
  `11621A05C1` int(11) DEFAULT NULL,
  `11621A05C2` int(11) DEFAULT NULL,
  `11621A05C3` int(11) DEFAULT NULL,
  `11621A05C5` int(11) DEFAULT NULL,
  `11621A05C6` int(11) DEFAULT NULL,
  `11621A05C7` int(11) DEFAULT NULL,
  `11621A05C9` int(11) DEFAULT NULL,
  `11621A05D1` int(11) DEFAULT NULL,
  `11621A05D2` int(11) DEFAULT NULL,
  `11621A05D3` int(11) DEFAULT NULL,
  `11621A05D4` int(11) DEFAULT NULL,
  `11621A05D5` int(11) DEFAULT NULL,
  `11621A05D6` int(11) DEFAULT NULL,
  `11621A05D7` int(11) DEFAULT NULL,
  `11621A05D9` int(11) DEFAULT NULL,
  `11621A05E0` int(11) DEFAULT NULL,
  `11621A05E1` int(11) DEFAULT NULL,
  `11621A05E2` int(11) DEFAULT NULL,
  `11621A05E3` int(11) DEFAULT NULL,
  `11621A05E4` int(11) DEFAULT NULL,
  `11621A05E5` int(11) DEFAULT NULL,
  `11621A05E6` int(11) DEFAULT NULL,
  `11621A05E7` int(11) DEFAULT NULL,
  `11621A05E8` int(11) DEFAULT NULL,
  `11621A05E9` int(11) DEFAULT NULL,
  `11621A05F0` int(11) DEFAULT NULL,
  `11621A05F2` int(11) DEFAULT NULL,
  `11621A05F3` int(11) DEFAULT NULL,
  `11621A05F4` int(11) DEFAULT NULL,
  `11621A05F6` int(11) DEFAULT NULL,
  `11621A05F7` int(11) DEFAULT NULL,
  `11621A05F8` int(11) DEFAULT NULL,
  `11621A05F9` int(11) DEFAULT NULL,
  `11621A05G0` int(11) DEFAULT NULL,
  `11621A05G1` int(11) DEFAULT NULL,
  `11621A05G2` int(11) DEFAULT NULL,
  `11621A05G3` int(11) DEFAULT NULL,
  `11621A05G4` int(11) DEFAULT NULL,
  `11621A05G5` int(11) DEFAULT NULL,
  `11621A05G7` int(11) DEFAULT NULL,
  `11621A05H0` int(11) DEFAULT NULL,
  `11621A05H1` int(11) DEFAULT NULL,
  `11621A05H2` int(11) DEFAULT NULL,
  `11621A05H3` int(11) DEFAULT NULL,
  `11621A05H4` int(11) DEFAULT NULL,
  `11621A05H7` int(11) DEFAULT NULL,
  `11621A05H8` int(11) DEFAULT NULL,
  `11621A05H9` int(11) DEFAULT NULL,
  `11621A05I0` int(11) DEFAULT NULL,
  `11U71A0525` int(11) DEFAULT NULL,
  `11U71A0526` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_achievements`
--

CREATE TABLE IF NOT EXISTS `tb_achievements` (
  `section` varchar(20) NOT NULL,
  `achieve_name` varchar(50) NOT NULL,
  `ondate` varchar(30) NOT NULL,
  `stu_name` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_assignment`
--

CREATE TABLE IF NOT EXISTS `tb_assignment` (
  `section` varchar(10) NOT NULL,
  `givenby` varchar(20) NOT NULL,
  `givendate` varchar(30) NOT NULL,
  `description` varchar(900) NOT NULL,
  `location` varchar(300) NOT NULL,
  `subdate` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_circular`
--

CREATE TABLE IF NOT EXISTS `tb_circular` (
  `section` varchar(20) NOT NULL,
  `givenby` varchar(30) NOT NULL,
  `issued_on` varchar(30) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  `location` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_comp`
--

CREATE TABLE IF NOT EXISTS `tb_comp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sfid` varchar(20) DEFAULT NULL,
  `complaints` text,
  `solution` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_complaints`
--

CREATE TABLE IF NOT EXISTS `tb_complaints` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(50) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `resolution` varchar(500) DEFAULT NULL,
  `resolvedon` varchar(20) DEFAULT NULL,
  `resid` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_csesections`
--

CREATE TABLE IF NOT EXISTS `tb_csesections` (
  `sname` varchar(20) NOT NULL,
  PRIMARY KEY (`sname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_csesections`
--

INSERT INTO `tb_csesections` (`sname`) VALUES
('1A'),
('1B'),
('2'),
('3A'),
('3B'),
('4A'),
('4B'),
('4C');

-- --------------------------------------------------------

--
-- Table structure for table `tb_events`
--

CREATE TABLE IF NOT EXISTS `tb_events` (
  `section` varchar(20) NOT NULL,
  `evename` varchar(50) NOT NULL,
  `evedate` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL,
  `location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_events`
--

INSERT INTO `tb_events` (`section`, `evename`, `evedate`, `description`, `location`) VALUES
('4A', 'xyz', '2015-11-02', ' test', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_examtable`
--

CREATE TABLE IF NOT EXISTS `tb_examtable` (
  `section` varchar(20) NOT NULL,
  `date` varchar(10) NOT NULL,
  `description` varchar(300) NOT NULL,
  `location` varchar(200) NOT NULL,
  PRIMARY KEY (`section`,`date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_examtable`
--

INSERT INTO `tb_examtable` (`section`, `date`, `description`, `location`) VALUES
('3B', '30/03/2015', ' huk', 'exam/ApplicationForm-PrintOption.PDF');

-- --------------------------------------------------------

--
-- Table structure for table `tb_facdetails`
--

CREATE TABLE IF NOT EXISTS `tb_facdetails` (
  `facid` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `deisg` varchar(100) DEFAULT NULL,
  `dob` date NOT NULL,
  `cno` varchar(10) NOT NULL,
  `emailid` varchar(50) DEFAULT NULL,
  `pic` varchar(100) NOT NULL,
  PRIMARY KEY (`facid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_facdetails`
--

INSERT INTO `tb_facdetails` (`facid`, `name`, `department`, `qualification`, `deisg`, `dob`, `cno`, `emailid`, `pic`) VALUES
('1', 'Durga Pavani', 'CSE', 'PHD (pursuing)', 'HOD', '0000-00-00', '', '', '../faculty/pics/pic.png'),
('10', 'Afzal ahmed', 'CSE', 'MTECH', '', '0000-00-00', '', '', '../faculty/pics/pic.png'),
('11', 'Maheshwari', 'H&S', 'MBA', '', '0000-00-00', '', '', '../faculty/pics/pic.png'),
('2', 'Akhil Jabbar', 'CSE', 'PHD (pursuing)', 'Associate Professor', '0000-00-00', '', '', '../faculty/pics/pic.png'),
('3', 'M Y BABU', 'CSE', 'PHD (pursuing)', 'Associate Professor', '0000-00-00', '', '', '../faculty/pics/pic.png'),
('4', 'C bala Renga Durai', 'CSE', 'PHD (pursuing)', 'Associate Professor', '0000-00-00', '', '', '../faculty/pics/pic.png'),
('5', 'Suresh kumar', 'CSE', 'PHD (pursuing)', 'Associate Professor', '0000-00-00', '', '', '../faculty/pics/pic.png'),
('6', 'M Sowmya', 'CSE', 'MS', '', '0000-00-00', '', '', '../faculty/pics/pic.png'),
('7', 'P Naresh ', 'CSE', 'MTECH', '', '0000-00-00', '', '', '../faculty/pics/pic.png'),
('8', 'N sravanthi', 'CSE', 'MTECH', '', '0000-00-00', '', '', '../faculty/pics/pic.png'),
('9', 'J Sushma', 'CSE', 'MTECH', '', '0000-00-00', '', '', '../faculty/pics/pic.png'),
('fhb', 'kj', 'kbk', '', 'bkj', '0000-00-00', 'kn', 'lk', '../faculty/pics/pic.png'),
('principal', 'Srikanth Jatla', 'CSE', 'PHD (pursuing)', 'Principal', '0000-00-00', '', '', '../faculty/pics/pic.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_fcomp`
--

CREATE TABLE IF NOT EXISTS `tb_fcomp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` varchar(20) DEFAULT NULL,
  `complaints` text,
  `solution` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_fcomp`
--

INSERT INTO `tb_fcomp` (`id`, `fid`, `complaints`, `solution`) VALUES
(1, 'dsffsd', 'fsjofosf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE IF NOT EXISTS `tb_login` (
  `loginid` varchar(30) NOT NULL DEFAULT '',
  `passkey` varchar(100) DEFAULT NULL,
  `mode` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`loginid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`loginid`, `passkey`, `mode`) VALUES
('', '', 'faculty'),
(',njj', ',njj', 'faculty'),
('09621A0508', '09621A0508', 'student'),
('1', '1', 'faculty'),
('10', '10', 'faculty'),
('10621A0522', '10621A0522', 'student'),
('10621A0546', '10621A0546', 'student'),
('10621A0550', '10621A0550', 'student'),
('10621A0580', '10621A0580', 'student'),
('10621A05A0', '10621A05A0', 'student'),
('11', '11', 'faculty'),
('111111111', '111111111', 'faculty'),
('11621A0501', '11621A0501', 'student'),
('11621A0502', '11621A0502', 'student'),
('11621A0503', '11621A0503', 'student'),
('11621A0504', '11621A0504', 'student'),
('11621A0505', '11621A0505', 'student'),
('11621A0506', '11621A0506', 'student'),
('11621A0507', '11621A0507', 'student'),
('11621A0508', '11621A0508', 'student'),
('11621A0509', '11621A0509', 'student'),
('11621A0510', '11621A0510', 'student'),
('11621A0511', '11621A0511', 'student'),
('11621A0512', '11621A0512', 'student'),
('11621A0513', '11621A0513', 'student'),
('11621A0514', '11621A0514', 'student'),
('11621A0515', '11621A0515', 'student'),
('11621A0516', '11621A0516', 'student'),
('11621A0517', '11621A0517', 'student'),
('11621A0518', '11621A0518', 'student'),
('11621A0520', '11621A0520', 'student'),
('11621A0521', '11621A0521', 'student'),
('11621A0522', '11621A0522', 'student'),
('11621A0523', '11621A0523', 'student'),
('11621A0524', '11621A0524', 'student'),
('11621A0525', '11621A0525', 'student'),
('11621A0526', '11621A0526', 'student'),
('11621A0527', '11621A0527', 'student'),
('11621A0528', '11621A0528', 'student'),
('11621A0529', '11621A0529', 'student'),
('11621A0530', '11621A0530', 'student'),
('11621A0531', '11621A0531', 'student'),
('11621A0532', '11621A0532', 'student'),
('11621A0533', '11621A0533', 'student'),
('11621A0534', '11621A0534', 'student'),
('11621A0535', '11621A0535', 'student'),
('11621A0536', '11621A0536', 'student'),
('11621A0537', '11621A0537', 'student'),
('11621A0538', '11621A0538', 'student'),
('11621A0539', '11621A0539', 'student'),
('11621A0540', '11621A0540', 'student'),
('11621A0541', '11621A0541', 'student'),
('11621A0542', '11621A0542', 'student'),
('11621A0544', '11621A0544', 'student'),
('11621A0545', '11621A0545', 'student'),
('11621A0546', '11621A0546', 'student'),
('11621A0547', '11621A0547', 'student'),
('11621A0548', '11621A0548', 'student'),
('11621A0549', '11621A0549', 'student'),
('11621A0551', '11621A0551', 'student'),
('11621A0552', '11621A0552', 'student'),
('11621A0553', '11621A0553', 'student'),
('11621A0554', '11621A0554', 'student'),
('11621A0555', '11621A0555', 'student'),
('11621A0557', '11621A0557', 'student'),
('11621A0558', '11621A0558', 'student'),
('11621A0559', '11621A0559', 'student'),
('11621A0560', '11621A0560', 'student'),
('11621A0561', '11621A0561', 'student'),
('11621A0562', '11621A0562', 'student'),
('11621A0564', '11621A0564', 'student'),
('11621A0565', '11621A0565', 'student'),
('11621A0566', '11621A0566', 'student'),
('11621A0567', '11621A0567', 'student'),
('11621A0569', '11621A0569', 'student'),
('11621A0570', '11621A0570', 'student'),
('11621A0571', '11621A0571', 'student'),
('11621A0572', '11621A0572', 'student'),
('11621A0573', '11621A0573', 'student'),
('11621A0575', '11621A0575', 'student'),
('11621A0576', '11621A0576', 'student'),
('11621A0577', '11621A0577', 'student'),
('11621A0578', '11621A0578', 'student'),
('11621A0579', '11621A0579', 'student'),
('11621A0580', '11621A0580', 'student'),
('11621A0581', '11621A0581', 'student'),
('11621A0582', '11621A0582', 'student'),
('11621A0583', '11621A0583', 'student'),
('11621A0584', '11621A0584', 'student'),
('11621A0585', '11621A0585', 'student'),
('11621A0586', '11621A0586', 'student'),
('11621A0587', '11621A0587', 'student'),
('11621A0588', '11621A0588', 'student'),
('11621A0589', '11621A0589', 'student'),
('11621A0591', '11621A0591', 'student'),
('11621A0592', '11621A0592', 'student'),
('11621A0593', '11621A0593', 'student'),
('11621A0594', '11621A0594', 'student'),
('11621A0595', '11621A0595', 'student'),
('11621A0596', '11621A0596', 'student'),
('11621A0597', '11621A0597', 'student'),
('11621A0599', '11621A0599', 'student'),
('11621A05A0', '11621A05A0', 'student'),
('11621A05A1', '11621A05A1', 'student'),
('11621A05A2', '11621A05A2', 'student'),
('11621A05A3', '11621A05A3', 'student'),
('11621A05A4', '11621A05A4', 'student'),
('11621A05A5', '11621A05A5', 'student'),
('11621A05A6', '11621A05A6', 'student'),
('11621A05A7', '11621A05A7', 'student'),
('11621A05A8', '11621A05A8', 'student'),
('11621A05A9', '11621A05A9', 'student'),
('11621A05B0', '11621A05B0', 'student'),
('11621A05B1', '11621A05B1', 'student'),
('11621A05B2', '11621A05B2', 'student'),
('11621A05B3', '11621A05B3', 'student'),
('11621A05B4', '11621A05B4', 'student'),
('11621A05B5', '11621A05B5', 'student'),
('11621A05B7', '11621A05B7', 'student'),
('11621A05B8', '11621A05B8', 'student'),
('11621A05B9', '11621A05B9', 'student'),
('11621A05C0', '11621A05C0', 'student'),
('11621A05C1', '11621A05C1', 'student'),
('11621A05C2', '11621A05C2', 'student'),
('11621A05C3', '11621A05C3', 'student'),
('11621A05C5', '11621A05C5', 'student'),
('11621A05C6', '11621A05C6', 'student'),
('11621A05C7', '11621A05C7', 'student'),
('11621A05C9', '11621A05C9', 'student'),
('11621A05D1', '11621A05D1', 'student'),
('11621A05D2', '11621A05D2', 'student'),
('11621A05D3', '11621A05D3', 'student'),
('11621A05D4', '11621A05D4', 'student'),
('11621A05D5', '11621A05D5', 'student'),
('11621A05D6', '11621A05D6', 'student'),
('11621A05D7', '11621A05D7', 'student'),
('11621A05D9', '11621A05D9', 'student'),
('11621A05E0', '11621A05E0', 'student'),
('11621A05E1', '11621A05E1', 'student'),
('11621A05E2', '11621A05E2', 'student'),
('11621A05E3', '11621A05E3', 'student'),
('11621A05E4', '11621A05E4', 'student'),
('11621A05E5', '11621A05E5', 'student'),
('11621A05E6', '11621A05E6', 'student'),
('11621A05E7', '11621A05E7', 'student'),
('11621A05E8', '11621A05E8', 'student'),
('11621A05E9', '11621A05E9', 'student'),
('11621A05F0', '11621A05F0', 'student'),
('11621A05F2', '11621A05F2', 'student'),
('11621A05F3', '11621A05F3', 'student'),
('11621A05F4', '11621A05F4', 'student'),
('11621A05F6', '11621A05F6', 'student'),
('11621A05F7', '11621A05F7', 'student'),
('11621A05F8', '11621A05F8', 'student'),
('11621A05F9', '11621A05F9', 'student'),
('11621A05G0', '11621A05G0', 'student'),
('11621A05G1', '11621A05G1', 'student'),
('11621A05G2', '11621A05G2', 'student'),
('11621A05G3', '11621A05G3', 'student'),
('11621A05G4', '11621A05G4', 'student'),
('11621A05G5', '11621A05G5', 'student'),
('11621A05G7', '11621A05G7', 'student'),
('11621A05H0', '11621A05H0', 'student'),
('11621A05H1', '11621A05H1', 'student'),
('11621A05H2', '11621A05H2', 'student'),
('11621A05H3', '11621A05H3', 'student'),
('11621A05H4', '11621A05H4', 'student'),
('11621A05H7', '11621A05H7', 'student'),
('11621A05H8', '11621A05H8', 'student'),
('11621A05H9', '11621A05H9', 'student'),
('11621A05I0', '11621A05I0', 'student'),
('11U71A0525', '11U71A0525', 'student'),
('11U71A0526', '11U71A0526', 'student'),
('1jrl', '1jrl', 'faculty'),
('2', '2', 'faculty'),
('3', '3', 'faculty'),
('4', '4', 'faculty'),
('5', '5', 'faculty'),
('6', '6', 'faculty'),
('7', '7', 'faculty'),
('8', '8', 'faculty'),
('9', '9', 'faculty'),
('admin', 'admin', 'admin'),
('deo', 'deo', 'deo'),
('faculty', 'faculty', 'faculty'),
('fhb', 'fhb', 'faculty'),
('hod', 'hod', 'hod'),
('principal', 'principal', 'principal');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nondisciplinary`
--

CREATE TABLE IF NOT EXISTS `tb_nondisciplinary` (
  `section` varchar(20) NOT NULL,
  `non_name` varchar(50) NOT NULL,
  `ondate` varchar(30) NOT NULL,
  `number` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_studetails`
--

CREATE TABLE IF NOT EXISTS `tb_studetails` (
  `stu_id` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `f_name` varchar(100) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `stuyear` varchar(10) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `addr` varchar(700) NOT NULL,
  `mobno` varchar(20) NOT NULL,
  `fatherno` varchar(20) NOT NULL,
  `emailid` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stu_id`),
  KEY `stuyear` (`stuyear`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_studetails`
--

INSERT INTO `tb_studetails` (`stu_id`, `name`, `f_name`, `dept`, `stuyear`, `dob`, `addr`, `mobno`, `fatherno`, `emailid`, `pic`) VALUES
('09621A0508', 'B ANUSHA', 'SRINIVASULU', 'CSE', '4C', '', 'H NO 2-2-114/24/1, VIJAYAPURI COLONY, UPPAL, R R DIST', '', '', '', '../students/pics/pic.png'),
('10621A0522', 'G NARENDRA', 'GOLCONDA RAMESHWAR', 'CSE', '4A', '', 'H.No. 1-8-678/4, Beside Gurudatta High School, Padma Colony, Nallakunta, Hyderabad.', '', '', '', '../students/pics/pic.png'),
('10621A0546', 'R VEERAMANI', 'R YADAIAH', 'CSE', '4C', '', 'VILL NASARLAPALLY, MDL CHINTAPALLI, NALGONDA DIST', '', '', '', '../students/pics/pic.png'),
('10621A0550', 'S SRI TEJA', 'S NAGESHWARA RAO', 'CSE', '4A', '', 'Plot No. 26, Neredmet East Kakatiya Nagar, Beside Tulja Residency, Hyderabad-68', '7382384598', '9490190929', 'chanticentury@gmail.com', '../students/pics/pic.png'),
('10621A0580', 'K NAGARAJU', 'K SANJEEV', 'CSE', '4B', '', 'Wangapally(vi), Yadagirigutta(mo), Nalgonda(dist), Pin-508286.', '9550171003', '7893722593', '', '../students/pics/pic.png'),
('10621A05A0', 'P MAHESH', 'PASUNOORI SOMI REDDY', 'CSE', '4B', '', 'H.No. 3-97/1, Old Gundla Pally, Yadagirigutta, Dist. Nalgonda-508116.', '9603737565', '9603737565', '', '../students/pics/pic.png'),
('11621A0501', 'A SHIVAKUMAR', 'A RAMACHANDRAIAH', 'CSE', '4A', '', 'Vi Kothapally, po Gopanpet, Chinna Chinta Kunta Mdl, Mahaboobnagar Dt 509131', '7382211564', '9603885261', 'animonishivakumar@gmail.com', '../students/pics/pic.png'),
('11621A0502', 'ALAKUNTLA SURESH', 'ALAKUNTLA JAMPAIAH', 'CSE', '4A', '', 'H No. 2-79/1, Vi Katrapally, Md Kasamudram, Warangal Dt', '9989030350', '9866285116', 'suresh.alakunta99@gmail.com', '../students/pics/pic.png'),
('11621A0503', 'AMULYA KOPPULA', 'PRAKASAM', 'CSE', '4A', '', 'Plot No 17, Beside Babih Function Hall, Ravindra Nagar Colony, Nagaram, Keesara, Rangareddy Dist.', '8686320070', '9505892530', 'amulya.k12@gmail.com', '../students/pics/pic.png'),
('11621A0504', 'ANKOJU SWATHI', 'A VASUDEV', 'CSE', '4A', '', 'H No 3-10-26/15/A, R T C Colony, Ramanthapur, Hyderabad 500013', '8499058335', '9948044352', 'smilyswathi2723@gmail.com', '../students/pics/pic.png'),
('11621A0505', 'V SOUNDARYA DEVI', 'V ANJA GOUD', 'CSE', '4A', '', '12-1-503/44/A/1, Laxminagar, Lalapet, Secunderabad 500017', '9440253075', '9959935828', 'soundaryagoud3@gmail.com', '../students/pics/pic.png'),
('11621A0506', 'BADDAM SINDHUJA', 'BADDAM SUDHAKAR REDDY', 'CSE', '4A', '', 'H No 5-4-1208, Plot no 147, Sharada Nagar, Vanasthalipuram, Hayathnagar, R R dist', '9703935429', '9666908465', 'sindhujareddy212@gmail.com', '../students/pics/pic.png'),
('11621A0507', 'BALA SATYANARAYAN', 'BALA RAJELLU', 'CSE', '4A', '', 'Mallikarjuna Colony Street, M & V Uppal;, Ranga Reddy Dt', '9700063924', '9866440672', 'satyanarayanaballa93@gmail.com', '../students/pics/pic.png'),
('11621A0508', 'BHUMANDLA LAVANYA', 'BHUMANDLA SATHYANARAYANA', 'CSE', '4A', '', 'Po & (Vi) Motakondur, Yadagiri Gutta Mdl, Nalgonda dt 508286', '8978332281', '9959320618', 'lavanyabhumandla@gmail.com', '../students/pics/pic.png'),
('11621A0509', 'CH V L SAI KRISHNA', 'CH HANUMANTHA RAO', 'CSE', '4A', '', 'H No 7-120, Nagaram, Simhapuri Colony, Keesara Mdl, R R DT, Hyderabad', '8500290190', '8500290190', 'saich94@gmail.com', '../students/pics/pic.png'),
('11621A0510', 'D GIRISH TEJA', 'D MUNISWAMY', 'CSE', '4A', '', 'H No 1-4-361, Satyanagar Colony, New Maruthi Nagar East, Kothapet, Saroornagar Post, Hyderabad 500 035', '8686869592', '9533332500', 'girish_teja@yahoo.com', '../students/pics/pic.png'),
('11621A0511', 'D LAVANYA', 'D VENKATESHWAR REDDY', 'CSE', '4A', '', 'H NO 2-58, R/o Pamireddypally, Po Amerchinta, M/o Atmakur, Dt Mahaboobnagar Nagar 509130', '9963529647', '9704235704', 'lavanyareddy.dothula@gmail.com', '../students/pics/pic.png'),
('11621A0512', 'D PRAVALIKA', 'D DAMODAR RAO', 'CSE', '4A', '', 'H No 5-8-50/3, Plot No 183, Sripuram Colony, Near B N Reddy Nagar, Vanastalipruam, Hyderabad 70', '9640093646', '9440536507', 'donthinenipravalika787@gmail.com', '../students/pics/pic.png'),
('11621A0513', 'DARAM HARISH', 'DARAM NARSAIAH', 'CSE', '4A', '', 'H No 1-1-92, Old Andhra Bank Street, Jangaon Dt Warangal 506167', '8897216796', '9291201548', 'harishdaram543@gmail.com', '../students/pics/pic.png'),
('11621A0514', 'DARPALLI NITHYA', 'D RAJU', 'CSE', '4A', '', 'h No 10-3-32/1, Lingojiguda, Srinivasa Colony, Saroornagar, Hyderabad 500 035', '8096629919', '9000102255', 'nithyadarpalli004@gmail.com', '../students/pics/pic.png'),
('11621A0515', 'DEVARAPALLI SUBHAKAR', 'DEVARAPALLI SUDHAKAR', 'CSE', '4A', '', '12-10-274, PASUPATHI NATH TEMPLE STREET, SEETHAPHAL MANDI, SECUNDERABAD 500 061', '9700014515', '7702112812', 'subhakar.devarapalli@yahoo.com', '../students/pics/pic.png'),
('11621A0516', 'DEVELLA MAHENDER', 'DEVELLA SATHAIAH', 'CSE', '4A', '', 'Vi Chada, M Athmakoor Dt Nalgonda 508111', '9963441502', '9885099521', 'mahender516@gmail.com', '../students/pics/pic.png'),
('11621A0517', 'G M ZAREENA TABASSUM', 'G M DAWOOD RAHAMAN', 'CSE', '4A', '', 'Rly Qtr No 285/3, Near Market, North Lallaguda, Secunderabad 500 019', '9908325234', '9441991960', 'gmzareenatabassum@gmail.com', '../students/pics/pic.png'),
('11621A0518', 'G MAHESH YADAV', 'G BIKSHAPATHI', 'CSE', '4A', '', 'H No 2-3-64/1/3/A, Quadri Bagh, Amberpet, Hyderabad 500013', '8801659789', '8142212462', 'mahesh3860214@gmail.com', '../students/pics/pic.png'),
('11621A0520', 'GADDAM MOUNIKA', 'GADDAM YELLAJI', 'CSE', '4A', '', 'H.No. 3-132/1, Bibi Nagar, Nalgonda-508126', '9032745790', '9848612817', 'g.mounika1505@gmail.com', '../students/pics/pic.png'),
('11621A0521', 'GANGULA THARUN', 'GANGULA SHEKAR REDDY', 'CSE', '4A', '', 'H No 2-2-129/1, Balaji Narsing Home Lane, Vijay Puri Colony, Uppal, R R Dist 500039', '8686315513', '8686315513\n970082996', 'trtarunreddy52@gmail.com', '../students/pics/pic.png'),
('11621A0522', 'GOLLA HARICHAITANYA', 'GOLLA ANANDA RAO', 'CSE', '4A', '', 'H NO 8-6-524/1, Srinivasapuram Colony, NGO''s Colony, Vanasthalipuram, Hyderabad', '8121538309', '7382805091', 'harinani68@gmail.com', '../students/pics/pic.png'),
('11621A0523', 'GUNTOJU GOWTHAM', 'GUNTOJU SRINIVASA CHARY', 'CSE', '4A', '', 'H No 11-20-40/203, Huda Complex, Saroornagar, Hyderabad 500 035', '9000156252', '8008582425', 'gowtham.guntoju789@gmail.com', '../students/pics/pic.png'),
('11621A0524', 'J SAGAR', 'J SHYAM', 'CSE', '4A', '', '12-1-1/b/18/2/J, Satyanagar, Lalapet, Secunderabad 500 017', '9505730705', '9705206575', 'jai.sagar111@gmail.com', '../students/pics/pic.png'),
('11621A0525', 'K ARUN KUMAR', 'K BUCHAIAH', 'CSE', '4A', '', 'A1-26, Road No 4, T V Colony, Ramanthapur Hyderbad 500 039', '9550707069', '8374235257', 'arunlibra20@gmail.com', '../students/pics/pic.png'),
('11621A0526', 'K VIDYA', 'K SHAMUKHAM', 'CSE', '4A', '', 'H No 27-16/22/13/A, Sri Nilayam, Siddhartha Nagar, Safilguda, Secunderabad 47', '9640782216', '9030613319', 'cutevidya93@gmail.com', '../students/pics/pic.png'),
('11621A0527', 'KACHAKAYALA SACHIN KUMAR', 'KACHAKAYALA SANKAR', 'CSE', '4A', '', 'Bhuvanagiri, Dist Nalgonda 508116', '8522828898', '9848209536', 'ksachin325@gmail.com', '../students/pics/pic.png'),
('11621A0528', 'K VG SUBRAMANYAM', 'KAMPATI SRINIVASA RAO', 'CSE', '4A', '', '45-231/31, St No 4, Shirdi Nagar Colony,N.M.D.C, Moulali, Hyderabad 500040', '9700883364', '9885715603', 'subramanyam.kvg@gmail.com', '../students/pics/pic.png'),
('11621A0529', 'KANASI YAMINI', 'K N V SATYANARAYANA RAO', 'CSE', '4A', '', 'Flat No 102, Sai Apartments, New Mirjalguda, Malkajgiri Hyderabad 500047', '8801017964', '9441333102', 'yamini.kanasi@gmail.com', '../students/pics/pic.png'),
('11621A0530', 'KARTAN ANVESH', 'KARTAN RAVINDER', 'CSE', '4A', '', 'Police Quarters, Varni Po, Nizamabad Dt 503201', '9704286058', '9949719254', 'anveshkartan007@gmail.com', '../students/pics/pic.png'),
('11621A0531', 'KASOJU MADHURI', 'KASOJU YAKUB CHARY', 'CSE', '4A', '', '5-2-110 (LIG I-191), APHB Colony Bhongir 508116', '8099773887', '9948637657', 'madhusmily30@gmail.com', '../students/pics/pic.png'),
('11621A0532', 'KONDA MAHESH KUMAR', 'KONDA CHANDRA MOULI', 'CSE', '4A', '', '1-5-484/a, Hanumanwada, Bhongir, Nalgonda', '9700210678', '8886065361', 'maheshkmk22@gmail.com', '../students/pics/pic.png'),
('11621A0533', 'KONDA MAMATH KUMAR', 'KONDA CHANDRA MOULI', 'CSE', '4A', '', 'H NO 1-16-704/2 (EDGA COLONY KAGHAZNAGAR ADILABAD 504296', '8886065361', '9700210678', 'mamathkmk@gmail.com', '../students/pics/pic.png'),
('11621A0534', 'KORTHIWADA ARUN KUMAR', 'KORTHIWADA RAMACHANDRAM', 'CSE', '4A', '', 'H No 2-3-603/50/A/108, Patel Nagar, Amberpet, Hyderabad 13', '9959516516', '9014229510', 'arun11534@gmail.com', '../students/pics/pic.png'),
('11621A0535', 'LINGALA PRAVEEN KUMAR', 'LINGALA VENKANNA', 'CSE', '4A', '', '2-24-95/4/1, L N Nagar, Ramanthapur, Uppal, Hyderabad 500039', '8121883637', '9948359447', 'praveenlibra20@gmail.com', '../students/pics/pic.png'),
('11621A0536', 'MALOTHU CHANTI NAYAK', 'MALOTHU DASRANAYAK', 'CSE', '4A', '', 'VIL Kandi Gadda Thanda, M Aler, Dist Nalgonda 508101', '9553870215', '9848481198', 'chantiaec536@gmail.com', '../students/pics/pic.png'),
('11621A0537', 'MANDA SANDEEP', 'MANDA RAJU', 'CSE', '4A', '', 'H No 2-4-123/90, Seven Hill Colony, Uppal, Hyderabad ', '8801506426', '9618685684', 'sandeep.manda6@gmail.com', '../students/pics/pic.png'),
('11621A0538', 'MANGALARAPU VIDYA SAGAR', 'MANGALARAPU SADANAND', 'CSE', '4A', '', 'H NO 9-7, Vinayaka Nagar, Medipally, Ghatkesar Mdl, R R dist', '9550950303', '7386896627', 'mvsagar19@gmail.com', '../students/pics/pic.png'),
('11621A0539', 'MATHYAMALA NIKITHA', 'M RAJENDRA KUMAR', 'CSE', '4A', '', 'Flat No. 202, Sai Towers, Shalivahan Nagar, Opp. Brilliant School, Dilsukhnagar, Hyderabad.', '8686817731', '9294102800', 'nikitharaj1511@gmail.com', '../students/pics/pic.png'),
('11621A0540', 'MOHAMMED SAFI AHMED', 'KHAJA SALEEM UDDIN', 'CSE', '4A', '', 'H No 1-3-246/1, C/o Jamia Islamia Arabia, Pahadi Nagar, Bhongir Dt Nalgonda 508116', '8143414850', '9290222031', 'safi.ahmed540@gmail.com', '../students/pics/pic.png'),
('11621A0541', 'MOOTAKODURU SREEVANI', 'MOOTAKODURI ANJANA CHARY', 'CSE', '4A', '', 'H No. 9-116, BEL Housing Society, Laxmi Nagar Colony, Boduppal, Hyderabad', '9010767053', '9866192593', 'sreepearls30@gmail.com', '../students/pics/pic.png'),
('11621A0542', 'MUDDHINENI MUKESH SITARAM', 'MUDDHINENI PURNACHANDRA RAO', 'CSE', '4A', '', 'H.No. 1-3-79, St. No. 6, Near NGRI, Habsiguda, Hyderabad-07.', '8686941900', '9550256202', 'mukeshsitaramuno@gmail.com', '../students/pics/pic.png'),
('11621A0544', 'NUGOOR SHALINI', 'NAGOOR GANESH RAO', 'CSE', '4A', '', 'H No LIG-1-245,APHB Colony, Housing Board, Bhongir, Nalgonda Dt 508116', '8186089013', '9290495283', 'shalini.nugoor@gmail.com', '../students/pics/pic.png'),
('11621A0545', 'P SAI HARIN KUMAR REDDY', 'P RANADHEER REDDY', 'CSE', '4A', '', 'H No 1-10/215/111 ,C/o Sri Sai Krupa Floor Mill, Sri chakripursam, Kushaiguda 500 062', '9502479424', '8885462278', 'harinreddy94@gmail.com', '../students/pics/pic.png'),
('11621A0546', 'P SHRAVYA REDDY', 'P SRINIVAS REDDY', 'CSE', '4A', '', '11-13-627/2/204, Road No 2, Shailaja Heavens Apts, Opp Municipal Park, Hariuri Colony, R K Puram, Hyderabad 500 035', '8886426713', '8106485096', 'shravyapabbath@gmail.com', '../students/pics/pic.png'),
('11621A0547', 'P VIKAS GOUD', 'P NAGARAJU GOUD', 'CSE', '4A', '', 'H No 10-4, Pebbair, Mahaboobnagar Dt 509104', '8985201297', '8096761237', '', '../students/pics/pic.png'),
('11621A0548', 'PASULA RAGHU VARAN', 'PASULA RAJAIAH', 'CSE', '4A', '', 'Vi Bayyaram, Kataram, Dt Karimnagar', '8374022012', '8008393648', '', '../students/pics/pic.png'),
('11621A0549', 'RAJULDEV SAI KIRAN', 'RAJULDEV RAMESH', 'CSE', '4A', '', 'H No. 4-5-133/1, Nacharam, Hyderabad 500076', '9000257241', '9533343006', 'sai_2023@yahoo.com', '../students/pics/pic.png'),
('11621A0551', 'S ARAVIND DESILVA', 'S S CHALAM', 'CSE', '4A', '', 'D No 1-1-770/A/102, B-Block, Vishnu Residency, Gandhinagar, Hyderabad', '9701138183', '7702919262', 'desilva.Rockstar@gmail.com', '../students/pics/pic.png'),
('11621A0552', 'S VAISHALI', 'S VISHWAMBHARA', 'CSE', '4A', '', 'H No 1-1-1/2/2, Mohan Nagar, Janapriya Road, Kothapet, Hyderabad 500035', '8179658685', '9248304393', 'vyshali.shinde03@gmail.com', '../students/pics/pic.png'),
('11621A0553', 'SIRIKONDA BHAVANI', 'SIRIKONDA SRINIVAS', 'CSE', '4A', '', '2-125/1, Anajipuram (V), Bhongir (M), Nalgonda Dt 508285', '8686226334', '9440247618', 'sirikondabhavani@gmail.com', '../students/pics/pic.png'),
('11621A0554', 'SIRPANGI ARAVIND KUMAR', 'SIRPANGI NARSAIAH', 'CSE', '4A', '', 'Vi NG. Kothapally, Mdl Shaligouraram, Dt Nalgonda', '9959607515', '9640821889', 'saravindkumar@gmail.com', '../students/pics/pic.png'),
('11621A0555', 'SUDIREDDY MADHURI', 'SUDIREDDY SRINIVAS REDDY.', 'CSE', '4A', '', '8-43/8/61, Opp Narayana college, Rajshekar Colony Balaji Hills, Uppal 500039', '9700300893', '9700461795', 'madhurireddy@gmail.com', '../students/pics/pic.png'),
('11621A0557', 'THOGATA AKHIL', 'THOGATA THIRUPATHAIAH', 'CSE', '4A', '', '2-2-1150/1/B, New Nallakunta, Hyderabad 44', '7702620631', '9490119979', 'akhil.thogata@gmail.com', '../students/pics/pic.png'),
('11621A0558', 'THOTA SNEHA', 'THOTA SHANMUKH ANAND', 'CSE', '4A', '', 'Flat no 102, Vijaya Sri sai Apts, Kalyan Nagar, East Anand Bagh, Malkajgiri, Hyderabad', '9963745065', '9052286805', 'ahenst@gmail.com', '../students/pics/pic.png'),
('11621A0559', 'V KRISHANA PRIYA', 'V PARASHRAMULU GOUD', 'CSE', '4A', '', '8-2-3, Ravindra Nagar Colony, Habsiguda, Hyderbad 500007', '9290566319', '9966301605', 'krishnapriyakitty@gmail.com', '../students/pics/pic.png'),
('11621A0560', 'VULICHA ARUN', 'V RAVINDER', 'CSE', '4A', '', 'H No 2-6-27/A, V T Road, Bharat Nagar, Uppal, Hyderabad 39', '8686782787', '9290512139', 'arunvulicha0@gmail.com', '../students/pics/pic.png'),
('11621A0561', 'A DEEPA RANI', 'A RAJ KUMAR', 'CSE', '4B', '', '14-2-467, Goshamahal, Hyderabad 12', '7702808798', '9948550454', 'deepamanasa@yahoo.com', '../students/pics/pic.png'),
('11621A0562', 'A UMASHANKAR KUMAR', 'A SRINIVASA RAO', 'CSE', '4B', '', '834/A, Bagathsingh Nagar, Near Vasantha Nagar, Kukatpally, Hyderabad-72.', '8341332608', '9294058376', 'umashanker60@gmail.com', '../students/pics/pic.png'),
('11621A0564', 'ARUNALA JANISH GOUD', 'ARUNALA SRINIVAS GOUD', 'CSE', '4B', '', 'H No 19/485, Reddy colony, Miryalguda, Nalgonda Dt', '8143411680', '9948751406', 'janishsrinivas88@gmail.com', '../students/pics/pic.png'),
('11621A0565', 'B PREETHI', 'B DAKSHINA MURTHY', 'CSE', '4B', '', 'Flat No. 302, Prime Apartment, Street No. 8, Habsiguda, Secunderabad.', '8374438755', '7416631942', 'preethiminnu65@gmail.com', '../students/pics/pic.png'),
('11621A0566', 'B SPANDAN REDDY', 'B RANGA REDDY', 'CSE', '4B', '', 'H.No. 12-13-475, Flat No. 204, R.V. Vipanchi Apartment, Street No. 1, Secunderabad-17.', '9985252341', '9704757404', 'spandanfires@gmail.com', '../students/pics/pic.png'),
('11621A0567', 'BANDARU SHANKER REDDY', 'BANDARU DEVADAS REDDY', 'CSE', '4B', '', 'H No 1-13, Vi Pullaigudem, Mdl Athmakur, Po Kurella, Dist Nalgonda 508111', '9676986765', '8121218745', 'bandarushankareddy@gmail.com', '../students/pics/pic.png'),
('11621A0569', 'B PRAVEEN KUMAR', 'BHONGIRI PARAMESH', 'CSE', '4B', '', 'Bibi Nagar Mdl, Kondamadugu Vi, Nalgonda Dist', '9848705345', '9502095967', 'pbhonagiri3@gmail.com', '../students/pics/pic.png'),
('11621A0570', 'BOLLEPALLI KANISHKA', 'BOLLEPALLI UPENDER', 'CSE', '4B', '', '2-2-647/137, C E Colony, Bagh Amberpet, Hyderabad 13', '8008013580', '9963584724', 'kanishka056@yahoo.com', '../students/pics/pic.png'),
('11621A0571', 'BONABONA RAJANI', 'BONABONA RAMESH', 'CSE', '4B', '', 'H No 5-24/70, Bakshiguda, H B Colony, Moula-Ali, Hyderabad 40', '9951871087', '9848966727\n961889990', 'bonabonarajani@gmail.com', '../students/pics/pic.png'),
('11621A0572', 'C GAUTAM SHRINIVAS', 'C SHRINIVAS', 'CSE', '4B', '', '1-9-665/8/B/103, Moti Niketan Apartments, Vidyanagar, Hyderabad-44.', '9573646007', '9490746075', 'gautom.chekkilla@gmail.com', '../students/pics/pic.png'),
('11621A0573', 'CHANDRAGIRI PADMAJA', 'CHANDRAGIRI JANARDHAN', 'CSE', '4B', '', '#7-39, Market Yard, Gandhi Nagar, Yadagirigutta 508115', '9642141573', '9492558192\n900036768', 'padmaja.chandragiri@gmail.com', '../students/pics/pic.png'),
('11621A0575', 'CHEVELLI BHAVANI', 'CHEVELLI MALLA REDDY', 'CSE', '4B', '', 'H No. 1-14/1, Yamnampet (v), Ghatkesar (M)', '8106425524', '9346493170\n994854326', 'bhavanichevelli@gmail.com', '../students/pics/pic.png'),
('11621A0576', 'DATLA RAM GOPAL VARMA', 'DATLA KRISHNAM RAJU', 'CSE', '4B', '', 'H NO 3-27/A/1, Plot No 5, North Kamalanagar, Kushaiguda, ECIL Post Hyderabad 500 062', '7893492500', '9849156592', 'drgvarma.datla@gmail.com', '../students/pics/pic.png'),
('11621A0577', 'DEEPTHI T NAIR', 'THANKAPPAN T NAIR', 'CSE', '4B', '', '102, Bharat Apts, Kalyan Nagar, East Anand Bagh, Safilguda, Hyderabad 500047', '9492869845', '9440856468', 'deepthi94jan@gmail.com', '../students/pics/pic.png'),
('11621A0578', 'GANDHARI SANJANA REDDY', 'GANDHARI BHOOKANTH REDDY', 'CSE', '4B', '', 'H No 3-14-12/6, Road No 2 Flat 403, Sai ram towers, srinivasapuram colony, ramanthapur, hyderabad', '9030184266', '9885688363', 'sanjanareddygandhari@gmail.com', '../students/pics/pic.png'),
('11621A0579', 'GANGISHETTY MOUNIKA', 'GANGISHETTY HANUMANTHA RAO', 'CSE', '4B', '', '3-9-45, Dharmashati Street, Jangaon, Warangal Dist, 506167', '9705547404', '9848343680', 'mounika.gangishetty4@gmail.com', '../students/pics/pic.png'),
('11621A0580', 'GANGU TEJASREE REDDY', 'GANGU SRINIVASA REDDY', 'CSE', '4B', '', 'Flat no 103, Sai Ganesh Nilayam, Prashanth Nagar. Road no 3, Survey of India, Uppal, Hyderabad', '7893014839', '9985393111', 'tejasree.reddy@ymail.com', '../students/pics/pic.png'),
('11621A0581', 'GENTYAL SHRAVANI', 'GENTYAL NARAYANA', 'CSE', '4B', '', 'H No 1-9-129/23/c/121, Balaji Nagar, Ramnagar Gundu, Hyderabad 44', '8885845630', '9701960280', 'shravanigentyal@gmail.com', '../students/pics/pic.png'),
('11621A0582', 'GOPAGONI REVANTH KUMAR', 'GOPAGONI SHIVALAIAH', 'CSE', '4B', '', 'Plot no 9, above bombay foot ware, opp to model mision high school, lothkunta secunderabad', '9985622206', '9866069912', 'sonurevanthsonu@gmail.com', '../students/pics/pic.png'),
('11621A0583', 'GOTTALA SAI KIRAN', 'GOTTALA PADMA CHARY', 'CSE', '4B', '', '2-3-603/72/1, Patel Nagar, Amberpet, Hyderabad', '9849885462', '9908175848', 'stevejobsapplesai2012@gmail.com', '../students/pics/pic.png'),
('11621A0584', 'GURRAM PRAVEEN REDDY', 'GURRAM BHOOPATI REDDY', 'CSE', '4B', '', 'Vill. Repaka, Mdl. Ellanthakunta, Dist. Karimnagar-505528.', '9885262131', '9440704370', 'praveeng.reddy2@gmail.com', '../students/pics/pic.png'),
('11621A0585', 'GURUVUGARI MANISHA', 'GURUVUGARI KRISHNA MURTHY', 'CSE', '4B', '', 'H No 1-9-354/2, Sri Sai Venkata Enclave, Kushaiguda, Kapra, Hyderabad', '9032704761', '9924359754', 'manisha_mani1994@gmail.com', '../students/pics/pic.png'),
('11621A0586', 'JADIGA MOUNIKA YADAV', 'JADIGA CHANDRA SEKHAR', 'CSE', '4B', '', 'H.No. 8-104/1, New Sai Nagar Colony, Uppal Depot, Hyderabad.', '9247204290', '9393685773', 'mounikajadiga@rocketmail.com', '../students/pics/pic.png'),
('11621A0587', 'J D S KRISHNACHAITANYA', 'JETTI GANGA SYAM KUMAR', 'CSE', '4B', '', 'Plot No 157, Near Holm School NGO''s Colony, Kaikalur, Krishna Dist 521333', '8331842425', '9491224225', 'chaitugetti@gmail.com', '../students/pics/pic.png'),
('11621A0588', 'K GAYATHRI', 'K V SUBRAHMANYAM', 'CSE', '4B', '', 'MIG-1, Block 18, Flat 4, Baghlingampally, Hyderabad-44.', '8897566150', '9963799912', 'gaya_70@yahoo.co.in', '../students/pics/pic.png'),
('11621A0589', 'KAMBHAMPATI LAKSHMI SATYAVATHI', 'K NARASIMHA MURTHY', 'CSE', '4B', '', '17-47, SBH Colony, Uppal, Hyderabad 500039', '9502620071', '9177918344', 'satya.kambampati06@gmail.com', '../students/pics/pic.png'),
('11621A0591', 'KAVYA KRISHNAN', 'KRISHNAN KUTTY NAIR', 'CSE', '4B', '', 'Flat No. 102, A Block, Godavari Apartments, Shyamlal Building, Begumpet, Hyderabad-16.', '8801777388', '9849518461', 'keerthu_07@gmail.com', '../students/pics/pic.png'),
('11621A0592', 'KORRAMULA SUKESH KUMAR', 'KORRAMULA NARSING RAO', 'CSE', '4B', '', 'H.No. 30-1240/1, Vinayak Nagar, Neredmet, Secunderabad-56.', '8686569303', '9849200849\n898573490', 'sukeshrockstar55@gmail.com', '../students/pics/pic.png'),
('11621A0593', 'KOTHI MAHESH', 'KOTHI SAMMAIAH', 'CSE', '4B', '', 'H No 13-185, Kamalanagar, Medipally, Ghatkesar Mdl, Ranga Reddy Dt', '8790164159', '9951389755', 'maheshkothi4@gmail.com', '../students/pics/pic.png'),
('11621A0594', 'KOTHURI NAGA CHANDRIKA', 'KOTHURI NAGARAJU', 'CSE', '4B', '', 'LIG ''B'' 535, Dr. A S Rao Nagar, Hyderabad 62', '9502087246', '9866327054', 'bindu.kothuri@gmail.com', '../students/pics/pic.png'),
('11621A0595', 'KUKUNOOR SRIKANTH REDDY', 'K SRINIVAS REDDY', 'CSE', '4B', '', 'Flat no 403, Kalyani residency, Haripuri colony, Saroornagar, Hyderabad 500035', '9676307199', '9848320429', '', '../students/pics/pic.png'),
('11621A0596', 'KUMMARI SHIVA KUMAR', 'KUMMARI CHANDRAIAH', 'CSE', '4B', '', 'C-13/21, DAE Colony, ECIL Post, Hyderabad-62.', '8985734908', '9030671540', 'shiva-199317@yahoo.com', '../students/pics/pic.png'),
('11621A0597', 'M SAMYUKTHA', 'M SRINIVAS', 'CSE', '4B', '', 'Door No. 40-246/1/1, Plot No 260, Jawahar Nagar Colony, Moulali, Hyderabad-40', '9701532894', '9866067678', 'samyuktha.2194@gmail.com', '../students/pics/pic.png'),
('11621A0599', 'MANASA BURRA', 'B RAMESH BABU', 'CSE', '4B', '', 'H No 1-8/678/20, VST Aditya Arcade, Sri Sai Block, Flat No 204 Hyderabad', '7893032353', '9396340346', 'manasa0013@yahoo.com', '../students/pics/pic.png'),
('11621A05A0', 'MANTHAPURI PRAKASH', 'MANTHAPURI SOMAIAH', 'CSE', '4B', '', 'H.No. 39/2, Railway Quarters, Urban Colony, Bhongir, Nalgonda Dist.-508116.', '9441119857', '9395390901', 'prakash.danny007@gmail.com', '../students/pics/pic.png'),
('11621A05A1', 'MATETI NITYUSHA', 'MATETI ARUN KUMAR', 'CSE', '4B', '', 'H.No. 1-8-116/4, Chikkadpally, Behind Cooperative Bank, Hyderabad-20.', '8374156296', '9701451032', 'neetumateti1@gmail.com', '../students/pics/pic.png'),
('11621A05A2', 'MITTAL AKSHAY', 'MITTAL ANIL', 'CSE', '4B', '', 'H.No. 14-2-337/13/1, Panamandi, Goshamahal, Hyderabad-13.', '9700086413', '9290733161', 'akshaycanodia@gmail.com', '../students/pics/pic.png'),
('11621A05A3', 'NAGUNOORI SURAJ KUMAR', 'NAGUNOORI PRADEEP KUMAR', 'CSE', '4B', '', 'B-501, Surya Tower Road No-2, Nacharam 500 076', '9032009536', '9032319369', '', '../students/pics/pic.png'),
('11621A05A4', 'NARALA JYOTHSNA', 'NARALA ILAIAH', 'CSE', '4B', '', 'Baswaapur Vi, Bhongir Mdl, Nalgonda Dt 508116', '8897800394', '9948972107', 'jyothsnanarala@gmail.com', '../students/pics/pic.png'),
('11621A05A5', 'NOOLI SREYA', 'NOOLI HARI NATH RAO', 'CSE', '4B', '', 'Pt 401, Sarvodaya Apartments, Tulasi Nagar, Amberpet, Hyderabad', '9177146387', '9299800306', 'shreya.nooli8@gmail.com', '../students/pics/pic.png'),
('11621A05A6', 'P SAI CHARAN REDDY', 'P SUDHAKAR REDDY', 'CSE', '4B', '', 'H.No. 2-129/11/3, New Vijayapuri Colony, Uppal, Hyderabad-39.', '8501842502', '9963244277', 'reddy.saicharan390@gmail.com', '../students/pics/pic.png'),
('11621A05A7', 'P SIVA SUBRAMANIAM', 'K PADMANABAN', 'CSE', '4B', '', '6-1-132/91, Flat No 102, Sai Kiran Apts, Skandagiri, Padmaraonagar, Secunderabad 500061', '8019048843', '9912868875', 'subbu-1994@yahoo.co.in', '../students/pics/pic.png'),
('11621A05A8', 'PINNINTI BHARATH', 'PINNINTI DEVENDER RAO', 'CSE', '4B', '', 'H No 5-96, Vi Ellanda, Wardhanpet Mdl, Dt Warangal 506313', '8099689874', '8790126937', 'bharatrao.16@gmail.com', '../students/pics/pic.png'),
('11621A05A9', 'PITLA SHASHANK', 'PITLA NARENDER', 'CSE', '4B', '', '1-1-379/104, (SRT 108) Jawahar Nagar, Musheerabad, Hyderabad 500 020 ', '9704609389', '9246101992', 'shashichat7@gmail.com', '../students/pics/pic.png'),
('11621A05B0', 'RODGE LOKESH KUMAR', 'RODGE RAVI KUMAR', 'CSE', '4B', '', 'Narasimha Residency, Flat No. 202, Krishnaveni Nagar, Road No. 2, Moulali, Hyderabad-48.', '8885476224', '8885476224', 'ranalokesh@gmail.com', '../students/pics/pic.png'),
('11621A05B1', 'S VASU DEV', 'S JAYA PRAKASH', 'CSE', '4B', '', '6-2-549/10, New Bhoiguda, Secunderabad 500 003', '9966720242', '9052215155', 'vasu162318@gmail.com', '../students/pics/pic.png'),
('11621A05B2', 'SINGIREDDY VIJAY KUMAR', 'S VENKAT REDDY', 'CSE', '4B', '', 'H No 1-11/8, Anand Nagar, Ex Servicemen Colony, Balajinagar,  Hyderabad 500087', '9550434759', '9959996864', 'vijaybittu30@gmail.com', '../students/pics/pic.png'),
('11621A05B3', 'SAI BHARADWAJ B', 'B SARASWATHI RAO', 'CSE', '4B', '', 'Plot No. 47, Road No. 3, Ananthanagar Colony, Neredmet, RK Puram Post, Secunderabad-56.', '8686490089', '7416879400\n780101216', 'saibharadwaj365@gmail.com', '../students/pics/pic.png'),
('11621A05B4', 'SANJEV V TAMBE', 'VASUDEO RAMNATH TAMBE', 'CSE', '4B', '', 'H No 1-107/1/A, Prabath Nagar, Chaitanyapuri, Hyderabad 500060', '8019598656', '7207513455', 'tambe.sanjeev@gmail.com', '../students/pics/pic.png'),
('11621A05B5', 'SIDHARTH SHRIHARI VEMULA', 'SHRIHARI VEMULA', 'CSE', '4B', '', 'H.No. 2-17-56, Flat No. 101, Srikari Apartment, SBH Colony, Uppal, Hyderabad-39.', '9966973728', '9959822041', 'sidsv15@gmail.com', '../students/pics/pic.png'),
('11621A05B7', 'VANTERU SARIKA REDDY', 'VANTERU VENKATESWAR REDDY', 'CSE', '4B', '', 'H.No.1-5-11/1, Street No.8,Beside Spencer''s Spuer Market , Habsiguda, Hyderabad', '8801324831', '9030167606', 'sweetu.chinni@gmail.com', '../students/pics/pic.png'),
('11621A05B8', 'VARUN VERMA', 'GAJINDER PAL VERMA', 'CSE', '4B', '', 'H.No. 17-18-1A, Sri Sai Ram Nagar, Uppal, Hyderabad-39.', '9700619959', '9393869439', 'varun.verma253@gmail.com', '../students/pics/pic.png'),
('11621A05B9', 'VATTI UDAY KIRAN REDDY', 'VATTI RAMI REDDY', 'CSE', '4B', '', '10-36, SBI Colony, Road No 3, Kothapet, Hyderabad 500035', '9799358910', '9704168583', 'vuday23@outlook.com', '../students/pics/pic.png'),
('11621A05C0', 'VUPPALA NAGASAI MRUNAL', 'VUPPALA RAJENDRA PRASAD', 'CSE', '4B', '', 'S2,C1, Sachivalayanagar, Vanasthalipuram, Hyderabad 500070', '8019196148', '9849308715', 'vpplmrunal@hotmail.com', '../students/pics/pic.png'),
('11621A05C1', 'A MURALI KRISHNA', 'A NARENDRA KUMAR', 'CSE', '4C', '', 'H No 2-3-360/1, Road No 6/2, Sai Nagar, Nagole, Hyderabad-68', '9052879875', '9951517720', '', '../students/pics/pic.png'),
('11621A05C2', 'AAKULLA MONIKA', 'AAKULLA BALARAM', 'CSE', '4C', '', 'H.No. 4-1-78, Kowkoor, Bolarum Post, Secunderabad-10.', '9502766961', '9848866441', 'monikamudiraj.moni@gmail.com', '../students/pics/pic.png'),
('11621A05C3', 'ARIGE SAIKRISHNA', 'ARIGE DEVARAJ', 'CSE', '4C', '', 'H.No. 11-2-89, Seethafalmandi, Secunderabad-61.', '8008990971', '9885879280', '', '../students/pics/pic.png'),
('11621A05C5', 'BANDI VINAY KUMAR', 'BANDI SRINIVAS', 'CSE', '4C', '', 'H.No. 3-2-122/A, Meenanagar, Bhongir, Nalgonda Dist-508116.', '9032120582', '9848580972', 'vinay99123@gmail.com', '../students/pics/pic.png'),
('11621A05C6', 'BELIDE MOUNIKA', 'BELIDE SRINIVAS', 'CSE', '4C', '', 'H.No. 1-2-196, Gunj, Bhongir, Nalgonda Dist.-508116.', '9030463470', '9246929179', '', '../students/pics/pic.png'),
('11621A05C7', 'BODA NARESH', 'BODA LALUNAIK', 'CSE', '4C', '', 'Vi Chinna Korpol, Mdl Nekkonda, Dt Warangal 506122', '9949027820', '8978272784', 'bnaresh300@gmail.com', '../students/pics/pic.png'),
('11621A05C9', 'BOOMPALLY SRIDHAR', 'BOOMPALLY RAMA KRISHNA', 'CSE', '4C', '', 'H No 3-6-75, Boosa Reddy Guda, West Marredpally, Secunderabad 500 026', '9908112443', '9618032318', '', '../students/pics/pic.png'),
('11621A05D1', 'CH SHIVA PRASAD', 'CHINTHAPANDU PRABHAKAR', 'CSE', '4C', '', 'H.No. 4-122, Jesus Holy Church, Raghunathpur, Yadagirigutta, Nalgonda Dist-508105.', '9618949916', '9959796096', 'shivaprasadchinthapandu@gmail.com', '../students/pics/pic.png'),
('11621A05D2', 'DANDU SUJINI', 'DANDU RANGA RAJU', 'CSE', '4C', '', 'Beside Ice- Factory, Teachers colony, Plot No 27, Bibi Nagar Nalgonda 508126', '9030942440', '9885001736', 'sujini.dandu@gmail.com', '../students/pics/pic.png'),
('11621A05D3', 'DASARI DILIPRAJ', 'DASARI YESOBU', 'CSE', '4C', '', 'H.No.2-16-50/B/304,Flat No. 304, Ponnapalli Plaza, Prashanth Nagar, Uppal, Hyderabad', '8686289194', '9676242427', '', '../students/pics/pic.png'),
('11621A05D4', 'DONTHI SINDHU PRIYA', 'DONTHI  RANGA REDDY', 'CSE', '4C', '', 'H.No. 2-18, Vill. Peddakandukur, Mdl. Yadagirigutta, Dist. Nalgonda-508286.', '9849053871', '9849478006', 'sindhu.donthi@gmail.com', '../students/pics/pic.png'),
('11621A05D5', 'E RAJASREE', 'E DASHRATHA ', 'CSE', '4C', '', 'Flat no F1, Hanuman Nivas, Yadav Nagar colony, Hyderabad 500 047', '8125465924', '8143128704', '', '../students/pics/pic.png'),
('11621A05D6', 'ERUKULLA SHASHANK', 'ERUKULLA HANUMANTHARAO', 'CSE', '4C', '', 'H.No. 12-10-206, Seethafalmandi, Secunderabad-61.', '9700288042', '9052856446', 'eshashanku@gmail.com', '../students/pics/pic.png'),
('11621A05D7', 'G R MANIKANTA', 'G V RAJESH', 'CSE', '4C', '', 'H.No. 14-191, SRN Colony, New Mirzalguda, Malkajgiri, Hyderabad-47.', '9573817961', '9849557731', 'mani.gogulal@gmail.com', '../students/pics/pic.png'),
('11621A05D9', 'GUNDLA SRAVAN KUMAR', 'GUNDLA SATYANARAYANA', 'CSE', '4C', '', 'Vi Kunoor, Mdl Bhongir, Dist Nalgonda 508116', '8885188505', '9247817375', 'shravankumargundla@gmail.com', '../students/pics/pic.png'),
('11621A05E0', 'GURRAM NANDINI', 'GURRAM ANJAIAH', 'CSE', '4C', '', 'H No 2-3-655/7/B, Alicafe X Road, New Durga Nagar, Amberpet Hyderabad', '8121651286', '7396673074', 'sweetnandu10@yahoo.com', '../students/pics/pic.png'),
('11621A05E1', 'JARUPULA KASHIRAM', 'JARUPULA BHEEMU', 'CSE', '4C', '', 'Vi Bheechrajpally, Maripeda Banglow, Dt Warangal', '9849275038', '8897019509', 'ramkashi77@gmail.com', '../students/pics/pic.png'),
('11621A05E2', 'K KARTHIK', 'K MARKANDEYULU', 'CSE', '4C', '', 'Plot No. 72/2, Subhash Nagar, Opp. Nagarjuna Nagar Colony, Kushaiguda, Hyderabad-62.', '8686941933', '9441107372', '', '../students/pics/pic.png'),
('11621A05E3', 'KAMMARI SAITEJA', 'KAMMARI RAMULU', 'CSE', '4C', '', 'H.No. 6-50/2, Jogipeta, Mdl. Andole, Dist. Medak-502270.', '9032319369', '9666950895', 'saiteja.k6@gmail.com', '../students/pics/pic.png'),
('11621A05E4', 'KANDAKATLA SHALINI', 'KANDAKATLA JANARDHAN REDDY', 'CSE', '4C', '', 'H No 5-14/1, Navodhaya Colony, Lakshmi Nagar, Ghatkesar, R R Dist 501301', '9652716595', '8374737387', 'shalinikandakatla@gmail.com', '../students/pics/pic.png'),
('11621A05E5', 'K PRUTHVI KANTHAIAH', 'K KANTHAIAH', 'CSE', '4C', '', '3-4-760/12, MCH Market, Narayanaguda, Hyderabad-29.', '8977430207', '9293229089', 'brock2free@yahoo.com', '../students/pics/pic.png'),
('11621A05E6', 'KOMPALLY NAVEEN', 'KOMPALLY BIXAPATHI', 'CSE', '4C', '', 'Vi Jeedikal, M Lingala Ghanpur, Dt Warangal 506201', '9553242238', '9959371043', 'kampallynaveen934@gmail.com', '../students/pics/pic.png'),
('11621A05E7', 'KONDETI MANOHAR REDDY', 'KONDETI VENKAT REDDY', 'CSE', '4C', '', 'H No 1-111, Kandagatla (vil), Athmakur Mdl, Nalgonda Dist 508222', '9494349544', '9492215626', 'manukondeti44@gmail.com', '../students/pics/pic.png'),
('11621A05E8', 'KYASA SAIPRASAD', 'KYASA DURGAIAH', 'CSE', '4C', '', 'H.No. 9-68/8/5/A, East Hanuman Nagar, Boduppal, Hyderabad-92.', '7842558107', '8886333615', 'kyasasaiprasad@gmail.com', '../students/pics/pic.png'),
('11621A05E9', 'L STEVEN ANDREWS RAJ', 'K S LAZARUS', 'CSE', '4C', '', 'H.No. 403, 4th Floor, VRN Residency, Near RRB, New Mettuguda, Secunderabad-17.', '8686717128', '9701385813', '', '../students/pics/pic.png'),
('11621A05F0', 'LACHAPETA MAHESH', 'LACHAPETA CHINNA NARASAIAH', 'CSE', '4C', '', 'H No 3-6-75, Boosa Reddy Guda, West Marredpally, Secunderabad 500 026', '9676364214', '9908306930', 'mahi_0345@yahoo.com', '../students/pics/pic.png'),
('11621A05F2', 'MAHENDRAVADA SRAVANI', 'MAHENDRAVADA VENKATA SOMESVARLU', 'CSE', '4C', '', 'H.No. MIG-17, Old APHB Colony, Kantaswar, Nizamabad-503002.', '9490800021', '9440465546', 'sravani2607@gmail.com', '../students/pics/pic.png'),
('11621A05F3', 'MEDURI HIMABINDU', 'M V S S R HANUMANTHA RAO', 'CSE', '4C', '', 'H No 16-2-752/k/43, B Laxmi, Plot no 43, shankeshwari Bazar, Opp Ganga Theater, Saidabad mdl, Hyderabad', '9030431579', '9030047906', 'hima.9030@gmail.com', '../students/pics/pic.png'),
('11621A05F4', 'MEDURI V S H CHANDANA', 'MEDURI K R DEEKSHITULU', 'CSE', '4C', '', 'H 8-7-6/A/10, Road no 8, Hemanagar, Chilkanagar, Near Uppal, Hyderabad', '9959229119', '9849426447', 'chandanahari22@gmail.com', '../students/pics/pic.png'),
('11621A05F6', 'MULKALA AKASH', 'MULKALA NAGARAJU', 'CSE', '4C', '', 'H.No. 3-3-808, Kuthbiguda, Koti, Hyderabad-27.', '9014425331', '9014073736', '', '../students/pics/pic.png'),
('11621A05F7', 'NIDHI SINGH', 'RAMA KRISHNA SINGH', 'CSE', '4C', '', 'H NO 1-13-153, Near Railway Gate Maruthi Nagar, Sirpur Kaghaznagar, Adilabad Dist 504296', '8790727293', '9985192212', 'nidhisingh1693@gmail.com', '../students/pics/pic.png'),
('11621A05F8', 'PALLE SREENIVAS REDDY', 'PALLE NARAYAN REDDY', 'CSE', '4C', '', 'H.No. 22-125, Shivaji Nagar, Jadcherla, Mahabubnagar-509301.', '7396801225', '9293732535', 'srinivas.palle116@gmail.com', '../students/pics/pic.png'),
('11621A05F9', 'PAMUCUNTLA SANDEEP', 'PAMUCUNTLA ANJANEYULU', 'CSE', '4C', '', 'H.No.3-6-15/A, Ganesh Street Jangaon, Warangal.', '9000742427', '9032758380', 'sandeep.pamkuntla16@gmail.com', '../students/pics/pic.png'),
('11621A05G0', 'PATHROJU MEGHANA', 'PATHROJU BHASKAR', 'CSE', '4C', '', '2-2-127/87, Vijayapuri Colony, Uppal, Hyderbad', '8143357499', '9440634495', 'meghana.pathroju@gmail.com', '../students/pics/pic.png'),
('11621A05G1', 'PATTELA SWETHA', 'PATTELA SUBASH NAIDU', 'CSE', '4C', '', 'Plot no 74, Tirumala Enclave, Ayyappa colony, Dhammaiguda, Keesara Mandal, R R Dist', '7702934583', '9391114889', 'swetha.pattela94@gmail.com', '../students/pics/pic.png'),
('11621A05G2', 'PINIKESHI KARTHIK', 'PINIKESHI SRINIVAS REDDY', 'CSE', '4C', '', 'Vi Pinikeshigudem, Po Vellanty, Mdl Ramannapet, Dist Nalgonda 508113', '9494349340', '9948909642', '', '../students/pics/pic.png'),
('11621A05G3', 'R SRUTHI', 'R RAJA REDDY', 'CSE', '4C', '', 'H.No. 5-14-62/2, Indira Nagar Colony, Phase-II, APHB Colony, Moula-ali, Hyd-40.', '9440854411', '9550075577', 'sruthi.rachamalla@gmail.com', '../students/pics/pic.png'),
('11621A05G4', 'R SWEJEETH KUMAR', 'R VENKATESWARLU', 'CSE', '4C', '', '1-78/1/4/1, Srinivas Nagar Colony, Street No 4, Boduppal, Hyderabad', '8121621932', '8106093214', 'swejeeth@gmail.com', '../students/pics/pic.png'),
('11621A05G5', 'RACHALA POOJITHA', 'R NARASIMHA REDDY', 'CSE', '4C', '', 'Plot No 62, Road No 2, New Maruthi Nagar, Kothapet, Hyderabad 500060', '7702761267', '7702762167', 'poojitharachalla782@gmail.com', '../students/pics/pic.png'),
('11621A05G7', 'RATNAPURAM SURENDAR', 'RATNAPURAM SATTAIAH', 'CSE', '4C', '', '1-21, Thokkapuram Vi, Bhongir Mdl, Nalgonda Dt 508285', '9000315985', '9912670629', 'surenderratnatrueguy@gmail.com', '../students/pics/pic.png'),
('11621A05H0', 'SOMISETTY SAI GANESH', 'SOMISETTY RAMESH', 'CSE', '4C', '', 'Plot No. 24, Flat No. 301, Gangabhavani Apartments, Anantha Saraswathi Nagar, Road No. 2, East Anandbagh, Malkajgiri, Hyderabad-47.', '8897240782', '9247563999', 'ganeshsomisetty5@gmail.com', '../students/pics/pic.png'),
('11621A05H1', 'TADURI UDAY KIRAN', 'TADURI SRINIVAS', 'CSE', '4C', '', 'H.No. 1-7-227, Kamalanagar, ECIL Post, Hyderabad-62.', '9908787673', '9391055317', 'taduriuday@ymail.com', '../students/pics/pic.png'),
('11621A05H2', 'T HARISH KUMAR', 'THIRUNAGARI ANIL KUMAR', 'CSE', '4C', '', 'Q.No. C13/33, DAE Colony, ECIL, Hyderabad-62.', '8985383908', '9032421406', 'harishvanchu@gmail.com', '../students/pics/pic.png'),
('11621A05H3', 'T PRASANNAKUMAR', 'THIRUNAGARI SRINIVAS', 'CSE', '4C', '', 'H No 27-20/1, Hamaliwada, Mancherial, Adilabad Dt 504208', '9553355275', '9704324546', 'prasunny123@gmail.com', '../students/pics/pic.png'),
('11621A05H4', 'THOTA PRADEEP KUMAR', 'THOTA SRINIVASA RAO', 'CSE', '4C', '', 'Kattakuru Vi, Mudigonda Mdl, Khammam Dt 507170', '9989467289', '9963755340', '', '../students/pics/pic.png'),
('11621A05H7', 'V DEVI KRISHNA PRAKASH', 'VEMURI VENKATA SESHA TALPA SAI', 'CSE', '4C', '', '16-132, Prashanti Nagar, Uppal, Hyderabad 500039', '8801196441', '9700487488', 'prakash.1147@gmail.com', '../students/pics/pic.png'),
('11621A05H8', 'VIPPALLA GOWTHAM', 'VIPPALA SRINIVAS', 'CSE', '4C', '', 'H.No. 16-11-16/M/28, East Prashant Nagar, Moosarambagh, Hyderabad-36.', '9700932434', '9246589881', 'chinnakumar2434@gmail.com', '../students/pics/pic.png'),
('11621A05H9', 'VULISHE VISHNUVARDHAN', 'VULISHE SURENDER RAO', 'CSE', '4C', '', 'H.No. 6-3-126, SI-B126, Sachivalaynagar, Vanasthalipuram, Hyderabad-70.', '9493193750', '9849903717', '', '../students/pics/pic.png'),
('11621A05I0', 'Y JYOTHI', 'Y BAL RAJ', 'CSE', '4C', '', 'H No 4-92/7, Ambedker Colony, Millapally, Dichpally (Mdl), Nizamabad', '8142433495', '8106623473', 'jyothi.8142@gmail.com', '../students/pics/pic.png'),
('11U71A0525', 'SASMITA DASH KAILASH', 'KAILASH CHANDRA DASH', 'CSE', '4C', '', 'C/o Durga Prasad Ratho, H No 178, Street no 2, K P H B Colony, Kukatpally', '8801663903', '7032300164', 'bitusapna136@gmail.com', '../students/pics/pic.png'),
('11U71A0526', 'T.PRATHYUSHA', 'T GANGADHARA RAO', 'CSE', '4C', '', 'Plot No. C-33/1, Kakatiya Nagar, Neredmet, Malkajgiri, Sec-bad.', '7207286332', '9347097477', 'prathyushatirupati580@gmail.com', '../students/pics/pic.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_subjects`
--

CREATE TABLE IF NOT EXISTS `tb_subjects` (
  `subject` varchar(50) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_subjects`
--

INSERT INTO `tb_subjects` (`subject`, `year`, `type`) VALUES
('English', '1', 'theory'),
('M 1', '1', 'theory'),
('Engineering Physics', '1', 'theory'),
('Engineering Chemistry', '1', 'theory'),
('Engineering Chemistry', '1', 'theory'),
('Engineering Drawing', '1', 'theory'),
('Engineering Drawing', '1', 'theory'),
('MM', '1', 'theory'),
('CPDS', '1', 'theory'),
('CP LAB', '1', 'lab'),
('Engineering Physics / Chemistry LAB', '1', 'lab'),
('ELCS LAB', '1', 'lab'),
('IT / Engineering Workshop', '1', 'lab'),
('Probability & Statistics', '2-1', 'theory'),
('MFCS', '2-1', 'theory'),
('DS through C++', '2-1', 'theory'),
('DLD', '2-1', 'theory'),
('EDC', '2-1', 'theory'),
('BEE', '2-1', 'theory'),
('Electrical & Electronics LAB', '2-1', 'lab'),
('DS LAB through C++', '2-1', 'lab'),
('CO', '2-2', 'theory'),
('DBMS', '2-2', 'theory'),
('OOP', '2-2', 'theory'),
('ES', '2-2', 'theory'),
('ES', '2-2', 'theory'),
('FLAT', '2-2', 'theory'),
('DAA', '2-2', 'theory'),
('OOP LAB', '2-2', 'lab'),
('DBMS LAB', '2-2', 'lab'),
('PPL', '3-1', 'theory'),
('OPEN ELECTIVE', '3-1', 'theory'),
('SE', '3-1', 'theory'),
('MPI', '3-1', 'theory'),
('OS', '3-1', 'theory'),
('DCCN', '3-1', 'theory'),
('MPI LAB', '3-1', 'lab'),
('CN&OS LAB', '3-1', 'lab'),
('OOAD', '3-2', 'theory'),
('VLSI', '3-2', 'theory'),
('NS', '3-2', 'theory'),
('CD', '3-2', 'theory'),
('MEFA', '3-2', 'theory'),
('WT', '3-2', 'theory'),
('AECS LAB', '3-2', 'lab'),
('WT&CD LAB', '3-2', 'lab'),
('LP', '4-1', 'theory'),
('STM', '4-1', 'theory'),
('DWDM', '4-1', 'theory'),
('CG', '4-1', 'theory'),
('ELECTIVE 1', '4-1', 'theory'),
('ELECTIVE 2', '4-1', 'theory'),
('LP&DM LAB', '4-1', 'lab'),
('CT&ST LAB', '4-1', 'lab'),
('MS', '4-2', 'theory'),
('ELECTIVE 3', '4-2', 'theory'),
('ELECTIVE 4', '4-2', 'theory');

-- --------------------------------------------------------

--
-- Table structure for table `tb_timetable`
--

CREATE TABLE IF NOT EXISTS `tb_timetable` (
  `subject` varchar(100) DEFAULT NULL,
  `facid` varchar(50) NOT NULL DEFAULT '',
  `section` varchar(10) NOT NULL DEFAULT '',
  `semister` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`facid`,`section`,`semister`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_timetable`
--

INSERT INTO `tb_timetable` (`subject`, `facid`, `section`, `semister`) VALUES
('CN&OS_LAB', '1', '3B', 1),
('MS', '1', '4C', 2),
('OS', '10', '3B', 1),
('WS', '10', '4A', 2),
('ASN', '10', '4B', 2),
('mefa', '11', '3B', 1),
('MS', '11', '4A', 2),
('MS', '11', '4B', 2),
('ASN', '2', '4A', 2),
('MPI', '3', '3B', 1),
('WS', '4', '4C', 2),
('DCCN', '5', '3B', 1),
('WS', '5', '4B', 2),
('ASN', '5', '4C', 2),
('SE', '7', '3B', 1),
('MPI_LAB', 'principal', '3B', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_studetails`
--
ALTER TABLE `tb_studetails`
  ADD CONSTRAINT `tb_studetails_ibfk_1` FOREIGN KEY (`stuyear`) REFERENCES `tb_csesections` (`sname`);

--
-- Constraints for table `tb_timetable`
--
ALTER TABLE `tb_timetable`
  ADD CONSTRAINT `tb_timetable_ibfk_1` FOREIGN KEY (`facid`) REFERENCES `tb_facdetails` (`facid`);
--
-- Database: `db_trial`
--
--
-- Database: `test`
--
--
-- Database: `testing`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

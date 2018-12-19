-- phpMyAdmin SQL Dump
-- version 4.4.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- 생성 시간: 18-12-02 15:00
-- 서버 버전: 10.1.13-MariaDB
-- PHP 버전: 7.0.19p1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 데이터베이스: `ktm06069`
--
CREATE DATABASE IF NOT EXISTS `ktm06069` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ktm06069`;

-- --------------------------------------------------------

--
-- 테이블 구조 `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE IF NOT EXISTS `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `made_wedding_halls`
--

DROP TABLE IF EXISTS `made_wedding_halls`;
CREATE TABLE IF NOT EXISTS `made_wedding_halls` (
  `hall_hno` int(11) NOT NULL,
  `hall_name` varchar(50) NOT NULL,
  `hall_location` varchar(100) NOT NULL,
  `hall_person` int(11) NOT NULL,
  `hall_price` int(11) NOT NULL,
  `hall_thema` varchar(150) NOT NULL,
  `hall_contents` varchar(250) NOT NULL,
  `hall_link` varchar(100) NOT NULL,
  `hall_area` int(11) NOT NULL,
  `fullName` text,
  `hall_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `made_wedding_halls_img`
--

DROP TABLE IF EXISTS `made_wedding_halls_img`;
CREATE TABLE IF NOT EXISTS `made_wedding_halls_img` (
  `ino` int(11) NOT NULL,
  `fullName` varchar(200) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hno` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `made_wedding_member`
--

DROP TABLE IF EXISTS `made_wedding_member`;
CREATE TABLE IF NOT EXISTS `made_wedding_member` (
  `mwno` int(11) NOT NULL,
  `mwid` varchar(20) NOT NULL,
  `mwpw` varchar(500) NOT NULL,
  `mwname` varchar(20) NOT NULL,
  `mwmobile` varchar(11) NOT NULL,
  `mwbirth` varchar(6) NOT NULL,
  `mwregdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isOut` INT(1) NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `made_wedding_step1`
--

DROP TABLE IF EXISTS `made_wedding_step1`;
CREATE TABLE IF NOT EXISTS `made_wedding_step1` (
  `memberID` varchar(20) NOT NULL,
  `list_day` varchar(150) NOT NULL,
  `list_week` varchar(150) NOT NULL,
  `list_area` varchar(150) NOT NULL,
  `list_etc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `made_wedding_step2`
--

DROP TABLE IF EXISTS `made_wedding_step2`;
CREATE TABLE IF NOT EXISTS `made_wedding_step2` (
  `memberID` varchar(20) NOT NULL,
  `list_day` varchar(150) NOT NULL,
  `list_week` varchar(150) NOT NULL,
  `list_area` varchar(150) NOT NULL,
  `list_etc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `made_wedding_step3`
--

DROP TABLE IF EXISTS `made_wedding_step3`;
CREATE TABLE IF NOT EXISTS `made_wedding_step3` (
  `memberID` varchar(20) NOT NULL,
  `list_day` varchar(150) NOT NULL,
  `list_week` varchar(150) NOT NULL,
  `list_area` varchar(150) NOT NULL,
  `list_etc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `made_wedding_step4`
--

DROP TABLE IF EXISTS `made_wedding_step4`;
CREATE TABLE IF NOT EXISTS `made_wedding_step4` (
  `memberID` varchar(20) NOT NULL,
  `list_day` varchar(150) NOT NULL,
  `list_week` varchar(150) NOT NULL,
  `list_area` varchar(150) NOT NULL,
  `list_etc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `made_wedding_studios`
--

DROP TABLE IF EXISTS `made_wedding_studios`;
CREATE TABLE IF NOT EXISTS `made_wedding_studios` (
  `studio_hno` int(11) NOT NULL,
  `studio_name` varchar(50) NOT NULL,
  `studio_location` varchar(100) NOT NULL,
  `studio_person` int(11) NOT NULL,
  `studio_price` int(11) NOT NULL,
  `studio_thema` varchar(150) NOT NULL,
  `studio_contents` varchar(250) NOT NULL,
  `studio_link` varchar(100) NOT NULL,
  `studio_area` int(11) NOT NULL,
  `fullName` text,
  `studio_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `made_wedding_studios_img`
--

DROP TABLE IF EXISTS `made_wedding_studios_img`;
CREATE TABLE IF NOT EXISTS `made_wedding_studios_img` (
  `ino` int(11) NOT NULL,
  `fullName` varchar(200) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `hno` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `re_tbl_board`
--

DROP TABLE IF EXISTS `re_tbl_board`;
CREATE TABLE IF NOT EXISTS `re_tbl_board` (
  `bno` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text,
  `writer` varchar(50) DEFAULT NULL,
  `origin` int(11) DEFAULT '0',
  `depth` int(11) DEFAULT '0',
  `seq` int(11) DEFAULT '0',
  `regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `viewcnt` int(11) DEFAULT '0',
  `uno` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_attach`
--

DROP TABLE IF EXISTS `tbl_attach`;
CREATE TABLE IF NOT EXISTS `tbl_attach` (
  `fullName` varchar(150) NOT NULL,
  `bno` int(11) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_board`
--

DROP TABLE IF EXISTS `tbl_board`;
CREATE TABLE IF NOT EXISTS `tbl_board` (
  `bno` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `content` text,
  `writer` varchar(45) DEFAULT NULL,
  `regdate` timestamp NULL DEFAULT NULL,
  `viewcnt` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_comment`
--

DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `cno` int(11) NOT NULL,
  `bno` int(11) NOT NULL,
  `commentText` varchar(100) NOT NULL,
  `commentAuth` varchar(45) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `uno` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_member`
--

DROP TABLE IF EXISTS `tbl_member`;
CREATE TABLE IF NOT EXISTS `tbl_member` (
  `userid` varchar(50) NOT NULL,
  `userpw` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `regdate` date DEFAULT NULL,
  `updatedate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_message`
--

DROP TABLE IF EXISTS `tbl_message`;
CREATE TABLE IF NOT EXISTS `tbl_message` (
  `mno` int(11) NOT NULL,
  `targetid` varchar(50) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `opendate` timestamp NULL DEFAULT NULL,
  `senddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `uno` int(11) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `upw` varchar(50) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `upoint` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- --------------------------------------------------------

--
-- 테이블 구조 `test_board`
--

DROP TABLE IF EXISTS `test_board`;
CREATE TABLE IF NOT EXISTS `test_board` (
  `bno` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `writer` varchar(50) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `viewcnt` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `test_member`
--

DROP TABLE IF EXISTS `test_member`;
CREATE TABLE IF NOT EXISTS `test_member` (
  `userid` varchar(50) NOT NULL,
  `userpw` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `test_tbl_board`
--

DROP TABLE IF EXISTS `test_tbl_board`;
CREATE TABLE IF NOT EXISTS `test_tbl_board` (
  `bno` bigint(20) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `regdata` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `updatedata` datetime DEFAULT NULL,
  `writer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `made_wedding_halls`
--
ALTER TABLE `made_wedding_halls`
  ADD PRIMARY KEY (`hall_hno`),
  ADD UNIQUE KEY `hall_link_UNIQUE` (`hall_link`);

--
-- 테이블의 인덱스 `made_wedding_halls_img`
--
ALTER TABLE `made_wedding_halls_img`
  ADD PRIMARY KEY (`ino`,`fullName`,`hno`),
  ADD KEY `fk_made_wedding_halls_img_idx` (`hno`);

--
-- 테이블의 인덱스 `made_wedding_studios`
--
ALTER TABLE `made_wedding_studios`
  ADD PRIMARY KEY (`studio_hno`),
  ADD UNIQUE KEY `studio_link_UNIQUE` (`studio_link`);

--
-- 테이블의 인덱스 `made_wedding_studios_img`
--
ALTER TABLE `made_wedding_studios_img`
  ADD PRIMARY KEY (`ino`,`fullName`,`hno`),
  ADD KEY `fk_made_wedding_studios_img_hno_idx` (`hno`);

--
-- 테이블의 인덱스 `made_wedding_member`
--
ALTER TABLE `made_wedding_member`
  ADD PRIMARY KEY (`mwno`),
  ADD UNIQUE KEY `mwid_UNIQUE` (`mwid`);

--
-- 테이블의 인덱스 `made_wedding_step1`
--
ALTER TABLE `made_wedding_step1`
  ADD PRIMARY KEY (`memberID`);

--
-- 테이블의 인덱스 `made_wedding_step2`
--
ALTER TABLE `made_wedding_step2`
  ADD PRIMARY KEY (`memberID`);

--
-- 테이블의 인덱스 `made_wedding_step3`
--
ALTER TABLE `made_wedding_step3`
  ADD PRIMARY KEY (`memberID`);

--
-- 테이블의 인덱스 `made_wedding_step4`
--
ALTER TABLE `made_wedding_step4`
  ADD PRIMARY KEY (`memberID`);

--
-- 테이블의 인덱스 `re_tbl_board`
--
ALTER TABLE `re_tbl_board`
  ADD PRIMARY KEY (`bno`,`uno`),
  ADD KEY `fk_user_uno_idx` (`uno`);

--
-- 테이블의 인덱스 `tbl_attach`
--
ALTER TABLE `tbl_attach`
  ADD PRIMARY KEY (`fullName`,`bno`),
  ADD KEY `fk_tbl_attach_idx` (`bno`);

--
-- 테이블의 인덱스 `tbl_board`
--
ALTER TABLE `tbl_board`
  ADD PRIMARY KEY (`bno`);

--
-- 테이블의 인덱스 `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`cno`,`bno`,`uno`),
  ADD KEY `fk_board` (`bno`),
  ADD KEY `fk_tbl_user_uno_idx` (`uno`);

--
-- 테이블의 인덱스 `tbl_member`
--
ALTER TABLE `tbl_member`
  ADD PRIMARY KEY (`userid`);

--
-- 테이블의 인덱스 `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD PRIMARY KEY (`mno`,`sender`,`targetid`),
  ADD KEY `fk_usertarget` (`targetid`),
  ADD KEY `fk_usersender` (`sender`);

--
-- 테이블의 인덱스 `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`uno`),
  ADD UNIQUE KEY `uid_UNIQUE` (`uid`);

--
-- 테이블의 인덱스 `test_board`
--
ALTER TABLE `test_board`
  ADD PRIMARY KEY (`bno`);

--
-- 테이블의 인덱스 `test_member`
--
ALTER TABLE `test_member`
  ADD PRIMARY KEY (`userid`);

--
-- 테이블의 인덱스 `test_tbl_board`
--
ALTER TABLE `test_tbl_board`
  ADD PRIMARY KEY (`bno`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `made_wedding_halls`
--
ALTER TABLE `made_wedding_halls`
  MODIFY `hall_hno` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `made_wedding_halls_img`
--
ALTER TABLE `made_wedding_halls_img`
  MODIFY `ino` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `made_wedding_studios`
--
ALTER TABLE `made_wedding_studios`
  MODIFY `studio_hno` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `made_wedding_studios_img`
--
ALTER TABLE `made_wedding_studios_img`
  MODIFY `ino` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `made_wedding_member`
--
ALTER TABLE `made_wedding_member`
  MODIFY `mwno` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `re_tbl_board`
--
ALTER TABLE `re_tbl_board`
  MODIFY `bno` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `tbl_board`
--
ALTER TABLE `tbl_board`
  MODIFY `bno` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `cno` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `tbl_message`
--
ALTER TABLE `tbl_message`
  MODIFY `mno` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `uno` int(11) NOT NULL AUTO_INCREMENT;
--
-- 테이블의 AUTO_INCREMENT `test_board`
--
ALTER TABLE `test_board`
  MODIFY `bno` int(11) NOT NULL AUTO_INCREMENT;
--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `made_wedding_halls_img`
--
ALTER TABLE `made_wedding_halls_img`
  ADD CONSTRAINT `fk_made_wedding_halls_img_hno` FOREIGN KEY (`hno`) REFERENCES `made_wedding_halls` (`hall_hno`);

--
-- 테이블의 제약사항 `made_wedding_studios_img`
--
ALTER TABLE `made_wedding_studios_img`
  ADD CONSTRAINT `fk_made_wedding_studios_img_hno` FOREIGN KEY (`hno`) REFERENCES `made_wedding_studios` (`studio_hno`);

--
-- 테이블의 제약사항 `made_wedding_step1`
--
ALTER TABLE `made_wedding_step1`
  ADD CONSTRAINT `step1_memberID` FOREIGN KEY (`memberID`) REFERENCES `made_wedding_member` (`mwid`);

--
-- 테이블의 제약사항 `made_wedding_step2`
--
ALTER TABLE `made_wedding_step2`
  ADD CONSTRAINT `step2_memberID` FOREIGN KEY (`memberID`) REFERENCES `made_wedding_member` (`mwid`);

--
-- 테이블의 제약사항 `made_wedding_step3`
--
ALTER TABLE `made_wedding_step3`
  ADD CONSTRAINT `step3_memberID` FOREIGN KEY (`memberID`) REFERENCES `made_wedding_member` (`mwid`);

--
-- 테이블의 제약사항 `made_wedding_step4`
--
ALTER TABLE `made_wedding_step4`
  ADD CONSTRAINT `step4_memberID` FOREIGN KEY (`memberID`) REFERENCES `made_wedding_member` (`mwid`);

--
-- 테이블의 제약사항 `re_tbl_board`
--
ALTER TABLE `re_tbl_board`
  ADD CONSTRAINT `fk_user_uno` FOREIGN KEY (`uno`) REFERENCES `tbl_user` (`uno`);

--
-- 테이블의 제약사항 `tbl_attach`
--
ALTER TABLE `tbl_attach`
  ADD CONSTRAINT `fk_tbl_attach` FOREIGN KEY (`bno`) REFERENCES `re_tbl_board` (`bno`);

--
-- 테이블의 제약사항 `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD CONSTRAINT `fk_board` FOREIGN KEY (`bno`) REFERENCES `re_tbl_board` (`bno`),
  ADD CONSTRAINT `fk_tbl_user_uno` FOREIGN KEY (`uno`) REFERENCES `tbl_user` (`uno`);

--
-- 테이블의 제약사항 `tbl_message`
--
ALTER TABLE `tbl_message`
  ADD CONSTRAINT `fk_usersender` FOREIGN KEY (`sender`) REFERENCES `tbl_user` (`uid`),
  ADD CONSTRAINT `fk_usertarget` FOREIGN KEY (`targetid`) REFERENCES `tbl_user` (`uid`);

INSERT INTO `made_wedding_halls` (`hall_name`, `hall_location`, `hall_person`, `hall_price`, `hall_thema`, `hall_contents`, `hall_link`, `hall_area`, `fullName`, `hall_address`) VALUES
('W스퀘어웨딩홀', '부산 진구', 200, 850000, 'dark', '원탁형', '/wedding/hall/area1/detail1', 1, '/2018/11/19/s_91112260-4476-4d35-8e17-c5eb9330c11e_다크.jpg', '부산광역시 부산진구 부암1동 신천대로 252'),
('헤리움웨딩홀', '부산 진구', 200, 600000, 'romantic', '파티형', '/wedding/hall/area1/detail2', 1, '/2018/11/19/s_40f4b459-e60c-41c4-8d46-24af61c03c74_로맨틱.jpg', '부산광역시 부산진구 부전2동 중앙대로666번길 50 더샵 센트럴스타 E동'),
('대림웨딩홀', '부산 진구', 250, 1200000, 'vintage', '파티형', '/wedding/hall/area1/detail3', 1, '/2018/11/19/s_10340dd2-4040-4759-86c6-d8f7dde9c6ab_빈티지.jpg', '부산광역시 부산진구 부전1동 341-1'),
('골든뷰웨딩홀', '부산 진구', 180, 1100000, 'shiny', '극장형', '/wedding/hall/area1/detail4', 1, '/2018/11/19/s_85498903-92e1-4fee-a2d7-f0e1bd36028e_샤이니.jpg', '부산광역시 부산진구 서면로 25 서면삼한골든뷰'),
('사학연금S웨딩홀', '부산 진구', 160, 900000, 'classic ', '극장형 ', '/wedding/hall/area1/detail5', 1, '/2018/11/19/s_54cd0d43-2592-4ecb-aec2-f14a2aff8481_클래식(빈티지).PNG', '부산광역시 부산진구 범일로 181 사학연금회관'),
('더펄웨딩홀', '부산 진구', 230, 900000, 'unique', '원탁형', '/wedding/hall/area1/detail6', 1, '/2018/11/19/s_a8439869-b028-4e2b-ab9c-e0a7d9bc4f54_유니크.jpg', '부산광역시 부산진구 황령대로 24 부산상공회의소 '),
('갤러리움 웨딩홀 뷔페', '부산 진구', 300, 1500000, 'dark', '원탁형', '/wedding/hall/area1/detail7', 1, '/2018/11/19/s_72a4bf00-ac29-43ec-9d44-a21be9c5f72b_다크2.jpg', '부산광역시 부산진구 중앙대로969번길 11 양정롯데갤러리움아파트'),
('더퀸스웨딩홀', '부산 진구', 150, 1200000, 'shiny', '극장형', '/wedding/hall/area1/detail8', 1, '/2018/11/19/s_76c59053-dab2-42f9-a64b-9fa2d852989e_샤이니(2).png', '부산광역시 부산진구 신천대로 246 메리움 3층'),
('그랜드아트웨딩홀', '부산 동구', 180, 800000, 'dark', '원탁형', '/wedding/hall/area2/detail1', 2, '/2018/11/19/s_44ab0841-8759-49d4-82ee-5bba15eaae33_다크3.png', '부산광역시 동구 조방로 4 상록회관 2층'),
('디엘웨딩홀', '부산 동구', 200, 750000, 'romantic', '파티형', '/wedding/hall/area2/detail2', 2, '/2018/11/19/s_ac7909f2-d847-465b-8065-28879aad0f26_로맨틱3.png', '부산광역시 동구 범일동 830-140'),
('아레나웨딩홀', '부산 동구', 200, 1200000, 'vintage', '원탁형', '/wedding/hall/area2/detail3', 2, '/2018/11/19/s_0543b928-07b7-4797-83d1-863ae2fc5e3e_빈티지3.png', '부산광역시 동구 중앙대로 365 부산일보 '),
('협성웨딩뷔페', '부산 동구', 180, 650000, 'shiny', '극장형 ', '/wedding/hall/area2/detail4', 2, '/2018/11/19/s_c132e4ba-076a-42c8-b881-504a3e000159_샤이니2.png', '부산광역시 동구 중앙대로 360 '),
('하버컨벤션웨딩홀', '부산 동구', 350, 2000000, 'unique', '테이블형태', '/wedding/hall/area2/detail5', 2, '/2018/11/19/s_d467ac21-bf85-4071-aa43-da22faaebc74_유니크4.png', '부산광역시 동구 중앙대로260번길 7-5 부산항운노조종합복지회관'),
('블래어하우스', '부산 동구', 170, 1850000, 'classic ', '극장형', '/wedding/hall/area2/detail6', 2, '/2018/11/19/s_cf42a8ac-216c-441c-afe3-9258575ca780_클레식3.jpg', '부산광역시 동구 중앙대로 188 2층'),
('더케이부산웨딩홀', '부산 동구', 160, 500000, 'romantic', '극장형', '/wedding/hall/area2/detail7', 2, '/2018/11/19/s_69bb04f8-f555-476b-8e05-1b275fcd9ecf_로맨틱2.jpg', '부산광역시 동구 중앙대로 192 한국교직원공제회 부산회관 12층'),
('시즈웨딩홀', '부산 동구', 400, 2000000, 'vintage', '극장형', '/wedding/hall/area2/detail8', 2, '/2018/11/19/s_c7b46eb0-fa3b-4b1e-8828-b6aa565c611c_빈티지1.png', '부산광역시 동구 중앙대로 176 대한통운빌딩');

INSERT INTO `made_wedding_halls_img` (`fullName`, `hno`, `area`, `link`) VALUES
('/2018/11/19/s_91112260-4476-4d35-8e17-c5eb9330c11e_다크.jpg', 1, 1, '/wedding/hall/area1/detail1'),
('/2018/11/19/s_40f4b459-e60c-41c4-8d46-24af61c03c74_로맨틱.jpg', 2, 1, '/wedding/hall/area1/detail2'),
('/2018/11/19/s_10340dd2-4040-4759-86c6-d8f7dde9c6ab_빈티지.jpg', 3, 1, '/wedding/hall/area1/detail3'),
('/2018/11/19/s_85498903-92e1-4fee-a2d7-f0e1bd36028e_샤이니.jpg', 4, 1, '/wedding/hall/area1/detail4'),
('/2018/11/19/s_54cd0d43-2592-4ecb-aec2-f14a2aff8481_클래식(빈티지).PNG', 5, 1, '/wedding/hall/area1/detail5'),
('/2018/11/19/s_a8439869-b028-4e2b-ab9c-e0a7d9bc4f54_유니크.jpg', 6, 1, '/wedding/hall/area1/detail6'),
('/2018/11/19/s_72a4bf00-ac29-43ec-9d44-a21be9c5f72b_다크2.jpg', 7, 1, '/wedding/hall/area1/detail7'),
('/2018/11/19/s_76c59053-dab2-42f9-a64b-9fa2d852989e_샤이니(2).png', 8, 1, '/wedding/hall/area1/detail8'),
('/2018/11/19/s_44ab0841-8759-49d4-82ee-5bba15eaae33_다크3.png', 9, 1, '/wedding/hall/area2/detail1'),
('/2018/11/19/s_ac7909f2-d847-465b-8065-28879aad0f26_로맨틱3.png', 10, 2, '/wedding/hall/area2/detail2'),
('/2018/11/19/s_0543b928-07b7-4797-83d1-863ae2fc5e3e_빈티지3.png', 11, 2, '/wedding/hall/area2/detail3'),
('/2018/11/19/s_c132e4ba-076a-42c8-b881-504a3e000159_샤이니2.png', 12, 2, '/wedding/hall/area2/detail4'),
('/2018/11/19/s_d467ac21-bf85-4071-aa43-da22faaebc74_유니크4.png', 13, 2, '/wedding/hall/area2/detail5'),
('/2018/11/19/s_cf42a8ac-216c-441c-afe3-9258575ca780_클레식3.jpg', 14, 2, '/wedding/hall/area2/detail6'),
('/2018/11/19/s_69bb04f8-f555-476b-8e05-1b275fcd9ecf_로맨틱2.jpg', 15, 2, '/wedding/hall/area2/detail7'),
('/2018/11/19/s_c7b46eb0-fa3b-4b1e-8828-b6aa565c611c_빈티지1.png', 16, 2, '/wedding/hall/area2/detail8');

INSERT INTO `made_wedding_member` (`mwid`, `mwpw`, `mwname`, `mwmobile`, `mwbirth`) VALUES
('master', '$2a$15$p756vpSloAikPa9W4ls7OuaezElphsokwWn4zinjQtFHsvwhNlGuG', '마스터', '01000000000', '990101'),
('id001', '$2a$15$/5/V4URFdQqPZfga7dXtYexFuVrrwvF75pJcnjY2JQch5mbv32egi', 'DR.STRANGE', '01011111111', '990101'),
('id002', '$2a$15$brQuyDLl3cp82v1.hdbiuOYioC3zRAS4NUz6nDItlrVKI4xuWfQ66', 'IRON MAN', '01022222222', '990101'),
('id003', '$2a$15$XPuQILEZUc4d.3tubYQlHOxeOQmQKoZgfSv0ZZ.35mKW9yPMEmWSC', 'THOR', '01033333333', '990101'),
('id004', '$2a$15$4R3BruC0iQXGJ9hti2AtQ.d4QGY.ZSfkurkPcI1/oofRqc5V4G5Eu', 'ANT MAN', '01044444444', '990101'),
('ktm06069', '$2a$15$SDRjQYAQS5EBiNcC2nfEqO8hQ0mnHWGCbJ/OtHdEe1Hfls573lK.W', '김태민', '01026389052', '990606');

INSERT INTO `made_wedding_studios` (`studio_name`, `studio_location`, `studio_person`, `studio_price`, `studio_thema`, `studio_contents`, `studio_link`, `studio_area`, `fullName`, `studio_address`) VALUES
('M웨딩스튜디오', '부산 진구', 300, 1200000, 'dark', '다크한 느낌의 컨셉으로 웨딩에 어울리지않을듯한 느낌이지만 실제로 많은 분들이 컨셉에 좋은평가를 줍니다. 모노톤의 아련함과, 유니크한 느낌을 담을수있습니다.', '/wedding/studio/area1/detail1', 1, '/2018/11/19/s_79c20b9c-b236-4342-8ddd-0c6bd98f2ca6_다크(2).jpg', '부산광역시 부산진구 전포대로 227'),
('베네사웨딩스튜디오', '부산 진구', 350, 1500000, 'romantic', '로맨틱컨셉을 대표적으로 하는 스튜디오입니다. 베네사스튜디오는 포토그래퍼의 전문성을 강점을 두고있는 스튜디오입니다. 실제로 화려한 경력의 포토그래퍼가 즐비해있습니다.', '/wedding/studio/area1/detail2', 1, '/2018/11/19/s_84439e31-befa-44cb-9956-84e718aea7f7_로맨틱3.jpg', '부산광역시 연제구 월드컵대로 75-1'),
('탑웨딩스튜디오', '부산 진구', 220, 9000000, 'classic', '탑스튜디오는 클레식한 컨셉을 강점으로두고있는 스튜디오 입니다. 그렇다보니 호불호가 갈리기보다는 무난하면서도 깔끔한 느낌의 사진을 추구하는 스튜디오 이기에 고객들이 무난하게 선택을 할수 있는곳입니다.', '/wedding/studio/area1/detail3', 1, '/2018/11/19/s_e9ef4e2f-ae43-4ea8-8da7-1f48236f85fe_클레식3.jpg', '부산광역시 북구 덕천2길 15'),
('젠웨딩스튜디오', '부산 진구', 180, 750000, 'shiny ', '젠스튜디오의 강점은 샤이니한 컨셉으로 샤한느낌을 선호하는 분들에게 인기가 있습니다. ', '/wedding/studio/area1/detail4', 1, '/2018/11/19/s_91d91375-5b45-41d6-afea-462d1dcc4847_샤이니3.jpg', '부산광역시 동래구 충렬대로238번길 31'),
('인클라라 웨딩스튜디오', '부산 진구', 100, 900000, 'vintage', '인클라라웨디은 빈티지를 선호하는 스튜디오입니다. 그러다보니 고객들의 취향이 뚜렷한 분들에게 인기가 있습니다. 빈티지한 톤이라하여 크게 노후화되거나 오래되 보이는것이 아닌 깔끔한 느낌을 주로 선사합니다.', '/wedding/studio/area1/detail5', 1, '/2018/11/19/s_0be28659-0e0b-4767-99ab-89d20f2048bf_빈티지2.jpg', '부산광역시 부산진구 범일로 175 '),
('티파니웨딩스튜디오', '부산 진구', 80, 2200000, 'unique', '유니크한 컨셉으로 주로 야외나, 데이트스냅을 위주로하는 스튜디오입니다. 그렇기때문에 비교적 높은가격층을 형성하지만 젊은분들에게 인기가 많은 스튜디오입니다.', '/wedding/studio/area1/detail6', 1, '/2018/11/19/s_8b9b0867-3f2a-42b0-b886-7eb9ad2177f9_유니크2.jpg', '부산광역시 연제구 연수로 231 아세아맨션'),
('시네마청조토탈 웨딩스튜디오', '부산 진구', 70, 12000000, 'dark', '시네마청조토탈웨딩스튜디오는 많은분들에게 인지도있는 스튜디오로써 드라마틱한 컨셉을 연출을 강점을 두고있습니다. 오래된역사와 화려한 컨셉으로 다양한 연령층의 고객들을 형성하고있는것이 특징입니다.', '/wedding/studio/area1/detail7', 1, '/2018/11/19/s_2cd3f3b8-f78b-41cb-bcd9-0a7ec9df4ada_다크3.png', '부산광역시 부산진구 황령대로30번길 30 '),
('오브스튜디오', '부산 진구', 45, 2500000, 'unique', '데이트스냅같은 화려한 연출을 꿈꾸시는 분들에게 선호합니다. 현실에서만 꿈꿔왔던 장면들을 연출해주는 오브스튜디오입니다. ', '/wedding/studio/area1/detail8', 1, '/2018/11/19/s_ec0c9b79-4ba7-4017-8ba0-a768ea6a1a74_로맨틱2.jpg', '부산광역시 해운대구 송정광어골로 29 수정빌딩'),
('모노웨딩&스튜디오', '부산 동구', 20, 1100000, 'dark', '스튜디오의 정성과도 같은 업체입니다. 다양한 컨셉보단 깔끔하면서도 구도와 사진의 형태가 칼같은 느낌을 주는 업체로 사진촬영이 뛰어난점이 강점입니다.', '/wedding/studio/area2/detail1', 2, '/2018/11/19/s_80aa255e-d75a-4b01-8dc8-3e46ce822f50_다크2.jpg', '부산광역시 수영구 수영로510번길 58'),
('베르데웨딩스튜디오', '부산 동구', 20, 550000, 'shiny ', '아름다운 실내 스튜디오가 강점입 베르데스튜디오입니다. 화려한 실내장식으로 마치 동화속에 나올법한 연출들을 느낄수있는 매력적인 곳입니다.', '/wedding/studio/area2/detail2', 2, '/2018/11/19/s_c975fcaf-61ad-4b63-8062-24fb28db69ba_샤이니1.jpg', '부산광역시 수영구 광안2동 173-19'),
('홍이스냅', '부산 동구', 20, 850000, 'vintage', '빈티지한 컨셉을 대표하는 홍이스냅은 실패를 모르는 업체입니다. 젊은층부터 다양한 연령층을 소화할수있을정도로 뛰어난점을 자랑할수있습니다.', '/wedding/studio/area2/detail3', 2, '/2018/11/19/s_12187658-98da-4dfe-8bca-fd33bca3bf11_빈티지1.jpg', '부산광역시 수영구 광안해변로277번길 7'),
('클라우디아', '부산 동구', 25, 1100000, 'romantic', '러블리한 업체연출을 꿈꾸신다면은 클라우디아를 선택하시는것이 좋습니다. ', '/wedding/studio/area2/detail4', 2, '/2018/11/19/s_b9922ec4-d29b-47e3-b2e1-695d1b8c40c2_로맨틱4.jpg', '부산광역시 수영구 광남로 127'),
('옥자스냅', '부산 동구', 15, 750000, 'unique', '배경을중점으로 유니크하느 컨셉을 추구하는 업체입니다.화려한 파스텔톤을 자랑하기에 컨셉이 뚜렷하다는 단점이있지만, 유니크한 컨셉을 선호하는 분들에게 인기있는 스튜디오입니다.', '/wedding/studio/area2/detail5', 2, '/2018/11/19/s_473c9429-deb2-4356-a809-e31d0ff59c70_유니크1.jpg', '부산광역시 수영구 민락로33번길 20'),
('포토그라피 핀', '부산 동구', 25, 900000, 'classic', '화이트바탕을 중점으로 빈티지한 연출을 선호하는 스튜디오입니다. 아련함을 선사하고싶다는 포토그라피 핀은 계속 사진을 보고싶게 만드는 매력이 있는 스튜디오입니다.', '/wedding/studio/area2/detail6', 2, '/2018/11/19/s_b1ef580c-35bd-4de8-9ec8-5f6c51d68564_클레식.png', '부산광역시 동구 중앙대로 292 2층'),
('조광포토', '부산 동구', 25, 1250000, 'shiny', '빈티지하면서도 샤이니한 스튜디오 세트를 꾸미고있는 조광포토입니다. 유머러스한 성격의 포토그래퍼들이 즐비하여 촬영장에 웃음이 끊이질않아 Funny하면서도 유쾌한 스튜디오입니다.', '/wedding/studio/area2/detail7', 2, '/2018/11/19/s_9268ce64-1569-423f-97ad-2899d67c0d3f_코인은나빠.png', '부산광역시 동구 범일로102번길 20'),
('레어컬러스', '부산 진구', 25, 1000000, 'unique', '사랑스럽고 풋풋하며 러블리한 컨셉으로 젊은시절 "우리 연애때 이런모습이였을까?" 이런 생각이들다가도 순정만화에서 볼법한 컨셉을 주로 선호합니다. 상큼하면서도 풋풋한 매력을 찾는분들에게 인기가있는 스튜디오입니다.', '/wedding/studio/area2/detail8', 2, '/2018/11/19/s_35294daf-e0f4-4be0-a345-243209b11fe0_제목 없음.png', '부산광역시 부산진구 가야공원로63번길 53');

INSERT INTO `made_wedding_studios_img` (`fullName`, `hno`, `area`, `link`) VALUES
('/2018/11/19/s_79c20b9c-b236-4342-8ddd-0c6bd98f2ca6_다크(2).jpg', 1, 1, '/wedding/studio/area1/detail1'),
('/2018/11/19/s_84439e31-befa-44cb-9956-84e718aea7f7_로맨틱3.jpg', 2, 1, '/wedding/studio/area1/detail2'),
('/2018/11/19/s_e9ef4e2f-ae43-4ea8-8da7-1f48236f85fe_클레식3.jpg', 3, 1, '/wedding/studio/area1/detail3'),
('/2018/11/19/s_91d91375-5b45-41d6-afea-462d1dcc4847_샤이니3.jpg', 4, 1, '/wedding/studio/area1/detail4'),
('/2018/11/19/s_0be28659-0e0b-4767-99ab-89d20f2048bf_빈티지2.jpg', 5, 1, '/wedding/studio/area1/detail5'),
('/2018/11/19/s_8b9b0867-3f2a-42b0-b886-7eb9ad2177f9_유니크2.jpg', 6, 1, '/wedding/studio/area1/detail6'),
('/2018/11/19/s_2cd3f3b8-f78b-41cb-bcd9-0a7ec9df4ada_다크3.png', 7, 1, '/wedding/studio/area1/detail7'),
('/2018/11/19/s_ec0c9b79-4ba7-4017-8ba0-a768ea6a1a74_로맨틱2.jpg', 8, 1, '/wedding/studio/area1/detail8'),
('/2018/11/19/s_80aa255e-d75a-4b01-8dc8-3e46ce822f50_다크2.jpg', 9, 2, '/wedding/studio/area2/detail1'),
('/2018/11/19/s_c975fcaf-61ad-4b63-8062-24fb28db69ba_샤이니1.jpg', 10, 2, '/wedding/studio/area2/detail2'),
('/2018/11/19/s_12187658-98da-4dfe-8bca-fd33bca3bf11_빈티지1.jpg', 11, 2, '/wedding/studio/area2/detail3'),
('/2018/11/19/s_b9922ec4-d29b-47e3-b2e1-695d1b8c40c2_로맨틱4.jpg', 12, 2, '/wedding/studio/area2/detail4'),
('/2018/11/19/s_473c9429-deb2-4356-a809-e31d0ff59c70_유니크1.jpg', 13, 2, '/wedding/studio/area2/detail5'),
('/2018/11/19/s_b1ef580c-35bd-4de8-9ec8-5f6c51d68564_클레식.png', 14, 2, '/wedding/studio/area2/detail6'),
('/2018/11/19/s_9268ce64-1569-423f-97ad-2899d67c0d3f_코인은나빠.png', 15, 2, '/wedding/studio/area2/detail7'),
('/2018/11/19/s_35294daf-e0f4-4be0-a345-243209b11fe0_제목 없음.png', 16, 2, '/wedding/studio/area2/detail8');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

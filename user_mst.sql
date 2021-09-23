-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        5.7.16-log - MySQL Community Server (GPL)
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- 테이블 web.user_mst 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_mst` (
  `user_id` varchar(50) NOT NULL DEFAULT '0',
  `user_pwd` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_birthday` varchar(50) NOT NULL,
  `createdate` varchar(50) NOT NULL,
  `updatedate` varchar(50) NOT NULL,
  `blockdata` varchar(50) NOT NULL DEFAULT '0' COMMENT '0은 정상, 1은 차단',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='유저의 로그인데이터를 저장하는 곳입니다';

-- 테이블 데이터 web.user_mst:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `user_mst` DISABLE KEYS */;
INSERT INTO `user_mst` (`user_id`, `user_pwd`, `user_name`, `user_birthday`, `createdate`, `updatedate`, `blockdata`) VALUES
	('asd', '123', 'test', '19881225', '1000', '1000', '0'),
	('qwerty', '123', 'blocked', '19990909', '1000', '1000', '1');
/*!40000 ALTER TABLE `user_mst` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
user_mst
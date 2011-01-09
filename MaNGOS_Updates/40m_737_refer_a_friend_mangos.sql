-- Refer-a-friend system by MasOn
INSERT INTO `command` (`name`,`security`,`help`) VALUES
('account friend add',3,'Syntax: .account friend add [#accountId|$accountName] [#friendaccountId|$friendaccountName]\r\n\r\nSet friend account.'),
('account friend delete',3,'Syntax: .account friend delete [#accountId|$accountName] [#friendaccountId|$friendaccountName]\r\n\r\nDelete friend account.'),
('account friend list',3,'Syntax: .account friend list [#accountId|$accountName]\r\n\r\nList friends for account.');

DELETE FROM `mangos_string` WHERE `entry` IN (11133,11134);
INSERT INTO `mangos_string` VALUES
(11133,'RAF system ok.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(11134,'RAF system error.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r39 r40 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r40');

UPDATE db_version SET `cache_id`= 'r40';
UPDATE db_version SET `version`= 'YTDB579_Infinity_Update_r40';
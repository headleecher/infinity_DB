UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 3101;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 3124;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 3102;

-- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r36 r37 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r37');

UPDATE db_version SET `cache_id`= 'r37';
UPDATE db_version SET `version`= 'YTDB579_Infinity_Update_r37';
-- fix quest 13118 
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = '31037', `ReqCreatureOrGOId2` = '31039', `ReqCreatureOrGOId3` = '31043' WHERE `entry` =13118; 

-- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r34 r35 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r35');

UPDATE db_version SET `cache_id`= 'r35';
UPDATE db_version SET `version`= 'YTDB579_Infinity_Update_r35';
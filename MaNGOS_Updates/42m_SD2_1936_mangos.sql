UPDATE instance_template SET ScriptName='instance_blackwing_lair' WHERE map=469;

-- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r41 r42 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r42');

UPDATE db_version SET `cache_id`= 'r42';
UPDATE db_version SET `version`= 'YTDB579_Infinity_Update_r42';
--npc tender = 15271
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 15271;

-- npc feral tender = 15294
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 15294;

--npc arcane wraith = 15273
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 15273;

-- npc tainted arcane wraith = 15298
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 15298;

-- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r35 r36 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r36');

UPDATE db_version SET `cache_id`= 'r36';
UPDATE db_version SET `version`= 'YTDB579_Infinity_Update_r36';
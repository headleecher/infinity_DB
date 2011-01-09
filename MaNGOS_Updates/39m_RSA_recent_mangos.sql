-- from lanc
-- Refurbished Shredder (quest 12050)
UPDATE `creature_template` SET
spell1 = 47939,
spell2 = 47921,
spell3 = 47966,
spell4 = 47938,
spell5 = 0,
spell6 = 0,
VehicleId = 300
WHERE `entry` IN (27061);

DELETE FROM `npc_spellclick_spells` WHERE npc_entry IN (27061);
INSERT INTO `npc_spellclick_spells` VALUES (27061, 47920, 0, 0, 0, 1);
REPLACE INTO `spell_script_target` VALUES (47939, 2, 188539);

-- FallenAngelX
ALTER TABLE db_version_Infinity_Update CHANGE COLUMN r38 r39 bit;
REPLACE INTO `db_version_Infinity_Update` (`version`) VALUES ('r39');

UPDATE db_version SET `cache_id`= 'r39';
UPDATE db_version SET `version`= 'YTDB579_Infinity_Update_r39';
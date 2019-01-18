#
# SQL Export
# Created by Querious (201054)
# Created: 13 January 2019 at 13:25:56 CET
# Encoding: Unicode (UTF-8)
#


SET @PREVIOUS_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS;
SET FOREIGN_KEY_CHECKS = 0;


DROP TABLE IF EXISTS `regles`;


CREATE TABLE `regles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `source_id` int(10) unsigned NOT NULL DEFAULT 0,
  `niveau` enum('1','2','3','4','5','6','7','8','9','10') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `montant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordre` enum('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `cible` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag_chiffre_independant_des_benefs` tinyint(1) NOT NULL DEFAULT 0,
  `cible_si_independant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exception` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag_optionel` tinyint(1) NOT NULL DEFAULT 0,
  `min` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `flag_cible_multiple` tinyint(1) NOT NULL DEFAULT 0,
  `flag_delegation` tinyint(1) NOT NULL DEFAULT 0,
  `flag_illisible` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `regles_source_id_foreign` (`source_id`),
  CONSTRAINT `regles_source_id_foreign` FOREIGN KEY (`source_id`) REFERENCES `sources` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




SET FOREIGN_KEY_CHECKS = @PREVIOUS_FOREIGN_KEY_CHECKS;



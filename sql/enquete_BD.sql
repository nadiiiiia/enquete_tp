-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 19 jan. 2018 à 16:41
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `enquete`
--

-- --------------------------------------------------------

--
-- Structure de la table `tp_answer`
--

DROP TABLE IF EXISTS `tp_answer`;
CREATE TABLE IF NOT EXISTS `tp_answer` (
  `answer_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_id_` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `answer_body` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tp_complete_question`
--

DROP TABLE IF EXISTS `tp_complete_question`;
CREATE TABLE IF NOT EXISTS `tp_complete_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enquete_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `section_number` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `question_number` int(11) NOT NULL,
  `note` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tp_enquete`
--

DROP TABLE IF EXISTS `tp_enquete`;
CREATE TABLE IF NOT EXISTS `tp_enquete` (
  `tp_id` int(11) NOT NULL AUTO_INCREMENT,
  `tp_name` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `tp_note` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tp_enquete`
--

INSERT INTO `tp_enquete` (`tp_id`, `tp_name`, `tp_note`) VALUES
(1, 'Enquête Gestion des déchets dans les travaux publics - 2015', 'Questionnaire adressé aux établissements de TP (et du secteur de la dépollution/désamiantage)');

-- --------------------------------------------------------

--
-- Structure de la table `tp_question`
--

DROP TABLE IF EXISTS `tp_question`;
CREATE TABLE IF NOT EXISTS `tp_question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_body` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `question_note` varchar(205) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tp_question`
--

INSERT INTO `tp_question` (`question_id`, `question_body`, `question_note`) VALUES
(1, 'Veuillez-nous indiquer le nom et l\'adresse de votre établissement, ainsi que le numéro d\'identifiant présent sur le courrier ', ''),
(2, 'Veuillez-nous indiquer les coordonnées de la personne qualifiée à répondre au questionnaire', ''),
(3, '1.1 Indiquez le code APE de votre établissement : ', ''),
(4, '1.2 Quelles activités sont exercées au sein de votre établissement ? ', '(répartition en pourcentage)'),
(5, '1.3 Votre établissement est-il le seul établissement de votre entreprise ?  ', ''),
(6, '1.4 Effectif salarié de votre établissement au 31 décembre 2015 (y compris intérimaires) :', ''),
(7, '2.1 Pouvez-vous estimer la quantité de déblais/matière qui est réemployée sur place et ne sort donc pas de vos chantiers', '(en tonne ou m3)'),
(8, '2.2 Volume total des déchets générés par votre établissement en 2015 sur vos chantiers de TP : ', ''),
(9, '3. Veuillez indiquer les quantités de déchets suivant leur nature et répartir ensuite en pourcentage ces quantités suivant leur destination première.', ''),
(10, '4. Veuillez indiquer les quantités de déchets suivant leur nature et répartir ensuite en pourcentage ces quantités suivant leur destination première.', ''),
(11, '5. Veuillez indiquer les quantités de déchets suivant leur nature et répartir ensuite en pourcentage ces quantités suivant leur destination première.', ''),
(12, '6.1. Pour les chantiers dont vous avez assuré tout ou partie de la gestion des déchets en 2015, indiquer la proportion de chantiers réalisés en 2015 pour laquelle le maître d\'ouvrage a exigé une démarche spécifique de gestion des déchets (de type SOSED, SOGED ou équivalent) ou une démarche plus globale liée à la protection de l\'environnement (SOPRE, SOPAE, notice environnement, etc.)', ''),
(13, '6.2. Quels outils utilisez-vous pour réaliser le suivi/traçabilité de vos déchets ?', ''),
(14, '7. Depuis 2015, votre établissement a-t-il mis en œuvre des actions pour améliorer la gestion des déchets ?', ''),
(15, '8. Quels sont les freins à une démarche durable de prévention, de tri et/ou d\'orientation des déchets vers une filière de valorisation ou de recyclage des déchets pour votre établissement ?', ''),
(16, '9.1 Au cours de l\'année 2015, votre établissement a-t-il acheté ou utilisé des matériaux inertes recyclés ?', ''),
(17, '9.2. Pour chacun de ces types de matériaux recyclés, quelle quantité votre établissement a-t-elle consommé au cours de l\'année 2015 ?', ''),
(18, '9.3. En 2015, pouvez-vous estimer la part de ce type de matériaux par rapport à votre consommation totale de matériaux ', '(en pourcentage) '),
(19, '9.4. Quels sont les freins pour utiliser davantage de matériaux recyclés ?', ''),
(20, '9.5. Souhaitez-vous nous décrire un exemple de bonnes pratiques réalisées sur un ou plusieurs de vos chantiers ?', '(celles-ci pourront être valorisées par la Région dans le cadre de ses travaux)'),
(21, '10. Avez-vous des besoins/attentes particulières en matière de gestion de vos déchets et/ou de réutilisation de matériaux recyclés ?', '');

-- --------------------------------------------------------

--
-- Structure de la table `tp_section`
--

DROP TABLE IF EXISTS `tp_section`;
CREATE TABLE IF NOT EXISTS `tp_section` (
  `section_id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(400) COLLATE utf8_unicode_ci NOT NULL,
  `section_note` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `tp_user`
--

DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE IF NOT EXISTS `tp_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sup_user` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `tp_user`
--

INSERT INTO `tp_user` (`id`, `email`, `password`, `sup_user`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(2, 'user', '670b14728ad9902aecba32e22fa4f6bd', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

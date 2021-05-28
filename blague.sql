-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 27 sep. 2019 à 06:14
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blague`
--

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `id_auteur` int(3) NOT NULL AUTO_INCREMENT,
  `pseudo_auteur` varchar(100) NOT NULL,
  `mdp_auteur` varchar(50) NOT NULL DEFAULT '',
  `img_auteur` varchar(100) NOT NULL DEFAULT 'personne.png',
  `nom_auteur` varchar(100) DEFAULT NULL,
  `pre_auteur` varchar(100) DEFAULT NULL,
  `rue_auteur` varchar(200) DEFAULT NULL,
  `cp_auteur` varchar(5) DEFAULT NULL,
  `ville_auteur` varchar(255) DEFAULT NULL,
  `tel_auteur` varchar(10) DEFAULT NULL,
  `email_auteur` varchar(100) DEFAULT NULL,
  `descriptif` text,
  PRIMARY KEY (`id_auteur`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `auteur`
--

INSERT INTO `auteur` (`id_auteur`, `pseudo_auteur`, `mdp_auteur`, `img_auteur`, `nom_auteur`, `pre_auteur`, `rue_auteur`, `cp_auteur`, `ville_auteur`, `tel_auteur`, `email_auteur`, `descriptif`) VALUES
(1, '@jokes de papa', '098f6bcd4621d373cade4e832627b4f6', 'personne.png', '', '', '', '', '', '', '', ''),
(2, 'le boss', '098f6bcd4621d373cade4e832627b4f6', 'personne.png', '', '', '', '', '', '', '', ''),
(3, 'le beauf', '098f6bcd4621d373cade4e832627b4f6', 'personne.png', '', '', '', '', '', '', '', ''),
(4, 'vaseuse', '098f6bcd4621d373cade4e832627b4f6', 'personne.png', '', '', '', '', '', '', '', ''),
(5, 'Anok', '098f6bcd4621d373cade4e832627b4f6', 'personne.png', '', '', '', '', '', '', '', ''),
(6, 'Caswell', '098f6bcd4621d373cade4e832627b4f6', 'personne.png', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `blagues`
--

DROP TABLE IF EXISTS `blagues`;
CREATE TABLE IF NOT EXISTS `blagues` (
  `id_blague` int(3) NOT NULL AUTO_INCREMENT,
  `id_categorie` int(3) NOT NULL,
  `titre_blague` varchar(100) NOT NULL,
  `desc_blague` text NOT NULL,
  `id_illustration` int(3) NOT NULL,
  `id_auteur` int(3) NOT NULL,
  `px_blague` double DEFAULT NULL,
  PRIMARY KEY (`id_blague`),
  KEY `id_categorie` (`id_categorie`,`id_illustration`,`id_auteur`),
  KEY `id_auteur` (`id_auteur`),
  KEY `id_illustration` (`id_illustration`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `blagues`
--

INSERT INTO `blagues` (`id_blague`, `id_categorie`, `titre_blague`, `desc_blague`, `id_illustration`, `id_auteur`, `px_blague`) VALUES
(1, 1, 'Blague n°1', 'Pourquoi le lapin est bleu ?\nParce qu’on l’a peint…', 1, 1, 5.5),
(2, 1, 'Blague n°2', 'Comment appelle-t-on un nain qui travaille à la Poste ?\nUn nain posteur…', 2, 4, 5.5),
(3, 1, 'Blague n°3', 'Qu’est ce qui fait toin toin ?\nUn tanard', 3, 6, 5.5),
(4, 1, 'Blague n°4', 'La vitamine C…\nmais elle ne dira rien.', 4, 5, 5.5),
(5, 1, 'Blague n°5', 'Quelle est la différence entre tintin et milou ?\nMilou n’a pas de chien …', 5, 4, 5.5),
(6, 1, 'Blague n°6', 'Que dit un oignon quand il se cogne ?\nAil', 6, 3, 5.5),
(7, 1, 'Blague n°7', 'Tu connais la blague de la chaise?\nElle est pliante', 7, 2, 5.5),
(8, 2, 'Blague n°8', 'Toto demande à sa maman :\n– Est-ce que l’on a le droit de crier sur les gens ?\n– Non Toto, ce n’est pas bien !\n– Tant mieux parce que j’ai cassé le vase de grand-mère !', 8, 1, 15.5),
(9, 2, 'Blague n°9', 'Toto demande à son père : \r\n– Papa, c’est quoi un synonyme ? \r\n– C’est un mot qu’on emploie quand on ne sait pas comment l’autre s’écrit.', 9, 1, 15.5),
(10, 2, 'Blague n°10', 'En classe de sciences naturelles, le professeur demande à Toto :\n– Peux-tu me dire comment se reproduisent les hérissons ?\n– En faisant très, très attention m’sieur ! répond Toto.', 10, 1, 15.5),
(11, 2, 'Blague n°11', 'Maman demande à Toto:\n-Pourquoi as-tu de mauvaises notes?\n-Parce que ce n’est pas moi qui les met.', 11, 4, 15.5),
(12, 2, 'Blague n°12', 'Toto dit à sa copine :\r\n– J’aurais bien aimé vivre au Moyen-Age !\r\nSa copine :\r\n– Pourquoi, Toto ?\r\n– Parce-que j’aurais eu moins d’histoire à apprendre !', 1, 3, 15.5),
(13, 2, 'Blague n°13', 'La sœur de Toto lui demande :\r\n– Tu crois qu’il y a des gens qui vivent sur la lune?\r\nToto lui répond :\r\n– Oui, car ils allument la lumière tous les soirs!', 2, 2, 15.5),
(14, 2, 'Blague n°14', 'Toto demande à son père :\r\n– Papa, pourquoi as-tu épousé maman ?\r\n\r\nIl répond :\r\n– Ah ! Toi aussi tu te poses la question ?', 3, 1, 15.5),
(15, 2, 'Blague n°15', 'Toto demande à son père :\r\n– Papa, c’est quoi un synonyme ?\r\n– C’est un mot qu’on emploie quand on ne sait pas comment l’autre s’écrit.', 4, 1, 15.5),
(16, 4, 'Blague n°16', 'Un mec gifle un aveugle :\r\n\"Tu l’avais pas vu venir celle-là ?!\"', 5, 1, 20),
(17, 4, 'Blague n°17', 'Quelle est la différence entre un divorce et la grammaire ?\n\nEn grammaire, c’est le masculin qui l’emporte.', 6, 4, 20),
(18, 4, 'Blague n°18', 'Quand Hitler s’est-il suicidé ?\r\nAprès avoir reçu sa facture de gaz…', 7, 5, 20),
(19, 3, 'Blague n°19', '– Tu connais la blague du con qui dit non ?\r\n– Non…\r\n– …', 8, 4, 7.5),
(20, 3, 'Blague n°20', 'C’est l’histoire d’un chauve...\r\nQui a un cheveu sur la langue', 9, 2, 7.5),
(21, 3, 'Blague n°21', 'Un chameau dit a un dromadaire : – Comment ca va ? \r\n– Bien, je bosse, et toi?\r\n– Je bosse, je bosse !', 10, 1, 7.5),
(22, 3, 'Blague n°22', 'Pourquoi quand on veut viser on ferme un œil?\r\nCar si on fermait les deux on verrait plus rien!', 11, 3, 7.5),
(23, 3, 'Blague n°23', 'Quelle est la femme la plus rapide du monde ?\r\nLaurence Ferrari', 1, 2, 7.5),
(24, 3, 'Blague n°24', 'Deux mamans discutent :\n– J’ai perdu mon chien !\n– Faites passer une annonce !\n– Ça ne sert à rien, il ne sait pas lire…', 2, 1, 7.5),
(25, 3, 'Blague n°25', 'C’est l’histoire d’un schtroumpf qui tombe...\r\nEt qui se fait un bleu…', 3, 4, 7.5),
(26, 5, 'Devenir père', 'Un homme rencontre un de ses copains qui fait une tête d’enterrement.\n– Tu as perdu quelqu’un ?\n– Non, c’est même le contraire, je vais être père !\n– Et c’est pour ça que tu fais une gueule pareille ?\n– Oui… Je ne sais pas comment l’annoncer à ma femme…', 4, 5, 12.25),
(27, 5, 'J\'arrete de jouer', 'Deux amis se rencontrent. L’un, joueur invétéré dit à l’autre:\n– Il faut que je t’annonce une grande nouvelle: j’arrête de jouer! Plus de casino, plus de tiercé, plus de poker…\n– Bravo, lui dit l’autre. Mais pardonne-moi, te connaissant, j’ai du mal à y croire. Je suis même sûr que tu ne tiendras pas!\n– Ah bon? Tu paries combien?', 5, 4, 12.25),
(28, 5, 'Sur une branche', 'Qu’est-ce qu’un homme sur une branche ?\nUn homme de moins sur terre.\n\nQu’est-ce que deux hommes sur une branche ?\nUn homme de plus sur la branche.\n\nQu’est-ce que trois hommes sur une branche ?\nCRAC…', 6, 1, 12.25),
(29, 5, 'Alzheimer', 'Un retraité rentre chez lui avec son sac de golf, un peu dépité.\n– Ça n’a pas été ?, lui demande sa femme.\n– Ben je n’ai pas de mal à frapper la balle, mais le problème c’est que je n’arrive pas à voir où elle tombe, même avec mes lunettes …\n– T’as qu’à emmener mon frère Marcel !\n– Mais il a 84 ans, Marcel. Et il ne sait pas jouer au golf.\n– Oui mais il voit très bien. Tu joues, et lui te dit où la balle est tombée !\nLe jour suivant, notre golfeur emmène son beauf de 84 ans au golf et il tire son premier swing.\n– T’as vu où elle est partie ? Marcel.\n– Ouais !\n– Alors ? Elle est où ?\n– J’ai oublié.', 7, 2, 12.25),
(30, 5, 'Droite et gauche', 'Un ivrogne rentre dans un bar et, en se dirigeant vers le comptoir, dit :\n– Tous ceux à ma droite sont des connards ! Tous ceux à ma gauche sont des merdes !\n\nUn homme surpris et vexé par ces propos se lève et dit :\n– Oh ça va ! Je suis pas une merde !\n– Bin passe à droite connard, lui répond l’ivrogne !', 8, 3, 12.25),
(31, 6, 'La blonde du vendredi', 'Deux blondes discutent ensemble :\n\n– Cette année, Noël tombe un vendredi.\n– J’espère que ça ne sera pas un vendredi 13…', 9, 3, NULL),
(32, 5, 'Regret', 'A la maternité un nouveau père, inquiet, demande à la sage-femme:\n– Trouvez-vous que mon fils me ressemble ?\n– Oui, mais c’est pas grave, l’essentiel c’est qu’il soit en bonne santé !', 10, 1, 12.25),
(33, 5, 'Blague n°33', 'Un gars dit à un autre dans un troquet :\n– T’es con toi ! T’es vraiment con ! C’est pas possible ce que t’es con ! J’ai jamais vu un con pareil ! Tiens, c’est simple, s’il existait un concours de cons, tu finirais deuxième !\n– Pourquoi deuxième ?\n– Parce que t’es trop con pour finir premier !', 11, 2, 12.25),
(34, 5, 'Blague n°34', 'C’est un gars qui se promène au bord d’un lac, tout à coup il voit quelqu’un qui se débat dans l’eau en criant HELP HELP !! Alors il lui crie :\n– Eh idiot ! T’aurais mieux fait d’apprendre à nager au lieu d’apprendre l’anglais !', 1, 3, 12.25),
(35, 6, 'Blague n°35', 'Comment une blonde tue un poisson ?\n\n– Elle essaye de le noyer', 2, 3, NULL),
(36, 6, 'Blague n°36', 'Une blonde se promène et croise un miroir. Elle pense alors :\n\nJ’ai déjà vu ce visage quelque part… Je suis presque certaine que je le connais…\n\nApres un moment elle se dit : Ah, je sais ! ! ! C’est la connasse qui me fixait chez le coiffeur !', 3, 3, NULL),
(37, 6, 'Blague n°37', 'Un homme dit à sa blonde :\n\n– Écoute chérie, j’ai un truc a te dire…\n– Que se passe t’il ?\n– La semaine dernière, je suis allé en boite\n– Et ? !\n– J’ai attrapé le Sida\n– Ahh ouf ! Tu m’as fait peur ! J’ai cru que tu m’avais trompé', 4, 3, NULL),
(38, 6, 'Blague n°38', 'Pourquoi une blonde a-t-elle les cheveux mouillés quand elle va se coucher ?\n\nRéponse : Parce qu’elle a dit bonne nuit à son poisson rouge.', 5, 2, NULL),
(39, 6, 'Blague n°39', 'C’est une blonde qui envoie un sms à son chéri :\n\n– Mon chouchou, tu as oublié ton portable à la maison…', 6, 3, NULL),
(40, 6, 'Blague n°40', 'Comment appelle-t-on une jeune entreprise Internet dirigée par une blonde ?\n\n– Une tarte-up', 7, 3, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int(3) NOT NULL AUTO_INCREMENT,
  `lib_categorie` varchar(100) NOT NULL,
  `id_illustration` int(3) NOT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `lib_categorie`, `id_illustration`) VALUES
(1, 'Blague Carambar', 20),
(2, 'Blague de toto', 19),
(3, 'Blague beauf', 22),
(4, 'humour noir', 19),
(5, 'blague longue', 23),
(6, 'blague blonde', 21);

-- --------------------------------------------------------

--
-- Structure de la table `illustration`
--

DROP TABLE IF EXISTS `illustration`;
CREATE TABLE IF NOT EXISTS `illustration` (
  `id_illustration` int(3) NOT NULL AUTO_INCREMENT,
  `img_illustration` varchar(200) NOT NULL,
  PRIMARY KEY (`id_illustration`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `illustration`
--

INSERT INTO `illustration` (`id_illustration`, `img_illustration`) VALUES
(1, 'Cows-3704038_640.jpg'),
(2, 'Lol-706869_640.jpg'),
(3, 'Spirit-1272923_640.jpg'),
(4, 'Girl-930136_640.jpg'),
(5, 'Dog-1776721_640.jpg'),
(6, 'Studio-portrait-487065_640.jpg'),
(7, 'Groucho-marx-309396_640.jpg'),
(8, 'Horse-1817898_640.jpg'),
(9, 'Eyes-3924800_640.jpg'),
(10, 'C-m-coolidge-82531_640.jpg'),
(11, 'Pears-1263435_640.jpg'),
(12, 'femme.jpg'),
(13, 'animal.jpg'),
(14, 'personne1.jpg'),
(15, 'personne3.jpg'),
(16, 'personne5.jpg'),
(17, 'personne6.jpg'),
(18, '01-thumbnail.jpg'),
(19, '02-thumbnail.jpg'),
(20, '03-thumbnail.jpg'),
(21, '04-thumbnail.jpg'),
(22, '05-thumbnail.jpg'),
(23, '06-thumbnail.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

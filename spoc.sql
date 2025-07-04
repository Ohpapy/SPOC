CREATE TABLE `utilisateur` (
  `num_ut` int(11) NOT NULL,
  `login_ut` varchar(50) NOT NULL,
  `nom_ut` varchar(100) DEFAULT NULL,
  `mdp_ut` varchar(255) DEFAULT NULL,
  `acces_ut` tinyint(1) DEFAULT NULL,
  `bloque_ut` tinyint(1) DEFAULT NULL,
  `tentative_ut` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `logs` (
  `num_log` int(11) NOT NULL,
  `message` text,
  `type` text,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `nom` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `mdp` (
  `num_car` int(11) NOT NULL,
  `caractere` int(11) NOT NULL,
  `chiffre` int(11) NOT NULL,
  `majuscule` int(11) NOT NULL,
  `minuscule` int(11) NOT NULL,
  `carac` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `mdp` (`num_car`, `caractere`, `chiffre`, `majuscule`, `minuscule`, `carac`) VALUES
(1, 5, 0, 0, 5, 0);

ALTER TABLE `logs`
  ADD PRIMARY KEY (`num_log`);

ALTER TABLE `mdp`
  ADD PRIMARY KEY (`num_car`);

ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`num_ut`);

ALTER TABLE `mdp`
  MODIFY `num_car` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `utilisateur`
  MODIFY `num_ut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

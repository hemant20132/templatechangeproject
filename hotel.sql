-- phpMyAdmin SQL Dump
-- version 4.0.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 29, 2014 at 12:35 PM
-- Server version: 5.6.10-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `testanni`
--

CREATE TABLE IF NOT EXISTS `testanni` (
  `idanni` int(11) NOT NULL,
  `tipo_periodi` text,
  PRIMARY KEY (`idanni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testanni`
--

INSERT INTO `testanni` (`idanni`, `tipo_periodi`) VALUES
(2014, 'g');

-- --------------------------------------------------------

--
-- Table structure for table `testappartamenti`
--

CREATE TABLE IF NOT EXISTS `testappartamenti` (
  `idappartamenti` varchar(100) NOT NULL,
  `numpiano` text,
  `maxoccupanti` int(11) DEFAULT NULL,
  `numcasa` text,
  `app_vicini` text,
  `priorita` int(11) DEFAULT NULL,
  `priorita2` int(11) DEFAULT NULL,
  `letto` varchar(1) DEFAULT NULL,
  `commento` text,
  PRIMARY KEY (`idappartamenti`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testappartamenti`
--

INSERT INTO `testappartamenti` (`idappartamenti`, `numpiano`, `maxoccupanti`, `numcasa`, `app_vicini`, `priorita`, `priorita2`, `letto`, `commento`) VALUES
('01', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
('02', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
('03', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
('04', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL),
('05', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
('06', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
('07', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
('08', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
('09', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
('10', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
('11', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
('12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('13', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL),
('14', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
('15', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
('16', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
('17', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
('18', NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL),
('19', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL),
('20', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL),
('21a', NULL, 1, NULL, NULL, NULL, NULL, '1', NULL),
('21b', NULL, 1, NULL, NULL, NULL, NULL, '1', NULL),
('21c', NULL, 1, NULL, NULL, NULL, NULL, '1', NULL),
('21d', NULL, 1, NULL, NULL, NULL, NULL, '1', NULL),
('21e', NULL, 1, NULL, NULL, NULL, NULL, '1', NULL),
('21f', NULL, 1, NULL, NULL, NULL, NULL, '1', NULL),
('21g', NULL, 1, NULL, NULL, NULL, NULL, '1', NULL),
('21h', NULL, 1, NULL, NULL, NULL, NULL, '1', NULL),
('21i', NULL, 1, NULL, NULL, NULL, NULL, '1', NULL),
('21j', NULL, 1, NULL, NULL, NULL, NULL, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testbeniinventario`
--

CREATE TABLE IF NOT EXISTS `testbeniinventario` (
  `idbeniinventario` int(11) NOT NULL,
  `nome_bene` varchar(70) DEFAULT NULL,
  `codice_bene` varchar(50) DEFAULT NULL,
  `descrizione_bene` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idbeniinventario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testcache`
--

CREATE TABLE IF NOT EXISTS `testcache` (
  `numero` int(11) DEFAULT NULL,
  `tipo` varchar(8) DEFAULT NULL,
  `testo` mediumtext,
  `data_modifica` datetime DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testcasse`
--

CREATE TABLE IF NOT EXISTS `testcasse` (
  `idcasse` int(11) NOT NULL,
  `nome_cassa` varchar(70) DEFAULT NULL,
  `stato` varchar(8) DEFAULT NULL,
  `codice_cassa` varchar(50) DEFAULT NULL,
  `descrizione_cassa` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcasse`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testcasse`
--

INSERT INTO `testcasse` (`idcasse`, `nome_cassa`, `stato`, `codice_cassa`, `descrizione_cassa`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, NULL, NULL, NULL, NULL, '2014-04-20 18:16:21', '192.168.1.46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testcitta`
--

CREATE TABLE IF NOT EXISTS `testcitta` (
  `idcitta` int(11) NOT NULL,
  `nome_citta` varchar(70) DEFAULT NULL,
  `codice_citta` varchar(50) DEFAULT NULL,
  `codice2_citta` varchar(50) DEFAULT NULL,
  `codice3_citta` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcitta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testclienti`
--

CREATE TABLE IF NOT EXISTS `testclienti` (
  `idclienti` int(11) NOT NULL,
  `cognome` varchar(70) NOT NULL,
  `nome` varchar(70) DEFAULT NULL,
  `soprannome` varchar(70) DEFAULT NULL,
  `sesso` char(1) DEFAULT NULL,
  `titolo` varchar(30) DEFAULT NULL,
  `lingua` varchar(14) DEFAULT NULL,
  `datanascita` date DEFAULT NULL,
  `cittanascita` varchar(70) DEFAULT NULL,
  `regionenascita` varchar(70) DEFAULT NULL,
  `nazionenascita` varchar(70) DEFAULT NULL,
  `documento` varchar(70) DEFAULT NULL,
  `scadenzadoc` date DEFAULT NULL,
  `tipodoc` varchar(70) DEFAULT NULL,
  `cittadoc` varchar(70) DEFAULT NULL,
  `regionedoc` varchar(70) DEFAULT NULL,
  `nazionedoc` varchar(70) DEFAULT NULL,
  `nazionalita` varchar(70) DEFAULT NULL,
  `nazione` varchar(70) DEFAULT NULL,
  `regione` varchar(70) DEFAULT NULL,
  `citta` varchar(70) DEFAULT NULL,
  `via` varchar(70) DEFAULT NULL,
  `numcivico` varchar(30) DEFAULT NULL,
  `cap` varchar(30) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `telefono2` varchar(50) DEFAULT NULL,
  `telefono3` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `email` text,
  `cod_fiscale` varchar(50) DEFAULT NULL,
  `partita_iva` varchar(50) DEFAULT NULL,
  `commento` text,
  `max_num_ordine` int(11) DEFAULT NULL,
  `idclienti_compagni` text,
  `doc_inviati` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idclienti`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testclienti`
--

INSERT INTO `testclienti` (`idclienti`, `cognome`, `nome`, `soprannome`, `sesso`, `titolo`, `lingua`, `datanascita`, `cittanascita`, `regionenascita`, `nazionenascita`, `documento`, `scadenzadoc`, `tipodoc`, `cittadoc`, `regionedoc`, `nazionedoc`, `nazionalita`, `nazione`, `regione`, `citta`, `via`, `numcivico`, `cap`, `telefono`, `telefono2`, `telefono3`, `fax`, `email`, `cod_fiscale`, `partita_iva`, `commento`, `max_num_ordine`, `idclienti_compagni`, `doc_inviati`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, 'Shaw', 'Gregory', NULL, 'm', NULL, NULL, NULL, 'Montego Bay', 'St James', 'Jamaica', 'passport', '2015-07-12', NULL, NULL, NULL, NULL, 'Jamaica', 'Jamaica', NULL, NULL, 'Gordon Street Street', '23', 'PO1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, ',', NULL, '2014-04-20 18:43:08', '192.168.1.46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testcontratti`
--

CREATE TABLE IF NOT EXISTS `testcontratti` (
  `numero` int(11) DEFAULT NULL,
  `tipo` varchar(8) DEFAULT NULL,
  `testo` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testcontratti`
--

INSERT INTO `testcontratti` (`numero`, `tipo`, `testo`) VALUES
(1, 'vett2', 'vat_perc_arr_invo;vat_num_invo'),
(2, 'vett2', 'exist_perc_vat_invo;tmp_var_invo'),
(305, 'var6', 'surname_cre'),
(306, 'var6', 'surn_no_sp_cre'),
(102, 'var5', 'surname_avail_eml'),
(68, 'var4', 'city_row_recei'),
(69, 'var4', 'nation_row_recei'),
(73, 'var4', 'struct_fisc_code_recei'),
(74, 'var4', 'first_name_recei'),
(75, 'var4', 'surname_recei'),
(76, 'var4', 'struct_telephone_recei'),
(98, 'var4', 'street_num_recei'),
(421, 'var4', 'show_method_recei'),
(325, 'var2', 'city_row_invo'),
(326, 'var2', 'nation_row_invo'),
(330, 'var2', 'struct_fisc_code_invo'),
(331, 'var2', 'first_name_invo'),
(332, 'var2', 'surname_invo'),
(333, 'var2', 'struct_telephone_invo'),
(336, 'var2', 'tmp_var_invo'),
(337, 'var2', 'rate_no_vat_invo'),
(339, 'var2', 'last_reserv_invo'),
(342, 'var2', 'extra_cost_name_invo'),
(343, 'var2', 'tot_no_vat_invo'),
(347, 'var2', 'price_tot_invo'),
(348, 'var2', 'price_tot_invo_p'),
(349, 'var2', 'vat_invo_p'),
(350, 'var2', 'tot_no_vat_invo_p'),
(351, 'var2', 'extra_cost_no_vat_invo_p'),
(352, 'var2', 'discount_no_vat_invo_p'),
(353, 'var2', 'rate_no_vat_invo_p'),
(355, 'var2', 'street_num_invo'),
(405, 'var2', 'fiscal_code_invo'),
(406, 'var2', 'vat_number_invo'),
(407, 'var2', 'street_invo'),
(408, 'var2', 'vat_num_invo'),
(409, 'var2', 'show_rate_invo'),
(410, 'var2', 'show_discount_invo'),
(411, 'var2', 'show_extra_cost_invo'),
(412, 'var2', 'repetition_num_invo'),
(413, 'var2', 'part_tot_no_vat_invo'),
(414, 'var2', 'part_tot_vat_invo'),
(415, 'var2', 'part_tot_no_vat_invo_p'),
(416, 'var2', 'part_tot_vat_invo_p'),
(417, 'var2', 'max_vat_num_invo'),
(418, 'var2', 'people_phrase_invo'),
(419, 'var2', 'merge_discount_with_rate'),
(420, 'var2', 'logo_invo'),
(422, 'var2', 'tax_cost_name_invo'),
(423, 'var2', 'show_tax_cost_invo'),
(424, 'var2', 'vat_invo'),
(425, 'var2', 'tot_costs_tax_invo'),
(426, 'var2', 'show_cost_as_taxes_invo'),
(427, 'var2', 'show_subtotal_invo'),
(1, 'var', 'Mr'),
(3, 'var', 'il'),
(4, 'var', 'Il_'),
(5, 'var', 'al'),
(6, 'var', 'e'),
(7, 'var', 'o'),
(13, 'var', 'el'),
(14, 'var', 'El_'),
(15, 'var', 'al3'),
(16, 'var', 'a'),
(17, 'var', 'o3'),
(5, 'opzeml', ';;'),
(6, 'opzeml', ';SI;'),
(5, 'oggetto', 'Availability'),
(6, 'oggetto', 'Reservation confirmation'),
(3, 'nomefile', 'Invoice'),
(5, 'mln_es', 'Estimad[o] Señor[a] [surname_avail_eml],\nle confirmo la disponibilidad de un apartamento[c num_personas_tot!=""] para [num_personas_tot] personas[/c] para el período desde el [fecha_inicial] hasta el [fecha_final]. El precio para dicho período es de [coste_tot_p] [nombre_divisa] (incluyendo costes asociados).\n\nEn el caso de que desee reservar le ruego me envie su confirmación respondiendo a este correo electrónico.\n\nEstaré a su disposición para cualquier otra información que necesite.\n\nSaludos,\n[nombre_contacto_estructura]\n\n[nombre_estructura]\n[sitio_web_estructura]\n\n\n[texto_citado_email_pedido]\n'),
(6, 'mln_es', 'Estimad[o] Señor[a] [surname_cre],\nle confirmo que he reservado a su nombre un apartamento[c num_personas_tot!=""] para [num_personas_tot] personas[/c] para el período desde el [fecha_inicial] hasta el [fecha_final]. El precio para dicho período es de [coste_tot_p] [nombre_divisa] (incluyendo costes asociados). Para completar la reserva es necesario pagar por adelantado [fianza_p] [nombre_divisa], puede efectuar este pago siguiendo este enlace:\n\nhttp://recorrido-modelo-confirma-reserva/mdl_confirma_reserva.php?cognome=[surn_no_sp_cre]&cod_prenota=[codice_prenotazione]\n\nSi el enlace no funcionara correctamente puede intentar utilizar este otro:\n\nhttp://recorrido-modelo-confirma-reserva/mdl_confirma_reserva.php\n\ne insertar después:\n\nApellido: [apellido]\nCódigo reserva: [codigo_reserva]\n\nEstaré a su disposición para cualquier otra información que necesite.\n\nSaludos,\n[nombre_contacto_estructura]\n\n[nombre_estructura]\n[sitio_web_estructura]\n'),
(5, 'mln_en', 'Dear Mr[Mr] [surname_avail_eml],\nI confirm you the availability of an apartment[c people_num_tot!=""] for [people_num_tot] people[/c] in the period from [starting_date] to [ending_date]. The price for this period is [price_tot_p] [currency_name] (including cleaning and utilities).\n\nIf you are interested in reserving the apartment you can contact me by replaying to this email.\n\nPlease let me know if you have any question.\n\nBest regards,\n[structure_contact_name]\n\n[structure_name]\n[structure_website]\n\n\n[enquiry_email_quoted_text]\n'),
(6, 'mln_en', 'Dear Mr[Mr] [surname_cre],\nI confirm you that I have reserved you an apartment[c people_num_tot!=""] for [people_num_tot] people[/c] in the period from [starting_date] to [ending_date]. The price for this period is [price_tot_p] [currency_name] (including cleaning and utilities). In order to complete the reservation you must send a down-payment of [deposit_p] [currency_name], you can pay it following this link:\n\nhttp://path-confirm-reservation-template/confirm_reservation_tpl.php?cognome=[surn_no_sp_cre]&cod_prenota=[codice_prenotazione]\n\nIf the above link does not work properly for you, try this other one:\n\nhttp://path-confirm-reservation-template/confirm_reservation_tpl.php\n\nand then insert:\n\nSurname: [surname]\nReservation code: [reservation_code]\n\nPlease let me know if you have any other question.\n\nBest regards,\n[structure_contact_name]\n\n[structure_name]\n[structure_website]\n'),
(3, 'impor_vc', '2'),
(2, 'dir', '~'),
(3, 'dir', '~'),
(2, 'contrrtf', '{\\rtf1\\ansi\\deff1\\adeflang1025[r][r3][/r3] [/r]\n{\\fonttbl{\\f0\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f1\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f2\\fswiss\\fprq2\\fcharset0 Arial;}{\\f3\\fswiss\\fprq2\\fcharset0 Arial;}{\\f4\\fswiss\\fprq2\\fcharset0 Bitstream Vera Sans;}{\\f5\\fswiss\\fprq2\\fcharset0 Tahoma;}{\\f6\\froman\\fprq2\\fcharset0 Garamond;}{\\f7\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f8\\fnil\\fprq2\\fcharset0 Bitstream Vera Sans;}}\n{\\colortbl;\\red0\\green0\\blue0;\\red230\\green230\\blue230;\\red255\\green255\\blue255;\\red204\\green204\\blue204;\\red128\\green128\\blue128;}\n{\\stylesheet{\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\snext1 Normal;}\n{\\s2\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af8\\afs28\\lang255\\ltrch\\dbch\\af8\\langfe255\\hich\\f2\\fs28\\lang1040\\loch\\f2\\fs28\\lang1040\\sbasedon1\\snext3 Heading;}\n{\\s3\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon1\\snext3 Body Text;}\n{\\s4{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext4 List;}\n{\\s5\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext5 caption;}\n{\\s6{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext6 Index;}\n{\\s7\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 Heading;}\n{\\s8\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext8 caption;}\n{\\s9{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext9 Index;}\n{\\s10\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading;}\n{\\s11\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext11 WW-caption;}\n{\\s12{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext12 WW-Index;}\n{\\s13\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1;}\n{\\s14\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext14 WW-caption1;}\n{\\s15{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext15 WW-Index1;}\n{\\s16\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11;}\n{\\s17\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext17 WW-caption11;}\n{\\s18{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext18 WW-Index11;}\n{\\s19\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading111;}\n{\\s20\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext20 WW-caption111;}\n{\\s21{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext21 WW-Index111;}\n{\\s22\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1111;}\n{\\s23\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext23 WW-caption1111;}\n{\\s24{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext24 WW-Index1111;}\n{\\s25\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11111;}\n{\\s26\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext26 WW-caption11111;}\n{\\s27{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext27 WW-Index11111;}\n{\\s28\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading111111;}\n{\\s29\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext29 WW-caption111111;}\n{\\s30{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext30 WW-Index111111;}\n{\\s31\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1111111;}\n{\\s32\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext32 WW-caption1111111;}\n{\\s33{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext33 WW-Index1111111;}\n{\\s34\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af4\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f4\\fs28\\lang1040\\loch\\f4\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11111111;}\n{\\s35\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext35 WW-caption11111111;}\n{\\s36{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon1\\snext36 WW-Index11111111;}\n{\\s37\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs20\\lang255\\ai\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs20\\lang1033\\i\\loch\\f1\\fs20\\lang1033\\i\\sbasedon1\\snext37 Dicitura;}\n{\\s38{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af5\\afs16\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f5\\fs16\\lang1033\\loch\\f5\\fs16\\lang1033\\sbasedon1\\snext38 WW-Testo fumetto;}\n{\\s39{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext39 Frame contents;}\n{\\s40{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext40 Table Contents;}\n{\\s41\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ab\\ltrch\\dbch\\langfe255\\hich\\f1\\fs24\\lang1033\\i\\b\\loch\\f1\\fs24\\lang1033\\i\\b\\sbasedon40\\snext41 Table Heading;}\n{\\s42{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext42 WW-Table Contents;}\n{\\s43\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon42\\snext43 WW-Table Heading;}\n{\\s44{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext44 WW-Table Contents1;}\n{\\s45\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon44\\snext45 WW-Table Heading1;}\n{\\s46{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext46 WW-Table Contents12;}\n{\\s47\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon46\\snext47 WW-Table Heading12;}\n{\\s48{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext48 WW-Table Contents123;}\n{\\s49\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon48\\snext49 WW-Table Heading123;}\n{\\s50{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext50 WW-Table Contents1234;}\n{\\s51\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon50\\snext51 WW-Table Heading1234;}\n{\\s52{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext52 WW-Table Contents12345;}\n{\\s53\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon52\\snext53 WW-Table Heading12345;}\n{\\s54{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext54 WW-Table Contents123456;}\n{\\s55\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon54\\snext55 WW-Table Heading123456;}\n{\\s56{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext56 WW-Table Contents1234567;}\n{\\s57\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon56\\snext57 WW-Table Heading1234567;}\n{\\s58{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext58 WW-Table Contents12345678;}\n{\\s59\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon58\\snext59 WW-Table Heading12345678;}\n{\\s60{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext60 Table Contents;}\n{\\s61\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon60\\snext61 Table Heading;}\n{\\*\\cs63\\cf0\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 WW-Car. predefinito paragrafo;}\n}\n{\\info{\\creatim\\yr2007\\mo9\\dy28\\hr15\\min45}{\\revtim\\yr1601\\mo1\\dy1\\hr0\\min0}{\\printim\\yr1601\\mo1\\dy1\\hr0\\min0}{\\comment StarWriter}{\\vern3000}}\\deftab708\n{\\*\\pgdsctbl\n{\\pgdsc0\\pgdscuse195\\pgwsxn11905\\pghsxn16837\\marglsxn1134\\margrsxn1134\\margtsxn885\\margbsxn1012\\pgdscnxt0 Standard;}}\n{\\*\\pgdscno0}\\paperh16837\\paperw11905\\margl1134\\margr1134\\margt885\\margb1012\\sectd\\sbknone\\pgwsxn11905\\pghsxn16837\\marglsxn1134\\margrsxn1134\\margtsxn885\\margbsxn1012\\ftnbj\\ftnstart1\\ftnrstcont\\ftnnar\\aenddoc\\aftnrstcont\\aftnstart1\\aftnnrlc\n\\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs28\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs28\\lang1040\\b\\loch\\f6\\fs28\\lang1040\\b {\\rtlch \\ltrch\\loch\\f6\\fs28\\lang1040\\i0\\b [structure_type] [structure_name]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [structure_company_name]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [structure_address] - [structure_city]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [structure_postal_code] [structure_nation]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 VAT number [structure_vat_number] [struct_fisc_code_invo]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [struct_telephone_invo]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\li5370\\ri0\\lin5370\\rin0\\fi0\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 Invoice for [first_name_invo] [surname_invo] }\n[c street_invo!=""]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [street_invo][street_num_invo]}\n[/c][c city_row_invo!=""]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [city_row_invo]}\n[/c][c nation_row_invo!=""]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [nation_row_invo]}\n[/c][c fiscal_code_invo!=""]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab Fiscal code [fiscal_code_invo]}\n[/c][c vat_number_invo!=""]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab VAT number [vat_number_invo]}\n[/c]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\brdrb\\brdrs\\brdrw20\\brdrcf1\\brsp20{\\*\\brdrb\\brdlncol1\\brdlnin0\\brdlnout20\\brdlndist0}\\brsp20\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1\\tx3540{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 \\tab }\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 Invoice n. [document_progressive_number] released on [today]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\cellx7792\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clvertalb\\cellx9637\n[r4 array="vat_perc_arr_invo"]\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\cbpat3\\ql\\rtlch\\afs12\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs12\\lang1040\\loch\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 \n[r]\n[c show_rate_invo="1"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Stay from [starting_date] to [ending_date][people_phrase_invo]}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [rate_no_vat_invo_p]}\n[/c][c show_discount_invo="1"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Discount}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [discount_no_vat_invo_p]}\n[/c]\n[r3][c show_extra_cost_invo="1"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Extra: \\''93[extra_cost_name]\\''94}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [extra_cost_no_vat_invo_p]}\n[/c][c show_cost_as_taxes_invo="1"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Tax: \\''93[extra_cost_name]\\''94}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [extra_cost_taxes_p]}\n[/c][/r3][/r]\n[c show_subtotal_invo="1"]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Sub total at [vat_perc_arr_invo(vat_num_invo)]%}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [part_tot_no_vat_invo_p]}\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Taxes at [vat_perc_arr_invo(vat_num_invo)]%}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [part_tot_vat_invo_p]}\n[/c]\\cell\\row\\pard \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\clvertalb\\cellx9637\n[/r4]\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs12\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs12\\lang1040\\loch\\f1\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Sub total}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [tot_no_vat_invo_p]}\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Taxes[c vat_num_invo="1"] at [vat_perc_arr_invo(vat_num_invo)]%[/c] total}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [vat_invo_p]}\n[r][r3][c show_tax_cost_invo="1"]\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [extra_cost_name]}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [currency_name] [extra_cost_no_vat_invo_p]}\n[/c][/r3][/r]\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs12\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs12\\lang1040\\loch\\f1\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat4\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat4\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Invoice total}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\qr\\rtlch\\afs24\\lang255\\ab\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\b\\loch\\fs24\\lang1040\\b {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b [currency_name] [price_tot_invo_p]}\n\\cell\\row\\pard \\pard\\plain \\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\brdrb\\brdrs\\brdrw20\\brdrcf1\\brsp20{\\*\\brdrb\\brdlncol1\\brdlnin0\\brdlnout20\\brdlndist0}\\brsp20\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par }');
INSERT INTO `testcontratti` (`numero`, `tipo`, `testo`) VALUES
(4, 'contrrtf', '{\\rtf1\\ansi\\deff1\\adeflang1025\n{\\fonttbl{\\f0\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f1\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f2\\fswiss\\fprq2\\fcharset0 Arial;}{\\f3\\fswiss\\fprq2\\fcharset0 Arial;}{\\f4\\fswiss\\fprq2\\fcharset0 Bitstream Vera Sans;}{\\f5\\fswiss\\fprq2\\fcharset0 Tahoma;}{\\f6\\froman\\fprq2\\fcharset0 Garamond;}{\\f7\\froman\\fprq2\\fcharset0 Times New Roman;}{\\f8\\fnil\\fprq2\\fcharset0 Bitstream Vera Sans;}}\n{\\colortbl;\\red0\\green0\\blue0;\\red230\\green230\\blue230;\\red255\\green255\\blue255;\\red204\\green204\\blue204;\\red128\\green128\\blue128;}\n{\\stylesheet{\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\snext1 Normal;}\n{\\s2\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af8\\afs28\\lang255\\ltrch\\dbch\\af8\\langfe255\\hich\\f2\\fs28\\lang1040\\loch\\f2\\fs28\\lang1040\\sbasedon1\\snext3 Heading;}\n{\\s3\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon1\\snext3 Body Text;}\n{\\s4{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext4 List;}\n{\\s5\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext5 caption;}\n{\\s6{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext6 Index;}\n{\\s7\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 Heading;}\n{\\s8\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext8 caption;}\n{\\s9{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext9 Index;}\n{\\s10\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading;}\n{\\s11\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext11 WW-caption;}\n{\\s12{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext12 WW-Index;}\n{\\s13\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1;}\n{\\s14\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext14 WW-caption1;}\n{\\s15{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext15 WW-Index1;}\n{\\s16\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11;}\n{\\s17\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext17 WW-caption11;}\n{\\s18{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext18 WW-Index11;}\n{\\s19\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading111;}\n{\\s20\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext20 WW-caption111;}\n{\\s21{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext21 WW-Index111;}\n{\\s22\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1111;}\n{\\s23\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext23 WW-caption1111;}\n{\\s24{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext24 WW-Index1111;}\n{\\s25\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11111;}\n{\\s26\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext26 WW-caption11111;}\n{\\s27{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext27 WW-Index11111;}\n{\\s28\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading111111;}\n{\\s29\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext29 WW-caption111111;}\n{\\s30{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext30 WW-Index111111;}\n{\\s31\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af3\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f3\\fs28\\lang1040\\loch\\f3\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading1111111;}\n{\\s32\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext32 WW-caption1111111;}\n{\\s33{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext33 WW-Index1111111;}\n{\\s34\\sb240\\sa120\\keepn{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af4\\afs28\\lang255\\ltrch\\dbch\\af4\\langfe255\\hich\\f4\\fs28\\lang1040\\loch\\f4\\fs28\\lang1040\\sbasedon1\\snext3 WW-Heading11111111;}\n{\\s35\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\i\\loch\\f1\\fs24\\lang1040\\i\\sbasedon1\\snext35 WW-caption11111111;}\n{\\s36{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon1\\snext36 WW-Index11111111;}\n{\\s37\\sb120\\sa120{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs20\\lang255\\ai\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs20\\lang1033\\i\\loch\\f1\\fs20\\lang1033\\i\\sbasedon1\\snext37 Dicitura;}\n{\\s38{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af5\\afs16\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f5\\fs16\\lang1033\\loch\\f5\\fs16\\lang1033\\sbasedon1\\snext38 WW-Testo fumetto;}\n{\\s39{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext39 Frame contents;}\n{\\s40{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1033\\loch\\f1\\fs24\\lang1033\\sbasedon3\\snext40 Table Contents;}\n{\\s41\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ai\\ab\\ltrch\\dbch\\langfe255\\hich\\f1\\fs24\\lang1033\\i\\b\\loch\\f1\\fs24\\lang1033\\i\\b\\sbasedon40\\snext41 Table Heading;}\n{\\s42{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext42 WW-Table Contents;}\n{\\s43\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon42\\snext43 WW-Table Heading;}\n{\\s44{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext44 WW-Table Contents1;}\n{\\s45\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon44\\snext45 WW-Table Heading1;}\n{\\s46{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext46 WW-Table Contents12;}\n{\\s47\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon46\\snext47 WW-Table Heading12;}\n{\\s48{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext48 WW-Table Contents123;}\n{\\s49\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon48\\snext49 WW-Table Heading123;}\n{\\s50{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext50 WW-Table Contents1234;}\n{\\s51\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon50\\snext51 WW-Table Heading1234;}\n{\\s52{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext52 WW-Table Contents12345;}\n{\\s53\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon52\\snext53 WW-Table Heading12345;}\n{\\s54{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext54 WW-Table Contents123456;}\n{\\s55\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon54\\snext55 WW-Table Heading123456;}\n{\\s56{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext56 WW-Table Contents1234567;}\n{\\s57\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon56\\snext57 WW-Table Heading1234567;}\n{\\s58{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext58 WW-Table Contents12345678;}\n{\\s59\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon58\\snext59 WW-Table Heading12345678;}\n{\\s60{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040\\sbasedon1\\snext60 Table Contents;}\n{\\s61\\qc{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\b\\loch\\f1\\fs24\\lang1040\\b\\sbasedon60\\snext61 Table Heading;}\n{\\*\\cs63\\cf0\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af3\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 WW-Car. predefinito paragrafo;}\n}\n{\\info{\\creatim\\yr2007\\mo9\\dy28\\hr15\\min45}{\\revtim\\yr1601\\mo1\\dy1\\hr0\\min0}{\\printim\\yr1601\\mo1\\dy1\\hr0\\min0}{\\comment StarWriter}{\\vern3000}}\\deftab708\n{\\*\\pgdsctbl\n{\\pgdsc0\\pgdscuse195\\pgwsxn11905\\pghsxn16837\\marglsxn1134\\margrsxn1134\\margtsxn885\\margbsxn1012\\pgdscnxt0 Standard;}}\n{\\*\\pgdscno0}\\paperh16837\\paperw11905\\margl1134\\margr1134\\margt885\\margb1012\\sectd\\sbknone\\pgwsxn11905\\pghsxn16837\\marglsxn1134\\margrsxn1134\\margtsxn885\\margbsxn1012\\ftnbj\\ftnstart1\\ftnrstcont\\ftnnar\\aenddoc\\aftnrstcont\\aftnstart1\\aftnnrlc\n[r][c numero_ripetizione_prenotazioni!="1"]\\par \\page [/c]\\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs28\\lang255\\ab\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs28\\lang1040\\b\\loch\\f6\\fs28\\lang1040\\b {\\rtlch \\ltrch\\loch\\f6\\fs28\\lang1040\\i0\\b [structure_type] [structure_name]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [structure_company_name]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [structure_address] - [structure_city]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [structure_postal_code] [structure_nation]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 VAT number [structure_vat_number] [struct_fisc_code_recei]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [struct_telephone_recei]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\li5370\\ri0\\lin5370\\rin0\\fi0\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 [c surname_recei!=""]Receipt for [first_name_recei] [surname_recei][/c] }\n[c street!=""]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [street][street_num_recei]}\n[/c][c city_row_recei!=""]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [city_row_recei]}\n[/c][c nation_row_recei!=""]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab [nation_row_recei]}\n[/c][c fiscal_code!=""]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab Fiscal code [fiscal_code]}\n[/c][c vat_number!=""]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 \\tab \\tab \\tab \\tab \\tab \\tab \\tab \\tab VAT number [vat_number]}\n[/c]\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\brdrb\\brdrs\\brdrw20\\brdrcf1\\brsp20{\\*\\brdrb\\brdlncol1\\brdlnin0\\brdlnout20\\brdlndist0}\\brsp20\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1\\tx3540{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 \\tab }\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af6\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f6\\fs24\\lang1040\\loch\\f6\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f6\\fs24\\lang1040\\i0\\b0 Receipt[c progressive_document_number!=""] n. [progressive_document_number][/c] released on [today]}\n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\cellx7792\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\cbpat3\\ql\\rtlch\\afs12\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs12\\lang1040\\loch\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 \n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\cellx7792\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat2\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [c starting_date!=""]Stay from [starting_date] al [ending_date][/c][c people_num_tot!=""] for [people_num_tot] persons[/c][c starting_date=""][last_payment_method][/c]}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 [c show_method_recei="1"][currency_name] [last_payment_value_p][/c]}\n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trrh-119\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clcbpat3\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs12\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs12\\lang1040\\loch\\f1\\fs12\\lang1040 \n\\cell\\pard\\plain \\intbl\\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\qr\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\cell\\row\\pard \\trowd\\trql\\trleft276\\trpaddft3\\trpaddt55\\trpaddfl3\\trpaddl55\\trpaddfb3\\trpaddb55\\trpaddfr3\\trpaddr55\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrl\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat4\\cellx7792\\clbrdrt\\brdrs\\brdrw1\\brdrcf1\\clbrdrb\\brdrs\\brdrw1\\brdrcf1\\clbrdrr\\brdrs\\brdrw1\\brdrcf1\\clcbpat4\\clvertalb\\cellx9637\n\\pard\\intbl\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b0 Total paid}\n\\cell\\pard\\plain \\intbl\\ltrpar\\s1\\cf0\\qr\\rtlch\\afs24\\lang255\\ab\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\b\\loch\\fs24\\lang1040\\b {\\rtlch \\ltrch\\loch\\f1\\fs24\\lang1040\\i0\\b [currency_name] [last_payment_value_p]}\n\\cell\\row\\pard \\pard\\plain \\ltrpar\\s1\\cf0\\ql\\rtlch\\afs24\\lang255\\ltrch\\dbch\\langfe255\\hich\\fs24\\lang1040\\loch\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\brdrb\\brdrs\\brdrw20\\brdrcf1\\brsp20{\\*\\brdrb\\brdlncol1\\brdlnin0\\brdlnout20\\brdlndist0}\\brsp20\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\ql\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n\\par \\pard\\plain \\ltrpar\\s1{\\*\\hyphen2\\hyphlead2\\hyphtrail2\\hyphmax0}\\rtlch\\af1\\afs24\\lang255\\ltrch\\dbch\\af1\\langfe255\\hich\\f1\\fs24\\lang1040\\loch\\f1\\fs24\\lang1040 \n[/r]\\par }'),
(1, 'contrhtm', '<B><U><FONT FACE="Times" SIZE=4><P ALIGN="CENTER">EXAMPLE OF CONTRACT FOR HOTELDRUID</P>\n</U></B></FONT><FONT FACE="Times"><P ALIGN="JUSTIFY"></P>\n<P ALIGN="JUSTIFY">&nbsp;</P><P ALIGN="JUSTIFY">\nMr[Mr] [name] [surname] born the [birthday] resident in [city] [street2] n \n[street_number] tel [telephone] will rent an apartment in hoteldruid\nwith his family of [people_num_tot] people from [starting_date] to [ending_date].\nThe price will be of [price_tot_p]. A deposit of [deposit_p] must be left.\n</P>\n<P ALIGN="JUSTIFY">\nNowhere, [oggi].\n</P>\n<P ALIGN="JUSTIFY"></P>\n<P ALIGN="JUSTIFY">\nThe client\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\nThe owner</P>\n<P ALIGN="JUSTIFY"></P>\n<P ALIGN="JUSTIFY"> \n__________&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;____________</P>\n<P ALIGN="JUSTIFY"></P>\n</FONT>'),
(3, 'contrhtm', '<div class="invoice_frame" style="width: 780px; margin: 10px; border: solid 1px black; padding: 30px; font-size: 12px; page-break-after: always">\n[r][r3][/r3] [/r]\n\n<div class="structure_data">\n[logo_invo]\n<div class="structure_name" style="font-size: large;">[structure_type] [structure_name]</div>\n[structure_company_name]<br>\n[structure_address] - [structure_city]<br>\n[structure_postal_code] [structure_nation]<br>\nVAT number [structure_vat_number] [struct_fisc_code_invo]<br>\n[struct_telephone_invo]<br>\n</div>\n\n<div class="client_data" style="padding: 18px 0 8px 440px;">\nInvoice for [first_name_invo] [surname_invo]<br>\n[c street_invo!=""][street_invo][street_num_invo]<br>\n[/c][c city_row_invo!=""][city_row_invo]<br>\n[/c][c nation_row_invo!=""][nation_row_invo]<br>\n[/c][c fiscal_code_invo!=""]Fiscal code [fiscal_code_invo]<br>\n[/c][c vat_number_invo!=""]VAT number [vat_number_invo]<br>\n[/c]\n</div>\n\n<hr style="width: 100%; border: 1px solid black;">\n\n<div class="invoice_number" style="padding: 24px 0 8px 0">\nInvoice n. [document_progressive_number] released on [today]\n</div>\n\n\n[r4 array="vat_perc_arr_invo"]\n<table class="invoice_items" border="1" cellpadding="5" style="border: 1px black solid; width: 740px; margin-left: auto; margin-right: 5px; margin-top: 8px; border-collapse: collapse; background-color: #e6e6e6;">\n[r]\n[c show_rate_invo="1"]<tr><td style="border-color: black;">Stay from [starting_date] to [ending_date][people_phrase_invo]</td>\n<td style="width: 120px; text-align: right; border-color: black;">[currency_name] [rate_no_vat_invo_p]</td></tr>\n[/c][c show_discount_invo="1"]<tr><td style="border-color: black;">Discount</td>\n<td style="width: 120px; text-align: right; border-color: black;">[currency_name] [discount_no_vat_invo_p]</td></tr>\n[/c]\n[r3][c show_extra_cost_invo="1"]<tr><td style="border-color: black;">Extra: "[extra_cost_name]"</td>\n<td style="width: 120px; text-align: right; border-color: black;">[currency_name] [extra_cost_no_vat_invo_p]</td></tr>\n[/c][c show_cost_as_taxes_invo="1"]<tr><td style="border-color: black;">Tax: "[extra_cost_name]"</td>\n<td style="width: 120px; text-align: right; border-color: black;">[currency_name] [extra_cost_taxes_p]</td></tr>\n[/c][/r3][/r]\n[c show_subtotal_invo="1"]<tr><td style="border-color: black;">Sub total at [vat_perc_arr_invo(vat_num_invo)]%</td>\n<td style="width: 120px; text-align: right; border-color: black;">[currency_name] [part_tot_no_vat_invo_p]</td></tr>\n<tr><td style="border-color: black;">Taxes at [vat_perc_arr_invo(vat_num_invo)]%</td>\n<td style="width: 120px; text-align: right; border-color: black;">[currency_name] [part_tot_vat_invo_p]</td></tr>\n[/c]\n</table>\n[/r4]\n\n<table class="invoice_subtotal" border="1" cellpadding="5" style="border: 1px black solid; width: 740px; margin-left: auto; margin-right: 5px; margin-top: 8px; border-collapse: collapse; background-color: #e6e6e6;">\n<tr><td style="border-color: black;">Sub total</td>\n<td style="width: 120px; text-align: right; border-color: black;">[currency_name] [tot_no_vat_invo_p]</td></tr>\n<tr><td style="border-color: black;">Taxes[c vat_num_invo="1"] at [vat_perc_arr_invo(vat_num_invo)]%[/c] total</td>\n<td style="width: 120px; text-align: right; border-color: black;">[currency_name] [vat_invo_p]</td></tr>\n[r][r3][c show_tax_cost_invo="1"]\n<tr><td style="border-color: black;">[extra_cost_name]</td>\n<td style="width: 120px; text-align: right; border-color: black;">[currency_name] [extra_cost_no_vat_invo_p]</td></tr>\n[/c][/r3][/r]\n</table>\n\n<table class="invoice_total" border="1" cellpadding="5" style="border: 1px black solid; width: 740px; margin-left: auto; margin-right: 5px; margin-top: 8px; border-collapse: collapse; background-color: #cccccc;">\n<tr><td style="border-color: black;">Invoice total</td>\n<td style="width: 120px; text-align: right; border-color: black;">[currency_name] [price_tot_invo_p]</td></tr>\n</table>\n\n\n<br>\n<hr style="width: 100%; border: 1px solid black;">\n<br>\n\n\n</div>'),
(7, 'contrhtm', NULL),
(8, 'contrhtm', NULL),
(9, 'contrhtm', NULL),
(10, 'contrhtm', NULL),
(5, 'contreml', '#!mln!#en'),
(6, 'contreml', '#!mln!#en'),
(1, 'cond6', 'rpt#@?#@?set#%?305#%?=#%?var#%?cognome#%?txt#%?#%?txt#%?'),
(2, 'cond6', 'rpt#@?#@?set#%?306#%?=#%?var#%?cognome#%?txt#%? #%?txt#%?'),
(1, 'cond5', 'rpt#@?#@?set#%?102#%?=#%?var#%?cognome#%?txt#%?#%?txt#%?'),
(87, 'cond4', 'rpt#@?#$?codice_fiscale_struttura#%?!=#%?txt#%?#@?set#%?73#%?=#%?txt#%?- Fiscal Code  #%?txt#%?#%?txt#%?'),
(88, 'cond4', 'rpt#@?#$?codice_fiscale_struttura#%?!=#%?txt#%?#@?set#%?73#%?.=#%?var#%?codice_fiscale_struttura#%?txt#%?#%?txt#%?'),
(89, 'cond4', 'rpt#@?#@?set#%?76#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(92, 'cond4', 'rpt#@?#$?telefono_struttura#%?!=#%?txt#%?#@?set#%?76#%?=#%?txt#%?Tel. #%?txt#%?#%?txt#%?'),
(94, 'cond4', 'rpt#@?#$?telefono_struttura#%?!=#%?txt#%?#@?set#%?76#%?.=#%?var#%?telefono_struttura#%?txt#%?#%?txt#%?'),
(97, 'cond4', 'rpt#@?and#$?telefono_struttura#%?!=#%?txt#%?#$?sito_web_struttura#%?!=#%?txt#%?#@?set#%?76#%?.=#%?txt#%? - #%?txt#%?#%?txt#%?'),
(98, 'cond4', 'rpt#@?#$?sito_web_struttura#%?!=#%?txt#%?#@?set#%?76#%?.=#%?var#%?sito_web_struttura#%?txt#%?#%?txt#%?'),
(99, 'cond4', 'rpt#@?#@?set#%?74#%?=#%?var#%?nome#%?txt#%?#%?txt#%?'),
(100, 'cond4', 'rpt#@?#@?set#%?75#%?=#%?var#%?cognome#%?txt#%?#%?txt#%?'),
(101, 'cond4', 'rpt#@?#@?set#%?98#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(102, 'cond4', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?98#%?=#%?txt#%?, #%?txt#%?#%?txt#%?'),
(103, 'cond4', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?98#%?.=#%?var#%?numcivico#%?txt#%?#%?txt#%?'),
(104, 'cond4', 'rpt#@?#@?set#%?68#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(105, 'cond4', 'rpt#@?#$?citta#%?!=#%?txt#%?#@?set#%?68#%?.=#%?var#%?citta#%?txt#%?#%?txt#%?'),
(107, 'cond4', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?68#%?.=#%?txt#%? (#%?txt#%?#%?txt#%?'),
(108, 'cond4', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?68#%?.=#%?var#%?regione#%?txt#%?#%?txt#%?'),
(109, 'cond4', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?68#%?.=#%?txt#%?)#%?txt#%?#%?txt#%?'),
(110, 'cond4', 'rpt#@?#@?set#%?69#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(111, 'cond4', 'rpt#@?#$?cap#%?!=#%?txt#%?#@?set#%?69#%?.=#%?var#%?cap#%?txt#%?#%?txt#%?'),
(112, 'cond4', 'rpt#@?and#$?cap#%?!=#%?txt#%?#$?nazione#%?!=#%?txt#%?#@?set#%?69#%?.=#%?txt#%? #%?txt#%?#%?txt#%?'),
(113, 'cond4', 'rpt#@?#$?nazione#%?!=#%?txt#%?#@?set#%?69#%?.=#%?var#%?nazione#%?txt#%?#%?txt#%?'),
(114, 'cond4', 'rpt#@?#@?set#%?421#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(115, 'cond4', 'rpt#@?and#$?data_inizio#%?=#%?txt#%?#$?metodo_ultimo_pagamento#%?!=#%?txt#%?#@?set#%?421#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(25, 'cond2', 'rpt#@?#@?set#%?409#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(26, 'cond2', 'rpt#@?and#$?vat_perc_arr_invo(vat_num_invo)#%?=#%?var#%?percentuale_tasse_tariffa#$?repetition_num_invo#%?>#%?txt#%?1#@?set#%?409#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(27, 'cond2', 'rpt#@?#@?set#%?410#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(30, 'cond2', 'rpt#@?and#$?show_rate_invo#%?=#%?txt#%?1#$?sconto#%?!=#%?txt#%?0#@?set#%?410#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(31, 'cond2', 'rpt#@?#@?set#%?411#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(32, 'cond2', 'rpt#@?#@?set#%?426#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(36, 'cond2', 'rpt#@?#@?set#%?427#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(38, 'cond2', 'rpt#@?#@?set#%?423#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(39, 'cond2', 'rpt#@?#$?nome_costo_agg#%?=#%?var#%?tax_cost_name_invo#@?set#%?423#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(40, 'cond2', 'rpt#@?and#$?vat_perc_arr_invo(vat_num_invo)#%?=#%?var#%?percentuale_tasse_costo_agg#$?valore_costo_agg#%?!=#%?txt#%?0#$?repetition_num_invo#%?>#%?txt#%?1#$?show_tax_cost_invo#%?!=#%?txt#%?1#@?set#%?411#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(42, 'cond2', 'rpt#@?#@?set#%?336#%?=#%?var#%?percentuale_tasse_tariffa#%?txt#%?#%?txt#%?'),
(43, 'cond2', 'rpt#@?#$?tmp_var_invo#%?=#%?txt#%?#@?set#%?336#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(44, 'cond2', 'rpt#@?#$?exist_perc_vat_invo(tmp_var_invo)#%?=#%?txt#%?1#@?break#%?cont'),
(46, 'cond2', 'rpt#@?#@?oper#%?408#%?vat_num_invo#%?+#%?txt#%?1#%?'),
(48, 'cond2', 'rpt#@?#@?set#%?417#%?=#%?var#%?vat_num_invo#%?txt#%?#%?txt#%?'),
(52, 'cond2', 'rpt#@?#@?set#%?a1#%?=#%?var#%?tmp_var_invo#%?txt#%?#%?txt#%?'),
(60, 'cond2', 'rpt#@?#@?set#%?a2#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(61, 'cond2', 'rpt#@?#@?cont'),
(65, 'cond2', 'rpt#@?or#$?valore_costo_agg#%?=#%?txt#%?0#$?valore_costo_agg#%?=#%?txt#%?#$?show_tax_cost_invo#%?=#%?txt#%?1#@?break#%?cont'),
(75, 'cond2', 'rpt#@?#@?set#%?336#%?=#%?var#%?percentuale_tasse_costo_agg#%?txt#%?#%?txt#%?'),
(76, 'cond2', 'rpt#@?#$?tmp_var_invo#%?=#%?txt#%?#@?set#%?336#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(81, 'cond2', 'rpt#@?#$?exist_perc_vat_invo(tmp_var_invo)#%?=#%?txt#%?1#@?break#%?cont'),
(83, 'cond2', 'rpt#@?#@?oper#%?408#%?vat_num_invo#%?+#%?txt#%?1#%?'),
(84, 'cond2', 'rpt#@?#@?set#%?417#%?=#%?var#%?vat_num_invo#%?txt#%?#%?txt#%?'),
(86, 'cond2', 'rpt#@?#@?set#%?a1#%?=#%?var#%?tmp_var_invo#%?txt#%?#%?txt#%?'),
(87, 'cond2', 'rpt#@?#@?set#%?a2#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(88, 'cond2', 'rpt#@?#@?cont'),
(89, 'cond2', 'rpt#@?#@?oper#%?351#%?valore_costo_agg_senza_tasse#%?+#%?txt#%?0#%?'),
(90, 'cond2', 'rpt#@?#$?show_tax_cost_invo#%?=#%?txt#%?1#@?oper#%?351#%?valore_costo_agg#%?+#%?txt#%?0#%?'),
(91, 'cond2', 'rpt#@?#@?set#%?342#%?=#%?var#%?nome_costo_agg#%?txt#%?#%?txt#%?'),
(95, 'cond2', 'rpt#@?#$?show_extra_cost_invo#%?=#%?txt#%?1#@?oper#%?343#%?tot_no_vat_invo#%?+#%?var#%?valore_costo_agg_senza_tasse#%?'),
(100, 'cond2', 'rpt#@?#$?show_extra_cost_invo#%?=#%?txt#%?1#@?oper#%?413#%?part_tot_no_vat_invo#%?+#%?var#%?valore_costo_agg_senza_tasse#%?'),
(103, 'cond2', 'rpt#@?#$?show_extra_cost_invo#%?=#%?txt#%?1#@?oper#%?414#%?part_tot_vat_invo#%?+#%?var#%?tasse_costo_agg#%?'),
(105, 'cond2', 'rpt#@?#$?show_tax_cost_invo#%?=#%?txt#%?1#@?oper#%?425#%?tot_costs_tax_invo#%?+#%?var#%?valore_costo_agg#%?'),
(106, 'cond2', 'rpt#@?#@?oper#%?350#%?tot_no_vat_invo#%?+#%?txt#%?0#%?'),
(108, 'cond2', 'rpt#@?#@?oper#%?415#%?part_tot_no_vat_invo#%?+#%?txt#%?0#%?'),
(110, 'cond2', 'rpt#@?#@?oper#%?416#%?part_tot_vat_invo#%?+#%?txt#%?0#%?'),
(111, 'cond2', 'rpt#@?#@?oper#%?424#%?price_tot_invo#%?-#%?var#%?tot_no_vat_invo#%?'),
(112, 'cond2', 'rpt#@?#@?oper#%?424#%?vat_invo#%?-#%?var#%?tot_costs_tax_invo#%?'),
(113, 'cond2', 'rpt#@?#@?oper#%?349#%?vat_invo#%?+#%?txt#%?0#%?'),
(114, 'cond2', 'rpt#@?or#$?show_extra_cost_invo#%?!=#%?txt#%?1#$?percentuale_tasse_costo_agg#%?!=#%?txt#%?-1#@?break#%?cont'),
(115, 'cond2', 'rpt#@?#@?set#%?426#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(116, 'cond2', 'rpt#@?#@?set#%?411#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(117, 'cond2', 'rpt#@?#@?cont'),
(118, 'cond2', 'rpt#@?and#$?max_vat_num_invo#%?!=#%?txt#%?1#$?show_extra_cost_invo#%?=#%?txt#%?1#@?set#%?427#%?=#%?txt#%?1#%?txt#%?#%?txt#%?'),
(119, 'cond2', 'rpt#@?#$?last_reserv_invo#%?=#%?var#%?numero_prenotazione#@?break#%?'),
(120, 'cond2', 'rpt#@?#@?set#%?339#%?=#%?var#%?numero_prenotazione#%?txt#%?#%?txt#%?'),
(121, 'cond2', 'rpt#@?#$?show_rate_invo#%?=#%?txt#%?1#@?oper#%?343#%?tot_no_vat_invo#%?+#%?var#%?costo_tariffa_senza_tasse#%?'),
(122, 'cond2', 'rpt#@?#$?show_rate_invo#%?=#%?txt#%?1#@?oper#%?413#%?part_tot_no_vat_invo#%?+#%?var#%?costo_tariffa_senza_tasse#%?'),
(123, 'cond2', 'rpt#@?#$?show_rate_invo#%?=#%?txt#%?1#@?oper#%?414#%?part_tot_vat_invo#%?+#%?var#%?tasse_tariffa#%?'),
(124, 'cond2', 'rpt#@?#$?show_discount_invo#%?=#%?txt#%?1#@?oper#%?343#%?tot_no_vat_invo#%?-#%?var#%?sconto_senza_tasse#%?'),
(125, 'cond2', 'rpt#@?#$?show_discount_invo#%?=#%?txt#%?1#@?oper#%?413#%?part_tot_no_vat_invo#%?-#%?var#%?sconto_senza_tasse#%?'),
(126, 'cond2', 'rpt#@?#$?show_discount_invo#%?=#%?txt#%?1#@?oper#%?414#%?part_tot_vat_invo#%?-#%?var#%?tasse_sconto#%?'),
(128, 'cond2', 'rpt#@?#@?oper#%?353#%?costo_tariffa_senza_tasse#%?+#%?txt#%?0#%?'),
(129, 'cond2', 'rpt#@?#@?oper#%?352#%?sconto_senza_tasse#%?*#%?txt#%?-1#%?'),
(130, 'cond2', 'rpt#@?#@?oper#%?350#%?tot_no_vat_invo#%?+#%?txt#%?0#%?'),
(131, 'cond2', 'rpt#@?#@?oper#%?415#%?part_tot_no_vat_invo#%?+#%?txt#%?0#%?'),
(132, 'cond2', 'rpt#@?#@?oper#%?416#%?part_tot_vat_invo#%?+#%?txt#%?0#%?'),
(133, 'cond2', 'rpt#@?#@?oper#%?424#%?price_tot_invo#%?-#%?var#%?tot_no_vat_invo#%?'),
(134, 'cond2', 'rpt#@?#@?oper#%?424#%?vat_invo#%?-#%?var#%?tot_costs_tax_invo#%?'),
(135, 'cond2', 'rpt#@?#@?oper#%?349#%?vat_invo#%?+#%?txt#%?0#%?'),
(136, 'cond2', 'rpt#@?#$?merge_discount_with_rate#%?=#%?txt#%?YES#@?oper#%?353#%?costo_tariffa_senza_tasse#%?-#%?var#%?sconto_senza_tasse#%?'),
(137, 'cond2', 'rpt#@?#$?merge_discount_with_rate#%?=#%?txt#%?YES#@?set#%?410#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(138, 'cond2', 'rpt#@?#@?set#%?418#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(139, 'cond2', 'rpt#@?and#$?num_persone_tot#%?!=#%?txt#%?#$?num_persone_tot#%?!=#%?txt#%?0#@?set#%?418#%?=#%?txt#%? for x persons#%?txt#%?x#%?var#%?num_persone_tot'),
(140, 'cond2', 'rpt#@?#$?repetition_num_invo#%?>#%?txt#%?1#@?break#%?'),
(141, 'cond2', 'rpt#@?#@?oper#%?347#%?price_tot_invo#%?+#%?var#%?costo_tot#%?'),
(142, 'cond2', 'rpt#@?#@?oper#%?348#%?price_tot_invo#%?+#%?txt#%?0#%?'),
(143, 'cond2', 'rpt#@?#$?codice_fiscale_struttura#%?!=#%?txt#%?#@?set#%?330#%?=#%?txt#%?- Fiscal Code #%?txt#%?#%?txt#%?'),
(144, 'cond2', 'rpt#@?#$?codice_fiscale_struttura#%?!=#%?txt#%?#@?set#%?330#%?.=#%?var#%?codice_fiscale_struttura#%?txt#%?#%?txt#%?'),
(145, 'cond2', 'rpt#@?#$?telefono_struttura#%?!=#%?txt#%?#@?set#%?333#%?=#%?txt#%?Tel. #%?txt#%?#%?txt#%?'),
(146, 'cond2', 'rpt#@?#$?telefono_struttura#%?!=#%?txt#%?#@?set#%?333#%?.=#%?var#%?telefono_struttura#%?txt#%?#%?txt#%?'),
(147, 'cond2', 'inr#@?#@?set#%?339#%?=#%?txt#%?#%?txt#%?#%?txt#%?'),
(148, 'cond2', 'inr#@?#@?oper#%?412#%?repetition_num_invo#%?+#%?txt#%?1#%?'),
(149, 'cond2', 'ind#@?#@?set#%?419#%?=#%?txt#%?YES#%?txt#%?#%?txt#%?'),
(150, 'cond2', 'ind#@?#@?set#%?422#%?=#%?txt#%?name of extra cost considered as tax#%?txt#%?#%?txt#%?'),
(151, 'cond2', 'ind#@?#@?set#%?347#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(152, 'cond2', 'rpt#@?and#$?telefono_struttura#%?!=#%?txt#%?#$?sito_web_struttura#%?!=#%?txt#%?#@?set#%?333#%?.=#%?txt#%? - #%?txt#%?#%?txt#%?'),
(153, 'cond2', 'rpt#@?#$?sito_web_struttura#%?!=#%?txt#%?#@?set#%?333#%?.=#%?var#%?sito_web_struttura#%?txt#%?#%?txt#%?'),
(154, 'cond2', 'ind#@?#@?set#%?343#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(155, 'cond2', 'rpt#@?#@?set#%?331#%?=#%?var#%?nome#%?txt#%?#%?txt#%?'),
(156, 'cond2', 'rpt#@?#@?set#%?332#%?=#%?var#%?cognome#%?txt#%?#%?txt#%?'),
(157, 'cond2', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?355#%?=#%?txt#%?, #%?txt#%?#%?txt#%?'),
(158, 'cond2', 'rpt#@?#$?numcivico#%?!=#%?txt#%?#@?set#%?355#%?.=#%?var#%?numcivico#%?txt#%?#%?txt#%?'),
(159, 'cond2', 'rpt#@?#$?citta#%?!=#%?txt#%?#@?set#%?325#%?.=#%?var#%?citta#%?txt#%?#%?txt#%?'),
(160, 'cond2', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?325#%?.=#%?txt#%? (#%?txt#%?#%?txt#%?'),
(161, 'cond2', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?325#%?.=#%?var#%?regione#%?txt#%?#%?txt#%?'),
(162, 'cond2', 'rpt#@?#$?regione#%?!=#%?txt#%?#@?set#%?325#%?.=#%?txt#%?)#%?txt#%?#%?txt#%?'),
(163, 'cond2', 'rpt#@?#$?cap#%?!=#%?txt#%?#@?set#%?326#%?.=#%?var#%?cap#%?txt#%?#%?txt#%?'),
(164, 'cond2', 'rpt#@?and#$?cap#%?!=#%?txt#%?#$?nazione#%?!=#%?txt#%?#@?set#%?326#%?.=#%?txt#%? #%?txt#%?#%?txt#%?'),
(165, 'cond2', 'rpt#@?#$?nazione#%?!=#%?txt#%?#@?set#%?326#%?.=#%?var#%?nazione#%?txt#%?#%?txt#%?'),
(166, 'cond2', 'rpt#@?#@?set#%?405#%?=#%?var#%?codice_fiscale#%?txt#%?#%?txt#%?'),
(167, 'cond2', 'rpt#@?#@?set#%?406#%?=#%?var#%?partita_iva#%?txt#%?#%?txt#%?'),
(168, 'cond2', 'rpt#@?#@?set#%?407#%?=#%?var#%?via#%?txt#%?#%?txt#%?'),
(169, 'cond2', 'ind#@?#@?set#%?408#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(170, 'cond2', 'ind#@?#@?set#%?412#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(171, 'cond2', 'inr#@?#@?set#%?413#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(172, 'cond2', 'inr#@?#@?set#%?414#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(173, 'cond2', 'rpt#@?#$?logo_struttura#%?!=#%?txt#%?#@?set#%?420#%?=#%?txt#%?<img src="#%?txt#%?#%?txt#%?'),
(174, 'cond2', 'rpt#@?#$?logo_struttura#%?!=#%?txt#%?#@?set#%?420#%?.=#%?var#%?logo_struttura#%?txt#%?#%?txt#%?'),
(175, 'cond2', 'rpt#@?#$?logo_struttura#%?!=#%?txt#%?#@?set#%?420#%?.=#%?txt#%?" alt="Logo" style="float: right;">#%?txt#%?#%?txt#%?'),
(176, 'cond2', 'inr#@?#@?set#%?425#%?=#%?txt#%?0#%?txt#%?#%?txt#%?'),
(1, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?1#%?=#%?txt#%?s#%?txt#%?#%?txt#%?'),
(3, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?3#%?=#%?txt#%?il#%?txt#%?#%?txt#%?'),
(4, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?3#%?=#%?txt#%?la#%?txt#%?#%?txt#%?'),
(5, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?4#%?=#%?txt#%?Il#%?txt#%?#%?txt#%?'),
(6, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?4#%?=#%?txt#%?La#%?txt#%?#%?txt#%?'),
(7, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?5#%?=#%?txt#%?al#%?txt#%?#%?txt#%?'),
(8, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?5#%?=#%?txt#%?alla#%?txt#%?#%?txt#%?'),
(9, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?6#%?=#%?txt#%?e#%?txt#%?#%?txt#%?'),
(10, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?6#%?=#%?txt#%?a#%?txt#%?#%?txt#%?'),
(11, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?7#%?=#%?txt#%?o#%?txt#%?#%?txt#%?'),
(12, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?7#%?=#%?txt#%?a#%?txt#%?#%?txt#%?'),
(23, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?13#%?=#%?txt#%?el#%?txt#%?#%?txt#%?'),
(24, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?13#%?=#%?txt#%?la#%?txt#%?#%?txt#%?'),
(25, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?14#%?=#%?txt#%?El#%?txt#%?#%?txt#%?'),
(26, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?14#%?=#%?txt#%?La#%?txt#%?#%?txt#%?'),
(27, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?15#%?=#%?txt#%?al#%?txt#%?#%?txt#%?'),
(28, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?15#%?=#%?txt#%?a la#%?txt#%?#%?txt#%?'),
(29, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?16#%?=#%?txt#%?a#%?txt#%?#%?txt#%?'),
(30, 'cond', 'rpt#@?#$?sesso#%?!=#%?txt#%?f#@?set#%?17#%?=#%?txt#%?o#%?txt#%?#%?txt#%?'),
(31, 'cond', 'rpt#@?#$?sesso#%?=#%?txt#%?f#@?set#%?17#%?=#%?txt#%?a#%?txt#%?#%?txt#%?'),
(2, 'compress', 'gz'),
(3, 'compress', 'gz'),
(5, 'allegato', '0'),
(6, 'allegato', '0');

-- --------------------------------------------------------

--
-- Table structure for table `testcosti2014`
--

CREATE TABLE IF NOT EXISTS `testcosti2014` (
  `idcosti` int(11) DEFAULT NULL,
  `nome_costo` text,
  `val_costo` double DEFAULT NULL,
  `tipo_costo` text,
  `nome_cassa` varchar(70) DEFAULT NULL,
  `persona_costo` text,
  `provenienza_costo` text,
  `metodo_pagamento` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  UNIQUE KEY `idcosti` (`idcosti`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testcosti2014`
--

INSERT INTO `testcosti2014` (`idcosti`, `nome_costo`, `val_costo`, `tipo_costo`, `nome_cassa`, `persona_costo`, `provenienza_costo`, `metodo_pagamento`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testcostiprenota2014`
--

CREATE TABLE IF NOT EXISTS `testcostiprenota2014` (
  `idcostiprenota` int(11) NOT NULL,
  `idprenota` int(11) DEFAULT NULL,
  `tipo` varchar(2) DEFAULT NULL,
  `nome` varchar(40) DEFAULT NULL,
  `valore` double DEFAULT NULL,
  `valore_perc` double DEFAULT NULL,
  `arrotonda` float DEFAULT NULL,
  `tasseperc` float DEFAULT NULL,
  `associasett` varchar(1) DEFAULT NULL,
  `settimane` text,
  `moltiplica` text,
  `categoria` text,
  `letto` varchar(1) DEFAULT NULL,
  `numlimite` int(11) DEFAULT NULL,
  `idntariffe` int(11) DEFAULT NULL,
  `variazione` varchar(10) DEFAULT NULL,
  `varmoltiplica` text,
  `varnumsett` varchar(20) DEFAULT NULL,
  `varperiodipermessi` text,
  `varbeniinv` text,
  `varappincompatibili` text,
  `vartariffeassociate` varchar(10) DEFAULT NULL,
  `vartariffeincomp` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcostiprenota`),
  KEY `testiidpcostiprenota2014` (`idprenota`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testcostiprenota2014`
--

INSERT INTO `testcostiprenota2014` (`idcostiprenota`, `idprenota`, `tipo`, `nome`, `valore`, `valore_perc`, `arrotonda`, `tasseperc`, `associasett`, `settimane`, `moltiplica`, `categoria`, `letto`, `numlimite`, `idntariffe`, `variazione`, `varmoltiplica`, `varnumsett`, `varperiodipermessi`, `varbeniinv`, `varappincompatibili`, `vartariffeassociate`, `vartariffeincomp`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testdescrizioni`
--

CREATE TABLE IF NOT EXISTS `testdescrizioni` (
  `nome` text NOT NULL,
  `tipo` varchar(16) DEFAULT NULL,
  `lingua` varchar(3) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `testo` mediumtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testdocumentiid`
--

CREATE TABLE IF NOT EXISTS `testdocumentiid` (
  `iddocumentiid` int(11) NOT NULL,
  `nome_documentoid` varchar(70) DEFAULT NULL,
  `codice_documentoid` varchar(50) DEFAULT NULL,
  `codice2_documentoid` varchar(50) DEFAULT NULL,
  `codice3_documentoid` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  PRIMARY KEY (`iddocumentiid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testgruppi`
--

CREATE TABLE IF NOT EXISTS `testgruppi` (
  `idgruppi` int(11) NOT NULL,
  `nome_gruppo` text,
  PRIMARY KEY (`idgruppi`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testinterconnessioni`
--

CREATE TABLE IF NOT EXISTS `testinterconnessioni` (
  `idlocale` int(11) DEFAULT NULL,
  `idremoto1` text,
  `idremoto2` text,
  `tipoid` varchar(12) DEFAULT NULL,
  `nome_ic` varchar(24) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testmagazzini`
--

CREATE TABLE IF NOT EXISTS `testmagazzini` (
  `idmagazzini` int(11) NOT NULL,
  `nome_magazzino` varchar(70) DEFAULT NULL,
  `codice_magazzino` varchar(50) DEFAULT NULL,
  `descrizione_magazzino` text,
  `numpiano` text,
  `numcasa` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idmagazzini`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testmessaggi`
--

CREATE TABLE IF NOT EXISTS `testmessaggi` (
  `idmessaggi` int(11) NOT NULL,
  `tipo_messaggio` varchar(8) DEFAULT NULL,
  `stato` varchar(8) DEFAULT NULL,
  `idutenti` text,
  `idutenti_visto` text,
  `datavisione` datetime DEFAULT NULL,
  `mittente` text,
  `testo` text,
  `dati_messaggio1` text,
  `dati_messaggio2` text,
  `dati_messaggio3` text,
  `dati_messaggio4` text,
  `dati_messaggio5` text,
  `dati_messaggio6` text,
  `dati_messaggio7` text,
  `dati_messaggio8` text,
  `dati_messaggio9` text,
  `dati_messaggio10` text,
  `dati_messaggio11` text,
  `dati_messaggio12` text,
  `dati_messaggio13` text,
  `dati_messaggio14` text,
  `dati_messaggio15` text,
  `dati_messaggio16` text,
  `dati_messaggio17` text,
  `dati_messaggio18` text,
  `dati_messaggio19` text,
  `dati_messaggio20` text,
  `datainserimento` datetime DEFAULT NULL,
  PRIMARY KEY (`idmessaggi`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testmessaggi`
--

INSERT INTO `testmessaggi` (`idmessaggi`, `tipo_messaggio`, `stato`, `idutenti`, `idutenti_visto`, `datavisione`, `mittente`, `testo`, `dati_messaggio1`, `dati_messaggio2`, `dati_messaggio3`, `dati_messaggio4`, `dati_messaggio5`, `dati_messaggio6`, `dati_messaggio7`, `dati_messaggio8`, `dati_messaggio9`, `dati_messaggio10`, `dati_messaggio11`, `dati_messaggio12`, `dati_messaggio13`, `dati_messaggio14`, `dati_messaggio15`, `dati_messaggio16`, `dati_messaggio17`, `dati_messaggio18`, `dati_messaggio19`, `dati_messaggio20`, `datainserimento`) VALUES
(1, 'sistema', NULL, ',1,', ',', '2014-04-20 18:18:38', '1', '<div style="max-width: 600px; line-height: 1.1;"><h4>Welcome to HotelDruid!</h4><br>These are some simple steps you can follow to set up the basic functionality of HotelDruid:<br>\n<ul style="line-height: 1.2;">\n<li>Insert the information about the rooms from the\n <em><b><a href="./visualizza_tabelle.php?tipo_tabella=appartamenti&amp;<sessione>">rooms table</a></b></em>, \n using the specific button below it. The rooms can be created, deleted and renamed. \n It is recommended to insert at least the maximum capacity for each room.<br><br></li>\n<li>Insert the number of rates, a name for each one of them and the corresponding prices from the \n <em><b><a href="./creaprezzi.php?<sessione>">page to insert prices</a></b></em>.\n Consider that HotelDruid rates also act as room types (view next step).<br><br></li>\n<li>Assign a list of rooms to each rate, inserting an assignment rule 2 for each one of them, from the \n <em><b><a href="./crearegole.php?<sessione>#regola2">page to insert rules</a></b></em>.\n Each room can be assigned to more than one rate.<br><br></li>\n<li>If this is a public web server you can enable the login and create new users from the\n <em><b><a href="./gestione_utenti.php?<sessione>">users management page</a></b></em>.<br><br></li>\n<li>Go to the\n "<em><b><a href="./personalizza.php?<sessione>">configure and customize</a></b></em>"\n page to change currency name, enable registration of check-in, insert payment methods, and set up much more options.<br><br></li>\n</ul></div>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2014-04-20 18:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `testnazioni`
--

CREATE TABLE IF NOT EXISTS `testnazioni` (
  `idnazioni` int(11) NOT NULL,
  `nome_nazione` varchar(70) DEFAULT NULL,
  `codice_nazione` varchar(50) DEFAULT NULL,
  `codice2_nazione` varchar(50) DEFAULT NULL,
  `codice3_nazione` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idnazioni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testnazioni`
--

INSERT INTO `testnazioni` (`idnazioni`, `nome_nazione`, `codice_nazione`, `codice2_nazione`, `codice3_nazione`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, 'Austria', '', 'AT', '', NULL, NULL, NULL),
(2, 'Belgium', '', 'BE', '', NULL, NULL, NULL),
(3, 'Czech Republic', '', 'CZ', '', NULL, NULL, NULL),
(4, 'Cyprus', '', 'CY', '', NULL, NULL, NULL),
(5, 'Denmark', '', 'DK', '', NULL, NULL, NULL),
(6, 'Estonia', '', 'EE', '', NULL, NULL, NULL),
(7, 'Finland', '', 'FI', '', NULL, NULL, NULL),
(8, 'France', '', 'FR', '', NULL, NULL, NULL),
(9, 'Germany', '', 'DE', '', NULL, NULL, NULL),
(10, 'Greece', '', 'GR', '', NULL, NULL, NULL),
(11, 'Ireland', '', 'IE', '', NULL, NULL, NULL),
(12, 'Latvia', '', 'LV', '', NULL, NULL, NULL),
(13, 'Lithuania', '', 'LT', '', NULL, NULL, NULL),
(14, 'Luxembourg', '', 'LU', '', NULL, NULL, NULL),
(15, 'Malta', '', 'MT', '', NULL, NULL, NULL),
(16, 'Netherlands', '', 'NL', '', NULL, NULL, NULL),
(17, 'Poland', '', 'PL', '', NULL, NULL, NULL),
(18, 'Portugal', '', 'PT', '', NULL, NULL, NULL),
(19, 'United Kingdom', '', 'GB', '', NULL, NULL, NULL),
(20, 'Slovakia', '', 'SK', '', NULL, NULL, NULL),
(21, 'Slovenia', '', 'SI', '', NULL, NULL, NULL),
(22, 'Spain', '', 'ES', '', NULL, NULL, NULL),
(23, 'Sweden', '', 'SE', '', NULL, NULL, NULL),
(24, 'Hungary', '', 'HU', '', NULL, NULL, NULL),
(25, 'Albania', '', 'AL', '', NULL, NULL, NULL),
(26, 'Andorra', '', 'AD', '', NULL, NULL, NULL),
(27, 'Belarus', '', 'BY', '', NULL, NULL, NULL),
(28, 'Bosnia And Herzegovina', '', 'BA', '', NULL, NULL, NULL),
(29, 'Bulgaria', '', 'BG', '', NULL, NULL, NULL),
(30, 'Croatia', '', 'HR', '', NULL, NULL, NULL),
(31, 'Iceland', '', 'IS', '', NULL, NULL, NULL),
(32, 'Liechtenstein', '', 'LI', '', NULL, NULL, NULL),
(33, 'Macedonia', '', 'MK', '', NULL, NULL, NULL),
(34, 'Moldova', '', 'MD', '', NULL, NULL, NULL),
(35, 'Monaco', '', 'MC', '', NULL, NULL, NULL),
(36, 'Montenegro', '', 'ME', '', NULL, NULL, NULL),
(37, 'Norway', '', 'NO', '', NULL, NULL, NULL),
(38, 'Romania', '', 'RO', '', NULL, NULL, NULL),
(39, 'Russia', '', 'RU', '', NULL, NULL, NULL),
(40, 'San Marino', '', 'SM', '', NULL, NULL, NULL),
(41, 'Vatican City', '', 'VA', '', NULL, NULL, NULL),
(42, 'Serbia', '', 'YU', '', NULL, NULL, NULL),
(43, 'Switzerland', '', 'CH', '', NULL, NULL, NULL),
(44, 'Turkey', '', 'TR', '', NULL, NULL, NULL),
(45, 'Ukraine', '', 'UA', '', NULL, NULL, NULL),
(46, 'Afghanistan', '', 'AF', '', NULL, NULL, NULL),
(47, 'Saudi Arabia', '', 'SA', '', NULL, NULL, NULL),
(48, 'Armenia', '', 'AM', '', NULL, NULL, NULL),
(49, 'Azerbaijan', '', 'AZ', '', NULL, NULL, NULL),
(50, 'Bahrein', '', 'BH', '', NULL, NULL, NULL),
(51, 'Bangladesh', '', 'BD', '', NULL, NULL, NULL),
(52, 'Bhutan', '', 'BT', '', NULL, NULL, NULL),
(53, 'Brunei', '', 'BN', '', NULL, NULL, NULL),
(54, 'Cambodia', '', 'KH', '', NULL, NULL, NULL),
(55, 'China', '', 'CN', '', NULL, NULL, NULL),
(56, 'South Corea', '', 'KR', '', NULL, NULL, NULL),
(57, 'North Corea', '', 'KP', '', NULL, NULL, NULL),
(58, 'United Arab Emirates', '', 'AE', '', NULL, NULL, NULL),
(59, 'Philippines', '', 'PH', '', NULL, NULL, NULL),
(60, 'Georgia', '', 'GE', '', NULL, NULL, NULL),
(61, 'Japan', '', 'JP', '', NULL, NULL, NULL),
(62, 'Jordan', '', 'JO', '', NULL, NULL, NULL),
(63, 'India', '', 'IN', '', NULL, NULL, NULL),
(64, 'Indonesia', '', 'ID', '', NULL, NULL, NULL),
(65, 'Iran', '', 'IR', '', NULL, NULL, NULL),
(66, 'Iraq', '', 'IQ', '', NULL, NULL, NULL),
(67, 'Israel', '', 'IL', '', NULL, NULL, NULL),
(68, 'Kazakhstan', '', 'KZ', '', NULL, NULL, NULL),
(69, 'Kyrgyzstan', '', 'KG', '', NULL, NULL, NULL),
(70, 'Kuwait', '', 'KW', '', NULL, NULL, NULL),
(71, 'Laos', '', 'LA', '', NULL, NULL, NULL),
(72, 'Lebanon', '', 'LB', '', NULL, NULL, NULL),
(73, 'Malaysia', '', 'MY', '', NULL, NULL, NULL),
(74, 'Maldives', '', 'MV', '', NULL, NULL, NULL),
(75, 'Mongolia', '', 'MN', '', NULL, NULL, NULL),
(76, 'Myanmar', '', 'MM', '', NULL, NULL, NULL),
(77, 'Nepal', '', 'NP', '', NULL, NULL, NULL),
(78, 'Oman', '', 'OM', '', NULL, NULL, NULL),
(79, 'Pakistan', '', 'PK', '', NULL, NULL, NULL),
(80, 'Qatar', '', 'QA', '', NULL, NULL, NULL),
(81, 'Singapore', '', 'SG', '', NULL, NULL, NULL),
(82, 'Syria', '', 'SY', '', NULL, NULL, NULL),
(83, 'Sri Lanka', '', 'LK', '', NULL, NULL, NULL),
(84, 'Tajikistan', '', 'TJ', '', NULL, NULL, NULL),
(85, 'Taiwan', '', 'TW', '', NULL, NULL, NULL),
(86, 'Palestine', '', 'PS', '', NULL, NULL, NULL),
(87, 'Thailand', '', 'TH', '', NULL, NULL, NULL),
(88, 'Timor-Leste', '', 'TL', '', NULL, NULL, NULL),
(89, 'Turkmenistan', '', 'TM', '', NULL, NULL, NULL),
(90, 'Uzbekistan', '', 'UZ', '', NULL, NULL, NULL),
(91, 'Vietnam', '', 'VN', '', NULL, NULL, NULL),
(92, 'Yemen', '', 'YE', '', NULL, NULL, NULL),
(93, 'Algeria', '', 'DZ', '', NULL, NULL, NULL),
(94, 'Angola', '', 'AO', '', NULL, NULL, NULL),
(95, 'Benin', '', 'BJ', '', NULL, NULL, NULL),
(96, 'Botswana', '', 'BW', '', NULL, NULL, NULL),
(97, 'Burkina Faso', '', 'BF', '', NULL, NULL, NULL),
(98, 'Burundi', '', 'BI', '', NULL, NULL, NULL),
(99, 'Cameroon', '', 'CM', '', NULL, NULL, NULL),
(100, 'Cape Verde', '', 'CV', '', NULL, NULL, NULL),
(101, 'Central African Republic', '', 'CF', '', NULL, NULL, NULL),
(102, 'Chad', '', 'TD', '', NULL, NULL, NULL),
(103, 'Comoros', '', 'KM', '', NULL, NULL, NULL),
(104, 'Republic Of Congo', '', 'CG', '', NULL, NULL, NULL),
(105, 'Dem. Rep. Of Congo', '', 'CD', '', NULL, NULL, NULL),
(106, 'Côte D''Ivoire', '', 'CI', '', NULL, NULL, NULL),
(107, 'Egypt', '', 'EG', '', NULL, NULL, NULL),
(108, 'Eritrea', '', 'ER', '', NULL, NULL, NULL),
(109, 'Ethiopia', '', 'ET', '', NULL, NULL, NULL),
(110, 'Gabon', '', 'GA', '', NULL, NULL, NULL),
(111, 'Gambia', '', 'GM', '', NULL, NULL, NULL),
(112, 'Ghana', '', 'GH', '', NULL, NULL, NULL),
(113, 'Djibouti', '', 'DJ', '', NULL, NULL, NULL),
(114, 'Guinea', '', 'GN', '', NULL, NULL, NULL),
(115, 'Guinea-Bissau', '', 'GW', '', NULL, NULL, NULL),
(116, 'Equatorial Guinea', '', 'GQ', '', NULL, NULL, NULL),
(117, 'Kenya', '', 'KE', '', NULL, NULL, NULL),
(118, 'Lesotho', '', 'LS', '', NULL, NULL, NULL),
(119, 'Liberia', '', 'LR', '', NULL, NULL, NULL),
(120, 'Libya', '', 'LY', '', NULL, NULL, NULL),
(121, 'Madagascar', '', 'MG', '', NULL, NULL, NULL),
(122, 'Malawi', '', 'MW', '', NULL, NULL, NULL),
(123, 'Mali', '', 'ML', '', NULL, NULL, NULL),
(124, 'Morocco', '', 'MA', '', NULL, NULL, NULL),
(125, 'Mauritania', '', 'MR', '', NULL, NULL, NULL),
(126, 'Mauritius', '', 'MU', '', NULL, NULL, NULL),
(127, 'Mozambique', '', 'MZ', '', NULL, NULL, NULL),
(128, 'Namibia', '', 'NA', '', NULL, NULL, NULL),
(129, 'Niger', '', 'NE', '', NULL, NULL, NULL),
(130, 'Nigeria', '', 'NG', '', NULL, NULL, NULL),
(131, 'Rwanda', '', 'RW', '', NULL, NULL, NULL),
(132, 'São Tomé And Príncipe', '', 'ST', '', NULL, NULL, NULL),
(133, 'Senegal', '', 'SN', '', NULL, NULL, NULL),
(134, 'Seychelles', '', 'SC', '', NULL, NULL, NULL),
(135, 'Sierra Leone', '', 'SL', '', NULL, NULL, NULL),
(136, 'Somalia', '', 'SO', '', NULL, NULL, NULL),
(137, 'South Africa', '', 'ZA', '', NULL, NULL, NULL),
(138, 'Sudan', '', 'SD', '', NULL, NULL, NULL),
(139, 'Swaziland', '', 'SZ', '', NULL, NULL, NULL),
(140, 'Tanzania', '', 'TZ', '', NULL, NULL, NULL),
(141, 'Togo', '', 'TG', '', NULL, NULL, NULL),
(142, 'Tunisia', '', 'TN', '', NULL, NULL, NULL),
(143, 'Uganda', '', 'UG', '', NULL, NULL, NULL),
(144, 'Zambia', '', 'ZM', '', NULL, NULL, NULL),
(145, 'Zimbabwe', '', 'ZW', '', NULL, NULL, NULL),
(146, 'Antigua And Barbuda', '', 'AG', '', NULL, NULL, NULL),
(147, 'Argentina', '', 'AR', '', NULL, NULL, NULL),
(148, 'Bahamas', '', 'BS', '', NULL, NULL, NULL),
(149, 'Barbados', '', 'BB', '', NULL, NULL, NULL),
(150, 'Belize', '', 'BZ', '', NULL, NULL, NULL),
(151, 'Bolivia', '', 'BO', '', NULL, NULL, NULL),
(152, 'Brazil', '', 'BR', '', NULL, NULL, NULL),
(153, 'Canada', '', 'CA', '', NULL, NULL, NULL),
(154, 'Chile', '', 'CL', '', NULL, NULL, NULL),
(155, 'Colombia', '', 'CO', '', NULL, NULL, NULL),
(156, 'Costa Rica', '', 'CR', '', NULL, NULL, NULL),
(157, 'Cuba', '', 'CU', '', NULL, NULL, NULL),
(158, 'Dominica', '', 'DM', '', NULL, NULL, NULL),
(159, 'Dominican Republic', '', 'DO', '', NULL, NULL, NULL),
(160, 'Ecuador', '', 'EC', '', NULL, NULL, NULL),
(161, 'El Salvador', '', 'SV', '', NULL, NULL, NULL),
(162, 'Jamaica', '', 'JM', '', NULL, NULL, NULL),
(163, 'Grenada', '', 'GD', '', NULL, NULL, NULL),
(164, 'Guatemala', '', 'GT', '', NULL, NULL, NULL),
(165, 'Guyana', '', 'GY', '', NULL, NULL, NULL),
(166, 'Haiti', '', 'HT', '', NULL, NULL, NULL),
(167, 'Honduras', '', 'HN', '', NULL, NULL, NULL),
(168, 'Mexico', '', 'MX', '', NULL, NULL, NULL),
(169, 'Nicaragua', '', 'NI', '', NULL, NULL, NULL),
(170, 'Panama', '', 'PA', '', NULL, NULL, NULL),
(171, 'Paraguay', '', 'PY', '', NULL, NULL, NULL),
(172, 'Peru', '', 'PE', '', NULL, NULL, NULL),
(173, 'Saint Kitts And Nevis', '', 'KN', '', NULL, NULL, NULL),
(174, 'Saint Lucia', '', 'LC', '', NULL, NULL, NULL),
(175, 'Saint Vincent And Grenadines', '', 'VC', '', NULL, NULL, NULL),
(176, 'United States Of America', '', 'US', '', NULL, NULL, NULL),
(177, 'Suriname', '', 'SR', '', NULL, NULL, NULL),
(178, 'Trinidad And Tobago', '', 'TT', '', NULL, NULL, NULL),
(179, 'Uruguay', '', 'UY', '', NULL, NULL, NULL),
(180, 'Venezuela', '', 'VE', '', NULL, NULL, NULL),
(181, 'Australia', '', 'AU', '', NULL, NULL, NULL),
(182, 'Fiji', '', 'FJ', '', NULL, NULL, NULL),
(183, 'Kiribati', '', 'KI', '', NULL, NULL, NULL),
(184, 'Marshall Islands', '', 'MH', '', NULL, NULL, NULL),
(185, 'Micronesia', '', 'FM', '', NULL, NULL, NULL),
(186, 'Nauru', '', 'NR', '', NULL, NULL, NULL),
(187, 'New Zealand', '', 'NZ', '', NULL, NULL, NULL),
(188, 'Palau', '', 'PW', '', NULL, NULL, NULL),
(189, 'Papua New Guinea', '', 'PG', '', NULL, NULL, NULL),
(190, 'Solomon Islands', '', 'SB', '', NULL, NULL, NULL),
(191, 'Samoa', '', 'WS', '', NULL, NULL, NULL),
(192, 'Tonga', '', 'TO', '', NULL, NULL, NULL),
(193, 'Tuvalu', '', 'TV', '', NULL, NULL, NULL),
(194, 'Vanuatu', '', 'VU', '', NULL, NULL, NULL),
(195, 'Italy', '', 'IT', '', NULL, NULL, NULL),
(196, 'Kosovo', '', 'XK', '', NULL, NULL, NULL),
(197, 'South Sudan', '', 'SS', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testntariffe2014`
--

CREATE TABLE IF NOT EXISTS `testntariffe2014` (
  `idntariffe` int(11) DEFAULT NULL,
  `nomecostoagg` varchar(40) DEFAULT NULL,
  `tipo_ca` varchar(2) DEFAULT NULL,
  `valore_ca` double DEFAULT NULL,
  `valore_perc_ca` double DEFAULT NULL,
  `arrotonda_ca` float DEFAULT NULL,
  `tasseperc_ca` float DEFAULT NULL,
  `associasett_ca` varchar(1) DEFAULT NULL,
  `numsett_ca` varchar(20) DEFAULT NULL,
  `moltiplica_ca` text,
  `periodipermessi_ca` text,
  `beniinv_ca` text,
  `appincompatibili_ca` text,
  `variazione_ca` varchar(20) DEFAULT NULL,
  `mostra_ca` varchar(10) DEFAULT NULL,
  `categoria_ca` text,
  `letto_ca` varchar(1) DEFAULT NULL,
  `numlimite_ca` int(11) DEFAULT NULL,
  `regoleassegna_ca` varchar(30) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  `tariffa1` varchar(40) DEFAULT NULL,
  `tariffa2` varchar(40) DEFAULT NULL,
  `tariffa3` varchar(40) DEFAULT NULL,
  `tariffa4` varchar(40) DEFAULT NULL,
  `tariffa5` varchar(40) DEFAULT NULL,
  `tariffa6` varchar(40) DEFAULT NULL,
  `tariffa7` varchar(40) DEFAULT NULL,
  `tariffa8` varchar(40) DEFAULT NULL,
  `tariffa9` varchar(40) DEFAULT NULL,
  `tariffa10` varchar(40) DEFAULT NULL,
  `tariffa11` varchar(40) DEFAULT NULL,
  `tariffa12` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testntariffe2014`
--

INSERT INTO `testntariffe2014` (`idntariffe`, `nomecostoagg`, `tipo_ca`, `valore_ca`, `valore_perc_ca`, `arrotonda_ca`, `tasseperc_ca`, `associasett_ca`, `numsett_ca`, `moltiplica_ca`, `periodipermessi_ca`, `beniinv_ca`, `appincompatibili_ca`, `variazione_ca`, `mostra_ca`, `categoria_ca`, `letto_ca`, `numlimite_ca`, `regoleassegna_ca`, `utente_inserimento`, `tariffa1`, `tariffa2`, `tariffa3`, `tariffa4`, `tariffa5`, `tariffa6`, `tariffa7`, `tariffa8`, `tariffa9`, `tariffa10`, `tariffa11`, `tariffa12`) VALUES
(1, '8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'p', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testparentele`
--

CREATE TABLE IF NOT EXISTS `testparentele` (
  `idparentele` int(11) NOT NULL,
  `nome_parentela` varchar(70) DEFAULT NULL,
  `codice_parentela` varchar(50) DEFAULT NULL,
  `codice2_parentela` varchar(50) DEFAULT NULL,
  `codice3_parentela` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idparentele`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testperiodi2014`
--

CREATE TABLE IF NOT EXISTS `testperiodi2014` (
  `idperiodi` int(11) NOT NULL,
  `datainizio` date NOT NULL,
  `datafine` date DEFAULT NULL,
  `tariffa1` double DEFAULT NULL,
  `tariffa1p` double DEFAULT NULL,
  `tariffa2` double DEFAULT NULL,
  `tariffa2p` double DEFAULT NULL,
  `tariffa3` double DEFAULT NULL,
  `tariffa3p` double DEFAULT NULL,
  `tariffa4` double DEFAULT NULL,
  `tariffa4p` double DEFAULT NULL,
  `tariffa5` double DEFAULT NULL,
  `tariffa5p` double DEFAULT NULL,
  `tariffa6` double DEFAULT NULL,
  `tariffa6p` double DEFAULT NULL,
  `tariffa7` double DEFAULT NULL,
  `tariffa7p` double DEFAULT NULL,
  `tariffa8` double DEFAULT NULL,
  `tariffa8p` double DEFAULT NULL,
  `tariffa9` double DEFAULT NULL,
  `tariffa9p` double DEFAULT NULL,
  `tariffa10` double DEFAULT NULL,
  `tariffa10p` double DEFAULT NULL,
  `tariffa11` double DEFAULT NULL,
  `tariffa11p` double DEFAULT NULL,
  `tariffa12` double DEFAULT NULL,
  `tariffa12p` double DEFAULT NULL,
  PRIMARY KEY (`idperiodi`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testperiodi2014`
--

INSERT INTO `testperiodi2014` (`idperiodi`, `datainizio`, `datafine`, `tariffa1`, `tariffa1p`, `tariffa2`, `tariffa2p`, `tariffa3`, `tariffa3p`, `tariffa4`, `tariffa4p`, `tariffa5`, `tariffa5p`, `tariffa6`, `tariffa6p`, `tariffa7`, `tariffa7p`, `tariffa8`, `tariffa8p`, `tariffa9`, `tariffa9p`, `tariffa10`, `tariffa10p`, `tariffa11`, `tariffa11p`, `tariffa12`, `tariffa12p`) VALUES
(1, '2014-01-01', '2014-01-02', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2014-01-02', '2014-01-03', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2014-01-03', '2014-01-04', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '2014-01-04', '2014-01-05', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2014-01-05', '2014-01-06', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2014-01-06', '2014-01-07', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2014-01-07', '2014-01-08', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '2014-01-08', '2014-01-09', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2014-01-09', '2014-01-10', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2014-01-10', '2014-01-11', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2014-01-11', '2014-01-12', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2014-01-12', '2014-01-13', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2014-01-13', '2014-01-14', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2014-01-14', '2014-01-15', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2014-01-15', '2014-01-16', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2014-01-16', '2014-01-17', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2014-01-17', '2014-01-18', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2014-01-18', '2014-01-19', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2014-01-19', '2014-01-20', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2014-01-20', '2014-01-21', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2014-01-21', '2014-01-22', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2014-01-22', '2014-01-23', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2014-01-23', '2014-01-24', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2014-01-24', '2014-01-25', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2014-01-25', '2014-01-26', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2014-01-26', '2014-01-27', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2014-01-27', '2014-01-28', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2014-01-28', '2014-01-29', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2014-01-29', '2014-01-30', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2014-01-30', '2014-01-31', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2014-01-31', '2014-02-01', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2014-02-01', '2014-02-02', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2014-02-02', '2014-02-03', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2014-02-03', '2014-02-04', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2014-02-04', '2014-02-05', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2014-02-05', '2014-02-06', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2014-02-06', '2014-02-07', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2014-02-07', '2014-02-08', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '2014-02-08', '2014-02-09', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '2014-02-09', '2014-02-10', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '2014-02-10', '2014-02-11', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '2014-02-11', '2014-02-12', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2014-02-12', '2014-02-13', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '2014-02-13', '2014-02-14', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '2014-02-14', '2014-02-15', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '2014-02-15', '2014-02-16', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '2014-02-16', '2014-02-17', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '2014-02-17', '2014-02-18', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '2014-02-18', '2014-02-19', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '2014-02-19', '2014-02-20', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '2014-02-20', '2014-02-21', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '2014-02-21', '2014-02-22', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '2014-02-22', '2014-02-23', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '2014-02-23', '2014-02-24', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '2014-02-24', '2014-02-25', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '2014-02-25', '2014-02-26', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '2014-02-26', '2014-02-27', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '2014-02-27', '2014-02-28', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '2014-02-28', '2014-03-01', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '2014-03-01', '2014-03-02', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '2014-03-02', '2014-03-03', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '2014-03-03', '2014-03-04', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '2014-03-04', '2014-03-05', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '2014-03-05', '2014-03-06', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '2014-03-06', '2014-03-07', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '2014-03-07', '2014-03-08', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '2014-03-08', '2014-03-09', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '2014-03-09', '2014-03-10', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '2014-03-10', '2014-03-11', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '2014-03-11', '2014-03-12', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '2014-03-12', '2014-03-13', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '2014-03-13', '2014-03-14', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '2014-03-14', '2014-03-15', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, '2014-03-15', '2014-03-16', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '2014-03-16', '2014-03-17', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '2014-03-17', '2014-03-18', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '2014-03-18', '2014-03-19', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '2014-03-19', '2014-03-20', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '2014-03-20', '2014-03-21', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '2014-03-21', '2014-03-22', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '2014-03-22', '2014-03-23', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '2014-03-23', '2014-03-24', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '2014-03-24', '2014-03-25', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '2014-03-25', '2014-03-26', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '2014-03-26', '2014-03-27', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '2014-03-27', '2014-03-28', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '2014-03-28', '2014-03-29', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '2014-03-29', '2014-03-30', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '2014-03-30', '2014-03-31', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '2014-03-31', '2014-04-01', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '2014-04-01', '2014-04-02', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '2014-04-02', '2014-04-03', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '2014-04-03', '2014-04-04', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '2014-04-04', '2014-04-05', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '2014-04-05', '2014-04-06', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '2014-04-06', '2014-04-07', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, '2014-04-07', '2014-04-08', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '2014-04-08', '2014-04-09', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '2014-04-09', '2014-04-10', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '2014-04-10', '2014-04-11', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '2014-04-11', '2014-04-12', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '2014-04-12', '2014-04-13', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '2014-04-13', '2014-04-14', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '2014-04-14', '2014-04-15', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, '2014-04-15', '2014-04-16', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, '2014-04-16', '2014-04-17', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, '2014-04-17', '2014-04-18', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, '2014-04-18', '2014-04-19', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, '2014-04-19', '2014-04-20', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, '2014-04-20', '2014-04-21', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, '2014-04-21', '2014-04-22', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, '2014-04-22', '2014-04-23', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, '2014-04-23', '2014-04-24', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, '2014-04-24', '2014-04-25', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, '2014-04-25', '2014-04-26', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, '2014-04-26', '2014-04-27', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, '2014-04-27', '2014-04-28', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, '2014-04-28', '2014-04-29', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, '2014-04-29', '2014-04-30', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, '2014-04-30', '2014-05-01', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, '2014-05-01', '2014-05-02', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '2014-05-02', '2014-05-03', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, '2014-05-03', '2014-05-04', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, '2014-05-04', '2014-05-05', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, '2014-05-05', '2014-05-06', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, '2014-05-06', '2014-05-07', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, '2014-05-07', '2014-05-08', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, '2014-05-08', '2014-05-09', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, '2014-05-09', '2014-05-10', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, '2014-05-10', '2014-05-11', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '2014-05-11', '2014-05-12', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, '2014-05-12', '2014-05-13', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, '2014-05-13', '2014-05-14', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, '2014-05-14', '2014-05-15', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, '2014-05-15', '2014-05-16', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, '2014-05-16', '2014-05-17', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, '2014-05-17', '2014-05-18', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, '2014-05-18', '2014-05-19', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, '2014-05-19', '2014-05-20', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, '2014-05-20', '2014-05-21', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, '2014-05-21', '2014-05-22', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, '2014-05-22', '2014-05-23', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, '2014-05-23', '2014-05-24', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, '2014-05-24', '2014-05-25', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, '2014-05-25', '2014-05-26', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, '2014-05-26', '2014-05-27', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, '2014-05-27', '2014-05-28', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, '2014-05-28', '2014-05-29', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, '2014-05-29', '2014-05-30', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, '2014-05-30', '2014-05-31', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, '2014-05-31', '2014-06-01', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, '2014-06-01', '2014-06-02', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, '2014-06-02', '2014-06-03', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, '2014-06-03', '2014-06-04', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, '2014-06-04', '2014-06-05', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, '2014-06-05', '2014-06-06', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, '2014-06-06', '2014-06-07', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, '2014-06-07', '2014-06-08', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, '2014-06-08', '2014-06-09', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, '2014-06-09', '2014-06-10', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, '2014-06-10', '2014-06-11', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, '2014-06-11', '2014-06-12', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, '2014-06-12', '2014-06-13', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, '2014-06-13', '2014-06-14', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, '2014-06-14', '2014-06-15', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, '2014-06-15', '2014-06-16', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, '2014-06-16', '2014-06-17', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, '2014-06-17', '2014-06-18', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, '2014-06-18', '2014-06-19', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, '2014-06-19', '2014-06-20', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, '2014-06-20', '2014-06-21', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, '2014-06-21', '2014-06-22', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, '2014-06-22', '2014-06-23', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, '2014-06-23', '2014-06-24', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, '2014-06-24', '2014-06-25', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, '2014-06-25', '2014-06-26', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, '2014-06-26', '2014-06-27', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, '2014-06-27', '2014-06-28', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, '2014-06-28', '2014-06-29', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, '2014-06-29', '2014-06-30', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, '2014-06-30', '2014-07-01', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, '2014-07-01', '2014-07-02', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, '2014-07-02', '2014-07-03', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, '2014-07-03', '2014-07-04', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, '2014-07-04', '2014-07-05', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, '2014-07-05', '2014-07-06', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, '2014-07-06', '2014-07-07', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, '2014-07-07', '2014-07-08', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, '2014-07-08', '2014-07-09', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, '2014-07-09', '2014-07-10', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, '2014-07-10', '2014-07-11', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, '2014-07-11', '2014-07-12', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, '2014-07-12', '2014-07-13', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, '2014-07-13', '2014-07-14', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, '2014-07-14', '2014-07-15', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, '2014-07-15', '2014-07-16', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, '2014-07-16', '2014-07-17', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, '2014-07-17', '2014-07-18', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, '2014-07-18', '2014-07-19', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, '2014-07-19', '2014-07-20', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, '2014-07-20', '2014-07-21', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, '2014-07-21', '2014-07-22', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, '2014-07-22', '2014-07-23', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, '2014-07-23', '2014-07-24', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, '2014-07-24', '2014-07-25', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, '2014-07-25', '2014-07-26', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, '2014-07-26', '2014-07-27', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, '2014-07-27', '2014-07-28', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, '2014-07-28', '2014-07-29', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, '2014-07-29', '2014-07-30', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, '2014-07-30', '2014-07-31', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, '2014-07-31', '2014-08-01', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, '2014-08-01', '2014-08-02', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, '2014-08-02', '2014-08-03', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, '2014-08-03', '2014-08-04', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, '2014-08-04', '2014-08-05', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, '2014-08-05', '2014-08-06', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, '2014-08-06', '2014-08-07', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, '2014-08-07', '2014-08-08', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, '2014-08-08', '2014-08-09', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, '2014-08-09', '2014-08-10', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, '2014-08-10', '2014-08-11', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, '2014-08-11', '2014-08-12', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, '2014-08-12', '2014-08-13', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, '2014-08-13', '2014-08-14', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, '2014-08-14', '2014-08-15', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, '2014-08-15', '2014-08-16', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, '2014-08-16', '2014-08-17', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, '2014-08-17', '2014-08-18', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, '2014-08-18', '2014-08-19', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, '2014-08-19', '2014-08-20', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, '2014-08-20', '2014-08-21', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, '2014-08-21', '2014-08-22', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, '2014-08-22', '2014-08-23', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, '2014-08-23', '2014-08-24', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, '2014-08-24', '2014-08-25', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, '2014-08-25', '2014-08-26', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, '2014-08-26', '2014-08-27', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, '2014-08-27', '2014-08-28', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, '2014-08-28', '2014-08-29', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, '2014-08-29', '2014-08-30', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, '2014-08-30', '2014-08-31', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, '2014-08-31', '2014-09-01', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, '2014-09-01', '2014-09-02', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, '2014-09-02', '2014-09-03', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, '2014-09-03', '2014-09-04', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, '2014-09-04', '2014-09-05', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, '2014-09-05', '2014-09-06', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, '2014-09-06', '2014-09-07', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, '2014-09-07', '2014-09-08', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, '2014-09-08', '2014-09-09', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, '2014-09-09', '2014-09-10', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, '2014-09-10', '2014-09-11', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, '2014-09-11', '2014-09-12', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, '2014-09-12', '2014-09-13', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, '2014-09-13', '2014-09-14', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, '2014-09-14', '2014-09-15', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, '2014-09-15', '2014-09-16', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, '2014-09-16', '2014-09-17', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, '2014-09-17', '2014-09-18', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, '2014-09-18', '2014-09-19', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, '2014-09-19', '2014-09-20', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, '2014-09-20', '2014-09-21', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, '2014-09-21', '2014-09-22', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, '2014-09-22', '2014-09-23', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, '2014-09-23', '2014-09-24', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, '2014-09-24', '2014-09-25', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, '2014-09-25', '2014-09-26', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, '2014-09-26', '2014-09-27', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, '2014-09-27', '2014-09-28', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, '2014-09-28', '2014-09-29', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, '2014-09-29', '2014-09-30', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, '2014-09-30', '2014-10-01', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, '2014-10-01', '2014-10-02', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, '2014-10-02', '2014-10-03', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, '2014-10-03', '2014-10-04', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, '2014-10-04', '2014-10-05', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, '2014-10-05', '2014-10-06', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, '2014-10-06', '2014-10-07', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, '2014-10-07', '2014-10-08', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, '2014-10-08', '2014-10-09', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, '2014-10-09', '2014-10-10', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, '2014-10-10', '2014-10-11', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, '2014-10-11', '2014-10-12', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, '2014-10-12', '2014-10-13', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `testperiodi2014` (`idperiodi`, `datainizio`, `datafine`, `tariffa1`, `tariffa1p`, `tariffa2`, `tariffa2p`, `tariffa3`, `tariffa3p`, `tariffa4`, `tariffa4p`, `tariffa5`, `tariffa5p`, `tariffa6`, `tariffa6p`, `tariffa7`, `tariffa7p`, `tariffa8`, `tariffa8p`, `tariffa9`, `tariffa9p`, `tariffa10`, `tariffa10p`, `tariffa11`, `tariffa11p`, `tariffa12`, `tariffa12p`) VALUES
(286, '2014-10-13', '2014-10-14', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, '2014-10-14', '2014-10-15', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, '2014-10-15', '2014-10-16', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, '2014-10-16', '2014-10-17', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, '2014-10-17', '2014-10-18', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, '2014-10-18', '2014-10-19', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, '2014-10-19', '2014-10-20', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, '2014-10-20', '2014-10-21', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, '2014-10-21', '2014-10-22', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, '2014-10-22', '2014-10-23', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, '2014-10-23', '2014-10-24', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, '2014-10-24', '2014-10-25', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, '2014-10-25', '2014-10-26', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, '2014-10-26', '2014-10-27', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, '2014-10-27', '2014-10-28', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, '2014-10-28', '2014-10-29', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, '2014-10-29', '2014-10-30', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, '2014-10-30', '2014-10-31', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, '2014-10-31', '2014-11-01', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, '2014-11-01', '2014-11-02', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, '2014-11-02', '2014-11-03', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, '2014-11-03', '2014-11-04', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, '2014-11-04', '2014-11-05', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, '2014-11-05', '2014-11-06', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, '2014-11-06', '2014-11-07', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, '2014-11-07', '2014-11-08', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, '2014-11-08', '2014-11-09', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, '2014-11-09', '2014-11-10', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, '2014-11-10', '2014-11-11', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, '2014-11-11', '2014-11-12', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, '2014-11-12', '2014-11-13', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, '2014-11-13', '2014-11-14', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, '2014-11-14', '2014-11-15', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, '2014-11-15', '2014-11-16', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, '2014-11-16', '2014-11-17', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, '2014-11-17', '2014-11-18', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, '2014-11-18', '2014-11-19', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, '2014-11-19', '2014-11-20', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, '2014-11-20', '2014-11-21', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, '2014-11-21', '2014-11-22', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, '2014-11-22', '2014-11-23', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, '2014-11-23', '2014-11-24', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, '2014-11-24', '2014-11-25', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, '2014-11-25', '2014-11-26', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, '2014-11-26', '2014-11-27', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, '2014-11-27', '2014-11-28', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, '2014-11-28', '2014-11-29', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, '2014-11-29', '2014-11-30', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, '2014-11-30', '2014-12-01', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, '2014-12-01', '2014-12-02', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, '2014-12-02', '2014-12-03', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, '2014-12-03', '2014-12-04', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, '2014-12-04', '2014-12-05', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, '2014-12-05', '2014-12-06', 120, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, '2014-12-06', '2014-12-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, '2014-12-07', '2014-12-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, '2014-12-08', '2014-12-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, '2014-12-09', '2014-12-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, '2014-12-10', '2014-12-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, '2014-12-11', '2014-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, '2014-12-12', '2014-12-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, '2014-12-13', '2014-12-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, '2014-12-14', '2014-12-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, '2014-12-15', '2014-12-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, '2014-12-16', '2014-12-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, '2014-12-17', '2014-12-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, '2014-12-18', '2014-12-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, '2014-12-19', '2014-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, '2014-12-20', '2014-12-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, '2014-12-21', '2014-12-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, '2014-12-22', '2014-12-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, '2014-12-23', '2014-12-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, '2014-12-24', '2014-12-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, '2014-12-25', '2014-12-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, '2014-12-26', '2014-12-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, '2014-12-27', '2014-12-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, '2014-12-28', '2014-12-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, '2014-12-29', '2014-12-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, '2014-12-30', '2014-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, '2014-12-31', '2015-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, '2015-01-01', '2015-01-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, '2015-01-02', '2015-01-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, '2015-01-03', '2015-01-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, '2015-01-04', '2015-01-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, '2015-01-05', '2015-01-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, '2015-01-06', '2015-01-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, '2015-01-07', '2015-01-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, '2015-01-08', '2015-01-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, '2015-01-09', '2015-01-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, '2015-01-10', '2015-01-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, '2015-01-11', '2015-01-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, '2015-01-12', '2015-01-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, '2015-01-13', '2015-01-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, '2015-01-14', '2015-01-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, '2015-01-15', '2015-01-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, '2015-01-16', '2015-01-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, '2015-01-17', '2015-01-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, '2015-01-18', '2015-01-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, '2015-01-19', '2015-01-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, '2015-01-20', '2015-01-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, '2015-01-21', '2015-01-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, '2015-01-22', '2015-01-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, '2015-01-23', '2015-01-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, '2015-01-24', '2015-01-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, '2015-01-25', '2015-01-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, '2015-01-26', '2015-01-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, '2015-01-27', '2015-01-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, '2015-01-28', '2015-01-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, '2015-01-29', '2015-01-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, '2015-01-30', '2015-01-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, '2015-01-31', '2015-02-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testpersonalizza`
--

CREATE TABLE IF NOT EXISTS `testpersonalizza` (
  `idpersonalizza` varchar(50) NOT NULL,
  `idutente` int(11) DEFAULT NULL,
  `valpersonalizza` text,
  `valpersonalizza_num` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testpersonalizza`
--

INSERT INTO `testpersonalizza` (`idpersonalizza`, `idutente`, `valpersonalizza`, `valpersonalizza_num`) VALUES
('col_tab_tutte_prenota', 1, 'nu#@&cg#@&in#@&fi#@&tc#@&ca#@&pa#@&ap#@&pe#@&co', NULL),
('rig_tab_tutte_prenota', 1, 'to#@&ta#@&ca#@&pc', NULL),
('maschera_email', 1, 'SI', NULL),
('dati_struttura', 1, '#@&#@&#@&#@&#@&#@&#@&#@&#@&#@&#@&', NULL),
('valuta', 1, 'Euros', NULL),
('arrotond_predef', 1, '1', NULL),
('arrotond_tasse', 1, '0.01', NULL),
('stile_soldi', 1, 'usa', NULL),
('costi_agg_in_tab_prenota', 1, '', NULL),
('aggiunta_tronca_nomi_tab1', 1, NULL, -2),
('linee_ripeti_date_tab_mesi', 1, NULL, 25),
('mostra_giorni_tab_mesi', 1, 'SI', NULL),
('colori_tab_mesi', 1, '#99CCD4,#FFEE22,#FF9900,#CC0000', NULL),
('num_linee_tab2_prenota', 1, NULL, 30),
('nomi_contratti', 1, '1#?&Example#@&2#?&Invoice#@&3#?&Invoice - html#@&4#?&Last payment receipt#@&5#?&Availability email#@&6#?&Confirm reservation email', NULL),
('num_righe_tab_tutte_prenota', 1, NULL, 200),
('selezione_tab_tutte_prenota', 1, 'tutte', NULL),
('num_righe_tab_tutti_clienti', 1, NULL, 200),
('num_righe_tab_casse', 1, NULL, 50),
('num_righe_tab_messaggi', 1, NULL, 80),
('num_righe_tab_doc_salvati', 1, NULL, 100),
('num_righe_tab_storia_soldi', 1, NULL, 200),
('stile_data', 1, 'europa', NULL),
('minuti_durata_sessione', 1, NULL, 90),
('minuti_durata_insprenota', 1, NULL, 10),
('ore_anticipa_periodo_corrente', 1, NULL, 0),
('tutti_fissi', 1, '10', NULL),
('auto_crea_anno', 1, 'SI', NULL),
('metodi_pagamento', 1, '', NULL),
('origini_prenota', 1, '', NULL),
('attiva_checkin', 1, 'NO', NULL),
('mostra_quadro_disp', 1, '', NULL),
('ultime_sel_ins_prezzi', 1, '8,2014,2014-01-01,2014-12-06,2014-01-01,2014-01-01,2014-01-01,2014-01-01,2014-01-01,2014-01-01,2014-01-01,2014-01-01,2014-01-01,2014-01-01,2014-01-01,2014-01-01,2014-01-01,2014-01-01', NULL),
('subordinazione', 1, 'NO', NULL),
('percorso_cartella_modello', 1, './dati', NULL),
('col_tab_tutte_prenota', 2, 'nu#@&cg#@&in#@&fi#@&tc#@&ca#@&pa#@&ap#@&pe#@&co', NULL),
('rig_tab_tutte_prenota', 2, 'to#@&ta#@&ca#@&pc', NULL),
('dati_struttura', 2, '#@&#@&#@&#@&#@&#@&#@&#@&#@&#@&#@&', NULL),
('valuta', 2, 'Euro', NULL),
('arrotond_predef', 2, '1', NULL),
('arrotond_tasse', 2, '0.01', NULL),
('stile_soldi', 2, 'europa', NULL),
('costi_agg_in_tab_prenota', 2, '', NULL),
('aggiunta_tronca_nomi_tab1', 2, NULL, -2),
('linee_ripeti_date_tab_mesi', 2, NULL, 25),
('mostra_giorni_tab_mesi', 2, 'NO', NULL),
('colori_tab_mesi', 2, '#99CCD4,#FFEE22,#FF9900,#CC0000', NULL),
('num_linee_tab2_prenota', 2, NULL, 30),
('nomi_contratti', 2, '1#?&Example#@&2#?&Invoice#@&3#?&Invoice - html#@&4#?&Last payment receipt#@&5#?&Availability email#@&6#?&Confirm reservation email', NULL),
('num_righe_tab_tutte_prenota', 2, NULL, 200),
('selezione_tab_tutte_prenota', 2, 'tutte', NULL),
('num_righe_tab_tutti_clienti', 2, NULL, 200),
('num_righe_tab_messaggi', 2, NULL, 80),
('num_righe_tab_casse', 2, NULL, 50),
('num_righe_tab_doc_salvati', 2, NULL, 100),
('num_righe_tab_storia_soldi', 2, NULL, 200),
('stile_data', 2, 'europa', NULL),
('ore_anticipa_periodo_corrente', 2, NULL, 0),
('metodi_pagamento', 2, '', NULL),
('origini_prenota', 2, '', NULL),
('attiva_checkin', 2, 'NO', NULL),
('mostra_quadro_disp', 2, '', NULL),
('ultime_sel_crea_modelli', 1, '2014;;en;;', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testprenota2014`
--

CREATE TABLE IF NOT EXISTS `testprenota2014` (
  `idprenota` int(11) NOT NULL,
  `idclienti` int(11) DEFAULT NULL,
  `idappartamenti` varchar(100) DEFAULT NULL,
  `iddatainizio` int(11) DEFAULT NULL,
  `iddatafine` int(11) DEFAULT NULL,
  `assegnazioneapp` varchar(4) DEFAULT NULL,
  `app_assegnabili` text,
  `num_persone` int(11) DEFAULT NULL,
  `idprenota_compagna` text,
  `tariffa` text,
  `tariffesettimanali` text,
  `incompatibilita` text,
  `sconto` double DEFAULT NULL,
  `tariffa_tot` double DEFAULT NULL,
  `caparra` double DEFAULT NULL,
  `commissioni` double DEFAULT NULL,
  `tasseperc` float DEFAULT NULL,
  `pagato` double DEFAULT NULL,
  `metodo_pagamento` text,
  `codice` varchar(10) DEFAULT NULL,
  `origine` varchar(70) DEFAULT NULL,
  `commento` text,
  `conferma` varchar(4) DEFAULT NULL,
  `checkin` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL,
  `id_anni_prec` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `data_modifica` datetime DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idprenota`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testprenota2014`
--

INSERT INTO `testprenota2014` (`idprenota`, `idclienti`, `idappartamenti`, `iddatainizio`, `iddatafine`, `assegnazioneapp`, `app_assegnabili`, `num_persone`, `idprenota_compagna`, `tariffa`, `tariffesettimanali`, `incompatibilita`, `sconto`, `tariffa_tot`, `caparra`, `commissioni`, `tasseperc`, `pagato`, `metodo_pagamento`, `codice`, `origine`, `commento`, `conferma`, `checkin`, `checkout`, `id_anni_prec`, `datainserimento`, `hostinserimento`, `data_modifica`, `utente_inserimento`) VALUES
(1, 1, '02', 110, 110, 'k', '', 1, NULL, 'tariffa1#@&175#@&p', '175;55', NULL, -75, 250, NULL, NULL, NULL, NULL, NULL, 'kfgu', NULL, NULL, 'N', NULL, NULL, NULL, '2014-04-20 18:43:08', '192.168.1.46', '2014-04-20 18:44:15', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testprivilegi`
--

CREATE TABLE IF NOT EXISTS `testprivilegi` (
  `idutente` int(11) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `regole1_consentite` text,
  `tariffe_consentite` text,
  `costi_agg_consentiti` text,
  `contratti_consentiti` text,
  `casse_consentite` text,
  `cassa_pagamenti` varchar(70) DEFAULT NULL,
  `priv_ins_prenota` varchar(20) DEFAULT NULL,
  `priv_mod_prenota` varchar(35) DEFAULT NULL,
  `priv_mod_pers` varchar(15) DEFAULT NULL,
  `priv_ins_clienti` varchar(5) DEFAULT NULL,
  `prefisso_clienti` text,
  `priv_ins_costi` varchar(10) DEFAULT NULL,
  `priv_vedi_tab` varchar(30) DEFAULT NULL,
  `priv_ins_tariffe` varchar(10) DEFAULT NULL,
  `priv_ins_regole` varchar(10) DEFAULT NULL,
  `priv_messaggi` varchar(10) DEFAULT NULL,
  `priv_inventario` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testprivilegi`
--

INSERT INTO `testprivilegi` (`idutente`, `anno`, `regole1_consentite`, `tariffe_consentite`, `costi_agg_consentiti`, `contratti_consentiti`, `casse_consentite`, `cassa_pagamenti`, `priv_ins_prenota`, `priv_mod_prenota`, `priv_mod_pers`, `priv_ins_clienti`, `prefisso_clienti`, `priv_ins_costi`, `priv_vedi_tab`, `priv_ins_tariffe`, `priv_ins_regole`, `priv_messaggi`, `priv_inventario`) VALUES
(2, 1, NULL, NULL, NULL, NULL, 'n,', NULL, NULL, NULL, 'nnn', 'nnnss', 'n,', NULL, NULL, NULL, NULL, 'nn', 'nnnnnnnnn');

-- --------------------------------------------------------

--
-- Table structure for table `testrclientiprenota2014`
--

CREATE TABLE IF NOT EXISTS `testrclientiprenota2014` (
  `idprenota` int(11) DEFAULT NULL,
  `idclienti` int(11) DEFAULT NULL,
  `num_ordine` int(11) DEFAULT NULL,
  `parentela` varchar(70) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  KEY `testiidprclientiprenota2014` (`idprenota`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testrclientiprenota2014`
--

INSERT INTO `testrclientiprenota2014` (`idprenota`, `idclienti`, `num_ordine`, `parentela`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, 1, 1, '', '2014-04-20 18:43:08', '192.168.1.46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `testregioni`
--

CREATE TABLE IF NOT EXISTS `testregioni` (
  `idregioni` int(11) NOT NULL,
  `nome_regione` varchar(70) DEFAULT NULL,
  `codice_regione` varchar(50) DEFAULT NULL,
  `codice2_regione` varchar(50) DEFAULT NULL,
  `codice3_regione` varchar(50) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  PRIMARY KEY (`idregioni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testregole2014`
--

CREATE TABLE IF NOT EXISTS `testregole2014` (
  `idregole` int(11) DEFAULT NULL,
  `app_agenzia` varchar(100) DEFAULT NULL,
  `tariffa_chiusa` text,
  `tariffa_per_app` text,
  `tariffa_per_utente` text,
  `tariffa_per_persone` text,
  `tariffa_commissioni` int(11) DEFAULT NULL,
  `iddatainizio` int(11) DEFAULT NULL,
  `iddatafine` int(11) DEFAULT NULL,
  `motivazione` text,
  `motivazione2` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testrelclienti`
--

CREATE TABLE IF NOT EXISTS `testrelclienti` (
  `idclienti` int(11) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `tipo` varchar(12) DEFAULT NULL,
  `testo1` text,
  `testo2` text,
  `testo3` text,
  `testo4` text,
  `testo5` text,
  `testo6` text,
  `testo7` text,
  `testo8` text,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  KEY `testiidprelclienti` (`idclienti`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testrelgruppi`
--

CREATE TABLE IF NOT EXISTS `testrelgruppi` (
  `idutente` int(11) NOT NULL,
  `idgruppo` int(11) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  KEY `testiidprelgruppi` (`idutente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testrelinventario`
--

CREATE TABLE IF NOT EXISTS `testrelinventario` (
  `idbeneinventario` int(11) NOT NULL,
  `idappartamento` varchar(100) DEFAULT NULL,
  `idmagazzino` int(11) DEFAULT NULL,
  `quantita` int(11) DEFAULT NULL,
  `quantita_min_predef` int(11) DEFAULT NULL,
  `richiesto_checkin` varchar(2) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  KEY `testiidprelinventario` (`idbeneinventario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testrelutenti`
--

CREATE TABLE IF NOT EXISTS `testrelutenti` (
  `idutente` int(11) NOT NULL,
  `idnazione` int(11) DEFAULT NULL,
  `idregione` int(11) DEFAULT NULL,
  `idcitta` int(11) DEFAULT NULL,
  `iddocumentoid` int(11) DEFAULT NULL,
  `idparentela` int(11) DEFAULT NULL,
  `idsup` int(11) DEFAULT NULL,
  `predef` int(11) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  KEY `testiidprelutenti` (`idutente`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testrelutenti`
--

INSERT INTO `testrelutenti` (`idutente`, `idnazione`, `idregione`, `idcitta`, `iddocumentoid`, `idparentela`, `idsup`, `predef`, `datainserimento`, `hostinserimento`, `utente_inserimento`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(1, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 46, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 93, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 146, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 48, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 181, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 49, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 148, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 149, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 150, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 95, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 52, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 151, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 152, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 53, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 98, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 54, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 153, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 102, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 154, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 155, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 103, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 156, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 106, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 157, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 105, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 113, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 159, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 160, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 107, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 161, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 116, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 108, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 109, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 182, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 110, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 112, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 163, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 164, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 114, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 115, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 165, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 166, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 167, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 31, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 63, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 64, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 65, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 67, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 195, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 61, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 62, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 68, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 117, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 183, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 196, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 70, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 71, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 72, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 118, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 120, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 32, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 33, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 121, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 122, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 73, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 74, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 184, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 125, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 126, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 168, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 185, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 36, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 124, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 127, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 76, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 128, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 186, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 77, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 187, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 129, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 130, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 57, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 78, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 79, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 188, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 86, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 189, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 172, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 80, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 104, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 131, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 174, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 175, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 191, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 132, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 47, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 133, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 134, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 135, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 81, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 190, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 136, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 137, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 56, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 197, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 83, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 138, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 177, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 139, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 82, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 85, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 84, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 140, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 87, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 88, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 141, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 192, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 178, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 142, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 193, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 45, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 58, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 176, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 179, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 180, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 91, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 92, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 145, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testsessioni`
--

CREATE TABLE IF NOT EXISTS `testsessioni` (
  `idsessioni` varchar(30) NOT NULL,
  `idutente` int(11) DEFAULT NULL,
  `indirizzo_ip` text,
  `tipo_conn` varchar(12) DEFAULT NULL,
  `user_agent` text,
  `ultimo_accesso` datetime DEFAULT NULL,
  PRIMARY KEY (`idsessioni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testsessioni`
--

INSERT INTO `testsessioni` (`idsessioni`, `idutente`, `indirizzo_ip`, `tipo_conn`, `user_agent`, `ultimo_accesso`) VALUES
('20140428114006363946112', 1, '172.16.250.4', 'HTTP', 'Mozilla/5.0 (Windows NT 6.1; rv:28.0) Gecko/20100101 Firefox/28.0', '2014-04-28 11:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `testsoldi2014`
--

CREATE TABLE IF NOT EXISTS `testsoldi2014` (
  `idsoldi` int(11) DEFAULT NULL,
  `motivazione` text,
  `id_pagamento` text,
  `metodo_pagamento` text,
  `saldo_prenota` double DEFAULT NULL,
  `saldo_cassa` double DEFAULT NULL,
  `soldi_prima` double DEFAULT NULL,
  `data_inserimento` datetime DEFAULT NULL,
  `utente_inserimento` int(11) DEFAULT NULL,
  UNIQUE KEY `idsoldi` (`idsoldi`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testsoldi2014`
--

INSERT INTO `testsoldi2014` (`idsoldi`, `motivazione`, `id_pagamento`, `metodo_pagamento`, `saldo_prenota`, `saldo_cassa`, `soldi_prima`, `data_inserimento`, `utente_inserimento`) VALUES
(1, 'soldi_prenotazioni_cancellate', NULL, NULL, NULL, NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testtransazioni`
--

CREATE TABLE IF NOT EXISTS `testtransazioni` (
  `idtransazioni` varchar(30) NOT NULL,
  `idsessione` varchar(30) DEFAULT NULL,
  `tipo_transazione` varchar(5) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `spostamenti` text,
  `dati_transazione1` text,
  `dati_transazione2` text,
  `dati_transazione3` text,
  `dati_transazione4` text,
  `dati_transazione5` text,
  `dati_transazione6` text,
  `dati_transazione7` text,
  `dati_transazione8` text,
  `dati_transazione9` text,
  `dati_transazione10` text,
  `dati_transazione11` text,
  `dati_transazione12` text,
  `dati_transazione13` text,
  `dati_transazione14` text,
  `dati_transazione15` text,
  `dati_transazione16` text,
  `dati_transazione17` text,
  `dati_transazione18` text,
  `dati_transazione19` text,
  `dati_transazione20` text,
  `ultimo_accesso` datetime DEFAULT NULL,
  PRIMARY KEY (`idtransazioni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `testtransazioniweb`
--

CREATE TABLE IF NOT EXISTS `testtransazioniweb` (
  `idtransazioni` varchar(30) NOT NULL,
  `idsessione` varchar(30) DEFAULT NULL,
  `tipo_transazione` varchar(5) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `spostamenti` text,
  `dati_transazione1` text,
  `dati_transazione2` text,
  `dati_transazione3` text,
  `dati_transazione4` text,
  `dati_transazione5` text,
  `dati_transazione6` text,
  `dati_transazione7` text,
  `dati_transazione8` text,
  `dati_transazione9` text,
  `dati_transazione10` text,
  `dati_transazione11` text,
  `dati_transazione12` text,
  `dati_transazione13` text,
  `dati_transazione14` text,
  `dati_transazione15` text,
  `dati_transazione16` text,
  `dati_transazione17` text,
  `dati_transazione18` text,
  `dati_transazione19` text,
  `dati_transazione20` text,
  `ultimo_accesso` datetime DEFAULT NULL,
  PRIMARY KEY (`idtransazioni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testtransazioniweb`
--

INSERT INTO `testtransazioniweb` (`idtransazioni`, `idsessione`, `tipo_transazione`, `anno`, `spostamenti`, `dati_transazione1`, `dati_transazione2`, `dati_transazione3`, `dati_transazione4`, `dati_transazione5`, `dati_transazione6`, `dati_transazione7`, `dati_transazione8`, `dati_transazione9`, `dati_transazione10`, `dati_transazione11`, `dati_transazione12`, `dati_transazione13`, `dati_transazione14`, `dati_transazione15`, `dati_transazione16`, `dati_transazione17`, `dati_transazione18`, `dati_transazione19`, `dati_transazione20`, `ultimo_accesso`) VALUES
('2', NULL, NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testutenti`
--

CREATE TABLE IF NOT EXISTS `testutenti` (
  `idutenti` int(11) NOT NULL,
  `nome_utente` text,
  `password` text,
  `salt` text,
  `tipo_pass` varchar(1) DEFAULT NULL,
  `datainserimento` datetime DEFAULT NULL,
  `hostinserimento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idutenti`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testutenti`
--

INSERT INTO `testutenti` (`idutenti`, `nome_utente`, `password`, `salt`, `tipo_pass`, `datainserimento`, `hostinserimento`) VALUES
(1, 'admin', 'e7d6984b76c1672da6b99431b5307aab', '#JibCGRAtqVe74uM9=%z', '5', NULL, NULL),
(2, 'test', NULL, NULL, 'n', '2014-04-20 19:11:29', '192.168.1.46');

-- --------------------------------------------------------

--
-- Table structure for table `testversioni`
--

CREATE TABLE IF NOT EXISTS `testversioni` (
  `idversioni` int(11) NOT NULL,
  `num_versione` float DEFAULT NULL,
  PRIMARY KEY (`idversioni`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `testversioni`
--

INSERT INTO `testversioni` (`idversioni`, `num_versione`) VALUES
(1, 2.1),
(2, 112);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

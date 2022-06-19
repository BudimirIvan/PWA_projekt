-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 07:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `clanak`
--

CREATE TABLE `clanak` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `naslov` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `sazetak` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `tekst` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `slika` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `kategorija` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `arhiva` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `clanak`
--

INSERT INTO `clanak` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `slika`, `kategorija`, `arhiva`) VALUES
(11, '19.06.2022.', 'Ukrajina ne može biti domaćin 2023.', 'Eurosong bi se trebao organizirati u Ujedinjenom Kraljevstvu 2023.', 'Ukrajina je pobijedila na ovogodišnjem natjecanju sa ?Stefanijom? u izvedbi Kalush Orchestra nakon što su se gledatelji diljem kontinenta solidarno glasali za zemlju pod ruskom okupacijom.\r\n\r\nTradicija nalaže da prošlogodišnji pobjednici budu domaćini sljedećeg natjecanja, ali organizatori događaja kažu da su ?s dubokim žaljenjem? zaključili da neće biti moguće osigurati sigurnosna i operativna jamstva potrebna za domaćinstvo natjecanja u Ukrajini.\r\n\r\nOrganizatori događaja zatražili su od BBC-a da bude domaćin natjecanja sljedeće godine, nakon što je Velika Britanija završila na drugom mjestu sa ?Space Manom? ??Sama Rydera.\r\n\r\nOrganizatori, Europska radiodifuzna unija (EBU), objavili su: ?Natjecanje za pjesmu Eurovizije jedna je od najsloženijih TV produkcija na svijetu, s tisućama koje rade na događaju i prisustvuju događaju i potrebno je 12 mjeseci za pripremu.?\r\n\r\nU njemu se navodi da nakon duge istrage ukrajinska javna televizija ne može dati potrebna jamstva te su iskazali razočarenje što se natjecanje sljedeće godine ne može održati u Ukrajini: ?Kao rezultat ove odluke, u skladu s pravilima i kako bi se osigurao kontinuitet događaja, EBU će započeti pregovore s BBC-jem, kao ovogodišnjem drugoplasiranom mjestu, o potencijalnom domaćinstvu natjecanja za Eurosong 2023. u Ujedinjenom Kraljevstvu.?', 'eurosong.jpg', 'Glazba', 1),
(13, '19.06.2022.', 'Diana Krall u Splitu!', 'Diana Krall za mjesec dana dolazi u Zagreb', 'Prva dama svjetskog jazza Diana Krall iduće ljeto u sklopu svjetske turneje dolazi u Zagreb, u koncertnu dvoranu Vatroslav Lisinski, 12. srpnja 2022. godine. Nastupala je s brojnim eminentnim glazbenicima kao što su Paul McCartney, Tony Bennett i Ray Charles.\r\n\r\nKanadska jazz pjevačica i pijanistica Diana Krall, umjetnica je čiji se autorski rad zapisao duboko u povijest svjetske glazbe. Svojim vokalom postala je institucija u jazz svijetu, a njezini koncerti redovito su mješavina sjajne energije i vrhunskog doživljaja koji se prepričavaju mjesecima nakon izvedbe.\r\n\r\nS više od 15 milijuna prodanih albuma diljem svijeta, zlatnim i platinastim izdanjima, osvojenim Grammyjima i Juno nagradama, ovaj kontraalt svakim novim albumom ljestvicu postavlja još više, a njezini se live nastupi svrstavaju među najbolje na svijetu ovog glazbenog žanra.\r\n\r\nDiana Krall karijeru je započela još kao srednjoškolka, a prvi debitantski album Stepping Out objavila je, sada već davne 1993. godine. Nakon toga objavila ih je još petnaest s posljednjim ?This Dream of You? objavljenim 2020. godine. Album je nazvan po njezinoj izvedbi pjesme Boba Dylana s njegovog albuma ?Together Through Life? iz 2009. Desetak pjesama s albuma odabrano je iz više od 30 neiskorištenih snimaka koje je Krall napravila sa svojim dugogodišnjim producentom Tommyjem LiPumom prije njegove smrti 2017. Album je dovršen u svibnju 2020., a produkciju je završila sama. Album uključuje i jazz klasik ?Autumn in New York? za koji je napravljen video za podizanje svijesti za New York Cares, najveću volontersku organizaciju u New Yorku osnovanu 1987. godine. Diana Krall ujedno je i najprodavanija jazz izvođačica u posljednjih trideset godina, s čak osam albuma na Billboard Jazz Albums listi.Ulaznice po cijeni od 350, 570, 790 i 900 kuna u prodaji su u sustavu eventim i na ulaznice.hr. Osobe u invalidskim kolicima imaju besplatan ulazak na koncert, dok osoba u pratnji plaća punu cijenu ulaznice.', 'test.jpg', 'Glazba', 1),
(14, '19.06.2022.', 'Foo Fighters organiziraju tribute koncert', 'Organiziraju dva velika tribute koncerta Tayloru u čast\r\n        ', '        	Foo Fighters i obitelj Hawkins najavili su dva velika koncerta u čast preminulom bubnjaru Tayloru Hawkinsu. Koncerti će biti organizirani ovog rujna u Londonu i Los Angelesu, a na oba će nastupati Foo Fightersi, a pozvana su brojna velika glazbena imena, suradnici i prijatelji benda.\r\n\r\nHawkinsova supruga Alison preko Instagrama se zahvalila fanovima na podršci: ?Taylorov simpatičan duh i duboka ljubav prema glazbi zauvijek će živjeti kroz suradnje u kojima je toliko uživao?, dodala je, ?i katalog pjesama kojima je pridonio i koje je stvorio. Slaveći njegov život, sada je na svima nama koji smo ga najviše voljeli da odamo počast Taylorovoj ostavštini i glazbi koju nam je dao.?\r\nZa London je potvrđen prvi val izvođača koje čine Liam Gallagher, Joshua Homme, Chrissie Hynde, Queenovci Brian May i Roger Taylor, Rushovci Geddy Lee i Alex Lifeson, Supergrass i Mark Ronson, dok je Dave Chappelle najavljen kao poseban gost, a održava 3. rujna na stadionu Wembley.\r\n\r\nDrugi koncert je u Los Angelesu 27. rujna u KIA Forumu, a za njega su zasad potvrđeni Gene Simmons iz Kissa, Nikki Sixx iz Motley Cruea, Chad Smith iz Peppersa, Miley Cyrus, Joshua Homme, Brad Wilk iz Rage Against The Machine, Joan Jett, Brian May, Mark Ronson, Alanis Morissette, Chris Chaney iz Jane?s Addiction, Stewart Copeland iz The Police, sin Eddija Van Halena Wolfgang Van Halen, Pat Wilson iz Weezera i drugi.\r\n\r\nPrikupljeni novci bit će proslijeđeni humanitarnim organizacijama koje će biti objavljene naknadno.\r\n\r\nHawkins je dio benda od samih početaka, odnosno, tri godine od formiranja benda. Preuzeo je ulogu bubnjara od Williama Goldsmitha 1997. kojom prilikom je Dave Grohl i objavio kako Hawkins preuzima ulogu bubnjara za album ?The Colour and the Shape? koji je postao i hit album benda. Kad su Hawkinsa pitali kako je dospio u bend tada već poznatog Grohla koji je krenuo u novu avanturu nakon Nirvane, Hawkins je rekao kako je saznao da Foo Fightersi traže bubnjara, kako je iskopao broj telefona Grohla i javio mu ?Ja ću bubnjati za bend!? Hawkins je prije toga bubnjao na turneji za Alanis Morissette.\r\n\r\nTaylor Hawkins je preminuo ovog ožujka u dobi od 50 godina. Bio je na turneji s Foo Fightersima u to vrijeme u Kolumbiji gdje su se spremali za nastup na Festivalu Estéreo Picnic. Još uvijek nije objavljen službeni uzrok smrti.\r\n        ', 'foos.jpg', 'Glazba', 1),
(39, '19.06.2022.', 'Vlašića žele dva bivša kluba.', 'Vlašića žele dva bivša kluba. On Oliću otkrio želje za budućnost', 'Nikola Vlašić (24) nakon godinu dana u West Hamu razmatra opcije za nastavak karijere. U londonskom klubu nije se naigrao (36 utakmica uz svega 45 minuta u prosjeku), a podići ga je pokušao izbornik Zlatko Dalić, koji ga je pozvao za lipanjske utakmice u Ligi nacija i dao mu 93 minute u četiri ogleda.\r\n\r\nZa Niksijevu situaciju raspituje se matični klub Hajduk koji bi ga rado doveo na posudbu, ali problem je njegova plaća u Engleskoj koja je oko četiri milijuna eura po sezoni, što je izvan gabarita bilo kojeg kluba u HNL-u.Sve prate i u njegovu bivšem klubu, moskovskom CSKA-u, gdje je zabljesnuo i privukao interes Engleza. Ruski mediji raspisali su se o Vlašićevu mogućem povratku, ali menadžer Tonći Martić opovrgnuo je takav rasplet.\r\nvica Olić, bivši trener CSKA, koji s Vlašićem surađuje u reprezentaciji, također ne vidi takav potez.\r\n\r\n- Nikola nije imao najbolju sezonu u Engleskoj. Čini mi se da je glavni razlog to što je došao skoro zadnji dan priprema, a West Ham je već imao formiranu momčad. Nikoli nije bilo lako, trebalo je vremena da se prilagodi ligi. West Ham je igrao dobro, Vlašić je imao jaku konkurenciju na svojoj poziciji. Nikola je uglavnom igrao u Europskoj ligi, David Moyes ga nije zamijenio, ali je u Premier ligi ostao rezervni igrač - rekao je Ola za ruski portal Metaratings.\r\n\r\nBivši reprezentativac kaže da je razgovarao s njim.\r\n- Mislim da se povratak u CSKA neće dogoditi. On želi ostati u Europi i okušati se u njemačkom ili španjolskom prvenstvu. Ima mogućnosti - kazao je Olić i nastavio:\r\n\r\n- Vjerujem u Vlašića i znam da ima puno momčadi koje bi ga željele potpisati ili uzeti na posudbu. Ako mu West Ham pruži priliku, onda će Nikola promijeniti momčad u kojoj će mu se dati da igra i gdje može doći u bolju formu. To će mu pomoći da ponovno postane jedan od glavnih igrača hrvatske reprezentacije. To mu želim od srca. Treba vremena i Nikola će doći na svoje.\r\n\r\nOsim Hajduka i CSKA, u kombinacijama za Nikolu je i Torino, talijanski prvoligaš koji vodi još jedan bivši \"vatreni\" Ivan Jurić.', 'vlasic.jpg', 'Sport', 1),
(41, '19.06.2022.', 'Dinamo dovodi braniča', 'Dinamo dogovara drugu najveću kupovinu u povijesti kluba? ', 'HRVATSKI 21-godišnji branič Boško Šutalo uskoro bi se mogao vratiti u HNL. Nogometaš koji je ranije igrao u Osijeku pa iz njega za 5.5 milijuna Eura otišao u Atalantu, želja je Dinama, piše SportItalia koji tvrdi da su pregovori u već poodmakloj fazi.\r\n\r\n\r\nŠutalo s Atalantom ima ugovor do ljeta 2024., a u Bergamo je stigao u siječnju 2020. iz Osijeka. Za Atalantu je u Serie A skupio ukupno 14 nastupa u jednoj i pol sezoni, a nastupio je u dvije utakmice talijanskog kupa, u kojima je postigao svoj jedini pogodak za momčad iz Bergama.\r\n\r\nNakon toga je otišao na posudbu u Hellas Veronu koju je prvo trenirao Ivan Jurić, a onda i Igor Tudor te tamo imao redovitu minutažu kad god ne bi imao problema s ozljedama, ali se nikad nije uspio do kraja nametnuti. I dalje je igrač Atalante, a Dinamo bi to htio promijeniti već ovog ljeta.\r\n\r\nŠutalo može pokriti poziciju desnog beka, onu na kojoj Dinamo nema jasno prvo rješenje. Na toj poziciji u Dinamu igraju Stefan Ristovski i Sadegh Moharrami, ali nitko od njih nije se nametnuo kao jasan prvotimac.\r\n\r\nVeliki adut Šutala je što je osim pozicije desnog beka sposoban pokriti i poziciju desnog stopera, posebno ako se radi o toj poziciji u sustavu s tri igrača u zadnjoj liniji, za kojeg se spekulira da bi ga Čačić mogao koristiti sljedeće sezone.\r\n\r\nKada bi do ovog transfera došlo, Šutalo bi postao drugim najskupljim ulaznim transferom u povijesti Dinama, ispred njega bi ostao samo Marko Rog koji je, prema Transfermarktu, u Dinamo stigao za 4.5 milijuna eura iz Splita.\r\n\r\n', 'dinamo.jpg', 'Sport', 1),
(42, '19.06.2022.', 'Superračunalo izračunalo', 'Tko će biti prvak svijeta? Pogledajte kako stoji Hrvatska', 'SUPERRAČUNALO The Analysta, koje se bavi sportskim analizama, predvidjelo je da će nogometna reprezentacija Francuske osvojiti Svjetsko prvenstvo u Kataru koje se igra krajem godine. Mundijal u Kataru bit će jedinstven po mnogo toga. Prvi put će se igrati u zimi, a premijerno će i jedan grad biti domaćin svih utakmica. Naravno, u pitanju je Doha.\r\n\r\nNakon što su postali poznati svi sudionici SP-a, rade se analize grupa i daju se prognoze o favoritima.\r\n\r\nTako je superračunalo The Analysta došlo do predikcija cijelog turnira. The Analysta je koristio algoritam koji je simulirao natjecanje tisuću puta i izračunao je da je Francuska najveći favorit za osvajanje titule prvaka svijeta.\r\n\r\nTo bi značilo da će Francuska postati tek treća reprezentacija (Italija 1934. i 1938. te Brazil 1958. i 1962.) koja je uspjela obraniti svjetsku krunu jer je u Rusiji pobijedila Hrvatsku u finalu (4:2). Brazil je drugi favorit, a Španjolska treći. Hrvatska je deseta. ', 'super.jpg', 'Sport', 1),
(43, '19.06.2022.', 'Dizajn dresa Portugala', 'Procurio dizajn dresa Portugala za SP,navijači oduševljeni', 'PROCURIO je dizajn dresa koji će reprezentacija Portugala nositi na SP-u u Kataru. Novi dres je drastično drugačiji od svih prethodnih. Ima dijagonalnu crtu koja ga presijeca, jedna je polovica zelena, a druga crvena. Portugal se plasirao u Katar preko baraža u kojem je u finalnom dvoboju izbacio Makedoniju, koja je prethodno šokirala aktualnog prvaka Europe Italiju.\r\nPortugal je u skupini s Ganom, Urugvajem i Južnom Korejom. Portugalski navijači oduševljeni su dresom, a kao i na Euru 2020., uparit će ga sa zelenim hlačicama.', 'ronaldo.jpg', 'Sport', 1),
(44, '19.06.2022.', 'Rock Festival', 'Paul Di?Anno, Tarja i Sonata Arctica predvode prvi Pannonian Rock Festival', 'Tarja, Sonata Arctica i Paul Di?Anno predvode debitantski Pannonian Rock Festival koji se održava od 11. do 14. kolovoza u Rajevom Selu u Slavoniji.\r\n\r\nJoš kad smo u ožujku najavili kako metal atrakcije Tarja i Sonata Arctica kao prvi dio lineupa dolaze ovog ljeta u Rajevo Selo, uzburkala se metal scena i nastao je velik interes prema novom festivalu.\r\n\r\nMetal atrakcije Sonata Arctica i Tarja Turunen, nekadašnji vokal Nightwisha, već su bili dovoljan poziv, no lineup je pojačao i Paul Di?Anno, prvi vokal kultnih Iron Maiden koji i boravi u Hrvatskoj gdje je na liječenju o čemu smo već pisali, a dan prije Iron Maiden spektakla je i nastupio na limitiranom koncertu u malom zagrebačkom klubu Bikers Beer Factory.\r\n\r\nOrganizatori ovog festivala su mladi bračni par Dejvid i Maja Hadaš, koji su i sami zaljubljenici u metal: ?Supruga i ja trenutno živimo i radimo u Njemačkoj i paralelno organiziramo festival u Hrvatskoj. Ja sam inače iz Rajevog Sela, a supruga iz susjednog sela Gunje. Imamo sina od 7 godina i isto toliko smo u braku?, otkriva Dejvid Hadaš. ?U Rajevom Selu imamo savršenu lokaciju na obali rijeke Save. Isto tako u ovom dijelu Europe nemamo ništa slično, tj. pravi hard rock/heavy metal festival.?\r\n\r\nOvo im je prvi put da organiziraju festival, kažu kako imaju jasnu viziju i plan, a kako zasad sve ide po planu. Sama ideja inspirirana je po uzoru na veliki broj sličnih festivala u Europi te su nakon dužeg razmišljanja odlučili krenuti u realizaciju.\r\n\r\nLineup čine Sonata Arctica, Tarja Turunen i Paul Di?Anno kao headlineri, od međunarodnog programa tu su Rings of Saturn, ukrajinska Ignea, Sirenia, Elevenking, Temperance i Kalidia, te domaće i regionalne snage Grupa Bole Ro, Drugi način, Vatreni poljubac, Manntra, Mortal Kombat, Kraljevski Apartman, Đubrivo, Quasarborn, Prisoner, cover bend Metal-lica, Riverroth, Sovrag, Nemesis, Davorin Bogović i Alisa.\r\n\r\nObjavljenim imenima će se još priključiti noviteti, javljaju organizatori.\r\n\r\nKako do ulaznica za Pannonian Rock Festival?\r\nOčekuje se publika iz Hrvatske, Srbije, Bosne i Hercegovine, Slovenije, Mađarske, ali i cijele Europe, stoga su i cijene postavljene u eurima, a ulaznice u rasponu od 19 do 74 eura su dostupne preko službenih stranica festivala.', 'paul.jpg', 'Glazba', 1),
(48, '19.06.2022.', 'Talijan napao svoju stranku', 'Talijanski šef diplomacije napao svoju stranku: Njihovi stavovi o Ukrajini su nezreli\r\n', 'TALIJANSKI ministar vanjskih poslova Luigi Di Maio optužio je danas svoju populističku stranku Pokret pet zvijezda da potkopava napore vlade da podrži Ukrajinu te da time oslabljuje položaj Rima unutar Europske unije.Njegov bi istup mogao signalizirati skori raskol unutar stranke koju je nekoć vodio. Dužnosnici Pokreta pet zvijezda trebali bi se sastati kasnije u nedjelju kako bi razmotrili Di Maijevu poziciju nakon kritika koje je uputio stranci.\r\n\r\n\"Imaju nezreo stav koji teži stvaranju napetosti\"\r\nUnutarstranačka svađa također stvara probleme premijeru Mariju Draghiju jer se u utorak održava važno glasanje u parlamentu o Ukrajini. Neki članovi Pokreta pet zvijezda žele ograničiti Italiju u slanju dodatnog oružja toj zemlji.\r\n\r\nDi Maio je priopćenjem poručio da vlada mora braniti vrijednosti demokracije i slobode, dodajući da, dok su svi željeli mir, ruski predsjednik Vladimir Putin vodi rat. U tom kontekstu rekao je da ga čelnici Pokreta pet zvijezda napadaju s \"mržnjom\" i stvaraju probleme vladi s njezinim europskim partnerima.\r\n\r\n\"Nezreo stav koji teži stvaranju napetosti i nestabilnosti unutar vlade\", naglasio je.\r\n\r\nStranka prošlog tjedna osvojila 33% glasova\r\nDi Maijevu izjavu još nije komentirao čelnik Pokreta pet zvijezda i bivši premijer Giuseppe Conte. Ranije u nedjelju jedan od Conteovih suradnika, Riccardo Ricciardi, rekao je da se Di Maio okrenuo protiv svoje političke obitelji i da bi se trebao suočiti s posljedicama.\r\n\r\nPokret pet zvijezda stranka je s najviše zastupnika u parlamentu, a na zadnjim izborima 2018. osvojili su čak 33 posto glasova. Međutim, od tada joj je popularnost značajno pala, nakon gubitka populističkog imidža zbog participacije u vladi.\r\n\r\nPrema posljednjim anketama stranka može računati na oko 13 posto birača, a na lokalnim je izborima prošloga tjedna osvojila jedva tri posto glasova.', 'talijan.jpg', 'Politika', 1),
(49, '19.06.2022.', 'Test12', 'Test sazetak', 'Test Tekst !!!!!!', 'test.jpg', 'Politika', 1),
(50, '19.06.2022.', 'Test12', 'Sazetak clanka!!!!', 'Tekst clanka !!!!!!!!!', 'test.jpg', 'Politika', 1);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `prezime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `korisnicko_ime` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `lozinka` varchar(255) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_croatian_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(1, 'Ivan', 'Budimir', 'Buda', '$2y$10$T01byD3V4ShUyJ7QkbnG3.7uNJJGiZptHnG.sqo0R8o9uuqUbEiE6', 1),
(2, 'Petar', 'Budimir', 'Pero', '$2y$10$tHpwoYLT7fnsFw4yKTppvevXcDeoQTqEfi8Dp9xlWX2bcBNUAFA2y', 0),
(5, 'Antonio', 'Horvat', 'Anto', '$2y$10$4Gwygz0tRiLsgumDfFy3Y.vEbq5XTF4EKFwJxIHehaHPLQtfVAB2G', 0),
(6, 'Ivan', 'Horvat', 'ivo', '$2y$10$D8OphxlojdzYtsnIVEZJCueyBYaAGmlP5xZi1fyc0jtvzd8rz6C5O', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clanak`
--
ALTER TABLE `clanak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clanak`
--
ALTER TABLE `clanak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

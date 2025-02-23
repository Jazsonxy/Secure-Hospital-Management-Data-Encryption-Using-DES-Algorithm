-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2025 at 12:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'Azhar Adi Dirgantara Setiawan', 'eliezeradiadi@gmail.com', 'Nice So!!!', '2025-02-21 04:10:13'),
(2, 'Mohammad Ferdiansyah Febrianto', 'eliezeradiadi@gmail.com', 'TESTTT!!!\r\n', '2025-02-21 06:56:48');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `nama_pasien` varchar(255) DEFAULT NULL,
  `tanggal_lahir` text DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nomor_telepon` text DEFAULT NULL,
  `diagnosa` text DEFAULT NULL,
  `gejala` text DEFAULT NULL,
  `dokter_penanggung_jawab` varchar(255) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `biaya_perawatan` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `nama_pasien`, `tanggal_lahir`, `alamat`, `nomor_telepon`, `diagnosa`, `gejala`, `dokter_penanggung_jawab`, `tanggal_masuk`, `tanggal_keluar`, `biaya_perawatan`) VALUES
(1, 'Michael Mercer', '27/09/1992', '77194 Peterson Oval Suite 520, Stevenport, MT 32599', '300-052-6370x2780', 'Diabetes', 'Swollen joints, Dizziness, Abdominal pain', 'Dr. Andrew Johnson', '0000-00-00', '0000-00-00', 45926.00),
(2, 'Paul Avila', '23/02/1959', '4630 Alexandria Park Apt. 657, Danielside, RI 35243', '+1-409-387-4926x42294', 'Diabetes', 'Skin rash, Abdominal pain, High fever', 'Dr. Kevin Silva', '0000-00-00', '0000-00-00', 37797.00),
(3, 'Gregory Eaton', '26/02/1971', '54528 Miller Inlet, Donaldstad, NC 14303', '(447)771-5107x622', 'Pneumonia', 'Abdominal pain, Vomiting', 'Dr. Kaitlyn Campbell', '0000-00-00', '0000-00-00', 34901.00),
(4, 'Dorothy Stewart', '09/03/1959', '076 Rita Center Apt. 277, West Kristinefort, ND 91240', '-8471', 'COVID-19', 'Abdominal pain, Severe coughing, Shortness of breath, High fever', 'Dr. Randall Rodriguez', '0000-00-00', '0000-00-00', 20780.00),
(5, 'Ann Petty', '07/01/1994', '9890 Harris Bridge, North Williamton, AK 87046', '339-997-4082', 'Diabetes', 'Dizziness, Swollen joints, Fatigue, Vomiting', 'Dr. Nicholas Burns', '0000-00-00', '0000-00-00', 18243.00),
(6, 'Megan Ramirez', '27/12/1962', '251 Callahan Isle, Markland, NC 39737', '194-044-5293x04913', 'Pneumonia', 'Severe coughing, Loss of appetite, Chest pain', 'Dr. Calvin Larson', '0000-00-00', '0000-00-00', 11220.00),
(7, 'Drew Robinson', '07/04/2012', '35818 Jonathan Mews Apt. 517, Lake Joann, AR 60934', '001-468-272-7539', 'Gagal Ginjal', 'Skin rash, Fatigue', 'Dr. Michelle Rowland', '0000-00-00', '0000-00-00', 13981.00),
(8, 'Michael Smith', '19/07/1945', '53542 Morrow Land Suite 754, Khanland, IL 81121', '(432)307-1492', 'Demam Berdarah', 'Loss of appetite, Swollen joints', 'Dr. Randy Hawkins', '0000-00-00', '0000-00-00', 47122.00),
(9, 'Kylie Holmes', '06/07/2007', '0517 Cindy Cliff Suite 348, South Jennifermouth, NJ 42257', '765-329-9158', 'Flu', 'Chest pain, Abdominal pain, Dizziness, Fatigue', 'Dr. Ronald Herrera III', '0000-00-00', '0000-00-00', 25920.00),
(10, 'Kyle Fowler', '19/10/1989', '118 Christina Vista Suite 061, South Darren, KS 57566', '873-474-8289x3308', 'Flu', 'Chest pain, Skin rash, Severe coughing, Vomiting', 'Dr. Laurie Collins', '0000-00-00', '0000-00-00', 19342.00),
(11, 'Kerri Ramos', '09/01/1942', '75141 Maurice Flat, Charlesbury, MO 70527', '001-165-656-7224x8466', 'Asma', 'Loss of appetite, Fatigue', 'Dr. Natalie Walsh', '0000-00-00', '0000-00-00', 43162.00),
(12, 'Benjamin Johnson', '27/08/1955', '7484 Walter Forest, Port Joelmouth, ND 94081', '142.448.3988x303', 'Pneumonia', 'Chest pain, Shortness of breath, Swollen joints', 'Dr. Darren Costa', '0000-00-00', '0000-00-00', 28984.00),
(13, 'Olivia Jefferson', '02/08/2022', '3356 Eugene Corners, Garciahaven, MD 65865', '(276)738-2135', 'Pneumonia', 'Nausea, Chest pain, Shortness of breath', 'Dr. Erik Mccann', '0000-00-00', '0000-00-00', 30298.00),
(14, 'Isaac Henderson', '24/09/1969', '28022 Derrick Canyon Apt. 487, Lewisport, WA 32315', '480.859.2037', 'Pneumonia', 'Blurred vision, Headache, Chest pain, Loss of appetite', 'Dr. Sarah Roberts', '0000-00-00', '0000-00-00', 36118.00),
(15, 'Ernest Armstrong', '12/06/1960', '9698 Tammy Harbors Apt. 961, East Heatherburgh, CT 60624', '594-734-7173x27058', 'Diabetes', 'Chest pain, Dizziness, Swollen joints, Loss of appetite', 'Dr. Roy Powers', '0000-00-00', '0000-00-00', 14898.00),
(16, 'Jared Adams', '26/01/2021', '23241 Shields Terrace Apt. 181, Robertfurt, RI 96119', '+1-107-161-8710x85634', 'Hipertensi', 'Shortness of breath, Dizziness, Chest pain, Nausea', 'Dr. Sharon Morgan', '0000-00-00', '0000-00-00', 19412.00),
(17, 'Cheryl Williams', '13/03/2016', '2181 Reynolds Islands Apt. 026, Port Adamfurt, SC 43120', '853.965.9436x316', 'Demam Berdarah', 'Shortness of breath, Vomiting', 'Dr. Patrick Scott', '0000-00-00', '0000-00-00', 45281.00),
(18, 'Grant Noble', '28/01/1969', '978 Briggs Cliff Apt. 628, Devinchester, CO 69453', '(732)970-3134x72760', 'Demam Berdarah', 'Loss of appetite, Severe coughing', 'Dr. Lisa Alvarado', '0000-00-00', '0000-00-00', 7960.00),
(19, 'Stephanie King', '13/07/1946', '3501 Sims Unions Apt. 837, Stephaniebury, GA 78904', '001-131-622-8038', 'Bronkitis', 'Nausea, Headache, Fatigue', 'Dr. Kyle Smith', '0000-00-00', '0000-00-00', 15555.00),
(20, 'Calvin West', '15/11/1936', '5861 Chelsea Ford Suite 019, Markfurt, MT 76082', '026-198-7569', 'Flu', 'Blurred vision, Dizziness, Headache', 'Dr. William Ramos', '0000-00-00', '0000-00-00', 40243.00),
(21, 'Nancy Kelly', '12/01/1989', '7123 Rhonda Springs Apt. 719, Kendraview, MN 16319', '+1-385-264-6229x132', 'Diabetes', 'Swollen joints, Chest pain, Blurred vision, Fatigue', 'Dr. William Lucero', '0000-00-00', '0000-00-00', 12188.00),
(22, 'Kevin Petersen', '17/04/1949', '9659 John Dam, West Joanne, KY 79199', '328-592-4254', 'Asma', 'Nausea, Headache', 'Dr. Paul Atkins', '0000-00-00', '0000-00-00', 45283.00),
(23, 'Scott Williams', '07/04/1993', '10380 Zoe Forest Apt. 913, Jenkinsville, MT 11848', '001-713-047-8466x0672', 'Diabetes', 'Severe coughing, Dizziness, Headache, High fever', 'Dr. Michael Walker', '0000-00-00', '0000-00-00', 33303.00),
(24, 'Connie West', '01/04/1947', '18687 Julie Ford Apt. 439, New Colin, MD 06115', '660-033-3303', 'Asma', 'Severe coughing, Fatigue', 'Dr. Dr. Monica Chambers MD', '0000-00-00', '0000-00-00', 38250.00),
(25, 'Deborah Bell', '06/01/1993', '983 Catherine Islands Suite 059, South Bradleyview, AK 26411', '001-877-823-8630x1334', 'COVID-19', 'Nausea, Fatigue, Skin rash', 'Dr. Garrett Gutierrez', '0000-00-00', '0000-00-00', 47412.00),
(26, 'Roberto Hawkins', '14/03/2022', '303 Frank Square, Sherrytown, NV 12389', '796313249', 'Demam Berdarah', 'Nausea, Swollen joints, Headache', 'Dr. Zachary Kidd', '0000-00-00', '0000-00-00', 37119.00),
(27, 'Ashley Robinson', '30/08/2000', '69183 Stewart Tunnel, Brownville, PA 43078', '240-264-6902', 'Demam Berdarah', 'Loss of appetite, Abdominal pain, Nausea', 'Dr. Melanie Ferguson', '0000-00-00', '0000-00-00', 32053.00),
(28, 'Ryan Hunter', '17/08/1963', '5968 Gomez Dale Apt. 611, Sancheztown, WV 64290', '171-197-7862x87121', 'Tifus', 'Nausea, Vomiting, Headache, Abdominal pain', 'Dr. Thomas Holt', '0000-00-00', '0000-00-00', 25337.00),
(29, 'James Jordan', '25/03/2021', '352 Thomas Manor, North Jesus, AZ 60507', '209.995.0567', 'Pneumonia', 'Swollen joints, Fatigue, Skin rash, Chest pain', 'Dr. Omar Smith', '0000-00-00', '0000-00-00', 34553.00),
(30, 'Michael Gardner', '17/02/1974', '3951 Jennifer Spring, Joanmouth, MS 93146', '1883111195', 'Tifus', 'Blurred vision, Dizziness, Severe coughing', 'Dr. Thomas Nichols', '0000-00-00', '0000-00-00', 37275.00),
(31, 'Patricia Rojas PhD', '24/07/2007', '192 Winters Park, Laneberg, NC 17267', '-1756', 'COVID-19', 'Nausea, Fatigue', 'Dr. Jessica Richards', '0000-00-00', '0000-00-00', 20697.00),
(32, 'Barbara Jones', '20/09/1975', '449 Olivia Falls Apt. 955, Johnsonchester, NC 65982', '001-108-645-4306x6417', 'Tifus', 'Shortness of breath, Headache', 'Dr. Todd Robbins', '0000-00-00', '0000-00-00', 27857.00),
(33, 'Jennifer Robinson', '05/08/1944', '806 Lee Meadows Suite 683, New Kimberlyview, VA 17597', '+1-476-039-0993x1408', 'Gagal Ginjal', 'Fatigue, Abdominal pain', 'Dr. April Pena', '0000-00-00', '0000-00-00', 48580.00),
(34, 'Kaylee Glass', '30/08/1991', '8306 Taylor Wall Suite 921, Knightberg, MO 70189', '001-393-958-1735x6682', 'Diabetes', 'Headache, Dizziness, Blurred vision', 'Dr. Mario Clark', '0000-00-00', '0000-00-00', 38510.00),
(35, 'Dalton Clarke', '06/06/1952', '759 Bush Haven, East David, MN 41173', '971.639.2043x1611', 'Diabetes', 'Dizziness, High fever, Chest pain', 'Dr. Victoria Bishop', '0000-00-00', '0000-00-00', 37713.00),
(36, 'Chelsey Mcdaniel', '18/10/2000', '098 Baker Highway, Hernandezmouth, MN 80942', '602.902.4145x58063', 'Tifus', 'High fever, Blurred vision, Severe coughing, Chest pain', 'Dr. Connie Thompson', '0000-00-00', '0000-00-00', 16211.00),
(37, 'Andrew Wilson', '29/04/1967', '355 Shepard Drives Suite 583, Michellehaven, TN 74703', '001-063-969-7481x8615', 'Hipertensi', 'Swollen joints, Shortness of breath, Nausea, Loss of appetite', 'Dr. Jordan Johnson', '0000-00-00', '0000-00-00', 33787.00),
(38, 'Benjamin Howard', '04/08/2009', '004 Franklin Parkways, Lake Johnny, MO 36164', '013-256-7106', 'Asma', 'Fatigue, Loss of appetite, Blurred vision', 'Dr. Crystal Kelley', '0000-00-00', '0000-00-00', 7337.00),
(39, 'Veronica Jennings', '10/11/1939', '33863 Martin Flats Suite 819, Lake Brittanyshire, HI 40792', '7667970901', 'Diabetes', 'Headache, Loss of appetite, Vomiting', 'Dr. Sarah Page', '0000-00-00', '0000-00-00', 1932.00),
(40, 'Ryan Farley', '24/07/1942', '1768 James Burg Suite 622, Brookeburgh, VT 17122', '+1-235-864-9556x423', 'Bronkitis', 'Fatigue, Shortness of breath, Blurred vision, Abdominal pain', 'Dr. Victoria Ramos', '0000-00-00', '0000-00-00', 2959.00),
(41, 'Linda Brooks', '01/06/1939', '3163 Michelle Points Apt. 669, Murphyberg, OH 69458', '385-526-0920x9869', 'Gagal Ginjal', 'Skin rash, High fever', 'Dr. Patricia Franklin', '0000-00-00', '0000-00-00', 14508.00),
(42, 'Robert Wolfe', '28/06/2020', '9858 Edwards Turnpike, South Joelfort, UT 32428', '080-733-9023x0259', 'Demam Berdarah', 'Swollen joints, Headache, Nausea', 'Dr. Victoria Robinson', '0000-00-00', '0000-00-00', 9217.00),
(43, 'Wesley Martinez', '10/11/2014', '191 Cortez Lodge Suite 890, Kevinfurt, ND 44940', '5093812137', 'Hipertensi', 'Fatigue, Abdominal pain', 'Dr. Robert Thompson', '0000-00-00', '0000-00-00', 30051.00),
(44, 'Amanda Porter', '18/09/1980', '7207 Kelli Mills Apt. 715, New Jamesshire, OH 42884', '(521)923-9226x697', 'Tifus', 'Headache, Shortness of breath, Skin rash', 'Dr. Stephen Henson', '0000-00-00', '0000-00-00', 29063.00),
(45, 'Matthew Ramsey', '19/10/2021', '63420 John Mews Apt. 936, Adamstown, SD 79451', '-8059', 'Asma', 'Dizziness, Swollen joints, Vomiting', 'Dr. Stephen Forbes', '0000-00-00', '0000-00-00', 40206.00),
(46, 'Tristan Cole', '06/02/1992', '89969 Kathryn Field Apt. 288, West Christyland, IL 84830', '+1-004-286-7064x9578', 'Bronkitis', 'Loss of appetite, Dizziness, Abdominal pain, Skin rash', 'Dr. Nicole Snyder', '0000-00-00', '0000-00-00', 40766.00),
(47, 'Clinton Holmes', '28/06/1958', '7697 James Meadows, Greenhaven, SC 59896', '(983)900-1756x5629', 'Diabetes', 'Loss of appetite, Shortness of breath', 'Dr. Jeffery Harris', '0000-00-00', '0000-00-00', 2633.00),
(48, 'Sean Peterson', '04/09/2000', '59195 Moreno Square Suite 487, East Josephfurt, NJ 71909', '(653)788-1237', 'Demam Berdarah', 'Dizziness, Severe coughing, Vomiting, Abdominal pain', 'Dr. Angelica Jones', '0000-00-00', '0000-00-00', 26908.00),
(49, 'Rick Moore', '09/08/1941', '038 Brent Prairie, East Aaron, ME 08688', '914-414-9576x9405', 'Demam Berdarah', 'Shortness of breath, Skin rash, Fatigue', 'Dr. Tiffany Johnson', '0000-00-00', '0000-00-00', 8368.00),
(50, 'Tyler Hudson', '14/06/1990', '11679 Dana Valley, Taylorstad, SC 59479', '459-997-2063x611', 'Hipertensi', 'Blurred vision, Headache', 'Dr. Austin Woodward', '0000-00-00', '0000-00-00', 40790.00),
(51, 'Shawn Harris', '31/03/1973', '1410 Michelle Pines, Martinezmouth, VT 70091', '992-668-2365x4387', 'COVID-19', 'Severe coughing, Skin rash, Fatigue', 'Dr. Sandra Jones', '0000-00-00', '0000-00-00', 36704.00),
(52, 'Angela Rodriguez', '11/01/1939', '3150 Vaughn Views, Terryborough, SC 95927', '(952)994-5756', 'Flu', 'Nausea, Fatigue', 'Dr. David Mcdonald', '0000-00-00', '0000-00-00', 2058.00),
(53, 'David Rice', '05/04/2010', '079 Debra Squares Apt. 568, Chavezshire, CA 57101', '571.002.5259x530', 'Demam Berdarah', 'Swollen joints, Chest pain', 'Dr. Cassandra Martin', '0000-00-00', '0000-00-00', 6819.00),
(54, 'Christine Lynn', '30/11/1970', '91330 Brett Road Suite 023, West Jodi, OK 72090', '555.531.1109x82478', 'Pneumonia', 'Skin rash, Vomiting', 'Dr. Natasha Taylor', '0000-00-00', '0000-00-00', 32453.00),
(55, 'Brian Smith', '26/02/1966', '6976 Bolton Ridge Suite 813, North Kimberlystad, KY 82977', '001-969-908-9204x89641', 'COVID-19', 'Severe coughing, Swollen joints', 'Dr. Mr. Gabriel Fisher', '0000-00-00', '0000-00-00', 49168.00),
(56, 'Mandy Villa', '09/12/1974', '4473 Brown Divide Suite 797, Rodriguezport, VT 83056', '001-479-384-0171x9126', 'Hipertensi', 'Blurred vision, Loss of appetite, Nausea', 'Dr. Michael Warren', '0000-00-00', '0000-00-00', 20719.00),
(57, 'Alexandra Silva', '20/07/1985', '990 Matthews Greens Suite 261, West Brettport, NY 51933', '(200)407-4889x325', 'Pneumonia', 'Abdominal pain, Shortness of breath, Severe coughing', 'Dr. Andre Ray', '0000-00-00', '0000-00-00', 49477.00),
(58, 'Savannah Miller', '07/12/2023', '04535 Ross Burgs, East Patrick, ME 07416', '656-834-1043x0552', 'Demam Berdarah', 'Nausea, Loss of appetite, Chest pain', 'Dr. Christopher Cooper', '0000-00-00', '0000-00-00', 16464.00),
(59, 'Christopher Brown', '15/10/1937', '9083 King Lights Suite 274, Brianmouth, CT 83414', '6313120994', 'Hipertensi', 'Swollen joints, Nausea, Abdominal pain', 'Dr. Jeffrey Pineda', '0000-00-00', '0000-00-00', 39719.00),
(60, 'Carl Thompson', '20/07/1996', '8227 Chapman Center, Lake Paigemouth, NC 45406', '001-365-891-1613', 'Hipertensi', 'Chest pain, Abdominal pain', 'Dr. Garrett Clark', '0000-00-00', '0000-00-00', 36806.00),
(61, 'Alexander Cunningham', '16/01/1983', '4707 Crane Dam Suite 282, East Maxtown, FL 58562', '136.412.7358', 'Flu', 'Skin rash, Chest pain', 'Dr. Kelly Stevenson', '0000-00-00', '0000-00-00', 39842.00),
(62, 'Debbie Davis', '24/02/1999', '8978 Beard Row, Walterstown, MO 93554', '783-863-9746x050', 'Tifus', 'Loss of appetite, Fatigue, Blurred vision, Severe coughing', 'Dr. Edward Sharp', '0000-00-00', '0000-00-00', 2344.00),
(63, 'Matthew Yang', '27/04/1937', '4614 Michael Neck Apt. 777, New Samanthaview, UT 38312', '153-043-3882x062', 'Demam Berdarah', 'Swollen joints, High fever, Dizziness', 'Dr. Tiffany Barnes', '0000-00-00', '0000-00-00', 21734.00),
(64, 'Derek Lopez', '10/02/1938', '9507 Patrick Tunnel, Port Kyle, AK 69061', '7251892982', 'Tifus', 'Swollen joints, Severe coughing', 'Dr. Reginald Terry', '0000-00-00', '0000-00-00', 8219.00),
(65, 'Ann Velazquez', '05/03/2024', '060 David Plains, West Amy, HI 97844', '261.944.5089', 'Bronkitis', 'Swollen joints, High fever, Skin rash, Chest pain', 'Dr. William Gilmore', '0000-00-00', '0000-00-00', 13405.00),
(66, 'Benjamin Blanchard', '24/06/1971', '71804 Edwards Burg, Delgadoton, WA 88524', '(411)230-9108', 'Diabetes', 'Dizziness, Skin rash, High fever, Vomiting', 'Dr. Pamela Snyder', '0000-00-00', '0000-00-00', 13895.00),
(67, 'Mckenzie Thompson', '26/05/1937', '659 Alexander Underpass Apt. 400, Mooreton, MS 60922', '001-263-590-7047', 'Diabetes', 'Nausea, Shortness of breath, Abdominal pain, High fever', 'Dr. Jorge Rowe', '0000-00-00', '0000-00-00', 42638.00),
(68, 'John Williams', '06/02/1970', '134 Tony Courts, North Robertmouth, LA 31859', '160.678.8939x0982', 'Tifus', 'Blurred vision, Shortness of breath', 'Dr. Brandon Gardner', '0000-00-00', '0000-00-00', 41508.00),
(69, 'Gary Duncan', '09/10/1987', '4135 Maldonado Vista Apt. 964, North Christian, CA 36259', '2928039830', 'COVID-19', 'Loss of appetite, Shortness of breath', 'Dr. Madison Rojas', '0000-00-00', '0000-00-00', 21190.00),
(70, 'Debbie Mullins', '24/03/2018', '55889 Matthew Mountains, South Joseview, MA 65590', '526-885-4353x636', 'Diabetes', 'Severe coughing, Loss of appetite, Blurred vision, Skin rash', 'Dr. Jessica Abbott', '0000-00-00', '0000-00-00', 36324.00),
(71, 'Amanda Travis', '23/10/1956', '93390 Joe Cliffs Apt. 267, Robertsville, DC 56320', '531-474-9698x9386', 'Diabetes', 'Dizziness, Skin rash, Shortness of breath', 'Dr. Sarah Lopez', '0000-00-00', '0000-00-00', 27416.00),
(72, 'Katie Zimmerman', '23/07/1990', '45881 Brown Estates, Jacobsfurt, TX 20110', '855-695-0132x2411', 'Bronkitis', 'Skin rash, Dizziness, Blurred vision, High fever', 'Dr. Denise Mcbride', '0000-00-00', '0000-00-00', 34476.00),
(73, 'Ashley Carroll', '20/08/1951', '301 Marc Pike, North Donnaton, AK 17995', '(395)415-2206x20020', 'Gagal Ginjal', 'Vomiting, Swollen joints, Headache', 'Dr. Mrs. Diane Johnson DVM', '0000-00-00', '0000-00-00', 27715.00),
(74, 'Claire Calderon', '25/04/2010', '0188 Skinner Falls, South Joseph, ME 67820', '(307)710-4497x96193', 'Diabetes', 'Blurred vision, Swollen joints, Loss of appetite', 'Dr. Ian Ellis', '0000-00-00', '0000-00-00', 46877.00),
(75, 'Holly Brown', '27/06/1955', '0130 Jeremy Passage, Lake Martin, LA 14107', '219.124.8810', 'Hipertensi', 'Vomiting, Dizziness, Abdominal pain', 'Dr. Richard Ford', '0000-00-00', '0000-00-00', 33541.00),
(76, 'Douglas Thompson', '15/06/2009', '05936 Catherine Park, North Bryanside, NH 35550', '090-167-2991x76627', 'Bronkitis', 'Abdominal pain, Swollen joints', 'Dr. Christopher Brown', '0000-00-00', '0000-00-00', 44227.00),
(77, 'Timothy Cameron', '11/10/1954', '904 Joseph Neck, Christopherhaven, NM 70701', '765.029.5422x4870', 'Flu', 'Chest pain, Skin rash', 'Dr. Laura Sloan DVM', '0000-00-00', '0000-00-00', 34261.00),
(78, 'Frank Ruiz', '11/02/1965', '4699 Silva Terrace, South Judith, OR 93898', '(535)378-3266', 'Asma', 'Blurred vision, Fatigue, Chest pain, Severe coughing', 'Dr. Matthew Mitchell', '0000-00-00', '0000-00-00', 43516.00),
(79, 'Joyce Wallace', '08/06/1977', '6283 Thomas Rue, Thompsonhaven, MS 69198', '(484)366-4741', 'COVID-19', 'Fatigue, Swollen joints, Loss of appetite', 'Dr. John Rogers', '0000-00-00', '0000-00-00', 13638.00),
(80, 'Amanda Freeman', '11/06/1941', '89027 Murphy Stream Apt. 655, Port Toniton, AL 02432', '-7570', 'Demam Berdarah', 'Nausea, Loss of appetite', 'Dr. Robert Bell', '0000-00-00', '0000-00-00', 7946.00),
(81, 'Robin Gonzalez', '14/01/1991', '725 Williams Heights, Stonebury, NV 93976', '(072)380-6742', 'Gagal Ginjal', 'Blurred vision, Swollen joints', 'Dr. Rhonda Hendricks', '0000-00-00', '0000-00-00', 28086.00),
(82, 'Mr. Lance Fernandez', '19/07/1990', '3073 Walters Ports, Benjaminbury, MS 54202', '+1-257-827-0673x48759', 'Bronkitis', 'Headache, Blurred vision, Dizziness', 'Dr. Deborah Johnson', '0000-00-00', '0000-00-00', 41956.00),
(83, 'Allen Wheeler', '24/12/1961', '9865 Bryant Fort Apt. 818, Brookshaven, VT 41017', '1805891084', 'Diabetes', 'Dizziness, High fever', 'Dr. Robert George', '0000-00-00', '0000-00-00', 41186.00),
(84, 'Jared Ford', '22/10/1975', '08415 Moore Cliff, East Arianachester, OK 48772', '934-979-6438', 'Demam Berdarah', 'Swollen joints, Abdominal pain, Severe coughing', 'Dr. Ryan Freeman', '0000-00-00', '0000-00-00', 10609.00),
(85, 'Laura Murray', '23/12/2003', '6257 Lang Throughway, Joneschester, DC 41405', '+1-387-930-0888x76019', 'Diabetes', 'Dizziness, Skin rash, Loss of appetite', 'Dr. Jared Jones', '0000-00-00', '0000-00-00', 27744.00),
(86, 'Sarah Woods', '03/11/1973', '763 David Square Suite 852, Amberbury, DC 46844', '(222)544-6698x906', 'Hipertensi', 'Headache, Skin rash, Shortness of breath, High fever', 'Dr. Keith Eaton', '0000-00-00', '0000-00-00', 3874.00),
(87, 'Alicia Gray', '07/04/1934', '55761 Andrews Overpass Apt. 557, Brianaberg, UT 77769', '001-979-979-3969', 'Tifus', 'Shortness of breath, Swollen joints, Nausea, Fatigue', 'Dr. Eileen Robinson', '0000-00-00', '0000-00-00', 38204.00),
(88, 'Jessica Lopez', '02/09/1970', '192 William Villages Apt. 805, Annashire, OH 21588', '+1-453-338-4953x06441', 'Flu', 'Swollen joints, Loss of appetite, Blurred vision', 'Dr. Veronica Williams', '0000-00-00', '0000-00-00', 15312.00),
(89, 'Nicholas Fleming', '09/10/2010', '56603 James Isle Apt. 542, North Stephen, KY 41345', '8907638833', 'Tifus', 'Loss of appetite, Fatigue', 'Dr. Jessica Palmer', '0000-00-00', '0000-00-00', 12660.00),
(90, 'Norman Crawford', '29/09/2005', '347 James Street Suite 050, Whiteshire, NJ 42007', '001-191-754-0723x16206', 'Pneumonia', 'Dizziness, Swollen joints, Vomiting, Nausea', 'Dr. Keith Yang', '0000-00-00', '0000-00-00', 48097.00),
(91, 'Kenneth Sparks', '06/01/1947', '9208 Charles Lock Apt. 331, Watkinshaven, LA 35323', '055.876.1871x407', 'Bronkitis', 'Chest pain, Vomiting', 'Dr. Anthony King', '0000-00-00', '0000-00-00', 22788.00),
(92, 'Katelyn Morales', '23/07/1951', '983 Daniel Burgs Apt. 847, Lake Stacyburgh, NY 71922', '005-859-4436x22584', 'Gagal Ginjal', 'Blurred vision, Skin rash, Severe coughing, Chest pain', 'Dr. Ashley Potter', '0000-00-00', '0000-00-00', 30108.00),
(93, 'Steven Smith', '08/01/1943', '160 Christine Flat Apt. 137, Port Gina, FL 76023', '001-574-075-2023', 'Asma', 'Dizziness, Vomiting', 'Dr. Kelly Kline', '0000-00-00', '0000-00-00', 48315.00),
(94, 'Kenneth Johns', '12/09/1950', '7733 Adams Lights Apt. 101, North Roberto, FL 17370', '5258501589', 'Asma', 'Swollen joints, Severe coughing, Blurred vision', 'Dr. Deborah Nguyen', '0000-00-00', '0000-00-00', 28382.00),
(95, 'Jennifer Wang', '01/10/1938', '00714 Wilson Falls, Port Susanmouth, NY 20735', '637.164.8338', 'Bronkitis', 'Skin rash, Shortness of breath', 'Dr. Beth Bailey', '0000-00-00', '0000-00-00', 39651.00),
(96, 'Cameron Park', '31/12/1952', '50866 Brown Knolls Apt. 079, South Scottmouth, TN 00795', '093-314-7998x57801', 'Pneumonia', 'Loss of appetite, Blurred vision', 'Dr. Taylor Poole', '0000-00-00', '0000-00-00', 33835.00),
(97, 'Melissa Shaw', '28/11/1944', '8789 Torres Divide Apt. 787, Andrewburgh, TX 09379', '151.416.1834x35470', 'Pneumonia', 'Fatigue, Vomiting, Nausea, Severe coughing', 'Dr. Catherine Cervantes', '0000-00-00', '0000-00-00', 33856.00),
(98, 'Daniel Browning', '10/12/1966', '56298 Danielle Roads, North Anthony, AR 04582', '1938875104', 'COVID-19', 'Abdominal pain, Vomiting', 'Dr. Rachel Smith', '0000-00-00', '0000-00-00', 18895.00),
(99, 'Wendy Alvarado', '12/10/1965', '499 Erin Court Suite 690, Bruceland, IL 45448', '001-469-290-6988x593', 'Bronkitis', 'Dizziness, Chest pain, Fatigue', 'Dr. Sarah Fuller', '0000-00-00', '0000-00-00', 15829.00),
(100, 'Sean Garcia', '28/06/1937', '13912 Middleton Prairie Apt. 828, Kathrynview, OK 56423', '872-132-5842', 'Diabetes', 'Chest pain, Nausea, Dizziness, Fatigue', 'Dr. Kevin Brown', '0000-00-00', '0000-00-00', 43468.00),
(101, 'Caroline Hoffman', '24/04/1976', '90061 Delgado Lodge, New Donaldside, NJ 10355', '807-643-9898x219', 'Gagal Ginjal', 'Abdominal pain, Blurred vision, Shortness of breath', 'Dr. Yvonne Richardson', '0000-00-00', '0000-00-00', 10699.00),
(102, 'Patricia Larson', '02/01/2007', '70497 Bryant Underpass, West Loriport, OH 35156', '314-794-6813x098', 'COVID-19', 'Headache, Skin rash', 'Dr. Jacob Brown', '0000-00-00', '0000-00-00', 3825.00),
(103, 'Jessica Williams', '25/02/1949', '7384 Gonzalez Trafficway, Craighaven, WV 46010', '382.950.3156x554', 'Tifus', 'Nausea, Loss of appetite, Blurred vision', 'Dr. Sarah Yoder', '0000-00-00', '0000-00-00', 14571.00),
(104, 'Sabrina Martin', '26/05/1968', '45707 Hernandez Ford, Kellyton, NV 47075', '5642635800', 'Gagal Ginjal', 'Abdominal pain, Headache, Fatigue, Vomiting', 'Dr. Sarah Byrd', '0000-00-00', '0000-00-00', 6756.00),
(105, 'Amy Torres', '03/06/1942', '514 Marco Stravenue Suite 624, Alexanderchester, WI 44502', '001-705-335-0821x7389', 'Hipertensi', 'Nausea, Vomiting, Skin rash, Headache', 'Dr. Michael Robinson', '0000-00-00', '0000-00-00', 1068.00),
(106, 'Cynthia Stout', '05/01/2017', '8026 Tyler Spurs Suite 915, East Brandonmouth, FL 28109', '+1-027-244-9870x804', 'Diabetes', 'Abdominal pain, Fatigue', 'Dr. Jennifer Russell', '0000-00-00', '0000-00-00', 4794.00),
(107, 'Erica Gillespie', '24/01/1950', '85031 Lisa Port, Jenniferbury, SD 90322', '(839)513-8691x904', 'Bronkitis', 'Dizziness, Abdominal pain, Nausea, Fatigue', 'Dr. Michael Morales', '0000-00-00', '0000-00-00', 18267.00),
(108, 'Brian Washington', '13/02/2020', '94327 Betty Union Suite 120, East Alyssaport, AR 82004', '001-818-643-5847x79303', 'Hipertensi', 'Loss of appetite, Severe coughing, Headache', 'Dr. James Burke', '0000-00-00', '0000-00-00', 19930.00),
(109, 'Matthew Moore', '24/05/1972', '15918 Melendez Underpass Apt. 463, Robinsonside, CO 82901', '(914)815-4367', 'Demam Berdarah', 'Swollen joints, Vomiting', 'Dr. John Johnson', '0000-00-00', '0000-00-00', 49482.00),
(110, 'Ashley Trevino', '14/06/2016', '66214 Rachel Spurs, West Jeff, RI 43660', '1650711274', 'COVID-19', 'Severe coughing, High fever, Swollen joints, Nausea', 'Dr. George Anderson', '0000-00-00', '0000-00-00', 28247.00),
(111, 'Ryan Silva', '16/08/1946', '96607 Williams Trace, Lake Johnborough, LA 31236', '296-984-6878x074', 'Hipertensi', 'Loss of appetite, Chest pain', 'Dr. Rachel Miller', '0000-00-00', '0000-00-00', 2565.00),
(112, 'Lori Carr', '30/05/1989', '2406 Mitchell Cape, New Caitlinhaven, CO 22975', '191.445.2698', 'Pneumonia', 'Nausea, Skin rash, Blurred vision', 'Dr. Colin Bradford', '0000-00-00', '0000-00-00', 48344.00),
(113, 'Laurie Stewart', '16/01/1969', '16350 Justin Ports, Port Jesuschester, CA 47531', '900-827-8530', 'Tifus', 'Skin rash, Shortness of breath, Headache, Swollen joints', 'Dr. Brandon Sandoval', '0000-00-00', '0000-00-00', 44873.00),
(114, 'Amanda Elliott', '20/02/2014', '605 Zachary Trail Suite 383, Kelseyport, MS 11555', '001-440-937-6901x5270', 'Gagal Ginjal', 'Loss of appetite, Vomiting, Abdominal pain', 'Dr. Todd Hanson', '0000-00-00', '0000-00-00', 46079.00),
(115, 'Pamela Hill', '16/10/1974', '7507 Suzanne Shore, Gallagherhaven, AR 12213', '001-199-812-4733x09332', 'Flu', 'Vomiting, Headache, Swollen joints', 'Dr. Keith Miller', '0000-00-00', '0000-00-00', 38646.00),
(116, 'Tina Lamb', '12/07/1980', '0986 Katherine Hills, Martinezfurt, TX 57962', '709.991.0281x52243', 'Flu', 'High fever, Swollen joints, Skin rash, Abdominal pain', 'Dr. Roger Johnson', '0000-00-00', '0000-00-00', 49649.00),
(117, 'Daniel Cordova', '08/02/2003', '0196 Timothy Shores Suite 843, West Jesse, CA 89573', '794.653.5420', 'Asma', 'Nausea, Dizziness', 'Dr. Jason Franco', '0000-00-00', '0000-00-00', 28817.00),
(118, 'Richard Robbins', '27/12/1958', '23304 Christine Summit Apt. 535, Johnsonton, IN 92993', '854.050.9179x661', 'Flu', 'Abdominal pain, Headache, Dizziness, Blurred vision', 'Dr. Suzanne Anderson', '0000-00-00', '0000-00-00', 44950.00),
(119, 'Pamela Jones', '01/09/1961', '3873 Sherman Junction Apt. 056, Rothtown, FL 94999', '001-175-203-5403x74601', 'Bronkitis', 'Fatigue, Chest pain, Nausea', 'Dr. Abigail Rocha', '0000-00-00', '0000-00-00', 4816.00),
(120, 'Dale Burgess', '02/07/1938', '853 April Creek Apt. 276, Lake Dianaport, WI 60257', '+1-259-476-8136x2329', 'Flu', 'High fever, Shortness of breath, Swollen joints', 'Dr. Manuel Braun', '0000-00-00', '0000-00-00', 30231.00),
(121, 'Rachel Johnson', '09/09/1985', '3404 Stevenson Neck, New Josephfurt, VA 57033', '654-191-9148', 'Pneumonia', 'Skin rash, Shortness of breath, Fatigue, Chest pain', 'Dr. Christopher Campbell Jr.', '0000-00-00', '0000-00-00', 17619.00),
(122, 'Stephen Burke', '17/02/2022', '62950 Underwood Fields, Lake Justinberg, MA 16505', '(615)358-4829x92274', 'Gagal Ginjal', 'Loss of appetite, Chest pain', 'Dr. Dawn Harris', '0000-00-00', '0000-00-00', 42968.00),
(123, 'Emily Osborne', '26/09/1986', '56027 Sullivan Rapid, West Cassandra, NH 43233', '-8447', 'Tifus', 'Chest pain, Headache', 'Dr. Anne Hurley', '0000-00-00', '0000-00-00', 37537.00),
(124, 'Jordan Jones', '13/07/2019', '457 Stone Street Apt. 958, South Charles, NH 77265', '690.190.7050', 'Demam Berdarah', 'Swollen joints, Fatigue', 'Dr. Andrew Evans', '0000-00-00', '0000-00-00', 28304.00),
(125, 'Christopher Stein', '21/06/2006', '0614 Cassie Key Suite 932, Christianberg, MD 75555', '3804842977', 'Tifus', 'Swollen joints, High fever, Chest pain, Fatigue', 'Dr. Amy Torres', '0000-00-00', '0000-00-00', 43166.00),
(126, 'Lisa Terry', '23/11/1968', '4313 Michael Path Suite 349, West Laura, NH 09432', '644-110-5856x7546', 'Asma', 'Nausea, Dizziness, Chest pain', 'Dr. Abigail Morris', '0000-00-00', '0000-00-00', 25721.00),
(127, 'Rebecca Juarez', '02/01/1986', '9529 David Brooks, Smithfort, CA 59770', '001-291-624-1726x163', 'Hipertensi', 'Swollen joints, Abdominal pain', 'Dr. James Wilkins', '0000-00-00', '0000-00-00', 33631.00),
(128, 'James Lynch', '12/06/1941', '765 Garrett Circles Suite 110, New Daniel, IN 40154', '(831)680-4552x18925', 'Bronkitis', 'Nausea, Chest pain', 'Dr. Tracy Johnson', '0000-00-00', '0000-00-00', 1843.00),
(129, 'Ashley Richard', '07/08/2024', '4649 Terri Square, Maryberg, OH 58447', '+1-733-779-2304x88313', 'Flu', 'Nausea, Dizziness, Blurred vision', 'Dr. Vincent Murray', '0000-00-00', '0000-00-00', 44576.00),
(130, 'Margaret Wagner', '13/04/1976', '4232 Lin Station, Harrisbury, NY 61447', '135-872-4651', 'Flu', 'Severe coughing, High fever', 'Dr. Dennis Barry', '0000-00-00', '0000-00-00', 47791.00),
(131, 'Crystal Navarro', '08/10/1964', '52435 Rowe Station, Maryview, FL 11273', '001.432.4738x1191', 'Gagal Ginjal', 'High fever, Swollen joints, Shortness of breath, Skin rash', 'Dr. Kimberly Brown', '0000-00-00', '0000-00-00', 27363.00),
(132, 'Justin Richards', '28/09/1978', '647 Heather Ramp, Sherriland, OH 68837', '001-944-176-3621x93223', 'Asma', 'High fever, Abdominal pain, Severe coughing, Shortness of breath', 'Dr. Brandon Porter', '0000-00-00', '0000-00-00', 37298.00),
(133, 'Amy Walker', '30/01/1942', '67547 Strickland Drive, West James, ID 82964', '9577479260', 'Hipertensi', 'Loss of appetite, High fever', 'Dr. Rodney Burch', '0000-00-00', '0000-00-00', 36253.00),
(134, 'Mark Combs', '21/11/2009', '9063 Dennis Circle Suite 894, Jamesport, GA 16560', '(839)629-5249x0072', 'COVID-19', 'Swollen joints, Vomiting', 'Dr. Kimberly Orr', '0000-00-00', '0000-00-00', 23554.00),
(135, 'Lisa Jordan', '15/10/1974', '6122 Becker Lights, West Kirk, MT 41302', '114-271-3318x8267', 'Flu', 'Fatigue, Dizziness', 'Dr. Amanda Lewis', '0000-00-00', '0000-00-00', 8306.00),
(136, 'Charles Holt', '06/03/2004', '9333 Jimmy Dam, Lake Nicholas, NY 83036', '+1-875-257-7826x165', 'Flu', 'Loss of appetite, Shortness of breath, Chest pain', 'Dr. Daniel Davis', '0000-00-00', '0000-00-00', 38515.00),
(137, 'Brittany Greer', '09/06/1984', '08431 Jennifer Cliffs Suite 371, Nancyport, MI 18107', '(525)444-1158x628', 'Tifus', 'Vomiting, Headache, Dizziness', 'Dr. Justin Smith', '0000-00-00', '0000-00-00', 31766.00),
(138, 'Marcus Stevens', '18/04/1972', '01030 Reyes Place Apt. 901, Shawnside, MT 01741', '001-380-304-2320x24044', 'Hipertensi', 'Nausea, Vomiting, Shortness of breath', 'Dr. David Schwartz', '0000-00-00', '0000-00-00', 24258.00),
(139, 'Stephen Jones', '26/12/1964', '163 Christopher Knolls, West Kimberlyshire, DC 90679', '970.291.8258x257', 'Gagal Ginjal', 'Nausea, Fatigue, Blurred vision, Headache', 'Dr. Miss Cindy Jimenez', '0000-00-00', '0000-00-00', 39135.00),
(140, 'Heather Cabrera', '23/06/1991', '844 Berg Summit, Ronnieport, OR 96098', '+1-617-404-0232x94323', 'Bronkitis', 'Blurred vision, Headache, Abdominal pain, Vomiting', 'Dr. Kimberly Huffman', '0000-00-00', '0000-00-00', 20749.00),
(141, 'Robert Stone', '03/06/2006', '12372 Christine Valleys Apt. 572, Robinmouth, TN 19124', '-7752', 'Asma', 'High fever, Skin rash, Shortness of breath, Blurred vision', 'Dr. Aaron Casey', '0000-00-00', '0000-00-00', 48865.00),
(142, 'Jay Hansen', '05/12/1974', '02879 Jonathan Manor, Lake Joshua, MD 08354', '647-151-3085', 'Flu', 'Severe coughing, High fever', 'Dr. Latoya Hamilton', '0000-00-00', '0000-00-00', 19663.00),
(143, 'Angela Berg', '07/08/1937', '242 Joshua Park Apt. 769, South Jean, MT 20498', '465-171-4050', 'COVID-19', 'Chest pain, Loss of appetite, Fatigue, Shortness of breath', 'Dr. Jose Garner', '0000-00-00', '0000-00-00', 36286.00),
(144, 'Jeff Marquez', '15/07/2008', '7489 Carr Fields Apt. 646, East Jacob, PA 55736', '696-072-7676x6000', 'Diabetes', 'Chest pain, Loss of appetite, Fatigue', 'Dr. David Clark', '0000-00-00', '0000-00-00', 49602.00),
(145, 'Thomas Aguilar', '28/11/1943', '65487 Tate Junction Suite 482, Teresamouth, FL 74916', '(419)702-0271x07326', 'Flu', 'Fatigue, Headache, Abdominal pain, Blurred vision', 'Dr. Michelle Chan', '0000-00-00', '0000-00-00', 42627.00),
(146, 'Monica Fuller', '31/07/1940', '8619 Jones Meadow, Port Alyssafort, FL 22701', '(286)601-3570', 'Pneumonia', 'Abdominal pain, Loss of appetite, Headache, High fever', 'Dr. Lisa Smith', '0000-00-00', '0000-00-00', 6499.00),
(147, 'Danielle Aguilar', '31/05/1949', '901 Brandt Ramp Apt. 837, South Maryburgh, HI 30825', '037.905.9835', 'Demam Berdarah', 'Loss of appetite, Nausea', 'Dr. Joseph Nunez', '0000-00-00', '0000-00-00', 37127.00),
(148, 'Dawn Larson', '05/05/1946', '934 Henry Manor, East Calvinborough, DE 87071', '414.119.6983', 'Diabetes', 'Dizziness, Abdominal pain, Shortness of breath, Skin rash', 'Dr. Justin Gutierrez', '0000-00-00', '0000-00-00', 8380.00),
(149, 'Matthew Roberson', '19/11/2017', '457 Charles Cape, Smithport, PA 96402', '-6842', 'Demam Berdarah', 'Swollen joints, Chest pain, Nausea', 'Dr. Brenda Davis', '0000-00-00', '0000-00-00', 33052.00),
(150, 'Angela Rivera', '22/11/2000', '97740 Manuel Club, East Sarah, ND 10847', '(065)451-3032', 'Asma', 'Severe coughing, Blurred vision, Abdominal pain, Fatigue', 'Dr. Randy Hill', '0000-00-00', '0000-00-00', 42915.00),
(151, 'William Andrade', '26/06/2003', '805 Deborah Parkway, Port Lynn, NM 08762', '001-202-773-2476', 'Flu', 'Shortness of breath, Dizziness, Blurred vision', 'Dr. Matthew Lee', '0000-00-00', '0000-00-00', 6448.00),
(152, 'Mr. Dale Ellis', '13/02/1990', '56331 Olson Junctions, West Brucechester, VT 33973', '039.801.3146x85707', 'Demam Berdarah', 'Vomiting, Loss of appetite, Swollen joints, Fatigue', 'Dr. Haley Briggs', '0000-00-00', '0000-00-00', 1824.00),
(153, 'Francisco Watson', '26/03/1936', '67029 Nelson Island, Lake Stephanie, ME 83973', '538.214.8680x85210', 'Flu', 'Loss of appetite, Skin rash', 'Dr. Carolyn Obrien MD', '0000-00-00', '0000-00-00', 15595.00),
(154, 'Alan Cox', '19/06/1979', '90222 Atkinson Place, Sarahside, DE 76453', '001-477-512-4313x24719', 'Bronkitis', 'Loss of appetite, Dizziness, Blurred vision, Shortness of breath', 'Dr. Matthew Castillo', '0000-00-00', '0000-00-00', 34018.00),
(155, 'Eric Lewis', '11/04/1935', '055 Carroll Underpass Apt. 721, Sandraside, NJ 99466', '(591)328-5179', 'Gagal Ginjal', 'Fatigue, Severe coughing, Vomiting', 'Dr. Sherry White', '0000-00-00', '0000-00-00', 3103.00),
(156, 'Deanna Miller', '17/12/2016', '131 Williams Street, West Alexandriaberg, AK 97622', '931.474.0222x86562', 'Diabetes', 'Abdominal pain, Blurred vision, Shortness of breath', 'Dr. Heather Coleman', '0000-00-00', '0000-00-00', 39525.00),
(157, 'Jeanette Meyers', '14/12/2021', '7544 Williams Road, New Matthewchester, WI 33037', '(625)149-9197', 'Bronkitis', 'Dizziness, Severe coughing', 'Dr. Michael Gordon', '0000-00-00', '0000-00-00', 47794.00),
(158, 'Amanda Sanchez', '18/04/1942', '41638 Craig Estate Apt. 334, East Timothybury, MO 18141', '9356851562', 'Asma', 'Nausea, Abdominal pain, Loss of appetite, Swollen joints', 'Dr. Evan Clay', '0000-00-00', '0000-00-00', 5670.00),
(159, 'Lisa Kennedy', '17/01/1942', '2910 Laura Shores Suite 942, Charleston, IA 84044', '120.156.4576', 'Tifus', 'Abdominal pain, Vomiting, Nausea', 'Dr. Lisa Ponce', '0000-00-00', '0000-00-00', 44826.00),
(160, 'Kevin Sanders', '11/11/1955', '47365 Anderson Fall, Stanleybury, PA 02401', '+1-187-256-9785x28190', 'Asma', 'Loss of appetite, Shortness of breath, Blurred vision, High fever', 'Dr. Heidi Roberson DVM', '0000-00-00', '0000-00-00', 30564.00),
(161, 'Shawn Townsend', '13/06/1964', '00657 Michael Light Suite 419, East Markstad, MA 37219', '9456045062', 'Bronkitis', 'Skin rash, Dizziness, Blurred vision, Abdominal pain', 'Dr. Laura Singleton', '0000-00-00', '0000-00-00', 24342.00),
(162, 'Mark Carroll', '18/09/2011', '99215 Howell Views Suite 995, Lake Bobbyburgh, UT 87735', '277685901', 'Flu', 'Vomiting, Headache, Skin rash', 'Dr. Brenda Casey', '0000-00-00', '0000-00-00', 13013.00),
(163, 'Christopher Johnson', '14/02/1963', '858 Jennifer Turnpike Apt. 085, North Brittany, KY 22322', '001-483-514-0956', 'Diabetes', 'Chest pain, Nausea, Headache', 'Dr. Jonathan Knapp', '0000-00-00', '0000-00-00', 41237.00),
(164, 'Amy Hopkins', '07/08/1968', '73335 Hansen Burg Suite 343, Kyletown, FL 48509', '001-839-077-6030', 'Hipertensi', 'Blurred vision, Vomiting, Loss of appetite', 'Dr. Matthew Gonzalez', '0000-00-00', '0000-00-00', 47230.00),
(165, 'Joseph Burke', '20/07/2018', '772 Larry Lake, New Thomasland, MI 97812', '498.959.0834', 'Asma', 'Skin rash, Dizziness', 'Dr. Thomas Hill', '0000-00-00', '0000-00-00', 34989.00),
(166, 'Lisa Williams', '15/02/1997', '16139 Kenneth Isle Suite 682, West Deborahbury, TX 64955', '(380)100-9239', 'Bronkitis', 'Skin rash, Loss of appetite, Blurred vision', 'Dr. Scott Bell', '0000-00-00', '0000-00-00', 9163.00),
(167, 'Erik White', '04/09/1999', '80468 Tara Wells, South Kevin, IA 03652', '(198)585-3233x007', 'Diabetes', 'Blurred vision, Headache', 'Dr. Ethan Jones', '0000-00-00', '0000-00-00', 7684.00),
(168, 'Jonathan Harris', '16/12/2018', '0214 Ashley Canyon, Port Robertborough, MO 60978', '001-266-868-6853x237', 'Tifus', 'Severe coughing, Shortness of breath', 'Dr. Anthony Gomez', '0000-00-00', '0000-00-00', 11881.00),
(169, 'Steven Fox', '17/02/2023', '645 James Ways, East Michelleville, MO 51530', '+1-665-474-7584x172', 'Gagal Ginjal', 'Headache, Fatigue, Swollen joints', 'Dr. Richard Bond', '0000-00-00', '0000-00-00', 33861.00),
(170, 'Tanya Aguilar', '13/01/1958', '90940 Michelle Lake Suite 722, Port Ian, WI 40825', '947-770-0103x9425', 'Diabetes', 'Blurred vision, Skin rash', 'Dr. James Graham', '0000-00-00', '0000-00-00', 35339.00),
(171, 'Tiffany Rodriguez', '16/02/2011', '2560 Pacheco Underpass Apt. 181, Lopezbury, MT 74995', '(398)676-9627', 'Tifus', 'Shortness of breath, Dizziness', 'Dr. Jennifer Sweeney', '0000-00-00', '0000-00-00', 32731.00),
(172, 'Allison Williams', '18/01/1994', '337 Stephanie Key, South Paul, TN 79980', '+1-898-711-8629x3360', 'Tifus', 'Headache, Shortness of breath, Nausea', 'Dr. Jill Gutierrez', '0000-00-00', '0000-00-00', 42549.00),
(173, 'Christopher Sims', '23/01/1974', '21878 Noble Courts, Greenhaven, KS 89890', '754-608-3770x774', 'Flu', 'Vomiting, Shortness of breath', 'Dr. Stephanie Jones', '0000-00-00', '0000-00-00', 42980.00),
(174, 'Kevin Stevens', '20/08/2020', '996 Andrew Circle, South Joyce, MD 72049', '(243)183-1883', 'Asma', 'Nausea, Severe coughing, Headache, Abdominal pain', 'Dr. Jermaine Simpson', '0000-00-00', '0000-00-00', 1691.00),
(175, 'Craig Moore', '31/01/1937', '631 Nicole Place, Danielstad, NY 82078', '001-607-524-4927x306', 'Hipertensi', 'High fever, Blurred vision, Severe coughing', 'Dr. Joseph King', '0000-00-00', '0000-00-00', 27071.00),
(176, 'Crystal Cabrera', '07/11/1973', '824 Michael Pike, Tracybury, MI 31783', '001-628-492-5922x920', 'Asma', 'Blurred vision, Swollen joints, Skin rash', 'Dr. Catherine Hernandez', '0000-00-00', '0000-00-00', 24540.00),
(177, 'John Ferguson', '28/09/1955', '47010 Rollins Brooks, East Jonathanborough, ID 91909', '121.603.1042', 'Flu', 'Nausea, Fatigue, Swollen joints, Blurred vision', 'Dr. Ashley Johnson', '0000-00-00', '0000-00-00', 10040.00),
(178, 'Amy Reyes', '01/01/1957', '7149 Cummings Square, Browntown, NY 41240', '(817)150-7440', 'Flu', 'Fatigue, Skin rash, Nausea', 'Dr. Ronald Mitchell', '0000-00-00', '0000-00-00', 6390.00),
(179, 'Sarah Brown', '31/08/2016', '018 Lisa Brooks, Port Rachaelhaven, CO 86853', '(673)256-3742', 'COVID-19', 'Swollen joints, Shortness of breath, High fever', 'Dr. Matthew Nicholson', '0000-00-00', '0000-00-00', 25199.00),
(180, 'Erin Carroll', '21/08/1990', '11460 Bruce Ridges Apt. 374, New Scott, SC 23279', '160.548.8725', 'Asma', 'Severe coughing, Skin rash, Shortness of breath, Blurred vision', 'Dr. Roy Bauer Jr.', '0000-00-00', '0000-00-00', 20779.00),
(181, 'Denise Tapia', '23/02/1960', '771 Lisa Well, Schneiderberg, MA 44776', '009-255-7679', 'Diabetes', 'Loss of appetite, Nausea, Swollen joints', 'Dr. Robert Green', '0000-00-00', '0000-00-00', 45049.00),
(182, 'Michele Perez', '03/09/1977', '883 Jackson Crescent, Thomasville, WA 48821', '(275)543-6339', 'Diabetes', 'Nausea, High fever, Dizziness', 'Dr. Marcus Moreno', '0000-00-00', '0000-00-00', 18966.00),
(183, 'William Williams', '26/12/1937', '822 Kimberly Island Suite 281, Eileenfort, MN 72577', '(363)610-9004x843', 'Pneumonia', 'Swollen joints, Shortness of breath, Vomiting, Chest pain', 'Dr. Meghan Mccall MD', '0000-00-00', '0000-00-00', 49508.00),
(184, 'Carol Merritt', '11/05/1986', '6011 Ryan Land, South Jason, KS 96793', '372.179.0128x66509', 'Asma', 'Vomiting, Headache', 'Dr. Lori Arnold', '0000-00-00', '0000-00-00', 17283.00),
(185, 'Michael Brown', '09/06/1973', '3298 Williams Greens, West Richard, FL 14227', '663-385-1488', 'Tifus', 'High fever, Nausea, Abdominal pain, Dizziness', 'Dr. Larry Young', '0000-00-00', '0000-00-00', 36273.00),
(186, 'Christina Smith', '19/07/1952', '852 Andrea Via, Coryview, MD 88778', '6871953805', 'Pneumonia', 'Shortness of breath, Abdominal pain, Headache, Loss of appetite', 'Dr. Mr. Ian Vang MD', '0000-00-00', '0000-00-00', 25814.00),
(187, 'Amy Hicks', '02/08/1962', '3509 Davis Square, Kathyborough, DE 88355', '7766709846', 'Tifus', 'Dizziness, Abdominal pain', 'Dr. Glenn Hanson', '0000-00-00', '0000-00-00', 48530.00),
(188, 'Jeffrey Murray', '08/11/2023', '667 Taylor Walks Apt. 741, Lake Williamshire, IN 19892', '(400)232-3133x2738', 'Demam Berdarah', 'Chest pain, Vomiting, High fever', 'Dr. Danielle Marshall', '0000-00-00', '0000-00-00', 8846.00),
(189, 'John Oconnor', '17/08/2021', '38467 Williams Mountains Apt. 470, Melissabury, AL 27229', '(590)498-3016', 'Gagal Ginjal', 'Skin rash, High fever, Shortness of breath', 'Dr. John Garza', '0000-00-00', '0000-00-00', 10682.00),
(190, 'Dakota Palmer', '14/03/2018', '3353 Paula Radial, Port Andreafort, NM 70442', '(555)009-4598', 'Gagal Ginjal', 'Chest pain, Swollen joints', 'Dr. Amanda Ruiz', '0000-00-00', '0000-00-00', 40126.00),
(191, 'Allison Aguilar', '25/08/1988', '73686 Gabrielle Trafficway, Veronicaside, WY 97679', '001-122-129-3566', 'Flu', 'Abdominal pain, Shortness of breath', 'Dr. Daniel Clark', '0000-00-00', '0000-00-00', 17801.00),
(192, 'Sheryl Rosales', '04/01/1973', '29638 Terrell Summit, North Caleb, DE 60337', '730-674-8942', 'Asma', 'Blurred vision, Loss of appetite, Swollen joints', 'Dr. Robert Downs', '0000-00-00', '0000-00-00', 44527.00),
(193, 'Anthony Cruz', '30/12/1970', '7322 Amy Plaza, North James, IN 46190', '(865)039-7157x553', 'Pneumonia', 'Dizziness, High fever, Headache, Loss of appetite', 'Dr. David Stevenson', '0000-00-00', '0000-00-00', 1995.00),
(194, 'Billy Clark', '15/07/1946', '436 Kristina Hills, Priceton, LA 18656', '890.839.8701', 'COVID-19', 'Skin rash, Severe coughing', 'Dr. Phillip Riddle', '0000-00-00', '0000-00-00', 42426.00),
(195, 'Yolanda Peters', '22/05/1996', '86559 Steven Well, West Kristinaport, WA 42900', '001-252-363-7368', 'Tifus', 'Dizziness, Headache, Shortness of breath', 'Dr. Shane Gonzalez', '0000-00-00', '0000-00-00', 40841.00),
(196, 'Anne Johnson', '20/12/1937', '470 Lewis Landing, Robertshire, MN 22879', '823-905-4156', 'Pneumonia', 'Vomiting, Abdominal pain, Dizziness, Shortness of breath', 'Dr. Noah Terry', '0000-00-00', '0000-00-00', 28416.00),
(197, 'Stephanie Johnson', '19/08/2017', '7262 Victoria Plaza, Forbeschester, MI 34560', '914-157-6472x75678', 'Bronkitis', 'Chest pain, Loss of appetite, Headache', 'Dr. Susan Johnson', '0000-00-00', '0000-00-00', 5805.00),
(198, 'Vanessa Martin', '25/04/1984', '2321 Brittany Tunnel Apt. 394, South Emilymouth, ND 04764', '963.283.4183', 'Tifus', 'Shortness of breath, Loss of appetite, Dizziness, Swollen joints', 'Dr. Melissa Bennett', '0000-00-00', '0000-00-00', 36397.00),
(199, 'Shawn Gray', '05/08/2013', '178 Bradley Mews Apt. 598, Tinastad, MT 78659', '717.741.6816x8471', 'Tifus', 'Skin rash, Vomiting', 'Dr. Deborah Parks', '0000-00-00', '0000-00-00', 49789.00),
(200, 'Lindsey Miles', '26/09/1999', '888 Taylor Spurs, Timothyton, MN 65365', '(376)674-1491x43201', 'Flu', 'Loss of appetite, Blurred vision, Headache, Vomiting', 'Dr. Emily Jackson', '0000-00-00', '0000-00-00', 17280.00),
(201, 'Ruth Meza', '03/05/1939', '851 Vasquez Rapid Suite 675, Gonzalezview, KY 84902', '(532)512-8379x2881', 'Flu', 'Swollen joints, Skin rash', 'Dr. Michael Newman', '0000-00-00', '0000-00-00', 48060.00),
(202, 'Valerie Harris', '07/11/1963', '8246 Megan Roads Suite 767, Mendezfort, MT 27945', '757-528-9190x7772', 'Flu', 'Skin rash, Loss of appetite', 'Dr. Justin Williams', '0000-00-00', '0000-00-00', 47785.00),
(203, 'Nathaniel Hernandez', '04/11/1934', '202 Jackson Plaza, New Jeffery, RI 04314', '(370)953-2612', 'COVID-19', 'Blurred vision, High fever', 'Dr. Paul Rangel', '0000-00-00', '0000-00-00', 21060.00),
(204, 'John Perez', '08/06/2011', '303 James Locks Suite 470, West Ericafurt, NH 80728', '(438)341-1915x921', 'Hipertensi', 'Nausea, Dizziness, Shortness of breath, Chest pain', 'Dr. David Stuart', '0000-00-00', '0000-00-00', 25521.00),
(205, 'Gail Flynn', '01/05/2015', '1045 Joshua Viaduct, Charleneton, HI 26045', '765-814-3212', 'Tifus', 'Skin rash, Shortness of breath, Severe coughing', 'Dr. Gordon Trevino', '0000-00-00', '0000-00-00', 23954.00),
(206, 'Erica Mccall', '12/10/1972', '6401 Derek Walk, North Rita, LA 57494', '(405)809-6159', 'Hipertensi', 'High fever, Loss of appetite, Abdominal pain, Swollen joints', 'Dr. George Fernandez', '0000-00-00', '0000-00-00', 46423.00),
(207, 'Mary Smith', '05/12/1993', '3674 Cole Tunnel Apt. 372, Brooksland, NJ 42601', '426.569.3864x25653', 'Bronkitis', 'Fatigue, Nausea, Severe coughing', 'Dr. Sarah Johnson', '0000-00-00', '0000-00-00', 23277.00),
(208, 'Carol Cole', '03/11/1940', '23590 Anthony Lake, New Jerryport, IA 65632', '(751)259-1273', 'Asma', 'Vomiting, Shortness of breath, Loss of appetite', 'Dr. Steven Padilla', '0000-00-00', '0000-00-00', 1797.00),
(209, 'Deborah Anderson', '03/07/1946', '071 John Mountains, South Stephaniefurt, ND 40320', '001-257-858-0568x35118', 'Demam Berdarah', 'Skin rash, Nausea, Headache', 'Dr. Mark Gregory', '0000-00-00', '0000-00-00', 23645.00),
(210, 'Eduardo Hart', '24/02/2019', '7485 Hanson Park Apt. 607, Arnoldchester, WV 14679', '473-081-8100x14569', 'Pneumonia', 'Swollen joints, Severe coughing, High fever', 'Dr. Hannah Flowers', '0000-00-00', '0000-00-00', 18011.00),
(211, 'Mary Fox', '11/11/2010', '94313 Kathryn Mission Apt. 978, Leslieland, ME 27238', '268-617-2800x23498', 'Asma', 'Abdominal pain, Fatigue, Shortness of breath', 'Dr. Kristine Rodriguez', '0000-00-00', '0000-00-00', 13652.00),
(212, 'John Obrien', '21/04/1967', '114 Zachary Ridge, Edwinbury, CT 46921', '013-495-3435x214', 'Flu', 'Headache, Severe coughing, Vomiting', 'Dr. Tracy Miller', '0000-00-00', '0000-00-00', 42670.00),
(213, 'Scott Jenkins', '24/08/1998', '9841 Paul Inlet, Ericaton, NM 58916', '(912)175-4604x11751', 'Gagal Ginjal', 'Nausea, Skin rash, High fever', 'Dr. Ashley Cummings', '0000-00-00', '0000-00-00', 19563.00),
(214, 'Sarah Smith', '07/12/2021', '0270 John Falls, South Andreview, IA 59110', '(816)167-1106', 'Bronkitis', 'Dizziness, Blurred vision', 'Dr. Wanda Lyons', '0000-00-00', '0000-00-00', 2810.00),
(215, 'Bryan Riggs', '02/04/1952', '47449 Lewis Isle, New Victoriaburgh, DE 84124', '909-425-6763x33109', 'Diabetes', 'Chest pain, Fatigue, Vomiting', 'Dr. Matthew Petersen', '0000-00-00', '0000-00-00', 4030.00),
(216, 'Tammy Ellis', '12/10/1949', '9405 Marks Mews, Hancockfort, MI 91303', '304-710-1620x20033', 'Tifus', 'Fatigue, High fever, Blurred vision, Dizziness', 'Dr. Caitlin Cruz', '0000-00-00', '0000-00-00', 38480.00),
(217, 'Stefanie Carter', '24/03/1966', '21982 Burgess Creek, Michaelburgh, RI 50842', '001-124-436-7642x836', 'Flu', 'Chest pain, Shortness of breath', 'Dr. Mary Chen', '0000-00-00', '0000-00-00', 39531.00),
(218, 'Courtney Johnson', '17/03/1949', '152 Debra Courts, East Tamara, TX 50199', '899-800-7077x9402', 'COVID-19', 'Dizziness, Fatigue', 'Dr. Barbara Hall', '0000-00-00', '0000-00-00', 31540.00),
(219, 'Elizabeth Reyes', '20/11/1980', '9734 Byrd Brook, Lake Maryhaven, MT 67250', '(623)125-6541x70709', 'Bronkitis', 'Loss of appetite, Blurred vision, Swollen joints', 'Dr. Shane Mcguire', '0000-00-00', '0000-00-00', 24422.00),
(220, 'Jared Perez', '27/09/2004', '623 Miller Spurs, West Rebeccaview, ID 12649', '822-893-6974x0217', 'Asma', 'Vomiting, Chest pain, Nausea, Blurred vision', 'Dr. Miss Pamela Murray', '0000-00-00', '0000-00-00', 35398.00),
(221, 'Dylan Reed', '25/10/1972', '212 Loretta Trail, Susanville, MN 21907', '+1-275-963-9634x904', 'Asma', 'Swollen joints, Loss of appetite, Vomiting, Severe coughing', 'Dr. Anna Melton', '0000-00-00', '0000-00-00', 39777.00),
(222, 'Dawn Mccarty', '06/10/2000', '591 Martin Forest Suite 271, Harrisfort, UT 10606', '+1-829-931-6242x59059', 'Hipertensi', 'Chest pain, Fatigue, Swollen joints', 'Dr. Randy Campbell', '0000-00-00', '0000-00-00', 34549.00),
(223, 'Brandon Smith', '06/03/2021', '7580 Jones Hills Apt. 802, Lake Kristen, VT 41503', '+1-754-746-5791x58153', 'Tifus', 'Shortness of breath, Fatigue', 'Dr. Amy Torres', '0000-00-00', '0000-00-00', 12955.00),
(224, 'James Villanueva', '02/11/1986', '24841 Jonathan Garden Suite 675, Saraport, AL 83089', '140.349.5113x285', 'Gagal Ginjal', 'Abdominal pain, Blurred vision', 'Dr. April Clark', '0000-00-00', '0000-00-00', 16004.00),
(225, 'Rachel Smith', '29/03/1952', '04229 Owen Cliffs, Kimberlybury, AK 61337', '652-500-2017x30643', 'Pneumonia', 'Abdominal pain, Severe coughing, Swollen joints, High fever', 'Dr. Jesse Wilson', '0000-00-00', '0000-00-00', 35160.00),
(226, 'Crystal Ferguson', '28/06/1945', '88433 Courtney Well Suite 520, Lake Jessica, IL 30137', '(286)950-1026x276', 'Diabetes', 'Dizziness, Abdominal pain', 'Dr. Phillip Jackson', '0000-00-00', '0000-00-00', 10385.00),
(227, 'Anna Escobar', '03/04/2012', '17778 Kimberly Overpass Suite 704, Lake Jennifer, MA 79896', '001-399-243-7603x485', 'Flu', 'Abdominal pain, Skin rash, Chest pain, Shortness of breath', 'Dr. Alexis Roberts', '0000-00-00', '0000-00-00', 47137.00);
INSERT INTO `patients` (`id`, `nama_pasien`, `tanggal_lahir`, `alamat`, `nomor_telepon`, `diagnosa`, `gejala`, `dokter_penanggung_jawab`, `tanggal_masuk`, `tanggal_keluar`, `biaya_perawatan`) VALUES
(228, 'Martin Khan', '01/08/1950', '88827 Kelly Mill Apt. 139, Willismouth, MS 72519', '778-727-7324x6758', 'Diabetes', 'Dizziness, Skin rash, Nausea', 'Dr. Tina Flores', '0000-00-00', '0000-00-00', 22063.00),
(229, 'Teresa James', '21/09/2016', '50161 Jones Harbors, New Claudia, CA 56468', '001-401-660-2092x27657', 'Demam Berdarah', 'Loss of appetite, Skin rash, Headache', 'Dr. Amy Olsen', '0000-00-00', '0000-00-00', 20242.00),
(230, 'John Graham', '25/01/1996', '38773 Smith Plain Apt. 833, Sanchezmouth, AZ 05706', '196.266.1902', 'Diabetes', 'Headache, Blurred vision, Nausea', 'Dr. Judith Edwards', '0000-00-00', '0000-00-00', 22530.00),
(231, 'Heather Burgess', '02/08/1962', '136 David Stravenue Suite 469, West William, DC 57336', '(011)085-3068', 'Pneumonia', 'Vomiting, Dizziness, Skin rash', 'Dr. Jeremy Monroe', '0000-00-00', '0000-00-00', 33616.00),
(232, 'Dawn Harmon', '24/04/1972', '560 Williams Ville Apt. 512, Port Michael, NE 93108', '(422)498-8484', 'Pneumonia', 'Blurred vision, Fatigue, Shortness of breath', 'Dr. Frank Bryan', '0000-00-00', '0000-00-00', 34689.00),
(233, 'Elizabeth Glover', '19/05/1951', '474 Pamela Station Suite 175, Matthewstad, CT 56592', '955-121-7849x39886', 'Gagal Ginjal', 'Fatigue, Severe coughing, Loss of appetite, Skin rash', 'Dr. Lindsay Norton', '0000-00-00', '0000-00-00', 24032.00),
(234, 'Eddie Collins', '19/05/1992', '5713 Kathleen Lodge, East Lynnside, AZ 04547', '164.027.6404x5298', 'Asma', 'Dizziness, Vomiting, Swollen joints, Headache', 'Dr. Carmen Swanson', '0000-00-00', '0000-00-00', 4454.00),
(235, 'Paul Archer', '15/10/1976', '8019 Wells Prairie Apt. 322, Annettebury, NM 64852', '(717)101-0743x68896', 'Pneumonia', 'Abdominal pain, Swollen joints, Nausea, Fatigue', 'Dr. Earl Jennings', '0000-00-00', '0000-00-00', 19320.00),
(236, 'Sarah Davis', '01/03/1960', '70216 Allen Plains Suite 981, West Davidshire, MT 60155', '762-733-9398x15207', 'Bronkitis', 'Blurred vision, High fever, Vomiting', 'Dr. Emma Griffin', '0000-00-00', '0000-00-00', 48326.00),
(237, 'Laura White', '02/07/1950', '56468 Sanders Place Apt. 357, South Jason, OK 86596', '748-973-7246', 'Diabetes', 'Shortness of breath, Loss of appetite, High fever, Skin rash', 'Dr. Johnny Cochran', '0000-00-00', '0000-00-00', 37128.00),
(238, 'Ruth Frost', '27/01/1994', '2403 Paul Drive Suite 992, East Taylor, MD 36930', '6163565205', 'Flu', 'Blurred vision, Shortness of breath', 'Dr. Raven Yu', '0000-00-00', '0000-00-00', 44712.00),
(239, 'Holly Harris', '13/10/1940', '78496 Reed Motorway Apt. 242, Karenland, DE 38319', '-1186', 'Pneumonia', 'Skin rash, Headache, Fatigue', 'Dr. Hayley Hamilton', '0000-00-00', '0000-00-00', 18575.00),
(240, 'Cody Barrera', '06/07/1973', '25360 Taylor Station, South Jamesmouth, WI 60210', '912-968-0093x3043', 'Bronkitis', 'Abdominal pain, Skin rash, Vomiting, Severe coughing', 'Dr. Sheila Hall', '0000-00-00', '0000-00-00', 4917.00),
(241, 'Jessica Green', '29/10/2022', '797 Caroline Islands, Lake Joyce, IA 57212', '(554)151-9695', 'Hipertensi', 'Fatigue, Shortness of breath, Chest pain', 'Dr. Thomas Cole', '0000-00-00', '0000-00-00', 15667.00),
(242, 'Nicholas Stephens', '11/07/1938', '93114 Matthew Drives Apt. 982, Jamesstad, AK 31769', '2128388289', 'Hipertensi', 'Shortness of breath, High fever, Chest pain, Swollen joints', 'Dr. Adam Wagner', '0000-00-00', '0000-00-00', 26905.00),
(243, 'William Rivera', '29/09/1950', '7414 Marquez Overpass, New Alanstad, RI 20943', '022-528-2808x59713', 'Demam Berdarah', 'Loss of appetite, Skin rash, Fatigue', 'Dr. Audrey Kelly', '0000-00-00', '0000-00-00', 38719.00),
(244, 'Thomas Santiago', '27/02/1993', '3601 Love Knolls Suite 588, South Shellyfurt, ME 61891', '378.347.9200x774', 'Hipertensi', 'Headache, Blurred vision, Nausea', 'Dr. Jeffrey Davis', '0000-00-00', '0000-00-00', 38928.00),
(245, 'Samuel Benton', '14/10/2009', '588 Sarah Squares Apt. 966, Jasonmouth, NH 62753', '(756)240-5720x821', 'COVID-19', 'Loss of appetite, Skin rash, Swollen joints, Dizziness', 'Dr. Nicholas Hays', '0000-00-00', '0000-00-00', 22036.00),
(246, 'Donna Nguyen', '05/12/1994', '4013 Brittany Expressway, Evansville, NM 49494', '526-837-7681', 'Bronkitis', 'Dizziness, Vomiting', 'Dr. Anthony Fuentes', '0000-00-00', '0000-00-00', 39567.00),
(247, 'Hannah Keith', '01/03/1996', '197 Norris Brooks, South Audrey, MS 29065', '7628663226', 'Diabetes', 'Shortness of breath, Loss of appetite, Abdominal pain', 'Dr. Sylvia Williamson', '0000-00-00', '0000-00-00', 29024.00),
(248, 'Jennifer Holmes', '06/02/1980', '15522 Compton Corners Apt. 432, Lake Julie, NE 04712', '720.596.9658', 'Demam Berdarah', 'Fatigue, Headache', 'Dr. Ashley Parks', '0000-00-00', '0000-00-00', 35004.00),
(249, 'Stephanie Collier', '21/08/1976', '285 Jennifer Camp Suite 807, East Angela, ID 09847', '(545)611-7332', 'Gagal Ginjal', 'Chest pain, Headache, Skin rash', 'Dr. Julia Smith', '0000-00-00', '0000-00-00', 29936.00),
(250, 'Amber Ryan', '30/11/1943', '1792 Jonathan Alley Apt. 266, Lake Matthewmouth, PA 17402', '426-914-8994', 'Gagal Ginjal', 'Vomiting, Loss of appetite, Headache, Blurred vision', 'Dr. Bethany Rich', '0000-00-00', '0000-00-00', 48214.00),
(251, 'Danielle Green', '02/02/1961', '8448 Ashley Expressway, South Angela, WA 13737', '(717)348-4000', 'Flu', 'Abdominal pain, Loss of appetite', 'Dr. Jerry Carr', '0000-00-00', '0000-00-00', 8791.00),
(252, 'Stacey Hensley', '24/01/1959', '5344 Amanda Run, Andersonville, MT 16062', '7976731093', 'Tifus', 'Dizziness, High fever, Vomiting', 'Dr. Seth Williams', '0000-00-00', '0000-00-00', 32447.00),
(253, 'Rebecca Stevens', '09/03/1964', '357 Joseph Viaduct, East Loristad, NH 33826', '001-138-026-2614x373', 'Gagal Ginjal', 'Headache, Severe coughing', 'Dr. Jennifer Simpson', '0000-00-00', '0000-00-00', 42497.00),
(254, 'Dawn Garza', '09/05/2016', '672 Anthony Ford Apt. 728, Smithstad, NE 08870', '001-046-673-5940', 'Gagal Ginjal', 'Vomiting, Headache, High fever', 'Dr. Heather Williams', '0000-00-00', '0000-00-00', 20216.00),
(255, 'Todd Bauer', '10/03/1986', '624 Osborne Glens Apt. 779, East Linda, MN 41607', '001-824-396-8833', 'Demam Berdarah', 'Headache, High fever, Nausea', 'Dr. Roberto Sanchez', '0000-00-00', '0000-00-00', 25368.00),
(256, 'Amy Barnes', '29/11/1997', '054 Scott Island, Calebmouth, NY 29787', '839-481-5412', 'Bronkitis', 'Severe coughing, Blurred vision', 'Dr. Rebecca Le', '0000-00-00', '0000-00-00', 26934.00),
(257, 'Tiffany Shaffer', '05/06/2007', '6975 Rodriguez Port, Kyleborough, ND 91098', '+1-551-280-7753x707', 'Gagal Ginjal', 'Swollen joints, Chest pain', 'Dr. Amy Jennings', '0000-00-00', '0000-00-00', 14433.00),
(258, 'James Brewer', '13/11/2013', '576 Daniel Park, East Tanyaville, AR 06603', '(652)041-6706x0626', 'Asma', 'Skin rash, Headache, Dizziness', 'Dr. Isabella Green', '0000-00-00', '0000-00-00', 15002.00),
(259, 'Jeffrey Winters', '17/08/2013', '3645 Dominguez Land, West Vanessa, MO 39446', '-8956', 'Gagal Ginjal', 'Dizziness, Abdominal pain, Severe coughing', 'Dr. Christina Brown', '0000-00-00', '0000-00-00', 37859.00),
(260, 'Ashley Glass', '29/07/2014', '7325 Shaw Ford, West Ruth, IA 44476', '8164673400', 'Hipertensi', 'Vomiting, Abdominal pain, Skin rash, Loss of appetite', 'Dr. Timothy White', '0000-00-00', '0000-00-00', 4011.00),
(261, 'Joshua Cunningham', '08/12/1965', '8292 Michelle Meadows, Barnetttown, CT 16430', '5988406167', 'Pneumonia', 'Dizziness, Severe coughing', 'Dr. Roger Dixon', '0000-00-00', '0000-00-00', 19567.00),
(262, 'Suzanne Lucas', '09/01/1944', '138 Smith Viaduct Apt. 971, Lake Sandraport, NC 08341', '(376)006-7757x7152', 'Flu', 'Loss of appetite, Skin rash, High fever, Blurred vision', 'Dr. Gail Duke', '0000-00-00', '0000-00-00', 34088.00),
(263, 'Brandi James', '15/02/1954', '5907 Michael Tunnel, Lake Diana, IN 17374', '001-234-355-5051x71225', 'Diabetes', 'High fever, Blurred vision, Fatigue, Swollen joints', 'Dr. Daniel Beck', '0000-00-00', '0000-00-00', 34462.00),
(264, 'Marissa Williams', '04/01/1954', '1087 Linda Divide Suite 952, Michaelborough, IL 28348', '729-086-4265', 'Demam Berdarah', 'Shortness of breath, Severe coughing', 'Dr. Olivia Alvarez', '0000-00-00', '0000-00-00', 35401.00),
(265, 'Jennifer Stevens', '26/11/1962', '809 Zamora Underpass Suite 471, East Tyroneport, OH 08551', '001-996-200-4127', 'Flu', 'Headache, High fever, Loss of appetite', 'Dr. Patrick Austin', '0000-00-00', '0000-00-00', 46910.00),
(266, 'Steven Page', '26/02/1963', '103 Ashley Locks Suite 659, Smithberg, MN 33435', '001-767-883-4181x83324', 'Tifus', 'Loss of appetite, Shortness of breath', 'Dr. Katherine Shelton', '0000-00-00', '0000-00-00', 25552.00),
(267, 'Lindsay Owens', '19/09/1958', '571 Moore Mountains Suite 536, Kathleenshire, WI 70347', '380.672.2410x3170', 'Bronkitis', 'Severe coughing, Chest pain', 'Dr. Joshua Smith', '0000-00-00', '0000-00-00', 8963.00),
(268, 'Stephen Fox', '22/07/1946', '9293 David Circle Suite 012, Coxfurt, IA 66507', '(470)948-3337x306', 'Tifus', 'Vomiting, Blurred vision, Skin rash', 'Dr. Alexander Curtis', '0000-00-00', '0000-00-00', 8335.00),
(269, 'Rebecca Mclaughlin', '23/02/1969', '41770 Griffin Orchard Suite 161, Port Christopher, DC 77262', '830.869.6172x20272', 'Gagal Ginjal', 'Headache, Abdominal pain, High fever, Fatigue', 'Dr. Jennifer Hancock', '0000-00-00', '0000-00-00', 6531.00),
(270, 'Daniel Paul', '27/08/2013', '9130 Stewart Locks Suite 211, Port Katie, CO 85365', '(668)093-8525', 'Bronkitis', 'Vomiting, Swollen joints, Abdominal pain', 'Dr. Andrew Miller', '0000-00-00', '0000-00-00', 49437.00),
(271, 'Corey Ellis', '06/06/2002', '24713 Harrell Spurs Suite 757, Lake Charles, WA 38006', '+1-660-411-3477x6824', 'COVID-19', 'Shortness of breath, Loss of appetite, Vomiting', 'Dr. Emily Hall', '0000-00-00', '0000-00-00', 27904.00),
(272, 'Marissa Campbell', '05/11/1943', '4378 Jessica Dam, Chavezstad, OR 98771', '1425330667', 'Flu', 'Skin rash, Swollen joints, Blurred vision', 'Dr. Paul Khan', '0000-00-00', '0000-00-00', 29056.00),
(273, 'Mark Owens', '22/04/1964', '252 Blanchard Knolls, Williamsborough, VT 55260', '2618136952', 'Asma', 'Fatigue, Chest pain, Blurred vision', 'Dr. Tracy Vasquez', '0000-00-00', '0000-00-00', 13075.00),
(274, 'Erin Coleman', '10/01/1992', '1947 Anthony Unions, Markside, ND 27064', '+1-314-038-3815x4048', 'Bronkitis', 'Loss of appetite, Chest pain', 'Dr. Kelli Berger', '0000-00-00', '0000-00-00', 24462.00),
(275, 'Fernando Harper', '02/02/1939', '15288 Scott Motorway, Johnmouth, TX 18359', '564-965-5702x616', 'Pneumonia', 'Vomiting, Nausea', 'Dr. Drew Moran', '0000-00-00', '0000-00-00', 44393.00),
(276, 'Lauren Jones', '13/03/1942', '6210 Barbara Drives Apt. 481, Lake Russellport, KY 74045', '+1-501-629-8747x79264', 'Hipertensi', 'Abdominal pain, Headache, Severe coughing', 'Dr. Carolyn Nelson', '0000-00-00', '0000-00-00', 29787.00),
(277, 'Jason Jenkins', '19/08/1971', '3597 Trujillo Passage, New Arthur, CA 56527', '344-868-4024x750', 'COVID-19', 'Severe coughing, Nausea', 'Dr. Craig Faulkner', '0000-00-00', '0000-00-00', 34420.00),
(278, 'Anne Smith', '07/04/1965', '5737 Elliott Locks, New Eric, MD 74907', '(659)632-4154x83134', 'Pneumonia', 'Blurred vision, Dizziness', 'Dr. Jenny Costa', '0000-00-00', '0000-00-00', 11636.00),
(279, 'Angela Johnson', '12/08/1969', '8663 Bradford Highway Suite 012, Andersonport, OK 64275', '(605)258-7713x93618', 'Asma', 'Skin rash, Chest pain', 'Dr. Miranda Anderson', '0000-00-00', '0000-00-00', 4652.00),
(280, 'David Henry', '05/03/1999', '7307 Amanda Freeway Suite 297, Lake Kelseyborough, KS 51442', '-4757', 'Flu', 'High fever, Abdominal pain', 'Dr. Shelley Hodges', '0000-00-00', '0000-00-00', 35068.00),
(281, 'Ryan Jenkins', '27/11/1934', '3684 Leah Ports Apt. 797, North Elizabethmouth, AK 87610', '001-625-587-4747x56928', 'Hipertensi', 'Abdominal pain, High fever, Shortness of breath', 'Dr. Susan Wall', '0000-00-00', '0000-00-00', 45259.00),
(282, 'Christopher Herman', '07/09/1945', '72114 Leonard Glen, North Sandra, MD 16122', '+1-404-952-0401x8269', 'Pneumonia', 'Fatigue, Swollen joints', 'Dr. Pamela Suarez', '0000-00-00', '0000-00-00', 18689.00),
(283, 'Jennifer Duncan', '06/01/1976', '13040 Cummings Haven Suite 348, West Jose, MO 31951', '+1-119-476-8421x090', 'Demam Berdarah', 'Nausea, Skin rash, High fever', 'Dr. Helen Blake', '0000-00-00', '0000-00-00', 26886.00),
(284, 'Gary Brown', '20/07/1985', '07116 Laura Plains Apt. 936, East William, IA 02104', '565-840-9603x2824', 'Pneumonia', 'High fever, Nausea, Swollen joints', 'Dr. Sheila Rowe', '0000-00-00', '0000-00-00', 15864.00),
(285, 'Catherine Hester', '10/04/1994', '9243 Higgins Roads Suite 108, Pearsonland, FL 59586', '(500)294-3568', 'Bronkitis', 'Severe coughing, Headache, Nausea, Fatigue', 'Dr. Jennifer Shaw', '0000-00-00', '0000-00-00', 49548.00),
(286, 'Briana Bryant', '29/11/1999', '3849 Marshall Underpass, Allenbury, NC 76774', '727-244-0427', 'Bronkitis', 'Nausea, Shortness of breath, Abdominal pain', 'Dr. Kathryn Phillips', '0000-00-00', '0000-00-00', 15315.00),
(287, 'Cody Osborn', '14/06/1973', '538 Gary Shores Apt. 316, Arroyoburgh, NM 28123', '+1-193-623-5865x70080', 'Flu', 'Abdominal pain, Vomiting', 'Dr. Jonathan Little', '0000-00-00', '0000-00-00', 19524.00),
(288, 'Christine Vaughn DVM', '11/03/1943', '797 Cristina Grove, East Matthewside, SD 19172', '001-136-546-3503x1782', 'COVID-19', 'Severe coughing, Nausea', 'Dr. James Chapman', '0000-00-00', '0000-00-00', 13068.00),
(289, 'Allison Berger', '14/10/2012', '784 Hampton Rest Suite 108, Georgemouth, MS 94232', '(358)192-1056x6731', 'Bronkitis', 'Headache, Skin rash, Fatigue', 'Dr. Roberto Stevenson', '0000-00-00', '0000-00-00', 21153.00),
(290, 'James Keller', '08/07/1956', '09290 Amy Track Suite 600, Davisfort, IL 20678', '001-236-431-3308x19344', 'Flu', 'Swollen joints, Dizziness, Abdominal pain, Headache', 'Dr. Laura Smith', '0000-00-00', '0000-00-00', 35828.00),
(291, 'Don Roberts', '03/06/1959', '76793 Erin Lakes, Murphyshire, MN 71893', '+1-952-325-3351x643', 'Tifus', 'Dizziness, Vomiting, Abdominal pain, Headache', 'Dr. Cheryl Benjamin', '0000-00-00', '0000-00-00', 30436.00),
(292, 'Matthew Chavez', '13/03/1985', '491 Elizabeth Common Suite 282, Jesseburgh, WI 32404', '031.477.6079x4526', 'Bronkitis', 'Headache, Severe coughing', 'Dr. Amanda Kelly', '0000-00-00', '0000-00-00', 32672.00),
(293, 'Julie Robles', '14/08/1976', '031 Morris Coves, Coryhaven, WI 00919', '197-867-5654', 'Tifus', 'Headache, Shortness of breath, Loss of appetite, Dizziness', 'Dr. Christine Cross', '0000-00-00', '0000-00-00', 2396.00),
(294, 'Lance Berg', '09/12/1971', '87847 Chase Shoals, Snowbury, SC 86213', '(543)531-2128x15727', 'Diabetes', 'Chest pain, Shortness of breath, Headache, Dizziness', 'Dr. James Anderson', '0000-00-00', '0000-00-00', 27435.00),
(295, 'Heather Young DDS', '24/08/1938', '08407 Karen Grove, Port Marcberg, FL 33067', '001-653-103-8162x405', 'COVID-19', 'Chest pain, High fever, Nausea', 'Dr. Lisa Lewis', '0000-00-00', '0000-00-00', 39284.00),
(296, 'Julie Mendoza', '14/06/1996', '4941 Hood Club Apt. 198, Fieldsburgh, MA 48301', '(689)415-0152', 'Demam Berdarah', 'High fever, Vomiting', 'Dr. Julie Moore', '0000-00-00', '0000-00-00', 9647.00),
(297, 'Robert Suarez', '23/12/2000', '000 Williams Keys Suite 403, North Jennifer, SD 31274', '(463)042-6620', 'Tifus', 'Nausea, Blurred vision', 'Dr. Edward Gilbert', '0000-00-00', '0000-00-00', 18001.00),
(298, 'Cynthia Berger', '01/07/1988', '6902 Jessica Fall, Andersonview, CA 28780', '(173)961-6050x2186', 'Asma', 'Headache, Chest pain, Blurred vision', 'Dr. Lauren Ford DDS', '0000-00-00', '0000-00-00', 40267.00),
(299, 'Ian Mason', '13/10/1936', '98895 Austin Knoll, Lake Michael, MO 81555', '(837)982-8512', 'Hipertensi', 'Nausea, Skin rash, Swollen joints, Shortness of breath', 'Dr. Aaron Howard', '0000-00-00', '0000-00-00', 41808.00),
(300, 'Shelby Young', '21/06/1969', '92737 Joseph Forks Suite 707, Lake Richard, IA 87705', '451.987.6164x71992', 'COVID-19', 'Swollen joints, Fatigue', 'Dr. Susan Burgess', '0000-00-00', '0000-00-00', 25809.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

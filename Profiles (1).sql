-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 03, 2024 at 02:39 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Profiles`
--

-- --------------------------------------------------------

--
-- Table structure for table `Bio`
--

CREATE TABLE `Bio` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `Born` date DEFAULT NULL,
  `BirthPlace` varchar(100) DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  `Profession` varchar(100) DEFAULT NULL,
  `DebutFilm` varchar(100) DEFAULT NULL,
  `Awards` text DEFAULT NULL,
  `ActiveYears` varchar(50) DEFAULT NULL,
  `Spouse` varchar(100) DEFAULT NULL,
  `Children` int(11) DEFAULT NULL,
  `NotableWorks` text DEFAULT NULL,
  `Education` varchar(100) DEFAULT NULL,
  `Height` decimal(4,2) DEFAULT NULL,
  `Weight` decimal(5,2) DEFAULT NULL,
  `EyeColor` varchar(20) DEFAULT NULL,
  `HairColor` varchar(20) DEFAULT NULL,
  `KnownFor` varchar(100) DEFAULT NULL,
  `NetWorth` decimal(15,2) DEFAULT NULL,
  `SocialMediaHandles` text DEFAULT NULL,
  `Biography` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Bio`
--

INSERT INTO `Bio` (`ID`, `Name`, `FatherName`, `MotherName`, `Born`, `BirthPlace`, `Nationality`, `Profession`, `DebutFilm`, `Awards`, `ActiveYears`, `Spouse`, `Children`, `NotableWorks`, `Education`, `Height`, `Weight`, `EyeColor`, `HairColor`, `KnownFor`, `NetWorth`, `SocialMediaHandles`, `Biography`) VALUES
(1, 'Amitabh Bachchan', 'Harivansh Rai Bachchan', 'Teji Bachchan', '1942-10-11', 'Allahabad, Uttar Pradesh', 'Indian', 'Actor', 'Saat Hindustani', 'Padma Vibhushan, Padma Bhushan, Padma Shri', '1969-present', 'Jaya Bhaduri', 2, 'Sholay, Deewar, Zanjeer', 'Sherwood College, Nainital', 1.88, 80.50, 'Brown', 'Black', 'Baritone Voice, Intense Roles', 400000000.00, '@SrBachchan', 'One of the most iconic actors in Indian cinema history.'),
(2, 'Alia Bhatt', 'Mahesh Bhatt', 'Soni Razdan', '1993-03-15', 'Mumbai, Maharashtra', 'Indian', 'Actress', 'Student of the Year', 'Filmfare Awards, IIFA Awards', '2012-present', 'Ranbir Kapoor', 1, 'Raazi, Gully Boy', 'Jamnabai Narsee School', 1.55, 55.00, 'Brown', 'Brown', 'Versatile Roles', 150000000.00, '@aliaa08', 'One of the leading actresses in Bollywood with a variety of roles.'),
(3, 'Mahesh Babu', 'Krishna', 'Indira Devi', '1975-08-09', 'Chennai, Tamil Nadu', 'Indian', 'Actor', 'Raja Kumarudu', 'Nandi Awards, Filmfare Awards', '1979-present', 'Namrata Shirodkar', 2, 'Pokiri, Srimanthudu', 'Loyola College, Chennai', 1.88, 70.00, 'Brown', 'Black', 'Charming Roles', 300000000.00, '@urstrulyMahesh', 'A leading actor in Tollywood with a massive fan following.'),
(4, 'S. S. Rajamouli', 'Koduri Venkata Vijayendra Prasad', 'Raja Nandini', '1973-10-10', 'Raichur, Karnataka', 'Indian', 'Director', 'Student No. 1', 'Padma Shri, National Film Awards', '2001-present', 'Rama Rajamouli', 2, 'Baahubali, RRR', 'University of Madras', 1.75, 72.00, 'Black', 'Black', 'Epic Films', 500000000.00, '@ssrajamouli', 'One of the most celebrated directors in Indian cinema.'),
(5, 'Priyanka Chopra', 'Ashok Chopra', 'Madhu Chopra', '1982-07-18', 'Jamshedpur, Jharkhand', 'Indian', 'Actress, Producer', 'The Hero: Love Story of a Spy', 'Padma Shri, National Film Award', '2000-present', 'Nick Jonas', 1, 'Fashion, Barfi!', 'Jai Hind College, Mumbai', 1.65, 55.00, 'Brown', 'Black', 'Diverse Roles, International Fame', 70000000.00, '@priyankachopra', 'An internationally recognized Indian actress with numerous accolades.'),
(6, 'Shah Rukh Khan', 'Meer Taj Muhammad Khan', 'Lateef Fatima', '1965-11-02', 'New Delhi', 'Indian', 'Actor, Producer', 'Deewana', 'Padma Shri, Filmfare Awards', '1992-present', 'Gauri Khan', 3, 'Dilwale Dulhania Le Jayenge, My Name Is Khan', 'Hansraj College, Delhi University', 1.73, 75.00, 'Brown', 'Black', 'Romantic Roles, Global Star', 600000000.00, '@iamsrk', 'Known as the King of Bollywood, with a global fanbase.'),
(7, 'Deepika Padukone', 'Prakash Padukone', 'Ujjala Padukone', '1986-01-05', 'Copenhagen, Denmark', 'Indian', 'Actress', 'Om Shanti Om', 'Filmfare Awards, IIFA Awards', '2006-present', 'Ranveer Singh', 0, 'Piku, Padmaavat', 'Mount Carmel College, Bangalore', 1.74, 60.00, 'Black', 'Black', 'Versatile Roles, Strong Screen Presence', 40000000.00, '@deepikapadukone', 'One of the most successful and highest-paid actresses in India.'),
(8, 'Rajinikanth', 'Ramoji Rao Gaekwad', 'Rambhai', '1950-12-12', 'Bangalore, Karnataka', 'Indian', 'Actor', 'Apoorva Raagangal', 'Padma Vibhushan, Padma Bhushan', '1975-present', 'Latha Rangachari', 2, 'Enthiran, Baasha', 'Acharya Patashala, Bangalore', 1.75, 75.00, 'Brown', 'Black', 'Style and Charisma, Mass Appeal', 500000000.00, '@rajinikanth', 'A cultural icon and one of the most influential actors in India.'),
(9, 'Anushka Shetty', 'A.N. Vittal Shetty', 'Prafulla Shetty', '1981-11-07', 'Mangalore, Karnataka', 'Indian', 'Actress', 'Super', 'CineMAA Awards, Nandi Awards', '2005-present', 'Unmarried', 0, 'Baahubali, Arundhati', 'Mount Carmel College, Bangalore', 1.78, 62.00, 'Black', 'Black', 'Strong Female Roles', 20000000.00, '@MsAnushkaShetty', 'Known for her powerful performances in Tollywood.'),
(10, 'Karan Johar', 'Yash Johar', 'Hiroo Johar', '1972-05-25', 'Mumbai, Maharashtra', 'Indian', 'Director, Producer', 'Kuch Kuch Hota Hai', 'National Film Awards, Filmfare Awards', '1998-present', 'Unmarried', 2, 'Kabhi Khushi Kabhie Gham, My Name Is Khan', 'H.R. College of Commerce and Economics', 1.75, 78.00, 'Brown', 'Black', 'Romantic Films, Family Dramas', 200000000.00, '@karanjohar', 'A leading director and producer in Bollywood known for his commercial successes.'),
(11, 'Kajal Aggarwal', 'Vinay Aggarwal', 'Suman Aggarwal', '1985-06-19', 'Mumbai, Maharashtra', 'Indian', 'Actress', 'Kyun! Ho Gaya Na...', 'Filmfare Awards South', '2004-present', 'Gautam Kitchlu', 1, 'Magadheera, Thuppakki', 'K.C. College, Mumbai', 1.65, 57.00, 'Black', 'Black', 'Charming Roles, Versatility', 20000000.00, '@MsKajalAggarwal', 'A popular actress in both Tollywood and Bollywood.'),
(12, 'Ranveer Singh', 'Jagjit Singh Bhavnani', 'Anju Bhavnani', '1985-07-06', 'Mumbai, Maharashtra', 'Indian', 'Actor', 'Band Baaja Baaraat', 'Filmfare Awards', '2010-present', 'Deepika Padukone', 0, 'Bajirao Mastani, Gully Boy', 'H.R. College of Commerce and Economics', 1.78, 75.00, 'Brown', 'Black', 'Energetic Performances', 30000000.00, '@RanveerOfficial', 'Known for his vibrant personality and versatile roles.'),
(13, 'Aishwarya Rai Bachchan', 'Krishnaraj Rai', 'Vrinda Rai', '1973-11-01', 'Mangalore, Karnataka', 'Indian', 'Actress', 'Iruvar', 'Padma Shri, Filmfare Awards', '1997-present', 'Abhishek Bachchan', 1, 'Devdas, Jodhaa Akbar', 'Jai Hind College, Mumbai', 1.70, 56.00, 'Blue', 'Black', 'Beauty, Grace, Versatile Acting', 100000000.00, '@AishwaryaRaiBachchan', 'Miss World 1994 and one of India\'s most recognized actresses.'),
(14, 'Rohit Shetty', 'M.B. Shetty', 'Ratna Shetty', '1973-03-14', 'Mumbai, Maharashtra', 'Indian', 'Director, Producer', 'Zameen', 'Filmfare Awards, IIFA Awards', '2003-present', 'Maya Rohit Shetty', 1, 'Golmaal Series, Singham', 'St. Mary\'s School, Mumbai', 1.85, 85.00, 'Brown', 'Black', 'Action Comedy Films', 100000000.00, '@iamrohitshetty', 'Known for his action-packed and commercially successful films.'),
(15, 'Kriti Sanon', 'Rahul Sanon', 'Geeta Sanon', '1990-07-27', 'New Delhi', 'Indian', 'Actress', 'Heropanti', 'Filmfare Award', '2014-present', 'Unmarried', 0, 'Bareilly Ki Barfi, Mimi', 'Jaypee Institute of Information Technology', 1.78, 56.00, 'Brown', 'Black', 'Versatility, Strong Screen Presence', 15000000.00, '@kritisanon', 'A promising actress known for her performances in Bollywood.'),
(16, 'Pawan Kalyan', 'Venkat Rao Konidela', 'Anjana Devi', '1971-09-02', 'Bapatla, Andhra Pradesh', 'Indian', 'Actor, Politician', 'Akkada Ammayi Ikkada Abbayi', 'Filmfare Awards South, Nandi Awards', '1996-present', 'Anna Lezhneva', 2, 'Gabbar Singh, Attarintiki Daredi', 'N/A', 1.78, 70.00, 'Black', 'Black', 'Mass Appeal, Political Involvement', 15000000.00, '@PawanKalyan', 'A popular Tollywood actor and founder of the Jana Sena Party.'),
(17, 'Vidya Balan', 'P.R. Balan', 'Saraswathy Balan', '1979-01-01', 'Mumbai, Maharashtra', 'Indian', 'Actress', 'Parineeta', 'National Film Award, Padma Shri', '2003-present', 'Siddharth Roy Kapur', 0, 'The Dirty Picture, Kahaani', 'St. Xavier\'s College, Mumbai', 1.63, 70.00, 'Black', 'Black', 'Strong Female Roles, Versatility', 15000000.00, '@vidya_balan', 'Known for portraying strong female protagonists in Bollywood.'),
(18, 'Nani', 'Rambabu Ghanta', 'Vijaya Lakshmi Ghanta', '1984-02-24', 'Hyderabad, Telangana', 'Indian', 'Actor, Producer', 'Ashta Chamma', 'Nandi Awards, Filmfare Awards South', '2008-present', 'Anjana Yelavarthy', 1, 'Eega, Jersey', 'Wesley College, Secunderabad', 1.68, 68.00, 'Brown', 'Black', 'Natural Acting, Versatility', 10000000.00, '@NameisNani', 'Known for his natural acting style in Tollywood.'),
(19, 'Dhanush', 'Kasthuri Raja', 'Vijayalakshmi', '1983-07-28', 'Chennai, Tamil Nadu', 'Indian', 'Actor, Producer, Singer', 'Thulluvadho Ilamai', 'National Film Awards, Filmfare Awards South', '2002-present', 'Aishwarya R. Dhanush', 2, 'Raanjhanaa, Asuran', 'N/A', 1.70, 65.00, 'Black', 'Black', 'Versatility, Singing Talent', 15000000.00, '@dhanushkraja', 'A versatile actor and singer in the Indian film industry.'),
(20, 'Kangana Ranaut', 'Amardeep Ranaut', 'Asha Ranaut', '1987-03-23', 'Bhambla, Himachal Pradesh', 'Indian', 'Actress', 'Gangster', 'National Film Awards, Padma Shri', '2006-present', 'Unmarried', 0, 'Queen, Tanu Weds Manu', 'D.A.V. School, Chandigarh', 1.66, 55.00, 'Brown', 'Black', 'Strong Female Roles, Controversies', 12000000.00, '@KanganaTeam', 'A bold and outspoken actress known for her powerful performances.'),
(21, 'Samantha Ruth Prabhu', 'Joseph Prabhu', 'Ninette Prabhu', '1987-04-28', 'Chennai, Tamil Nadu', 'Indian', 'Actress', 'Ye Maaya Chesave', 'Filmfare Awards South, Nandi Awards', '2010-present', 'Divorced (Naga Chaitanya)', 0, 'Eega, Oh! Baby', 'Stella Maris College, Chennai', 1.65, 53.00, 'Black', 'Black', 'Versatile Acting, Charitable Work', 10000000.00, '@Samanthaprabhu2', 'A leading actress in both Telugu and Tamil cinema.'),
(22, 'Ranbir Kapoor', 'Rishi Kapoor', 'Neetu Singh', '1982-09-28', 'Mumbai, Maharashtra', 'Indian', 'Actor, Producer', 'Saawariya', 'Filmfare Awards', '2007-present', 'Alia Bhatt', 1, 'Barfi!, Rockstar', 'H.R. College of Commerce and Economics', 1.81, 78.00, 'Black', 'Black', 'Method Acting, Versatile Roles', 50000000.00, '@RanbirKapoor', 'Known for his dynamic acting and diverse film choices.'),
(23, 'Rani Mukerji', 'Ram Mukherjee', 'Krishna Mukherjee', '1978-03-21', 'Mumbai, Maharashtra', 'Indian', 'Actress', 'Raja Ki Aayegi Baraat', 'Filmfare Awards, National Film Awards', '1997-present', 'Aditya Chopra', 1, 'Black, Mardaani', 'Maneckji Cooper Education Trust School', 1.60, 58.00, 'Brown', 'Black', 'Strong Female Roles, Versatile Acting', 25000000.00, '@Rani_Mukerji', 'A celebrated actress known for her impactful performances in Bollywood.'),
(24, 'Ram Charan', 'Chiranjeevi', 'Surekha Konidela', '1985-03-27', 'Chennai, Tamil Nadu', 'Indian', 'Actor, Producer', 'Chirutha', 'Filmfare Awards South, Nandi Awards', '2007-present', 'Upasana Kamineni', 0, 'Magadheera, Rangasthalam', 'St. Mary\'s College, Hyderabad', 1.74, 75.00, 'Brown', 'Black', 'Versatile Acting, Dancing Skills', 40000000.00, '@AlwaysRamCharan', 'A prominent actor in Telugu cinema known for his dynamic performances.');

-- --------------------------------------------------------

--
-- Table structure for table `Movies`
--

CREATE TABLE `Movies` (
  `MovieID` int(11) NOT NULL,
  `MovieName` varchar(255) NOT NULL,
  `YearReleased` int(11) NOT NULL,
  `Genre` varchar(100) DEFAULT NULL,
  `Cast` varchar(255) DEFAULT NULL,
  `DirectorName` varchar(255) DEFAULT NULL,
  `ProducerNames` varchar(255) DEFAULT NULL,
  `ActorsNames` varchar(255) DEFAULT NULL,
  `Rating` decimal(2,1) DEFAULT NULL,
  `Awards` varchar(255) DEFAULT NULL,
  `Highlights` varchar(255) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `StreamingAt` varchar(100) DEFAULT NULL,
  `BoxOfficeStatus` varchar(50) DEFAULT NULL,
  `RunTime` int(11) DEFAULT NULL,
  `Language` varchar(50) DEFAULT NULL,
  `DirectedBy` varchar(255) DEFAULT NULL,
  `WrittenBy` varchar(255) DEFAULT NULL,
  `ProducedBy` varchar(255) DEFAULT NULL,
  `Starring` varchar(255) DEFAULT NULL,
  `Cinematography` varchar(255) DEFAULT NULL,
  `EditedBy` varchar(255) DEFAULT NULL,
  `MusicBy` varchar(255) DEFAULT NULL,
  `ProductionCompany` varchar(255) DEFAULT NULL,
  `DistributedBy` varchar(255) DEFAULT NULL,
  `ReleaseDate` date DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Budget` decimal(15,2) DEFAULT NULL,
  `BoxOfficeCollection` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Movies`
--

INSERT INTO `Movies` (`MovieID`, `MovieName`, `YearReleased`, `Genre`, `Cast`, `DirectorName`, `ProducerNames`, `ActorsNames`, `Rating`, `Awards`, `Highlights`, `Description`, `StreamingAt`, `BoxOfficeStatus`, `RunTime`, `Language`, `DirectedBy`, `WrittenBy`, `ProducedBy`, `Starring`, `Cinematography`, `EditedBy`, `MusicBy`, `ProductionCompany`, `DistributedBy`, `ReleaseDate`, `Country`, `Budget`, `BoxOfficeCollection`) VALUES
(1, 'Jawan', 2023, 'Action', 'Shah Rukh Khan, Nayanthara', 'Atlee', 'Red Chillies Entertainment', 'Deepika Padukone, Vijay Sethupathi', 8.0, 'Multiple Awards', 'High-octane action', 'A man who faces injustice fights back', 'Netflix', 'Blockbuster', 170, 'Hindi', 'Atlee', 'Sumit Arora', 'Red Chillies', 'Shah Rukh Khan', 'G. K. Vishnu', 'Ruben', 'Anirudh Ravichander', 'Red Chillies Entertainment', 'Pen Marudhar', '2023-09-07', 'India', 300000000.00, 1000000000.00),
(2, 'Leo', 2023, 'Thriller', 'Vijay, Sanjay Dutt', 'Lokesh Kanagaraj', 'Seven Screen Studio', 'Trisha Krishnan', 8.5, 'Tamil Nadu Film Awards', 'Action-packed thriller', 'A cafe owner gets involved in a bloody conflict', 'Netflix', 'Blockbuster', 161, 'Tamil', 'Lokesh Kanagaraj', 'Lokesh Kanagaraj', 'S. S. Lalit Kumar', 'Vijay', 'Manoj Paramahamsa', 'Philomin Raj', 'Anirudh Ravichander', 'Seven Screen Studio', 'Netflix', '2023-10-19', 'India', 250000000.00, 700000000.00),
(3, 'Kalki 2898 AD', 2024, 'Sci-Fi', 'Prabhas, Deepika Padukone', 'Nag Ashwin', 'Vyjayanthi Movies', 'Amitabh Bachchan, Kamal Haasan', 9.0, 'National Awards', 'Futuristic dystopia', 'A futuristic tale set in 2898', 'Prime Video', 'Hit', 180, 'Telugu', 'Nag Ashwin', 'Nag Ashwin', 'C. Ashwini Dutt', 'Prabhas', 'Dani Sanchez-Lopez', 'Kotagiri Venkateswara Rao', 'Mickey J. Meyer', 'Vyjayanthi Movies', 'Annapurna Studios', '2024-08-22', 'India', 500000000.00, 1200000000.00),
(4, 'Salaar', 2023, 'Action', 'Prabhas, Shruti Haasan', 'Prashanth Neel', 'Hombale Films', 'Prithviraj Sukumaran', 8.7, 'Multiple Awards', 'Massive action scenes', 'A man fights against powerful forces to avenge his family', 'Amazon Prime', 'Blockbuster', 174, 'Kannada', 'Prashanth Neel', 'Prashanth Neel', 'Vijay Kiragandur', 'Prabhas', 'Bhuvan Gowda', 'Ujwal Kulkarni', 'Ravi Basrur', 'Hombale Films', 'AA Films', '2023-12-28', 'India', 400000000.00, 900000000.00),
(5, 'Pushpa 2: The Rule', 2024, 'Action', 'Allu Arjun, Fahadh Faasil', 'Sukumar', 'Mythri Movie Makers', 'Rashmika Mandanna', 9.1, 'Multiple Awards', 'Iconic mass entertainer', 'A smuggler rises through the ranks in the criminal underworld', 'Prime Video', 'Blockbuster', 180, 'Telugu', 'Sukumar', 'Sukumar', 'Naveen Yerneni, Y. Ravi Shankar', 'Allu Arjun', 'Mirol Scluz', 'Karthika Srinivas', 'Devi Sri Prasad', 'Mythri Movie Makers', 'AA Films', '2024-04-28', 'India', 350000000.00, 950000000.00),
(6, 'Eega', 2012, 'Fantasy', 'Samantha, Nani', 'S. S. Rajamouli', 'Sai Korrapati', 'Sudeep', 8.5, 'Filmfare Award', 'Visual Effects Spectacle', 'A man reincarnated as a housefly seeks revenge', 'Zee5', 'Blockbuster', 134, 'Telugu', 'S. S. Rajamouli', 'S. S. Rajamouli', 'Sai Korrapati', 'Samantha, Nani', 'K. K. Senthil Kumar', 'Kotagiri Venkateswara Rao', 'M. M. Keeravani', 'Varahi Chalana Chitram', 'AA Films', '2012-07-06', 'India', 40000000.00, 125000000.00),
(7, 'Rangasthalam', 2018, 'Drama', 'Samantha, Ram Charan', 'Sukumar', 'Mythri Movie Makers', 'Aadhi Pinisetty', 8.9, 'Multiple Awards', 'Rural backdrop with intense performances', 'A hearing-impaired man fights a corrupt politician', 'Amazon Prime', 'Blockbuster', 179, 'Telugu', 'Sukumar', 'Sukumar', 'Naveen Yerneni, Y. Ravi Shankar', 'Samantha, Ram Charan', 'R. Rathnavelu', 'Naveen Nooli', 'Devi Sri Prasad', 'Mythri Movie Makers', 'AA Films', '2018-03-30', 'India', 60000000.00, 210000000.00),
(8, 'Theri', 2016, 'Action', 'Samantha, Vijay', 'Atlee', 'Kalaipuli S. Thanu', 'Amy Jackson', 7.2, 'None', 'Action-packed family drama', 'A police officer takes revenge against those who wronged his family', 'Sun NXT', 'Hit', 157, 'Tamil', 'Atlee', 'Atlee', 'Kalaipuli S. Thanu', 'Vijay, Samantha', 'George C. Williams', 'Anthony L. Ruben', 'G. V. Prakash Kumar', 'V. Creations', 'Fox Star Studios', '2016-04-14', 'India', 50000000.00, 150000000.00),
(9, 'Oh! Baby', 2019, 'Comedy', 'Samantha, Lakshmi', 'B. V. Nandini Reddy', 'Suresh Productions', 'Rajendra Prasad', 7.4, 'None', 'Feel-good comedy with life lessons', 'A 70-year-old woman magically becomes 24 again', 'Netflix', 'Hit', 161, 'Telugu', 'B. V. Nandini Reddy', 'Lakshmi Bhupala', 'Sunita Tati', 'Samantha, Lakshmi', 'Richard Prasad', 'Junaid Siddiqui', 'Mickey J. Meyer', 'Suresh Productions', 'People Media Factory', '2019-07-05', 'India', 35000000.00, 90000000.00),
(10, 'Mersal', 2017, 'Action', 'Samantha, Vijay', 'Atlee', 'Sri Thenandal Films', 'Kajal Aggarwal', 7.8, 'Multiple Awards', 'Action with a social message', 'A doctor uncovers corruption in the medical field', 'Disney+ Hotstar', 'Blockbuster', 172, 'Tamil', 'Atlee', 'Atlee', 'Hema Rukmani', 'Samantha, Vijay', 'G. K. Vishnu', 'Ruben', 'A. R. Rahman', 'Sri Thenandal Films', 'CineGalaxy', '2017-10-18', 'India', 120000000.00, 250000000.00),
(11, 'Arjun Reddy', 2017, 'Drama', 'Vijay Deverakonda, Shalini Pandey', 'Sandeep Reddy Vanga', 'Pranay Reddy Vanga', 'Vijay Deverakonda', 8.1, NULL, 'Raw, intense storytelling', 'A brilliant surgeon with anger issues spirals into self-destruction.', 'Netflix', 'Hit', 182, 'Telugu', 'Sandeep Reddy Vanga', 'Sandeep Reddy Vanga', 'Pranay Reddy Vanga', 'Vijay Deverakonda, Shalini Pandey', 'Raju Thota', 'Shashank Mali', 'Radhan', 'Bhadrakali Pictures', 'T-Series', '2017-08-25', 'India', 50.00, 510.00),
(12, 'Geetha Govindam', 2018, 'Romance', 'Vijay Deverakonda, Rashmika Mandanna', 'Parasuram', 'Bunny Vas', 'Vijay Deverakonda', 7.7, NULL, 'Romantic comedy hit', 'A young lecturer tries to woo a girl who mistrusts him due to a misunderstanding.', 'Aha', 'Blockbuster', 142, 'Telugu', 'Parasuram', 'Parasuram', 'Bunny Vas', 'Vijay Deverakonda, Rashmika Mandanna', 'S Manikandan', 'Marthand K. Venkatesh', 'Gopi Sundar', 'GA2 Pictures', 'Geetha Arts', '2018-08-15', 'India', 15.00, 130.00),
(13, 'Dear Comrade', 2019, 'Drama', 'Vijay Deverakonda, Rashmika Mandanna', 'Bharat Kamma', 'Yash Rangineni', 'Vijay Deverakonda', 7.3, NULL, 'Romantic action drama', 'A student union leader with anger management issues falls in love with a state-level cricketer.', 'Amazon Prime', 'Hit', 169, 'Telugu', 'Bharat Kamma', 'Bharat Kamma', 'Yash Rangineni', 'Vijay Deverakonda, Rashmika Mandanna', 'Sujith Sarang', 'Sreejith Sarang', 'Justin Prabhakaran', 'Mythri Movie Makers', 'Big Ben Cinemas', '2019-07-26', 'India', 25.00, 370.00),
(14, 'Jawan', 2023, 'Action', 'Shah Rukh Khan, Nayanthara', 'Atlee', 'Red Chillies Entertainment', 'Deepika Padukone, Vijay Sethupathi', 8.0, 'Multiple Awards', 'High-octane action', 'A man who faces injustice fights back', 'Netflix', 'Blockbuster', 170, 'Hindi', 'Atlee', 'Sumit Arora', 'Red Chillies', 'Shah Rukh Khan', 'G. K. Vishnu', 'Ruben', 'Anirudh Ravichander', 'Red Chillies Entertainment', 'Pen Marudhar', '2023-09-07', 'India', 300000000.00, 1000000000.00),
(15, 'Leo', 2023, 'Thriller', 'Vijay, Sanjay Dutt', 'Lokesh Kanagaraj', 'Seven Screen Studio', 'Trisha Krishnan', 8.5, 'Tamil Nadu Film Awards', 'Action-packed thriller', 'A cafe owner gets involved in a bloody conflict', 'Netflix', 'Blockbuster', 161, 'Tamil', 'Lokesh Kanagaraj', 'Lokesh Kanagaraj', 'S. S. Lalit Kumar', 'Vijay', 'Manoj Paramahamsa', 'Philomin Raj', 'Anirudh Ravichander', 'Seven Screen Studio', 'Netflix', '2023-10-19', 'India', 250000000.00, 700000000.00),
(16, 'Kalki 2898 AD', 2024, 'Sci-Fi', 'Prabhas, Deepika Padukone', 'Nag Ashwin', 'Vyjayanthi Movies', 'Amitabh Bachchan, Kamal Haasan', 9.0, 'National Awards', 'Futuristic dystopia', 'A futuristic tale set in 2898', 'Prime Video', 'Hit', 180, 'Telugu', 'Nag Ashwin', 'Nag Ashwin', 'C. Ashwini Dutt', 'Prabhas', 'Dani Sanchez-Lopez', 'Kotagiri Venkateswara Rao', 'Mickey J. Meyer', 'Vyjayanthi Movies', 'Annapurna Studios', '2024-08-22', 'India', 500000000.00, 1200000000.00),
(17, 'Salaar', 2023, 'Action', 'Prabhas, Shruti Haasan', 'Prashanth Neel', 'Hombale Films', 'Prithviraj Sukumaran', 8.7, 'Multiple Awards', 'Massive action scenes', 'A man fights against powerful forces to avenge his family', 'Amazon Prime', 'Blockbuster', 174, 'Kannada', 'Prashanth Neel', 'Prashanth Neel', 'Vijay Kiragandur', 'Prabhas', 'Bhuvan Gowda', 'Ujwal Kulkarni', 'Ravi Basrur', 'Hombale Films', 'AA Films', '2023-12-28', 'India', 400000000.00, 900000000.00),
(18, 'Pushpa 2: The Rule', 2024, 'Action', 'Allu Arjun, Fahadh Faasil', 'Sukumar', 'Mythri Movie Makers', 'Rashmika Mandanna', 9.1, 'Multiple Awards', 'Iconic mass entertainer', 'A smuggler rises through the ranks in the criminal underworld', 'Prime Video', 'Blockbuster', 180, 'Telugu', 'Sukumar', 'Sukumar', 'Naveen Yerneni, Y. Ravi Shankar', 'Allu Arjun', 'Mirol Scluz', 'Karthika Srinivas', 'Devi Sri Prasad', 'Mythri Movie Makers', 'AA Films', '2024-04-28', 'India', 350000000.00, 950000000.00),
(19, 'Eega', 2012, 'Fantasy', 'Samantha, Nani', 'S. S. Rajamouli', 'Sai Korrapati', 'Sudeep', 8.5, 'Filmfare Award', 'Visual Effects Spectacle', 'A man reincarnated as a housefly seeks revenge', 'Zee5', 'Blockbuster', 134, 'Telugu', 'S. S. Rajamouli', 'S. S. Rajamouli', 'Sai Korrapati', 'Samantha, Nani', 'K. K. Senthil Kumar', 'Kotagiri Venkateswara Rao', 'M. M. Keeravani', 'Varahi Chalana Chitram', 'AA Films', '2012-07-06', 'India', 40000000.00, 125000000.00),
(20, 'Rangasthalam', 2018, 'Drama', 'Samantha, Ram Charan', 'Sukumar', 'Mythri Movie Makers', 'Aadhi Pinisetty', 8.9, 'Multiple Awards', 'Rural backdrop with intense performances', 'A hearing-impaired man fights a corrupt politician', 'Amazon Prime', 'Blockbuster', 179, 'Telugu', 'Sukumar', 'Sukumar', 'Naveen Yerneni, Y. Ravi Shankar', 'Samantha, Ram Charan', 'R. Rathnavelu', 'Naveen Nooli', 'Devi Sri Prasad', 'Mythri Movie Makers', 'AA Films', '2018-03-30', 'India', 60000000.00, 210000000.00),
(21, 'Theri', 2016, 'Action', 'Samantha, Vijay', 'Atlee', 'Kalaipuli S. Thanu', 'Amy Jackson', 7.2, 'None', 'Action-packed family drama', 'A police officer takes revenge against those who wronged his family', 'Sun NXT', 'Hit', 157, 'Tamil', 'Atlee', 'Atlee', 'Kalaipuli S. Thanu', 'Vijay, Samantha', 'George C. Williams', 'Anthony L. Ruben', 'G. V. Prakash Kumar', 'V. Creations', 'Fox Star Studios', '2016-04-14', 'India', 50000000.00, 150000000.00),
(22, 'Oh! Baby', 2019, 'Comedy', 'Samantha, Lakshmi', 'B. V. Nandini Reddy', 'Suresh Productions', 'Rajendra Prasad', 7.4, 'None', 'Feel-good comedy with life lessons', 'A 70-year-old woman magically becomes 24 again', 'Netflix', 'Hit', 161, 'Telugu', 'B. V. Nandini Reddy', 'Lakshmi Bhupala', 'Sunita Tati', 'Samantha, Lakshmi', 'Richard Prasad', 'Junaid Siddiqui', 'Mickey J. Meyer', 'Suresh Productions', 'People Media Factory', '2019-07-05', 'India', 35000000.00, 90000000.00),
(23, 'Mersal', 2017, 'Action', 'Samantha, Vijay', 'Atlee', 'Sri Thenandal Films', 'Kajal Aggarwal', 7.8, 'Multiple Awards', 'Action with a social message', 'A doctor uncovers corruption in the medical field', 'Disney+ Hotstar', 'Blockbuster', 172, 'Tamil', 'Atlee', 'Atlee', 'Hema Rukmani', 'Samantha, Vijay', 'G. K. Vishnu', 'Ruben', 'A. R. Rahman', 'Sri Thenandal Films', 'CineGalaxy', '2017-10-18', 'India', 120000000.00, 250000000.00),
(24, 'Arjun Reddy', 2017, 'Drama', 'Vijay Deverakonda, Shalini Pandey', 'Sandeep Reddy Vanga', 'Pranay Reddy Vanga', 'Vijay Deverakonda', 8.1, NULL, 'Raw, intense storytelling', 'A brilliant surgeon with anger issues spirals into self-destruction.', 'Netflix', 'Hit', 182, 'Telugu', 'Sandeep Reddy Vanga', 'Sandeep Reddy Vanga', 'Pranay Reddy Vanga', 'Vijay Deverakonda, Shalini Pandey', 'Raju Thota', 'Shashank Mali', 'Radhan', 'Bhadrakali Pictures', 'T-Series', '2017-08-25', 'India', 50.00, 510.00),
(25, 'Geetha Govindam', 2018, 'Romance', 'Vijay Deverakonda, Rashmika Mandanna', 'Parasuram', 'Bunny Vas', 'Vijay Deverakonda', 7.7, NULL, 'Romantic comedy hit', 'A young lecturer tries to woo a girl who mistrusts him due to a misunderstanding.', 'Aha', 'Blockbuster', 142, 'Telugu', 'Parasuram', 'Parasuram', 'Bunny Vas', 'Vijay Deverakonda, Rashmika Mandanna', 'S Manikandan', 'Marthand K. Venkatesh', 'Gopi Sundar', 'GA2 Pictures', 'Geetha Arts', '2018-08-15', 'India', 15.00, 130.00),
(26, 'Dear Comrade', 2019, 'Drama', 'Vijay Deverakonda, Rashmika Mandanna', 'Bharat Kamma', 'Yash Rangineni', 'Vijay Deverakonda', 7.3, NULL, 'Romantic action drama', 'A student union leader with anger management issues falls in love with a state-level cricketer.', 'Amazon Prime', 'Hit', 169, 'Telugu', 'Bharat Kamma', 'Bharat Kamma', 'Yash Rangineni', 'Vijay Deverakonda, Rashmika Mandanna', 'Sujith Sarang', 'Sreejith Sarang', 'Justin Prabhakaran', 'Mythri Movie Makers', 'Big Ben Cinemas', '2019-07-26', 'India', 25.00, 370.00),
(27, 'Okkadu', 2003, 'Action, Romance', 'Mahesh Babu, Bhumika Chawla', 'Gunasekhar', 'M. S. Raju', 'Mahesh Babu, Bhumika Chawla', 8.2, NULL, 'One of Mahesh\'s blockbuster hits', 'A Kabbadi player rescues a young woman from an unwanted marriage.', 'Amazon Prime', 'Blockbuster', 170, 'Telugu', 'Gunasekhar', 'Gunasekhar', 'M. S. Raju', 'Mahesh Babu, Bhumika Chawla', 'Sekhar V. Joseph', 'A. Sreekar Prasad', 'Mani Sharma', 'Sumanth Art Productions', 'Sri Venkateswara Creations', '2003-01-15', 'India', 15.00, 50.00),
(28, 'Athadu', 2005, 'Action, Thriller', 'Mahesh Babu, Trisha Krishnan', 'Trivikram Srinivas', 'Murali Mohan', 'Mahesh Babu, Trisha Krishnan', 8.2, NULL, 'A stylish action film', 'A professional killer is wrongly accused of a murder.', 'Zee5', 'Hit', 172, 'Telugu', 'Trivikram Srinivas', 'Trivikram Srinivas', 'Murali Mohan', 'Mahesh Babu, Trisha Krishnan', 'K. V. Guhan', 'Sreekar Prasad', 'Mani Sharma', 'Jayabheri Arts', 'Sri Venkateswara Creations', '2005-08-10', 'India', 22.00, 60.00),
(29, 'Pokiri', 2006, 'Action, Thriller', 'Mahesh Babu, Ileana D\'Cruz', 'Puri Jagannadh', 'Puri Jagannadh', 'Mahesh Babu, Ileana D\'Cruz', 7.9, NULL, 'One of Mahesh\'s biggest hits', 'A ruthless gangster is secretly an undercover cop.', 'Hotstar', 'Blockbuster', 164, 'Telugu', 'Puri Jagannadh', 'Puri Jagannadh', 'Puri Jagannadh', 'Mahesh Babu, Ileana D\'Cruz', 'Shyam K. Naidu', 'Marthand K. Venkatesh', 'Mani Sharma', 'Vaishno Academy', 'Sri Venkateswara Creations', '2006-04-28', 'India', 10.00, 100.00),
(30, 'Dookudu', 2011, 'Action, Comedy', 'Mahesh Babu, Samantha Ruth Prabhu', 'Srinu Vaitla', 'Ram Achanta, Gopi Achanta', 'Mahesh Babu, Samantha Ruth Prabhu', 7.8, NULL, 'Mahesh in an action comedy role', 'A politician\'s son seeks revenge for his father\'s attempted murder.', 'Hotstar', 'Superhit', 175, 'Telugu', 'Srinu Vaitla', 'Kona Venkat', 'Ram Achanta, Gopi Achanta', 'Mahesh Babu, Samantha Ruth Prabhu', 'K. V. Guhan', 'M. R. Varma', 'Thaman S', '14 Reels Entertainment', 'Sri Venkateswara Creations', '2011-09-23', 'India', 35.00, 101.00),
(31, 'Businessman', 2012, 'Action, Crime', 'Mahesh Babu, Kajal Aggarwal', 'Puri Jagannadh', 'R. R. Venkat', 'Mahesh Babu, Kajal Aggarwal', 7.1, NULL, 'Fast-paced action drama', 'A ruthless businessman with criminal tendencies aims to become a powerful politician.', 'Netflix', 'Superhit', 131, 'Telugu', 'Puri Jagannadh', 'Puri Jagannadh', 'R. R. Venkat', 'Mahesh Babu, Kajal Aggarwal', 'Shyam K. Naidu', 'S. R. Shekhar', 'Thaman S', 'R. R. Movie Makers', 'Sri Venkateswara Creations', '2012-01-13', 'India', 40.00, 70.00),
(32, 'Srimanthudu', 2015, 'Action, Drama', 'Mahesh Babu, Shruti Haasan', 'Koratala Siva', 'Y. Naveen, Y. Ravi Shankar', 'Mahesh Babu, Shruti Haasan', 7.7, NULL, 'A socially relevant hit', 'A wealthy young man adopts a village and fights for its development.', 'Hotstar', 'Blockbuster', 158, 'Telugu', 'Koratala Siva', 'Koratala Siva', 'Y. Naveen, Y. Ravi Shankar', 'Mahesh Babu, Shruti Haasan', 'Madhie', 'Kotagiri Venkateswara Rao', 'Devi Sri Prasad', 'Mythri Movie Makers', 'Sri Venkateswara Creations', '2015-08-07', 'India', 40.00, 200.00),
(33, 'Bharat Ane Nenu', 2018, 'Political Drama', 'Mahesh Babu, Kiara Advani', 'Koratala Siva', 'DVV Danayya', 'Mahesh Babu, Kiara Advani', 7.8, NULL, 'Political blockbuster', 'A young graduate unexpectedly becomes the Chief Minister and fights corruption.', 'Amazon Prime', 'Blockbuster', 173, 'Telugu', 'Koratala Siva', 'Koratala Siva', 'DVV Danayya', 'Mahesh Babu, Kiara Advani', 'Ravi K. Chandran', 'Sreekar Prasad', 'Devi Sri Prasad', 'DVV Entertainments', 'Sri Venkateswara Creations', '2018-04-20', 'India', 65.00, 225.00),
(34, 'Maharshi', 2019, 'Action, Drama', 'Mahesh Babu, Pooja Hegde', 'Vamshi Paidipally', 'C. Ashwini Dutt, Dil Raju', 'Mahesh Babu, Pooja Hegde', 7.3, NULL, 'A message-oriented film', 'A billionaire returns to his village to help farmers fight corporate greed.', 'Amazon Prime', 'Superhit', 176, 'Telugu', 'Vamshi Paidipally', 'Vamshi Paidipally', 'C. Ashwini Dutt, Dil Raju', 'Mahesh Babu, Pooja Hegde', 'K. U. Mohanan', 'Praveen K. L.', 'Devi Sri Prasad', 'Sri Venkateswara Creations', 'Sri Venkateswara Creations', '2019-05-09', 'India', 70.00, 185.00),
(35, 'Sarkaru Vaari Paata', 2022, 'Action, Comedy', 'Mahesh Babu, Keerthy Suresh', 'Parasuram', 'Mythri Movie Makers', 'Mahesh Babu, Keerthy Suresh', 6.3, NULL, 'An entertaining commercial film', 'A finance agent takes down a corrupt politician.', 'Amazon Prime', 'Superhit', 162, 'Telugu', 'Parasuram', 'Parasuram', 'Mythri Movie Makers', 'Mahesh Babu, Keerthy Suresh', 'R. Madhi', 'Marthand K. Venkatesh', 'Thaman S', 'Mythri Movie Makers', '14 Reels Plus', '2022-05-12', 'India', 60.00, 150.00),
(36, 'Chirutha', 2007, 'Action', 'Ram Charan, Neha Sharma', 'Puri Jagannadh', 'C. Ashwini Dutt', 'Ram Charan, Neha Sharma', 5.5, NULL, 'Ram Charan\'s debut film', 'A young man seeks vengeance for his father\'s murder.', 'Hotstar', 'Hit', 149, 'Telugu', 'Puri Jagannadh', 'Puri Jagannadh', 'C. Ashwini Dutt', 'Ram Charan, Neha Sharma', 'Shyam K. Naidu', 'Marthand K. Venkatesh', 'Mani Sharma', 'Vyjayanthi Movies', 'Sri Venkateswara Creations', '2007-09-28', 'India', 20.00, 45.00),
(37, 'Magadheera', 2009, 'Action, Fantasy', 'Ram Charan, Kajal Aggarwal', 'S. S. Rajamouli', 'Allu Aravind', 'Ram Charan, Kajal Aggarwal', 7.7, NULL, 'One of the biggest blockbusters of Telugu cinema', 'A warrior reborn after 400 years seeks his love and revenge.', 'Zee5', 'Blockbuster', 169, 'Telugu', 'S. S. Rajamouli', 'V. Vijayendra Prasad', 'Allu Aravind', 'Ram Charan, Kajal Aggarwal', 'K. K. Senthil Kumar', 'Kotagiri Venkateswara Rao', 'M. M. Keeravani', 'Geetha Arts', 'Sri Venkateswara Creations', '2009-07-31', 'India', 40.00, 150.00),
(38, 'Racha', 2012, 'Action, Drama', 'Ram Charan, Tamannaah Bhatia', 'Sampath Nandi', 'R. B. Choudary', 'Ram Charan, Tamannaah Bhatia', 4.4, NULL, 'Mass entertainer', 'A gambler takes part in a challenge to save his adopted father\'s life.', 'Hotstar', 'Hit', 144, 'Telugu', 'Sampath Nandi', 'Sampath Nandi', 'R. B. Choudary', 'Ram Charan, Tamannaah Bhatia', 'Sameer Reddy', 'Gautham Raju', 'Mani Sharma', 'Megaa Super Good Films', 'Sri Venkateswara Creations', '2012-04-05', 'India', 25.00, 65.00),
(39, 'Naayak', 2013, 'Action, Comedy', 'Ram Charan, Kajal Aggarwal', 'V. V. Vinayak', 'D. V. V. Danayya', 'Ram Charan, Kajal Aggarwal', 5.2, NULL, 'Commercial mass entertainer', 'A young man fights for justice while managing his double life.', 'Hotstar', 'Superhit', 156, 'Telugu', 'V. V. Vinayak', 'Akula Siva', 'D. V. V. Danayya', 'Ram Charan, Kajal Aggarwal', 'Chota K. Naidu', 'Gautham Raju', 'Thaman S', 'Universal Media', 'Sri Venkateswara Creations', '2013-01-09', 'India', 35.00, 70.00),
(40, 'Yevadu', 2014, 'Action, Thriller', 'Ram Charan, Shruti Haasan', 'Vamshi Paidipally', 'Dil Raju', 'Ram Charan, Shruti Haasan', 5.9, NULL, 'A revenge drama with a twist', 'A man undergoes plastic surgery and takes revenge on his enemies.', 'Amazon Prime', 'Hit', 165, 'Telugu', 'Vamshi Paidipally', 'Vamshi Paidipally', 'Dil Raju', 'Ram Charan, Shruti Haasan', 'Ram Prasad', 'Marthand K. Venkatesh', 'Devi Sri Prasad', 'Sri Venkateswara Creations', 'Sri Venkateswara Creations', '2014-01-12', 'India', 35.00, 85.00),
(41, 'Govindudu Andarivadele', 2014, 'Drama', 'Ram Charan, Kajal Aggarwal', 'Krishna Vamsi', 'Bandla Ganesh', 'Ram Charan, Kajal Aggarwal', 5.7, NULL, 'A family drama with emotions and action', 'A man returns to his ancestral village to resolve family issues.', 'Zee5', 'Hit', 160, 'Telugu', 'Krishna Vamsi', 'Krishna Vamsi', 'Bandla Ganesh', 'Ram Charan, Kajal Aggarwal', 'Sameer Reddy', 'Nandamuri Hari', 'Yuvan Shankar Raja', 'Parameswara Art Productions', 'Sri Venkateswara Creations', '2014-10-01', 'India', 40.00, 70.00),
(42, 'Dhruva', 2016, 'Action, Thriller', 'Ram Charan, Rakul Preet Singh', 'Surender Reddy', 'Allu Aravind', 'Ram Charan, Rakul Preet Singh', 7.9, NULL, 'Highly praised action thriller', 'An IPS officer sets out to bring down a powerful crime lord.', 'Hotstar', 'Blockbuster', 165, 'Telugu', 'Surender Reddy', 'Mohan Raja', 'Allu Aravind', 'Ram Charan, Rakul Preet Singh', 'P. S. Vinod', 'Naveen Nooli', 'Hiphop Tamizha', 'Geetha Arts', 'Sri Venkateswara Creations', '2016-12-09', 'India', 50.00, 125.00),
(43, 'Rangasthalam', 2018, 'Action, Drama', 'Ram Charan, Samantha Akkineni', 'Sukumar', 'Mythri Movie Makers', 'Ram Charan, Samantha Akkineni', 8.4, NULL, 'Critically acclaimed film', 'A man with hearing impairment fights against a corrupt system in his village.', 'Amazon Prime', 'Blockbuster', 179, 'Telugu', 'Sukumar', 'Sukumar', 'Mythri Movie Makers', 'Ram Charan, Samantha Akkineni', 'R. Rathnavelu', 'Navin Nooli', 'Devi Sri Prasad', 'Mythri Movie Makers', 'Sri Venkateswara Creations', '2018-03-30', 'India', 60.00, 216.00),
(44, 'Vinaya Vidheya Rama', 2019, 'Action', 'Ram Charan, Kiara Advani', 'Boyapati Srinu', 'D. V. V. Danayya', 'Ram Charan, Kiara Advani', 3.5, NULL, 'Commercial mass entertainer', 'A man must protect his family from a powerful rival.', 'Zee5', 'Above average', 146, 'Telugu', 'Boyapati Srinu', 'Boyapati Srinu', 'D. V. V. Danayya', 'Ram Charan, Kiara Advani', 'Rishi Punjabi', 'Kotagiri Venkateswara Rao', 'Devi Sri Prasad', 'DVV Entertainments', 'Sri Venkateswara Creations', '2019-01-11', 'India', 70.00, 95.00),
(45, 'RRR', 2022, 'Action, Drama', 'Ram Charan, N. T. Rama Rao Jr.', 'S. S. Rajamouli', 'D. V. V. Danayya', 'Ram Charan, N. T. Rama Rao Jr.', 8.8, NULL, 'Global hit, a cinematic spectacle', 'Two revolutionaries fight against British colonial rule.', 'Netflix', 'Blockbuster', 186, 'Telugu', 'S. S. Rajamouli', 'V. Vijayendra Prasad', 'D. V. V. Danayya', 'Ram Charan, N. T. Rama Rao Jr.', 'K. K. Senthil Kumar', 'Sreekar Prasad', 'M. M. Keeravani', 'DVV Entertainments', 'Pen Studios', '2022-03-25', 'India', 550.00, 1200.00),
(46, 'Aadi', 2002, 'Action, Drama', 'N. T. Rama Rao Jr., Keerthi Chawla', 'V. V. Vinayak', 'Bellamkonda Suresh', 'N. T. Rama Rao Jr., Keerthi Chawla', 6.9, NULL, 'Breakthrough film for Jr. NTR', 'A young man seeks revenge for his father\'s murder.', 'Zee5', 'Blockbuster', 158, 'Telugu', 'V. V. Vinayak', 'V. V. Vinayak', 'Bellamkonda Suresh', 'N. T. Rama Rao Jr., Keerthi Chawla', 'Chota K. Naidu', 'Gautham Raju', 'Mani Sharma', 'Sri Sai Ganesh Productions', 'Sri Venkateswara Creations', '2002-03-28', 'India', 12.00, 40.00),
(47, 'Simhadri', 2003, 'Action, Drama', 'N. T. Rama Rao Jr., Bhoomika Chawla', 'S. S. Rajamouli', 'V. Vijayendra Prasad', 'N. T. Rama Rao Jr., Bhoomika Chawla', 7.8, NULL, 'Huge commercial success', 'A man works for a landlord and protects a family under attack.', 'Hotstar', 'Blockbuster', 175, 'Telugu', 'S. S. Rajamouli', 'V. Vijayendra Prasad', 'V. Vijayendra Prasad', 'N. T. Rama Rao Jr., Bhoomika Chawla', 'Ravi Varman', 'Kotagiri Venkateswara Rao', 'M. M. Keeravani', 'V. V. Creations', 'Sri Venkateswara Creations', '2003-07-09', 'India', 16.00, 55.00),
(48, 'Yamadonga', 2007, 'Fantasy, Comedy', 'N. T. Rama Rao Jr., Priyamani', 'S. S. Rajamouli', 'Urvasi Ram Prasad', 'N. T. Rama Rao Jr., Priyamani', 7.3, NULL, 'Fantasy drama with Jr. NTR in a dual role', 'A thief meets Yama, the god of death, and changes his fate.', 'Zee5', 'Blockbuster', 185, 'Telugu', 'S. S. Rajamouli', 'S. S. Rajamouli', 'Urvasi Ram Prasad', 'N. T. Rama Rao Jr., Priyamani', 'K. K. Senthil Kumar', 'Kotagiri Venkateswara Rao', 'M. M. Keeravani', 'Vishwamitra Creations', 'Sri Venkateswara Creations', '2007-08-15', 'India', 20.00, 80.00),
(49, 'Brindavanam', 2010, 'Action, Drama', 'N. T. Rama Rao Jr., Kajal Aggarwal', 'Vamshi Paidipally', 'Dil Raju', 'N. T. Rama Rao Jr., Kajal Aggarwal', 7.1, NULL, 'A family entertainer', 'A man pretends to be a woman\'s lover to solve her family problems.', 'Amazon Prime', 'Superhit', 170, 'Telugu', 'Vamshi Paidipally', 'Vamshi Paidipally', 'Dil Raju', 'N. T. Rama Rao Jr., Kajal Aggarwal', 'Chota K. Naidu', 'Marthand K. Venkatesh', 'Thaman S', 'Sri Venkateswara Creations', 'Sri Venkateswara Creations', '2010-10-14', 'India', 25.00, 80.00),
(50, 'Baadshah', 2013, 'Action, Comedy', 'N. T. Rama Rao Jr., Kajal Aggarwal', 'Sreenu Vaitla', 'Bandla Ganesh', 'N. T. Rama Rao Jr., Kajal Aggarwal', 7.1, NULL, 'High-energy action comedy', 'An undercover cop infiltrates a crime syndicate.', 'Hotstar', 'Hit', 157, 'Telugu', 'Sreenu Vaitla', 'Gopi Mohan', 'Bandla Ganesh', 'N. T. Rama Rao Jr., Kajal Aggarwal', 'K. V. Guhan', 'M. R. Varma', 'Thaman S', 'Parameswara Art Productions', 'Sri Venkateswara Creations', '2013-04-05', 'India', 55.00, 80.00),
(51, 'Nannaku Prematho', 2016, 'Action, Drama', 'N. T. Rama Rao Jr., Rakul Preet Singh', 'Sukumar', 'B. V. S. N. Prasad', 'N. T. Rama Rao Jr., Rakul Preet Singh', 7.7, NULL, 'Critically acclaimed', 'A son avenges his father\'s downfall caused by a cunning businessman.', 'Zee5', 'Superhit', 168, 'Telugu', 'Sukumar', 'Sukumar', 'B. V. S. N. Prasad', 'N. T. Rama Rao Jr., Rakul Preet Singh', 'Vijay K. Chakravarthy', 'Navin Nooli', 'Devi Sri Prasad', 'Sri Venkateswara Creations', 'Sri Venkateswara Creations', '2016-01-13', 'India', 45.00, 87.00),
(52, 'Janatha Garage', 2016, 'Action, Drama', 'N. T. Rama Rao Jr., Mohanlal', 'Koratala Siva', 'Mythri Movie Makers', 'N. T. Rama Rao Jr., Mohanlal', 7.3, NULL, 'Powerful social drama', 'A mechanic becomes involved in a vigilante group fighting for justice.', 'Amazon Prime', 'Blockbuster', 162, 'Telugu', 'Koratala Siva', 'Koratala Siva', 'Mythri Movie Makers', 'N. T. Rama Rao Jr., Mohanlal', 'Tirru', 'Kotagiri Venkateswara Rao', 'Devi Sri Prasad', 'Mythri Movie Makers', 'Sri Venkateswara Creations', '2016-09-01', 'India', 50.00, 135.00),
(53, 'Jai Lava Kusa', 2017, 'Action, Drama', 'N. T. Rama Rao Jr., Nivetha Thomas', 'K. S. Ravindra', 'Nandamuri Kalyan Ram', 'N. T. Rama Rao Jr., Nivetha Thomas', 7.2, NULL, 'Jr. NTR in triple roles', 'Three brothers with different personalities face off against each other.', 'Zee5', 'Superhit', 150, 'Telugu', 'K. S. Ravindra', 'K. S. Ravindra', 'Nandamuri Kalyan Ram', 'N. T. Rama Rao Jr., Nivetha Thomas', 'Chota K. Naidu', 'Kotagiri Venkateswara Rao', 'Devi Sri Prasad', 'N. T. R. Arts', 'Sri Venkateswara Creations', '2017-09-21', 'India', 45.00, 120.00),
(54, 'Aravinda Sametha Veera Raghava', 2018, 'Action, Drama', 'N. T. Rama Rao Jr., Pooja Hegde', 'Trivikram Srinivas', 'S. Radha Krishna', 'N. T. Rama Rao Jr., Pooja Hegde', 7.5, NULL, 'A well-received mass entertainer', 'A young man fights to put an end to faction violence.', 'Zee5', 'Blockbuster', 162, 'Telugu', 'Trivikram Srinivas', 'Trivikram Srinivas', 'S. Radha Krishna', 'N. T. Rama Rao Jr., Pooja Hegde', 'P. S. Vinod', 'Navin Nooli', 'Thaman S', 'Haarika & Hassine Creations', 'Sri Venkateswara Creations', '2018-10-11', 'India', 60.00, 140.00),
(55, 'RRR', 2022, 'Action, Drama', 'N. T. Rama Rao Jr., Ram Charan', 'S. S. Rajamouli', 'D. V. V. Danayya', 'N. T. Rama Rao Jr., Ram Charan', 8.8, NULL, 'Global blockbuster', 'Two revolutionaries fight the British Empire in pre-independent India.', 'Netflix', 'Blockbuster', 186, 'Telugu', 'S. S. Rajamouli', 'V. Vijayendra Prasad', 'D. V. V. Danayya', 'N. T. Rama Rao Jr., Ram Charan', 'K. K. Senthil Kumar', 'Sreekar Prasad', 'M. M. Keeravani', 'DVV Entertainments', 'Pen Studios', '2022-03-25', 'India', 550.00, 1200.00),
(56, 'Temper', 2015, 'Action, Thriller', 'N. T. Rama Rao Jr., Kajal Aggarwal', 'Puri Jagannadh', 'Bandla Ganesh', 'N. T. Rama Rao Jr., Kajal Aggarwal', 7.4, NULL, 'Jr. NTR as a corrupt cop', 'A corrupt cop decides to reform himself after meeting a rape victim.', 'Zee5', 'Blockbuster', 140, 'Telugu', 'Puri Jagannadh', 'Vakkantham Vamsi', 'Bandla Ganesh', 'N. T. Rama Rao Jr., Kajal Aggarwal', 'Shyam K. Naidu', 'S. R. Shekhar', 'Anup Rubens', 'Parameswara Art Productions', 'Sri Venkateswara Creations', '2015-02-13', 'India', 35.00, 100.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `location` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `age`, `gender`, `phone`, `location`, `dob`, `created_at`) VALUES
(3, 'BHAVANA PERECHARLA', 'bhavanaperecharla@gmail.com', '$2y$10$vjdWEf/uKcvwp2M0rGrTEOTL3HeE/I32lg0giOUcuR3Y2weIFW9iK', 20, 'Female', '9491119155', 'Guntur', '2003-12-24', '2024-09-29 04:23:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Bio`
--
ALTER TABLE `Bio`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Movies`
--
ALTER TABLE `Movies`
  ADD PRIMARY KEY (`MovieID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Bio`
--
ALTER TABLE `Bio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `Movies`
--
ALTER TABLE `Movies`
  MODIFY `MovieID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

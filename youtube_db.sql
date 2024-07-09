-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2024 at 07:27 PM
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
-- Database: `youtube_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channels`
--

CREATE TABLE `youtube_channels` (
  `id` int(11) NOT NULL,
  `channel_id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channels`
--

INSERT INTO `youtube_channels` (`id`, `channel_id`, `name`, `description`, `profile_picture`) VALUES
(1, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'Google for Developers', 'Subscribe to join a community of creative developers and learn the latest in Google technology — from AI and cloud, to mobile and web.\n\nExplore more at developers.google.com\n\n', 'https://yt3.ggpht.com/PrZwRLLSaiXr5t-GRUhUFch2Qlol1G_voyuo-jJ4y-mqcVza7o7j_24yGRiydUP7UsQiKwo7=s88-c-k-c0x00ffffff-no-rj');

-- --------------------------------------------------------

--
-- Table structure for table `youtube_channel_videos`
--

CREATE TABLE `youtube_channel_videos` (
  `id` int(11) NOT NULL,
  `channel_id` varchar(255) NOT NULL,
  `video_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `video_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `youtube_channel_videos`
--

INSERT INTO `youtube_channel_videos` (`id`, `channel_id`, `video_id`, `title`, `description`, `thumbnail`, `video_link`) VALUES
(1, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '1Wehg6Bzrn8', 'Generative AI on-device at Google I/O 2024', 'Learn about Generative AI on-device. At Google I/O 2024, the GenAI on-device demonstrated the Gemma 2B model running on a ...', 'https://i.ytimg.com/vi/1Wehg6Bzrn8/default.jpg', 'https://www.youtube.com/watch?v=1Wehg6Bzrn8'),
(2, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '-NgqTMLRhKU', '💡🔧 Gemini API and Gemma just got some awesome updates!', 'Build with a 2M context window, now available to all developers via Gemini 1.5 Pro, optimize long context window costs with ...', 'https://i.ytimg.com/vi/-NgqTMLRhKU/default.jpg', 'https://www.youtube.com/watch?v=-NgqTMLRhKU'),
(3, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'IKP_sj_JcTg', 'What advice would you give a student developer?', 'We asked some members of the GDSC community to tell us pieces of advice they would give to other student devs. Watch this ...', 'https://i.ytimg.com/vi/IKP_sj_JcTg/default.jpg', 'https://www.youtube.com/watch?v=IKP_sj_JcTg'),
(4, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'ZhExnit0UdM', 'Developing for Indic languages | Gemma and Navarasa (Extended Edition)', 'While many early large language models were predominantly trained on English language data, the field is rapidly evolving.', 'https://i.ytimg.com/vi/ZhExnit0UdM/default.jpg', 'https://www.youtube.com/watch?v=ZhExnit0UdM'),
(5, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'FqZpuC3RHOA', 'NEW Client Libraries for Google Wallet? Yes, we have them.', 'Live Q&A: Have questions or misconceptions? Join us for a live Q&A session where we\'ll address your queries and clear up any ...', 'https://i.ytimg.com/vi/FqZpuC3RHOA/default_live.jpg', 'https://www.youtube.com/watch?v=FqZpuC3RHOA'),
(6, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'hleLlcHwQLM', 'Google I/O 2023 Developer Keynote in 5 minutes', 'Discover what\'s new from Google, including top takeaways and highlights announced at Google I/O 2023. From deep investments ...', 'https://i.ytimg.com/vi/hleLlcHwQLM/default.jpg', 'https://www.youtube.com/watch?v=hleLlcHwQLM'),
(7, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'r8T0SnwHRNI', 'Developer keynote (Google I/O &#39;23)', 'Learn about the latest updates to our developer products and platforms at Google I/O 2023. To watch this keynote interpreted in ...', 'https://i.ytimg.com/vi/r8T0SnwHRNI/default.jpg', 'https://www.youtube.com/watch?v=r8T0SnwHRNI'),
(8, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'iR2O2GPbB0E', 'What are Large Language Models (LLMs)?', 'Learn about Large Language Models (LLMs), a powerful neural network that enables computers to process and generate ...', 'https://i.ytimg.com/vi/iR2O2GPbB0E/default.jpg', 'https://www.youtube.com/watch?v=iR2O2GPbB0E'),
(9, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'ilKx1kvjt6g', 'Firebase shortcuts, training robots, and more dev news!', 'TL;DR 308 | The Google Developer News Show 0:00 - Introduction 0:11 - Coding Kickstart Practice Session 3 ...', 'https://i.ytimg.com/vi/ilKx1kvjt6g/default.jpg', 'https://www.youtube.com/watch?v=ilKx1kvjt6g'),
(10, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'uma702Hm4R0', 'Kick Start, new MAD Skills series, and more dev news!', 'TL;DR 307 | The Google Developer News Show 0:00 - Introduction 0:11 - Kick Start Round E begins Aug 21, 2022 ...', 'https://i.ytimg.com/vi/uma702Hm4R0/default.jpg', 'https://www.youtube.com/watch?v=uma702Hm4R0'),
(11, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'gVIEbeqQQW8', 'How to integrate Wear OS with App Actions', 'App Actions is the nexus that enables users to quickly access an app\'s functionality with just their voice. But what if we told you ...', 'https://i.ytimg.com/vi/gVIEbeqQQW8/default.jpg', 'https://www.youtube.com/watch?v=gVIEbeqQQW8'),
(12, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'Vo4GmHxZzZo', 'Welcome to the 2022 Code Jam World Finals!', 'On August 5, 2022, top programmers from around the world will compete virtually for the championship title and grand prize of ...', 'https://i.ytimg.com/vi/Vo4GmHxZzZo/default.jpg', 'https://www.youtube.com/watch?v=Vo4GmHxZzZo'),
(13, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'PHpveYiS0OQ', '2022 Solution Challenge Demo Day', 'Join us for the 2022 Solution Challenge Demo Day hosted by Google Developer Student Clubs! Over 2500 students and 830 ...', 'https://i.ytimg.com/vi/PHpveYiS0OQ/default.jpg', 'https://www.youtube.com/watch?v=PHpveYiS0OQ'),
(14, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'htG27DW5ju4', 'Google I/O 2022 Developer Keynote in 8 minutes', 'What are the top takeaways from Google I/O 2022 for Google Developers? Get a quick overview of announcements for ...', 'https://i.ytimg.com/vi/htG27DW5ju4/default.jpg', 'https://www.youtube.com/watch?v=htG27DW5ju4'),
(15, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '2gTCghy-dU4', 'Google Wallet API tutorial for Google Developers | Google I/O 2022', 'In this Google Wallet API tutorial, Google Developers can explore Google Wallet for Android with a focus on quick and consistent ...', 'https://i.ytimg.com/vi/2gTCghy-dU4/default.jpg', 'https://www.youtube.com/watch?v=2gTCghy-dU4'),
(16, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'ww7RItTgO48', 'Developer Keynote (Google I/O &#39;22) — American Sign Language', '0:00 Introduction 2:53 Augmented Reality 5:46 Android 24:12 Web 30:14 Flutter 35:22 Firebase 41:59 Google Cloud 46:27 ...', 'https://i.ytimg.com/vi/ww7RItTgO48/default.jpg', 'https://www.youtube.com/watch?v=ww7RItTgO48'),
(17, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'qBkyU1TJKDg', 'Developer Keynote (Google I/O &#39;22)', 'In this Developer Keynote from Google I/O 2022, Google Developers can learn about our developer products and platforms.', 'https://i.ytimg.com/vi/qBkyU1TJKDg/default.jpg', 'https://www.youtube.com/watch?v=qBkyU1TJKDg'),
(18, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'KjfMPxS2on8', 'Machine Learning basics', 'When you think of Machine Learning, what do you think of? Learn what Machine Learning is, how computers find patterns, and ...', 'https://i.ytimg.com/vi/KjfMPxS2on8/default.jpg', 'https://www.youtube.com/watch?v=KjfMPxS2on8'),
(19, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'XJ476O86hbU', 'AI and the Gartner Hype Cycle', 'Welcome to AI for Anyone! We\'ll take a journey to explore Artificial Intelligence, along with Machine Learning and Deep Learning.', 'https://i.ytimg.com/vi/XJ476O86hbU/default.jpg', 'https://www.youtube.com/watch?v=XJ476O86hbU'),
(20, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '_2yYPQxOTL4', 'Top 7 Stadia announcements from Google for Games Developer Summit', 'Learn how the Stadia team is helping developers bring their games to players faster than ever as we recap the top Stadia ...', 'https://i.ytimg.com/vi/_2yYPQxOTL4/default.jpg', 'https://www.youtube.com/watch?v=_2yYPQxOTL4'),
(21, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '1oc75GQFKvg', 'Google for Games Developer Summit 2022 Keynote', 'Learn about new solutions for game devs to make it easier to build high quality games and reach growing audiences around the ...', 'https://i.ytimg.com/vi/1oc75GQFKvg/default.jpg', 'https://www.youtube.com/watch?v=1oc75GQFKvg'),
(22, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'wZIQycr0F4c', 'Coding Practice with Kick Start 2022 – Session #1 problem walkthroughs', 'Join Google engineers for a walk through of each problem from the first session of Coding Practice with Kick Start. They provide ...', 'https://i.ytimg.com/vi/wZIQycr0F4c/default.jpg', 'https://www.youtube.com/watch?v=wZIQycr0F4c'),
(23, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'ZbnI4E3F_l4', 'Google’s Coding Competitions - Check out challenges for all skill levels', 'Google\'s Coding Competitions are back! Kick Start, Hash Code, and Code Jam return for another exciting season - try your hand ...', 'https://i.ytimg.com/vi/ZbnI4E3F_l4/default.jpg', 'https://www.youtube.com/watch?v=ZbnI4E3F_l4'),
(24, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'BC5OOJiVsQw', 'Introduction to Developer Student Clubs 2021 Solution Challenge Demo Day', 'Erica Hanson, Head of Google Developer Student Clubs at Google, kicks off the 2021 Solution Challenge Demo Day by sharing ...', 'https://i.ytimg.com/vi/BC5OOJiVsQw/default.jpg', 'https://www.youtube.com/watch?v=BC5OOJiVsQw'),
(25, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'FmhnbT7-RTc', '2021 Solution Challenge Demo Day', 'Join us for the 2021 Solution Challenge Demo Day hosted by Google Developer Student Clubs. The top 10 finalist teams will ...', 'https://i.ytimg.com/vi/FmhnbT7-RTc/default.jpg', 'https://www.youtube.com/watch?v=FmhnbT7-RTc'),
(26, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'Jqf52nThBt0', 'Join a Google Developer Student Club', 'Google Developer Student Clubs are university-based clubs where students learn Google technology and use their skills to build ...', 'https://i.ytimg.com/vi/Jqf52nThBt0/default.jpg', 'https://www.youtube.com/watch?v=Jqf52nThBt0'),
(27, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'Ys9N_pCFRDg', 'Introduction to Google Identity Services', 'Announcing Google Identity Services, a suite of identity products that delivers a simple, safe, and privacy preserving solutions for ...', 'https://i.ytimg.com/vi/Ys9N_pCFRDg/default.jpg', 'https://www.youtube.com/watch?v=Ys9N_pCFRDg'),
(28, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'fGGO7Fpy-Gk', 'GameSnacks: Google&#39;s new HTML5 gaming platform', 'Mobile gaming is huge, and mobile HTML5 gaming is growing. Learn more about how GameSnacks helped HTML5 game ...', 'https://i.ytimg.com/vi/fGGO7Fpy-Gk/default.jpg', 'https://www.youtube.com/watch?v=fGGO7Fpy-Gk'),
(29, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'I0oNK-XHp0I', 'Stadia Keynote', 'Hear the latest and greatest from one of Stadia\'s business development leads. You\'ll learn about new offerings for all Stadia ...', 'https://i.ytimg.com/vi/I0oNK-XHp0I/default.jpg', 'https://www.youtube.com/watch?v=I0oNK-XHp0I'),
(30, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '8N7fYLWIoK4', 'Visual tickets on Google Pay', 'Google Pay provides a simple way to replace paper tickets with more convenient visual tickets which can be saved to your ...', 'https://i.ytimg.com/vi/8N7fYLWIoK4/default.jpg', 'https://www.youtube.com/watch?v=8N7fYLWIoK4'),
(31, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'DozT--NclbM', 'App Actions overview', 'App Actions is how developers can integrate Google Assistant into their Android App. Enable your users to launch specific ...', 'https://i.ytimg.com/vi/DozT--NclbM/default.jpg', 'https://www.youtube.com/watch?v=DozT--NclbM'),
(32, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'gAzIkjkJSzM', 'Build an AR application using the WebXR API | Workshop', 'Learn how to expand the reach and scale of your AR applications with a simple AR experience for the immersive web.', 'https://i.ytimg.com/vi/gAzIkjkJSzM/default.jpg', 'https://www.youtube.com/watch?v=gAzIkjkJSzM'),
(33, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'D_mVOAXcrtc', 'Developer Keynote (Google I/O &#39;21) - American Sign Language', 'Learn about the latest updates to our developer products and platforms at Google from Google Developers. To watch this keynote ...', 'https://i.ytimg.com/vi/D_mVOAXcrtc/default.jpg', 'https://www.youtube.com/watch?v=D_mVOAXcrtc'),
(34, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'kH0nafGhbww', 'Google Pay API and web integration | Google Developers', 'What are the Google Pay new features? Google Developers can explore a live integration of the Google Pay online APIs into a ...', 'https://i.ytimg.com/vi/kH0nafGhbww/default.jpg', 'https://www.youtube.com/watch?v=kH0nafGhbww'),
(35, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'b8TGCuxZr2g', 'Join us for #GoogleIO!', 'We\'re back and embracing the virtual space! Join us for this year\'s Google I/O event for a first look at our latest developer products, ...', 'https://i.ytimg.com/vi/b8TGCuxZr2g/default.jpg', 'https://www.youtube.com/watch?v=b8TGCuxZr2g'),
(36, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'earTjC0iSjg', 'What are Google Developer Student Clubs?', 'Google Developer Student Clubs train hundreds of thousands of university student developers globally. Google selects students ...', 'https://i.ytimg.com/vi/earTjC0iSjg/default.jpg', 'https://www.youtube.com/watch?v=earTjC0iSjg'),
(37, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'PgPF0JaTlkQ', 'Google Developer Student Clubs 2021 Solution Challenge', 'Welcome to the Google Developer Student Clubs 2021 Solution Challenge. The mission of this year\'s challenge is to use Google ...', 'https://i.ytimg.com/vi/PgPF0JaTlkQ/default.jpg', 'https://www.youtube.com/watch?v=PgPF0JaTlkQ'),
(38, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '4AqnrLr_TSM', 'Firebase Authentication update, Cloud SQL database adds PostgreSQL 13, and more!', 'TL;DR 226 | The Google Developer News Show 0:00 Use Firebase Auth on Devices without Google Play Services ...', 'https://i.ytimg.com/vi/4AqnrLr_TSM/default.jpg', 'https://www.youtube.com/watch?v=4AqnrLr_TSM'),
(39, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '6Hd_hjG3s_s', 'Announcing Google Assistant Developer Day 2020', 'Thanks for joining us live on October 8th for the virtual Google Assistant Developer Day, where we announced new features, tools, ...', 'https://i.ytimg.com/vi/6Hd_hjG3s_s/default.jpg', 'https://www.youtube.com/watch?v=6Hd_hjG3s_s'),
(40, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'ysGfsOFwSCg', 'Kotlin 1.4, Firebase Hosting updates, Google Cloud Game Servers, and more!', 'TL;DR 216 | The Google Developer News Show 0:00 New language features and more in Kotlin 1.4 → https://goo.gle/3jnHy1z ...', 'https://i.ytimg.com/vi/ysGfsOFwSCg/default.jpg', 'https://www.youtube.com/watch?v=ysGfsOFwSCg'),
(41, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'q3Jd98xyBAA', 'AR Realism with the ARCore Depth API', 'With the ARCore Depth API, developers can use our depth-from-motion algorithms to create a depth map with a single RGB ...', 'https://i.ytimg.com/vi/q3Jd98xyBAA/default.jpg', 'https://www.youtube.com/watch?v=q3Jd98xyBAA'),
(42, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'ZH5WnN5dtvk', 'Android 11 Beta, Google Play Asset Delivery, Firebase Crashlytics SDK, &amp; much more!', 'TL;DR 206 | The Google Developer News Show 0:00 Android 11 Beta → https://goo.gle/3fzChBS 0:25 Introducing Google Play ...', 'https://i.ytimg.com/vi/ZH5WnN5dtvk/default.jpg', 'https://www.youtube.com/watch?v=ZH5WnN5dtvk'),
(43, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'onW8gbbDpdQ', 'Announcing Firebase Live, Flutter Day, Java 11 on Google Cloud Functions, &amp; more!', 'TL;DR 205 | The Google Developer News Show •Announcing Firebase Live (Firebase) → https://goo.gle/3d4ofrb •Firebase ...', 'https://i.ytimg.com/vi/onW8gbbDpdQ/default.jpg', 'https://www.youtube.com/watch?v=onW8gbbDpdQ'),
(44, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'QWdYWwW6OAE', 'Machine Learning Foundations: Ep #7 - Image augmentation and overfitting', 'Machine Learning Foundations is a free training course where you\'ll learn the fundamentals of building machine learned models ...', 'https://i.ytimg.com/vi/QWdYWwW6OAE/default.jpg', 'https://www.youtube.com/watch?v=QWdYWwW6OAE'),
(45, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'nq7_ZYJPWf0', 'Machine Learning Foundations: Ep #6 - Convolutional cats and dogs', 'Machine Learning Foundations is a free training course where you\'ll learn the fundamentals of building machine learned models ...', 'https://i.ytimg.com/vi/nq7_ZYJPWf0/default.jpg', 'https://www.youtube.com/watch?v=nq7_ZYJPWf0'),
(46, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'FkiHjuZ2gv8', 'Adobe XD support for Flutter, Architecture Framework, temporary closures with Places API, &amp; more!', 'TL;DR 204 | The Google Developer News Show •Announcing Adobe XD support for Flutter (Flutter) → https://goo.gle/2LJ8GJg ...', 'https://i.ytimg.com/vi/FkiHjuZ2gv8/default.jpg', 'https://www.youtube.com/watch?v=FkiHjuZ2gv8'),
(47, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'dd8H4fiL9Yc', 'Machine Learning Foundations: Ep #4 - Coding with Convolutional Neural Networks', 'Machine Learning Foundations is a free training course where you\'ll learn the fundamentals of building machine learned models ...', 'https://i.ytimg.com/vi/dd8H4fiL9Yc/default.jpg', 'https://www.youtube.com/watch?v=dd8H4fiL9Yc'),
(48, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'PCgLmzkRM38', 'Machine Learning Foundations: Ep #3 - Convolutions and pooling', 'Machine Learning Foundations is a free training course where you\'ll learn the fundamentals of building machine learned models ...', 'https://i.ytimg.com/vi/PCgLmzkRM38/default.jpg', 'https://www.youtube.com/watch?v=PCgLmzkRM38'),
(49, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'j-35y1M9rRU', 'Computer vision by building a neural network with TensorFlow | Machine Learning Foundations', 'Machine Learning Foundations is a free training course where you\'ll learn the fundamentals of building machine learned models ...', 'https://i.ytimg.com/vi/j-35y1M9rRU/default.jpg', 'https://www.youtube.com/watch?v=j-35y1M9rRU'),
(50, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '_Z9TRANg4c0', 'Machine Learning Foundations: Ep #1 - What is ML?', 'Machine Learning Foundations is a free training course where you\'ll learn the fundamentals of building machine learned models ...', 'https://i.ytimg.com/vi/_Z9TRANg4c0/default.jpg', 'https://www.youtube.com/watch?v=_Z9TRANg4c0'),
(51, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '1Wehg6Bzrn8', 'Generative AI on-device at Google I/O 2024', 'Learn about Generative AI on-device. At Google I/O 2024, the GenAI on-device demonstrated the Gemma 2B model running on a ...', 'https://i.ytimg.com/vi/1Wehg6Bzrn8/default.jpg', 'https://www.youtube.com/watch?v=1Wehg6Bzrn8'),
(52, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '-NgqTMLRhKU', '💡🔧 Gemini API and Gemma just got some awesome updates!', 'Build with a 2M context window, now available to all developers via Gemini 1.5 Pro, optimize long context window costs with ...', 'https://i.ytimg.com/vi/-NgqTMLRhKU/default.jpg', 'https://www.youtube.com/watch?v=-NgqTMLRhKU'),
(53, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'ZhExnit0UdM', 'Developing for Indic languages | Gemma and Navarasa (Extended Edition)', 'While many early large language models were predominantly trained on English language data, the field is rapidly evolving.', 'https://i.ytimg.com/vi/ZhExnit0UdM/default.jpg', 'https://www.youtube.com/watch?v=ZhExnit0UdM'),
(54, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'FqZpuC3RHOA', 'NEW Client Libraries for Google Wallet? Yes, we have them.', 'Live Q&A: Have questions or misconceptions? Join us for a live Q&A session where we\'ll address your queries and clear up any ...', 'https://i.ytimg.com/vi/FqZpuC3RHOA/default_live.jpg', 'https://www.youtube.com/watch?v=FqZpuC3RHOA'),
(55, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'hleLlcHwQLM', 'Google I/O 2023 Developer Keynote in 5 minutes', 'Discover what\'s new from Google, including top takeaways and highlights announced at Google I/O 2023. From deep investments ...', 'https://i.ytimg.com/vi/hleLlcHwQLM/default.jpg', 'https://www.youtube.com/watch?v=hleLlcHwQLM'),
(56, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'r8T0SnwHRNI', 'Developer keynote (Google I/O &#39;23)', 'Learn about the latest updates to our developer products and platforms at Google I/O 2023. To watch this keynote interpreted in ...', 'https://i.ytimg.com/vi/r8T0SnwHRNI/default.jpg', 'https://www.youtube.com/watch?v=r8T0SnwHRNI'),
(57, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'iR2O2GPbB0E', 'What are Large Language Models (LLMs)?', 'Learn about Large Language Models (LLMs), a powerful neural network that enables computers to process and generate ...', 'https://i.ytimg.com/vi/iR2O2GPbB0E/default.jpg', 'https://www.youtube.com/watch?v=iR2O2GPbB0E'),
(58, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'ilKx1kvjt6g', 'Firebase shortcuts, training robots, and more dev news!', 'TL;DR 308 | The Google Developer News Show 0:00 - Introduction 0:11 - Coding Kickstart Practice Session 3 ...', 'https://i.ytimg.com/vi/ilKx1kvjt6g/default.jpg', 'https://www.youtube.com/watch?v=ilKx1kvjt6g'),
(59, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'uma702Hm4R0', 'Kick Start, new MAD Skills series, and more dev news!', 'TL;DR 307 | The Google Developer News Show 0:00 - Introduction 0:11 - Kick Start Round E begins Aug 21, 2022 ...', 'https://i.ytimg.com/vi/uma702Hm4R0/default.jpg', 'https://www.youtube.com/watch?v=uma702Hm4R0'),
(60, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'gVIEbeqQQW8', 'How to integrate Wear OS with App Actions', 'App Actions is the nexus that enables users to quickly access an app\'s functionality with just their voice. But what if we told you ...', 'https://i.ytimg.com/vi/gVIEbeqQQW8/default.jpg', 'https://www.youtube.com/watch?v=gVIEbeqQQW8'),
(61, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'Vo4GmHxZzZo', 'Welcome to the 2022 Code Jam World Finals!', 'On August 5, 2022, top programmers from around the world will compete virtually for the championship title and grand prize of ...', 'https://i.ytimg.com/vi/Vo4GmHxZzZo/default.jpg', 'https://www.youtube.com/watch?v=Vo4GmHxZzZo'),
(62, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'PHpveYiS0OQ', '2022 Solution Challenge Demo Day', 'Join us for the 2022 Solution Challenge Demo Day hosted by Google Developer Student Clubs! Over 2500 students and 830 ...', 'https://i.ytimg.com/vi/PHpveYiS0OQ/default.jpg', 'https://www.youtube.com/watch?v=PHpveYiS0OQ'),
(63, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'htG27DW5ju4', 'Google I/O 2022 Developer Keynote in 8 minutes', 'What are the top takeaways from Google I/O 2022 for Google Developers? Get a quick overview of announcements for ...', 'https://i.ytimg.com/vi/htG27DW5ju4/default.jpg', 'https://www.youtube.com/watch?v=htG27DW5ju4'),
(64, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '2gTCghy-dU4', 'Google Wallet API tutorial for Google Developers | Google I/O 2022', 'In this Google Wallet API tutorial, Google Developers can explore Google Wallet for Android with a focus on quick and consistent ...', 'https://i.ytimg.com/vi/2gTCghy-dU4/default.jpg', 'https://www.youtube.com/watch?v=2gTCghy-dU4'),
(65, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'ww7RItTgO48', 'Developer Keynote (Google I/O &#39;22) — American Sign Language', '0:00 Introduction 2:53 Augmented Reality 5:46 Android 24:12 Web 30:14 Flutter 35:22 Firebase 41:59 Google Cloud 46:27 ...', 'https://i.ytimg.com/vi/ww7RItTgO48/default.jpg', 'https://www.youtube.com/watch?v=ww7RItTgO48'),
(66, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'qBkyU1TJKDg', 'Developer Keynote (Google I/O &#39;22)', 'In this Developer Keynote from Google I/O 2022, Google Developers can learn about our developer products and platforms.', 'https://i.ytimg.com/vi/qBkyU1TJKDg/default.jpg', 'https://www.youtube.com/watch?v=qBkyU1TJKDg'),
(67, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'KjfMPxS2on8', 'Machine Learning basics', 'When you think of Machine Learning, what do you think of? Learn what Machine Learning is, how computers find patterns, and ...', 'https://i.ytimg.com/vi/KjfMPxS2on8/default.jpg', 'https://www.youtube.com/watch?v=KjfMPxS2on8'),
(68, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'XJ476O86hbU', 'AI and the Gartner Hype Cycle', 'Welcome to AI for Anyone! We\'ll take a journey to explore Artificial Intelligence, along with Machine Learning and Deep Learning.', 'https://i.ytimg.com/vi/XJ476O86hbU/default.jpg', 'https://www.youtube.com/watch?v=XJ476O86hbU'),
(69, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '_2yYPQxOTL4', 'Top 7 Stadia announcements from Google for Games Developer Summit', 'Learn how the Stadia team is helping developers bring their games to players faster than ever as we recap the top Stadia ...', 'https://i.ytimg.com/vi/_2yYPQxOTL4/default.jpg', 'https://www.youtube.com/watch?v=_2yYPQxOTL4'),
(70, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '1oc75GQFKvg', 'Google for Games Developer Summit 2022 Keynote', 'Learn about new solutions for game devs to make it easier to build high quality games and reach growing audiences around the ...', 'https://i.ytimg.com/vi/1oc75GQFKvg/default.jpg', 'https://www.youtube.com/watch?v=1oc75GQFKvg'),
(71, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'wZIQycr0F4c', 'Coding Practice with Kick Start 2022 – Session #1 problem walkthroughs', 'Join Google engineers for a walk through of each problem from the first session of Coding Practice with Kick Start. They provide ...', 'https://i.ytimg.com/vi/wZIQycr0F4c/default.jpg', 'https://www.youtube.com/watch?v=wZIQycr0F4c'),
(72, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'ZbnI4E3F_l4', 'Google’s Coding Competitions - Check out challenges for all skill levels', 'Google\'s Coding Competitions are back! Kick Start, Hash Code, and Code Jam return for another exciting season - try your hand ...', 'https://i.ytimg.com/vi/ZbnI4E3F_l4/default.jpg', 'https://www.youtube.com/watch?v=ZbnI4E3F_l4'),
(73, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'BC5OOJiVsQw', 'Introduction to Developer Student Clubs 2021 Solution Challenge Demo Day', 'Erica Hanson, Head of Google Developer Student Clubs at Google, kicks off the 2021 Solution Challenge Demo Day by sharing ...', 'https://i.ytimg.com/vi/BC5OOJiVsQw/default.jpg', 'https://www.youtube.com/watch?v=BC5OOJiVsQw'),
(74, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'FmhnbT7-RTc', '2021 Solution Challenge Demo Day', 'Join us for the 2021 Solution Challenge Demo Day hosted by Google Developer Student Clubs. The top 10 finalist teams will ...', 'https://i.ytimg.com/vi/FmhnbT7-RTc/default.jpg', 'https://www.youtube.com/watch?v=FmhnbT7-RTc'),
(75, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'Jqf52nThBt0', 'Join a Google Developer Student Club', 'Google Developer Student Clubs are university-based clubs where students learn Google technology and use their skills to build ...', 'https://i.ytimg.com/vi/Jqf52nThBt0/default.jpg', 'https://www.youtube.com/watch?v=Jqf52nThBt0'),
(76, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'Ys9N_pCFRDg', 'Introduction to Google Identity Services', 'Announcing Google Identity Services, a suite of identity products that delivers a simple, safe, and privacy preserving solutions for ...', 'https://i.ytimg.com/vi/Ys9N_pCFRDg/default.jpg', 'https://www.youtube.com/watch?v=Ys9N_pCFRDg'),
(77, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'fGGO7Fpy-Gk', 'GameSnacks: Google&#39;s new HTML5 gaming platform', 'Mobile gaming is huge, and mobile HTML5 gaming is growing. Learn more about how GameSnacks helped HTML5 game ...', 'https://i.ytimg.com/vi/fGGO7Fpy-Gk/default.jpg', 'https://www.youtube.com/watch?v=fGGO7Fpy-Gk'),
(78, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'I0oNK-XHp0I', 'Stadia Keynote', 'Hear the latest and greatest from one of Stadia\'s business development leads. You\'ll learn about new offerings for all Stadia ...', 'https://i.ytimg.com/vi/I0oNK-XHp0I/default.jpg', 'https://www.youtube.com/watch?v=I0oNK-XHp0I'),
(79, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '8N7fYLWIoK4', 'Visual tickets on Google Pay', 'Google Pay provides a simple way to replace paper tickets with more convenient visual tickets which can be saved to your ...', 'https://i.ytimg.com/vi/8N7fYLWIoK4/default.jpg', 'https://www.youtube.com/watch?v=8N7fYLWIoK4'),
(80, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'DozT--NclbM', 'App Actions overview', 'App Actions is how developers can integrate Google Assistant into their Android App. Enable your users to launch specific ...', 'https://i.ytimg.com/vi/DozT--NclbM/default.jpg', 'https://www.youtube.com/watch?v=DozT--NclbM'),
(81, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'gAzIkjkJSzM', 'Build an AR application using the WebXR API | Workshop', 'Learn how to expand the reach and scale of your AR applications with a simple AR experience for the immersive web.', 'https://i.ytimg.com/vi/gAzIkjkJSzM/default.jpg', 'https://www.youtube.com/watch?v=gAzIkjkJSzM'),
(82, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'D_mVOAXcrtc', 'Developer Keynote (Google I/O &#39;21) - American Sign Language', 'Learn about the latest updates to our developer products and platforms at Google from Google Developers. To watch this keynote ...', 'https://i.ytimg.com/vi/D_mVOAXcrtc/default.jpg', 'https://www.youtube.com/watch?v=D_mVOAXcrtc'),
(83, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'kH0nafGhbww', 'Google Pay API and web integration | Google Developers', 'What are the Google Pay new features? Google Developers can explore a live integration of the Google Pay online APIs into a ...', 'https://i.ytimg.com/vi/kH0nafGhbww/default.jpg', 'https://www.youtube.com/watch?v=kH0nafGhbww'),
(84, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'b8TGCuxZr2g', 'Join us for #GoogleIO!', 'We\'re back and embracing the virtual space! Join us for this year\'s Google I/O event for a first look at our latest developer products, ...', 'https://i.ytimg.com/vi/b8TGCuxZr2g/default.jpg', 'https://www.youtube.com/watch?v=b8TGCuxZr2g'),
(85, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'earTjC0iSjg', 'What are Google Developer Student Clubs?', 'Google Developer Student Clubs train hundreds of thousands of university student developers globally. Google selects students ...', 'https://i.ytimg.com/vi/earTjC0iSjg/default.jpg', 'https://www.youtube.com/watch?v=earTjC0iSjg'),
(86, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'PgPF0JaTlkQ', 'Google Developer Student Clubs 2021 Solution Challenge', 'Welcome to the Google Developer Student Clubs 2021 Solution Challenge. The mission of this year\'s challenge is to use Google ...', 'https://i.ytimg.com/vi/PgPF0JaTlkQ/default.jpg', 'https://www.youtube.com/watch?v=PgPF0JaTlkQ'),
(87, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '4AqnrLr_TSM', 'Firebase Authentication update, Cloud SQL database adds PostgreSQL 13, and more!', 'TL;DR 226 | The Google Developer News Show 0:00 Use Firebase Auth on Devices without Google Play Services ...', 'https://i.ytimg.com/vi/4AqnrLr_TSM/default.jpg', 'https://www.youtube.com/watch?v=4AqnrLr_TSM'),
(88, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '6Hd_hjG3s_s', 'Announcing Google Assistant Developer Day 2020', 'Thanks for joining us live on October 8th for the virtual Google Assistant Developer Day, where we announced new features, tools, ...', 'https://i.ytimg.com/vi/6Hd_hjG3s_s/default.jpg', 'https://www.youtube.com/watch?v=6Hd_hjG3s_s'),
(89, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'ysGfsOFwSCg', 'Kotlin 1.4, Firebase Hosting updates, Google Cloud Game Servers, and more!', 'TL;DR 216 | The Google Developer News Show 0:00 New language features and more in Kotlin 1.4 → https://goo.gle/3jnHy1z ...', 'https://i.ytimg.com/vi/ysGfsOFwSCg/default.jpg', 'https://www.youtube.com/watch?v=ysGfsOFwSCg'),
(90, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'q3Jd98xyBAA', 'AR Realism with the ARCore Depth API', 'With the ARCore Depth API, developers can use our depth-from-motion algorithms to create a depth map with a single RGB ...', 'https://i.ytimg.com/vi/q3Jd98xyBAA/default.jpg', 'https://www.youtube.com/watch?v=q3Jd98xyBAA'),
(91, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'ZH5WnN5dtvk', 'Android 11 Beta, Google Play Asset Delivery, Firebase Crashlytics SDK, &amp; much more!', 'TL;DR 206 | The Google Developer News Show 0:00 Android 11 Beta → https://goo.gle/3fzChBS 0:25 Introducing Google Play ...', 'https://i.ytimg.com/vi/ZH5WnN5dtvk/default.jpg', 'https://www.youtube.com/watch?v=ZH5WnN5dtvk'),
(92, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'onW8gbbDpdQ', 'Announcing Firebase Live, Flutter Day, Java 11 on Google Cloud Functions, &amp; more!', 'TL;DR 205 | The Google Developer News Show •Announcing Firebase Live (Firebase) → https://goo.gle/3d4ofrb •Firebase ...', 'https://i.ytimg.com/vi/onW8gbbDpdQ/default.jpg', 'https://www.youtube.com/watch?v=onW8gbbDpdQ'),
(93, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'QWdYWwW6OAE', 'Machine Learning Foundations: Ep #7 - Image augmentation and overfitting', 'Machine Learning Foundations is a free training course where you\'ll learn the fundamentals of building machine learned models ...', 'https://i.ytimg.com/vi/QWdYWwW6OAE/default.jpg', 'https://www.youtube.com/watch?v=QWdYWwW6OAE'),
(94, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'nq7_ZYJPWf0', 'Machine Learning Foundations: Ep #6 - Convolutional cats and dogs', 'Machine Learning Foundations is a free training course where you\'ll learn the fundamentals of building machine learned models ...', 'https://i.ytimg.com/vi/nq7_ZYJPWf0/default.jpg', 'https://www.youtube.com/watch?v=nq7_ZYJPWf0'),
(95, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'FkiHjuZ2gv8', 'Adobe XD support for Flutter, Architecture Framework, temporary closures with Places API, &amp; more!', 'TL;DR 204 | The Google Developer News Show •Announcing Adobe XD support for Flutter (Flutter) → https://goo.gle/2LJ8GJg ...', 'https://i.ytimg.com/vi/FkiHjuZ2gv8/default.jpg', 'https://www.youtube.com/watch?v=FkiHjuZ2gv8'),
(96, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'dd8H4fiL9Yc', 'Machine Learning Foundations: Ep #4 - Coding with Convolutional Neural Networks', 'Machine Learning Foundations is a free training course where you\'ll learn the fundamentals of building machine learned models ...', 'https://i.ytimg.com/vi/dd8H4fiL9Yc/default.jpg', 'https://www.youtube.com/watch?v=dd8H4fiL9Yc'),
(97, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'PCgLmzkRM38', 'Machine Learning Foundations: Ep #3 - Convolutions and pooling', 'Machine Learning Foundations is a free training course where you\'ll learn the fundamentals of building machine learned models ...', 'https://i.ytimg.com/vi/PCgLmzkRM38/default.jpg', 'https://www.youtube.com/watch?v=PCgLmzkRM38'),
(98, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', 'j-35y1M9rRU', 'Computer vision by building a neural network with TensorFlow | Machine Learning Foundations', 'Machine Learning Foundations is a free training course where you\'ll learn the fundamentals of building machine learned models ...', 'https://i.ytimg.com/vi/j-35y1M9rRU/default.jpg', 'https://www.youtube.com/watch?v=j-35y1M9rRU'),
(99, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '_Z9TRANg4c0', 'Machine Learning Foundations: Ep #1 - What is ML?', 'Machine Learning Foundations is a free training course where you\'ll learn the fundamentals of building machine learned models ...', 'https://i.ytimg.com/vi/_Z9TRANg4c0/default.jpg', 'https://www.youtube.com/watch?v=_Z9TRANg4c0'),
(100, 'UC_x5XG1OV2P6uZZ5FSM9Ttw', '2haNNRU1Gxs', 'Google for Games Developer Summit Keynote', 'Google for Games Developer Summit Keynote. Game Developers Conference is one of our most anticipated times of the year to ...', 'https://i.ytimg.com/vi/2haNNRU1Gxs/default.jpg', 'https://www.youtube.com/watch?v=2haNNRU1Gxs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `channel_id` (`channel_id`);

--
-- Indexes for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channel_id` (`channel_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `youtube_channels`
--
ALTER TABLE `youtube_channels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `youtube_channel_videos`
--
ALTER TABLE `youtube_channel_videos`
  ADD CONSTRAINT `youtube_channel_videos_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `youtube_channels` (`channel_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

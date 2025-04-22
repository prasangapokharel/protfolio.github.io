-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 28, 2025 at 04:16 PM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u852370365_goal`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_payment_details`
--

CREATE TABLE `bank_payment_details` (
  `bank_detail_id` int(11) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `account_number` varchar(50) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `swift_code` varchar(50) DEFAULT NULL,
  `ifsc_code` varchar(50) DEFAULT NULL,
  `instructions` text DEFAULT NULL,
  `qr_image` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_payment_details`
--

INSERT INTO `bank_payment_details` (`bank_detail_id`, `bank_name`, `account_number`, `account_name`, `swift_code`, `ifsc_code`, `instructions`, `qr_image`) VALUES
(1, 'Nabil Bank Limited', '44533663434', 'Nepal Security Club', 'WERNB', 'NBL', 'After Payment send your transaction id and qr', NULL),
(2, 'Nabil Bank Limited', '44533663434', 'Nepal Security Club', 'WERNB', 'NBL', 'After Payment send your transaction id and qr', NULL),
(3, 'PRIME BANK LMITED', '44533663434', 'CYBER CLUB NEPAL', 'PRM', 'PPLM', 'dd', 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d22480000011d504c5445ffffffb82e7e000000cc679fc45192515151c3c3c3e4e4e4eeeeeef5e3ec5555555b5b5bf8f8f89c458593076cbfbabdaf006effc4debc3d86edcddec1448cebc7dac95d9acdcdcd636363b6247a8e8e8ecfcfcfcf7faa818181d8d8d81c1c1c9c9c9ceed5d4787878aaaaaa868686e6c1c0939393b5b5b53e3e3eff99c1f8eeeeaeaeaeea68a23737376c6c6cf2f2f2a61e24a13d7546464647514cac3779d899bad88fb7ff82b42b2b2be5bbd1cd6fa3ffd3e6eba0c3d181ac252525a1000067545e8d476e765165f2dce7e0aac7da95baa30f17b140435e565adba0bebd88aeeb95bcb8729fedb0ceffddebffa3c8ff74acfeaacbf8c8dea22a7bdcb1b2eacbccd49798c98283be6163c37374b75254dea6a6f5e5e5a9292dd49b9cd0783de500000e3e49444154789ced9d8f7b9a481ac747407e08b775fd8580120b440c9c989ac48db4346dd574bdde76ef7ac9b6b74df7ffff33ee9d018d496c7e688c438f6f9ec76718069ef96466def79d6144843265ca942953a64c993265ca94368982fa6c5da982b86d8cefc9d0e5838383c2ba827bc8bab16d9825528383376f5f1c1ee6d6d5e1e18bb76f0e0275db40d7a51fbc3bd4d6a69b493b7c77a06f1be98a94a0f0e2f1f808e38b42a06c1b6b41c1af8f8a17ebd760db5897d20beb0fbf9b3a2c50d3518d83171b00cce55e1cd0625283778f3b0667d2de51d24fcd834df451acc30373db7044ed379b694268c437ed6dc311d5df6e0830977b5bdf361c566f437606ebc5416fdb78206163c3100f4461db7868938686165363e4370698cbe569f0886a61859adfd7fa16689862cc08b5efd45aab94b444b8107c6a5c8ed572b32cfa09f998508b864babab4d47e3ca943b62c323562b4db9465494aa0369923b0ad90177741721bf6d3c3423d46a481949e14d482d1c0dbd282a7bd5b1542c4f2469509c4a13a97a5446c3a1321adfde8a141142d79b148b4baaab1d9547c3d158f2aa9551f1481a8e34ad3c1a9707434919d6aacbfe27b4127e7f1cce47613cf61672ee1e8854116e4419e1932823cc0833c2ed2b23fc110837b54c03b1012584a5cd891242f621aa710f110d84ca8f4ed8eb14e41f9c302fff3f12d66a0f21ac545247581b495118860d360cef41184ae572c4d5580effa58550aa4ebcf25019236f7037e1c09b56a5d15899a2a1e75d6f4e4a0959a8b104d51d8ec6e37b100e95112b49507aa08cd2423898d4a2a83168444bbae90dc2da200cb9908dd8b0d20829eca58a15fce0b614af08ffe8843f7a4c0384f9da4304eeef01cad341587e90aa0f1125841bbc390d84825fd8e0dd2920ecf50bf2066f4f032178fc0ddefec72794e5ceb6192f093fbec4fa79ef527f5b43ff886f2ad7b7fe14f892f0d32bac0f7fbfd44f6be89ff14da9226c14eff564fe9ecb88517c53ba081f73d9546bc437a59170a119e307bff1472e7ef8bb78fab62d2714136ae1abdf265c5cf7e1705c838f614d1b46c5e958ab54436d3c1c36b45aa586a7ba6ca5562b956a9554116aaf2405791f23828846122aa1918772d3b0089f47685cf4a46aa47139e0abd4b812c795726c85b476b1a815179a975642ed378de57efe65ef77828ba20871288c50c91b6b084565a55cf4ca0d4eab96a14d87c5e9a058e5c65c35a70db9c168d428976b1ae5841a27352a7bbffcbef7e9252144680464685244630e8d47ded82b7a8a1769dea0ac8d46a52aaa29ac24855a516273a36963142ad413464a94db7ba57df8287198f0a8a2e5d0184540d84015346a20cd1b72959c372e8752f9a83a903cd6f34a40582b960761b98866fd945ac281f7922bbd643529261c407d516308bd743af58ad2510d71124263cd8359e2f8685465070a3b8aa45c71e40daa831049d3a348a39b90f5f6f63efcf2419b7e4cdc05f6085aec1892bd7ab9d2eca0126f328a4be053253a2dcd7cf6442ccda7bdbd7f7d28b2d12b5c5796653996adb06cae54c3eb336c2d8a0693900b71ba548ac635c82ee52651580b07110b1f1ccb5147a8187632032684957fbf94507918915a1e4d27e1b431184f35361a3622484cb8c9341c4ca3c1609c2b0d8751389c54729341343d0a1be3c9246a8c6bd4f5d2cb558cd81f96a62f3f7e8ae25ab22197c3cd02010034560e3f95d06ae00bc1e1973830bc359cad61df58e24a6c89abd52a6c89ba36bc46986ccb9b456d4964562acdc6d73c31cfbb3c373bc6cad113792b6e7ba1975ed54f3ffde717a29f1fae97f14d2920ecf52f674f8fa930be290d84736f213daee29b5245b81165844fa08c704d65844fa0a5848ab09a6e7e3d9d524265d5afd4dd4494eb791a098595bf1679e35f23d7fbf4aceacfa5f444a43bfa5ccd24df761c07894d972475ddc1dff1e517cb0948bcde88743e99e92922621695e4cb38293016240bb3fcd6623915fe39d7ee4527a108843b8c9ac82024463da8dbc60e13c884d0e4e18c2bdb40d89a156c62c2ebafa6a199707e480879d244af714b59f3724c1308e786c44e1da1497a1e8f48d7649816aae38e6912c23a23e08e8c0979d48db95bb412766e3ce5be07a1cc984a82453d21eab9d7f762dc24c4bd14132616a8051980758c502a086fee36b949a81876be6d5a7d11e5f3ccb1dc327aa8c3c8f8b51e3f0a217611edd8a60830f8744876625384098fd34a285acd66d33263c202dfb6f0cb03dc16b0c4842eae3c26d4a1a0e5a79070a6b9a5890fe68489c7a7de5b7c9770168bb50961de6f3b026aeb767b4ee8b71c1708835939395d8457a33621f10b24d9842169e0712892d179356a4b0fa1b12015db52b90b848651005b5aef32fdfa4e0c2ba80be57a6922bc51889855b4d8b6246abba634112a4c1f92faa5b7d063c20e4c3d1c4882a5e9221fec4f7039e34815a1d2031605398bfe90107651cc4d621a9f69c7b11c2ea028a9224c5c840f00085df5f80110327100d74ce6876836f94811a1dc379fe53b8c8df4be6a22a1d30642db5490e902ac9ddf81b945bf0f847ebf00b361d334ed7c375d8464c4a9d086c9fc1011bf20a2647e1800e1dcd2247169ca3c3eb13466d07a26222be071355deb98f1792b001693cf33368fc4c027e51d8bd9b174de4a1d6107924ee222487e623503d45c5cbdc182b26edac62142beddf491610bc869ba76d369f260745a3eead92a32dc3e2421cf8d2f50c0c20a6e903642983dc52fcc4bcc6a9bcc80130597439214c193e1948dc340468a6ad7ebb281541508eb86401667e47abd85fcfa3123d7555515905b309155575db995b6d91319666a12aa81d5c4f3f964f9c922fe9099cd8055b0a5c461a6ac0d77304340e21448bc46782d7b619d4689e7f8ee2ca6414aea2c0d13136231f19ad3bc0d672b510813c671a982d2684b098b4d32e68420ec43f4d9342376fea09de4d234112add4ea7d3759100115942d884ac841087a8c75d12d3e0dcae8c7a504e4915e14ca4e18ee787c9dc82bcefb1b7383f4c5d2f755d17c2325f804e68394028f8f16b3a2dfc48cdb56c380f7180eeced56ae6d345481a8e8771688145015bca276b6d89f08336c8752f67fca9f316b66dc3186cb5db1dc6d1ed961e00a19facaa392ae2ed63fc2f105a3611f31a02f19479fc44edd98a0c36abf2acbdb085ed326448c622f627656d0812f2b2dc655aa661e4f380d52df8265e51335b4c47960bbcc13010aae137d6cb32c0aa85d4cd8049b87d65812d59dde6c941f2fc30f187afd3674b6198f57b2248413b3bccb122f61237bfc3588a430845133cfd0e09ef44bc74d54e172154bc9f1c26feb07d19c8e0c8db9c35721c842b28a59626d1e5931914f752237ea4365ba72133ff94119a0b3290d0e926848649086db3de2784a2d12384dd76da0899452134f7f810633f2379c97a699b2c0e935329f3163b4c339143084d8b47aaafe0a8cdb49a0e34a94b0879cb044288f00437656b6dd7f7d3602dacd3d4e3c675c84117cf9e52e72df053eea6e3384df2949b24f52e6361d3625a10b5f9c4d2f475c877761888f05c26f0c594115edb4fb3302493a86dc9404d2da162b4982689d92096734c9d446d10c0b5215766780302b77eba091118d0567cd24c9e3d919da43c59a759d847946242456c1f7777f0ea862002a10ba99d6ef735218410b5db8319d46b23758438ea8c097b0a994825bb9cc1092a4a2f6938b202d7255e326db674a685fd345737d362b562e7df4da3b798edbf1731e171a76b2351e8e3496fcfec117f88cf01e17157158e65207c7d9c9a5efabd5dd085d8e3bbc9464c66b6996d67b6388ca8dc05bd845011f14ef64bcd77b23749fdcda64a36b5835cc44348d076482e66a17127fbb2777d2df966c83d75e3db0894122a2b222eb98e5242fc9bb2ab68c96fc8524bf868ca089f4419e15aca089f4419e15aca089f4419e15aa28fd0b42cff66895942741c7d49959d2b97a88bbf1f4b1f619f177824d82e32f0536ef719ae3bdff149164c1dfa065f6821b3c5231bf520975755db40ba8ff896894cdb55e0c35efc2167fa08adba0d5379df327d3eb0cd8e1db470011b67b5312134916cf6ddba6fa96e5768f34eddee8bbaebca6ede7479ab25f4ddc05ab81f7d84c86ce77d5cc55633689b75f40ca6bf4a07f10132f33121d03970ac3603bd555060125c37dbaee5a2b6ed372dc7b5904a751b2a75dfce0b7dbbae76784b074217d3765a669eb4a6d0b1f50e0fe76517f503a5e32040930ddde70b76dfccbb8e85afa59a1099be2d22c1e721a1aa220c495c43d3ee893e4ef45cd78569bc60ab70998978017fbaa26ac2b035e132955cb708451fe1632b237c1265846b29237c1265846b29237c1265846b29237c1265846b29237c1265846b29237c1265846b29237c1265846b29237c12ad4a78b17b767ee7cea214139ebf3f019dfe7147b1f4129e9dee7a9f4ff7f74fbe9c79b7954b03a1f27c994e3c74f15f20dc3fb9bd155340787176e1ddd4972f08fdf9e7fb7d8c7871dbe529203c5b9a7b129f3bc184cb4b24a29ff0e239fefc7ab67b7eb6fbd7d9eeeef3330c7471f219a1ff02e1e9b7f7b777532a08d5db08bd73fcf9fcf9f9d7ddf3ddddf3f3e7bb18d93b798fdbf1ec8fcf67bbdf6e27dcf6fbcab16e25445f97babc5320dcc7849fbf7cdbbded722a088dfead7e1bbae64d7d0642b0307f9e9c9eeedf76b1d2371eb7b22bc9ec3ffc25f3cafbaf7ffdf1f52b18d3935b9bb0d73757aed7e349e82cd9bd7c972ef6a1f94ef74f4fbede5a4cecacfa23048fa915ffcf7f7d83a8edcbf3db0badd23f3620d95ded3aefd6788dc8dde4af83dc5f6debee322b8abcec65fb32373658840e0d860614e81bbab11edc5de649646ce85f6d7668f086447a7e1326af97df54df584141fdf1117b755afa289612e41fbba39af960e5afc06d447a475f21b4f9ae44b8df23deee5164041dcb35c59eb2de7f5e517aa2e95a9d801a23b320b35de877faf97cbeb0bae06ab847a14d891fbca99e601a2abf8e54c35cfd07b13265ca942953a64c993265cab435fd0feecdf986a7c887360000000049454e44ae426082),
(4, 'PRIME BANK LMITED', '44533663434', 'CYBER CLUB NEPAL', 'PRM', 'PPLM', 'dd', 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d22480000011d504c5445ffffffb82e7e000000cc679fc45192515151c3c3c3e4e4e4eeeeeef5e3ec5555555b5b5bf8f8f89c458593076cbfbabdaf006effc4debc3d86edcddec1448cebc7dac95d9acdcdcd636363b6247a8e8e8ecfcfcfcf7faa818181d8d8d81c1c1c9c9c9ceed5d4787878aaaaaa868686e6c1c0939393b5b5b53e3e3eff99c1f8eeeeaeaeaeea68a23737376c6c6cf2f2f2a61e24a13d7546464647514cac3779d899bad88fb7ff82b42b2b2be5bbd1cd6fa3ffd3e6eba0c3d181ac252525a1000067545e8d476e765165f2dce7e0aac7da95baa30f17b140435e565adba0bebd88aeeb95bcb8729fedb0ceffddebffa3c8ff74acfeaacbf8c8dea22a7bdcb1b2eacbccd49798c98283be6163c37374b75254dea6a6f5e5e5a9292dd49b9cd0783de500000e3e49444154789ced9d8f7b9a481ac747407e08b775fd8580120b440c9c989ac48db4346dd574bdde76ef7ac9b6b74df7ffff33ee9d018d496c7e688c438f6f9ec76718069ef96466def79d6144843265ca942953a64c993265ca94368982fa6c5da982b86d8cefc9d0e5838383c2ba827bc8bab16d9825528383376f5f1c1ee6d6d5e1e18bb76f0e0275db40d7a51fbc3bd4d6a69b493b7c77a06f1be98a94a0f0e2f1f808e38b42a06c1b6b41c1af8f8a17ebd760db5897d20beb0fbf9b3a2c50d3518d83171b00cce55e1cd0625283778f3b0667d2de51d24fcd834df451acc30373db7044ed379b694268c437ed6dc311d5df6e0830977b5bdf361c566f437606ebc5416fdb78206163c3100f4461db7868938686165363e4370698cbe569f0886a61859adfd7fa16689862cc08b5efd45aab94b444b8107c6a5c8ed572b32cfa09f998508b864babab4d47e3ca943b62c323562b4db9465494aa0369923b0ad90177741721bf6d3c3423d46a481949e14d482d1c0dbd282a7bd5b1542c4f2469509c4a13a97a5446c3a1321adfde8a141142d79b148b4baaab1d9547c3d158f2aa9551f1481a8e34ad3c1a9707434919d6aacbfe27b4127e7f1cce47613cf61672ee1e8854116e4419e1932823cc0833c2ed2b23fc110837b54c03b1012584a5cd891242f621aa710f110d84ca8f4ed8eb14e41f9c302fff3f12d66a0f21ac545247581b495118860d360cef41184ae572c4d5580effa58550aa4ebcf25019236f7037e1c09b56a5d15899a2a1e75d6f4e4a0959a8b104d51d8ec6e37b100e95112b49507aa08cd2423898d4a2a83168444bbae90dc2da200cb9908dd8b0d20829eca58a15fce0b614af08ffe8843f7a4c0384f9da4304eeef01cad341587e90aa0f1125841bbc390d84825fd8e0dd2920ecf50bf2066f4f032178fc0ddefec72794e5ceb6192f093fbec4fa79ef527f5b43ff886f2ad7b7fe14f892f0d32bac0f7fbfd44f6be89ff14da9226c14eff564fe9ecb88517c53ba081f73d9546bc437a59170a119e307bff1472e7ef8bb78fab62d2714136ae1abdf265c5cf7e1705c838f614d1b46c5e958ab54436d3c1c36b45aa586a7ba6ca5562b956a9554116aaf2405791f23828846122aa1918772d3b0089f47685cf4a46aa47139e0abd4b812c795726c85b476b1a815179a975642ed378de57efe65ef77828ba20871288c50c91b6b084565a55cf4ca0d4eab96a14d87c5e9a058e5c65c35a70db9c168d428976b1ae5841a27352a7bbffcbef7e9252144680464685244630e8d47ded82b7a8a1769dea0ac8d46a52aaa29ac24855a516273a36963142ad413464a94db7ba57df8287198f0a8a2e5d0184540d84015346a20cd1b72959c372e8752f9a83a903cd6f34a40582b960761b98866fd945ac281f7922bbd643529261c407d516308bd743af58ad2510d71124263cd8359e2f8685465070a3b8aa45c71e40daa831049d3a348a39b90f5f6f63efcf2419b7e4cdc05f6085aec1892bd7ab9d2eca0126f328a4be053253a2dcd7cf6442ccda7bdbd7f7d28b2d12b5c5796653996adb06cae54c3eb336c2d8a0693900b71ba548ac635c82ee52651580b07110b1f1ccb5147a8187632032684957fbf94507918915a1e4d27e1b431184f35361a3622484cb8c9341c4ca3c1609c2b0d8751389c54729341343d0a1be3c9246a8c6bd4f5d2cb558cd81f96a62f3f7e8ae25ab22197c3cd02010034560e3f95d06ae00bc1e1973830bc359cad61df58e24a6c89abd52a6c89ba36bc46986ccb9b456d4964562acdc6d73c31cfbb3c373bc6cad113792b6e7ba1975ed54f3ffde717a29f1fae97f14d2920ecf52f674f8fa930be290d84736f213daee29b5245b81165844fa08c704d65844fa0a5848ab09a6e7e3d9d524265d5afd4dd4494eb791a098595bf1679e35f23d7fbf4aceacfa5f444a43bfa5ccd24df761c07894d972475ddc1dff1e517cb0948bcde88743e99e92922621695e4cb38293016240bb3fcd6623915fe39d7ee4527a108843b8c9ac82024463da8dbc60e13c884d0e4e18c2bdb40d89a156c62c2ebafa6a199707e480879d244af714b59f3724c1308e786c44e1da1497a1e8f48d7649816aae38e6912c23a23e08e8c0979d48db95bb412766e3ce5be07a1cc984a82453d21eab9d7f762dc24c4bd14132616a8051980758c502a086fee36b949a81876be6d5a7d11e5f3ccb1dc327aa8c3c8f8b51e3f0a217611edd8a60830f8744876625384098fd34a285acd66d33263c202dfb6f0cb03dc16b0c4842eae3c26d4a1a0e5a79070a6b9a5890fe68489c7a7de5b7c9770168bb50961de6f3b026aeb767b4ee8b71c1708835939395d8457a33621f10b24d9842169e0712892d179356a4b0fa1b12015db52b90b848651005b5aef32fdfa4e0c2ba80be57a6922bc51889855b4d8b6246abba634112a4c1f92faa5b7d063c20e4c3d1c4882a5e9221fec4f7039e34815a1d2031605398bfe90107651cc4d621a9f69c7b11c2ea028a9224c5c840f00085df5f80110327100d74ce6876836f94811a1dc379fe53b8c8df4be6a22a1d30642db5490e902ac9ddf81b945bf0f847ebf00b361d334ed7c375d8464c4a9d086c9fc1011bf20a2647e1800e1dcd2247169ca3c3eb13466d07a26222be071355deb98f1792b001693cf33368fc4c027e51d8bd9b174de4a1d6107924ee222487e623503d45c5cbdc182b26edac62142beddf491610bc869ba76d369f260745a3eead92a32dc3e2421cf8d2f50c0c20a6e903642983dc52fcc4bcc6a9bcc80130597439214c193e1948dc340468a6ad7ebb281541508eb86401667e47abd85fcfa3123d7555515905b309155575db995b6d91319666a12aa81d5c4f3f964f9c922fe9099cd8055b0a5c461a6ac0d77304340e21448bc46782d7b619d4689e7f8ee2ca6414aea2c0d13136231f19ad3bc0d672b510813c671a982d2684b098b4d32e68420ec43f4d9342376fea09de4d234112add4ea7d3759100115942d884ac841087a8c75d12d3e0dcae8c7a504e4915e14ca4e18ee787c9dc82bcefb1b7383f4c5d2f755d17c2325f804e68394028f8f16b3a2dfc48cdb56c380f7180eeced56ae6d345481a8e8771688145015bca276b6d89f08336c8752f67fca9f316b66dc3186cb5db1dc6d1ed961e00a19facaa392ae2ed63fc2f105a3611f31a02f19479fc44edd98a0c36abf2acbdb085ed326448c622f627656d0812f2b2dc655aa661e4f380d52df8265e51335b4c47960bbcc13010aae137d6cb32c0aa85d4cd8049b87d65812d59dde6c941f2fc30f187afd3674b6198f57b2248413b3bccb122f61237bfc3588a430845133cfd0e09ef44bc74d54e172154bc9f1c26feb07d19c8e0c8db9c35721c842b28a59626d1e5931914f752237ea4365ba72133ff94119a0b3290d0e926848649086db3de2784a2d12384dd76da0899452134f7f810633f2379c97a699b2c0e935329f3163b4c339143084d8b47aaafe0a8cdb49a0e34a94b0879cb044288f00437656b6dd7f7d3602dacd3d4e3c675c84117cf9e52e72df053eea6e3384df2949b24f52e6361d3625a10b5f9c4d2f475c877761888f05c26f0c594115edb4fb3302493a86dc9404d2da162b4982689d92096734c9d446d10c0b5215766780302b77eba091118d0567cd24c9e3d919da43c59a759d847946242456c1f7777f0ea862002a10ba99d6ef735218410b5db8319d46b23758438ea8c097b0a994825bb9cc1092a4a2f6938b202d7255e326db674a685fd345737d362b562e7df4da3b798edbf1731e171a76b2351e8e3496fcfec117f88cf01e17157158e65207c7d9c9a5efabd5dd085d8e3bbc9464c66b6996d67b6388ca8dc05bd845011f14ef64bcd77b23749fdcda64a36b5835cc44348d076482e66a17127fbb2777d2df966c83d75e3db0894122a2b222eb98e5242fc9bb2ab68c96fc8524bf868ca089f4419e15aca089f4419e15aca089f4419e15aa28fd0b42cff66895942741c7d49959d2b97a88bbf1f4b1f619f177824d82e32f0536ef719ae3bdff149164c1dfa065f6821b3c5231bf520975755db40ba8ff896894cdb55e0c35efc2167fa08adba0d5379df327d3eb0cd8e1db470011b67b5312134916cf6ddba6fa96e5768f34eddee8bbaebca6ede7479ab25f4ddc05ab81f7d84c86ce77d5cc55633689b75f40ca6bf4a07f10132f33121d03970ac3603bd555060125c37dbaee5a2b6ed372dc7b5904a751b2a75dfce0b7dbbae76784b074217d3765a669eb4a6d0b1f50e0fe76517f503a5e32040930ddde70b76dfccbb8e85afa59a1099be2d22c1e721a1aa220c495c43d3ee893e4ef45cd78569bc60ab70998978017fbaa26ac2b035e132955cb708451fe1632b237c1265846b29237c1265846b29237c1265846b29237c1265846b29237c1265846b29237c1265846b29237c1265846b29237c12ad4a78b17b767ee7cea214139ebf3f019dfe7147b1f4129e9dee7a9f4ff7f74fbe9c79b7954b03a1f27c994e3c74f15f20dc3fb9bd155340787176e1ddd4972f08fdf9e7fb7d8c7871dbe529203c5b9a7b129f3bc184cb4b24a29ff0e239fefc7ab67b7eb6fbd7d9eeeef3330c7471f219a1ff02e1e9b7f7b777532a08d5db08bd73fcf9fcf9f9d7ddf3ddddf3f3e7bb18d93b798fdbf1ec8fcf67bbdf6e27dcf6fbcab16e25445f97babc5320dcc7849fbf7cdbbded722a088dfead7e1bbae64d7d0642b0307f9e9c9eeedf76b1d2371eb7b22bc9ec3ffc25f3cafbaf7ffdf1f52b18d3935b9bb0d73757aed7e349e82cd9bd7c972ef6a1f94ef74f4fbede5a4cecacfa23048fa915ffcf7f7d83a8edcbf3db0badd23f3620d95ded3aefd6788dc8dde4af83dc5f6debee322b8abcec65fb32373658840e0d860614e81bbab11edc5de649646ce85f6d7668f086447a7e1326af97df54df584141fdf1117b755afa289612e41fbba39af960e5afc06d447a475f21b4f9ae44b8df23deee5164041dcb35c59eb2de7f5e517aa2e95a9d801a23b320b35de877faf97cbeb0bae06ab847a14d891fbca99e601a2abf8e54c35cfd07b13265ca942953a64c993265cab435fd0feecdf986a7c887360000000049454e44ae426082),
(7, 'Regan Guzman', '855', 'Dale Carroll', 'Veniam cum quod com', 'Ut ea doloribus sequ', 'Fugit ratione molli', 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d224800000006504c5445000000ffffffa5d99fdd0000028349444154789cedd64b7262410c044073ff4bcf6a160e0851a57e801d4e2dfbe953c98aafafb3bafdafe1d350c9d461c2d322240ca65e8f188b9030987a3d622cc29f244c02dd5f4d5eaaf4c9ad2a21e1b3f9e4859090704e48f86c3e79217cbbf0c1b7ab3d15f53021212121212121e17b84af1b27242424242424fc39c2fb4a4e10121212121212be5498d46e6ad893643dddbc9bafa6a21c84fbcdbbf96a2aca41b8dfbc9bafa6a21c84fbcdbbf96a2aca4178beb9ab21c7e52f9f29c22b5f3e538457be7ca608af7cf94c115ef9721af1b076bfc2b0e7b260972d22bc11e63d5db0cb1611de08f39e2ed8658b086f1f1756c986e6a1a76aaeae4f4548d884ae9a09e322246c4257cd847155c786da9d38dc13e5212424242424242c6f0c57abe6819abc749909090909090909b3b1a127b9913427477799090987d08484ab3c84fdc62134e1db8543c45d8e6a4f5593e7f01821e1ea6815e3f41821e1ea6815e3f418e16f13dea71f3c49e864bcea493e111212121212123e3cffba979d70e9212424242424242c61c3d4ae763f47d2fc60737295b02ec27a7cda9c5c25ac8bb01e9f36275709eb7aab30595d054a7ea9e1d3ae92f08484848484847f59387cab6af74bdd7faaf6443fd99a94a74f7a08d366c283227cd2439836131ed4cf151ed690bef2ec36279f4e8bf0db0b61bd39f9745a84df5e08ebcdc9a7d322fcf6f261e17d8ea1aaa9ea68b299909090909090f05c58f524572f8b18049bf6103eee21246cae27c10809099f5cfdddc2e146b5b9fa5d3a2a212121212121e10bfed354950887ebd1cf41484848484848787ca3ba9a044a6e75cd84848484848484db4ab2ee9aab3d977992635735577b080f8a70df5ced213c28c27d73b5e74f0bff0165f65fe0976bfee10000000049454e44ae426082),
(8, 'Kendall Lang', '959', 'Venus Gilliam', 'Amet laborum volupt', 'Eos dolores laborum', 'Sapiente officia con', 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d224800000006504c5445000000ffffffa5d99fdd0000028349444154789cedd64b7262410c044073ff4bcf6a160e0851a57e801d4e2dfbe953c98aafafb3bafdafe1d350c9d461c2d322240ca65e8f188b9030987a3d622cc29f244c02dd5f4d5eaaf4c9ad2a21e1b3f9e4859090704e48f86c3e79217cbbf0c1b7ab3d15f53021212121212121e17b84af1b27242424242424fc39c2fb4a4e10121212121212be5498d46e6ad893643dddbc9bafa6a21c84fbcdbbf96a2aca41b8dfbc9bafa6a21c84fbcdbbf96a2aca4178beb9ab21c7e52f9f29c22b5f3e538457be7ca608af7cf94c115ef9721af1b076bfc2b0e7b260972d22bc11e63d5db0cb1611de08f39e2ed8658b086f1f1756c986e6a1a76aaeae4f4548d884ae9a09e322246c4257cd847155c786da9d38dc13e5212424242424242c6f0c57abe6819abc749909090909090909b3b1a127b9913427477799090987d08484ab3c84fdc62134e1db8543c45d8e6a4f5593e7f01821e1ea6815e3f41821e1ea6815e3f418e16f13dea71f3c49e864bcea493e111212121212123e3cffba979d70e9212424242424242c61c3d4ae763f47d2fc60737295b02ec27a7cda9c5c25ac8bb01e9f36275709eb7aab30595d054a7ea9e1d3ae92f08484848484847f59387cab6af74bdd7faaf6443fd99a94a74f7a08d366c283227cd2439836131ed4cf151ed690bef2ec36279f4e8bf0db0b61bd39f9745a84df5e08ebcdc9a7d322fcf6f261e17d8ea1aaa9ea68b299909090909090f05c58f524572f8b18049bf6103eee21246cae27c10809099f5cfdddc2e146b5b9fa5d3a2a212121212121e10bfed354950887ebd1cf41484848484848787ca3ba9a044a6e75cd84848484848484db4ab2ee9aab3d977992635735577b080f8a70df5ced213c28c27d73b5e74f0bff0165f65fe0976bfee10000000049454e44ae426082);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `parent_category_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `description`, `parent_category_id`, `image`) VALUES
(1, 'Programming', 'General programming courses and tutorials', NULL, NULL),
(2, 'Web Development', 'Web development courses including HTML, CSS, JavaScript, and frameworks', NULL, NULL),
(3, 'Data Science', 'Data science, machine learning, and analytics courses', NULL, NULL),
(4, 'Mobile Development', 'Mobile app development for iOS and Android', NULL, NULL),
(5, 'Cybersecurity', 'Cybersecurity, ethical hacking, and network security', NULL, NULL),
(6, 'UI/UX Design', 'User interface and user experience design courses', NULL, NULL),
(7, 'Cloud Computing', 'Cloud platforms, services, and infrastructure', NULL, NULL),
(8, 'Digital Marketing', 'Digital marketing, SEO, and social media courses', NULL, NULL),
(9, 'Blockchain', 'Blockchain technology and cryptocurrency development', NULL, NULL),
(10, 'Game Development', 'Game design and development courses', NULL, NULL),
(11, 'Office Productivity', 'Microsoft Office, Google Workspace, and productivity tools', NULL, NULL),
(12, 'Graphic Design', 'Graphic design, photo editing, and digital art', NULL, NULL),
(13, 'Finance', 'Financial literacy, investing, and trading courses', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `certificate_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `certificate_number` varchar(100) NOT NULL,
  `issue_date` datetime DEFAULT current_timestamp(),
  `expiry_date` datetime DEFAULT NULL,
  `certificate_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `admin_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discounted_price` decimal(10,2) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT 0,
  `is_published` tinyint(1) DEFAULT 0,
  `level` varchar(50) DEFAULT NULL,
  `duration_hours` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `preview_video` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `external_video_url` varchar(255) DEFAULT NULL,
  `is_free` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `title`, `description`, `short_description`, `category_id`, `admin_id`, `price`, `discounted_price`, `is_featured`, `is_published`, `level`, `duration_hours`, `thumbnail`, `preview_video`, `created_at`, `updated_at`, `external_video_url`, `is_free`) VALUES
(24, 'FULL HTML COURSES', 'test', 'This video from Simplilearn is Based on the Complete Java Full Course 2022.', NULL, 9, 2900.00, 200.00, 1, 1, 'Intermediate', 3, 'https://i.ytimg.com/vi/pQN-pnXPaVg/maxresdefault.jpg', NULL, '2025-03-13 11:18:16', '2025-03-13 20:20:43', '', 0),
(25, 'Complete Crypto Course for Beginners!', 'Complete Crypto Course for Beginners! \r\n\r\nIn this video, you will learn everything you need to know about crypto trading from the basics to more advanced techniques. \r\n\r\n???? Unlock 20% off my crypto course - https://bit.ly/tws-cmmf [Code: CRYPTO24]\r\n\r\n------------------\r\n\r\nGet Exclusive Perks on Account Opening\r\n\r\n▶️ India\'s Crypto Exchange – https://bit.ly/tws-dx\r\n▶️ World\'s Best Crypto Exchange – https://bit.ly/tws-bx (Get a Chance to Win $100 Trial Funds - TWS Exclusive)\r\n\r\n------------------\r\n\r\n▶️ Free Resources – https://tradingwithsidhant.com/free-r...\r\n▶️ Telegram– https://t.me/tradingwsidhant\r\n▶️ My Gear – https://bit.ly/tws-gear', 'This video from Simplilearn is Based on the Complete Java Full Course 2022.', NULL, 9, 9000.00, 8000.00, 1, 1, 'Beginner', 33, 'https://i.ytimg.com/vi/cMC4rG7t10w/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLAtUY-gFNh_7dLfaiCzad1vzQPoPg', NULL, '2025-03-13 11:27:32', '2025-03-13 20:20:41', 'https://www.youtube.com/embed/cMC4rG7t10w', 0),
(26, 'Laravel 8 Full Course for Beginners - Learn Laravel PHP Framework in 7 Hours', 'Laravel 8 Full Course for Beginners - Learn Laravel PHP Framework in 7 Hours', 'Begginers', NULL, 8, 1200.00, 200.00, 1, 1, 'Intermediate', 4, '../uploads/thumbnails/1742092304_maxresdefault.jpg', NULL, '2025-03-16 08:16:44', '2025-03-17 08:36:21', 'https://www.youtube.com/embed/xIApzP4mWyA', 1),
(67, 'Python for Data Science - Complete Course for Beginners', 'Learn Python for data science from scratch. Master pandas, NumPy, matplotlib, and scikit-learn. This comprehensive course covers everything from basic Python syntax to advanced data analysis techniques. Perfect for beginners who want to start a career in data science.', 'Learn Python for data science from scratch. Master pandas, NumPy, matplotlib, and scikit-learn.', 3, 9, 1499.00, 699.00, 1, 1, 'Beginner', 42, 'https://i.ytimg.com/vi/LHBE6Q9XlzI/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/LHBE6Q9XlzI', 0),
(68, 'The Complete 2025 Web Development Bootcamp', 'Comprehensive bootcamp covering HTML, CSS, JavaScript, React, Node.js, Express, and MongoDB. Learn to build responsive websites and full-stack applications from scratch. Includes real-world projects and deployment strategies.', 'Comprehensive bootcamp covering HTML, CSS, JavaScript, React, Node.js, Express, and MongoDB.', 2, 8, 1999.00, 899.00, 1, 1, 'Intermediate', 65, 'https://i.ytimg.com/vi/nu_pCVPKzTk/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/nu_pCVPKzTk', 0),
(69, 'Flutter & Dart - The Complete Guide to Building Mobile Apps', 'Learn Flutter and Dart to create cross-platform mobile apps for iOS and Android. Master UI design, state management, Firebase integration, and app publishing. Build real-world projects including a shopping app and chat application.', 'Learn Flutter and Dart to create cross-platform mobile apps for iOS and Android.', 4, 9, 1699.00, 799.00, 1, 1, 'Intermediate', 48, 'https://i.ytimg.com/vi/VPvVD8t02U8/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/VPvVD8t02U8', 0),
(70, 'Cyber Security Crash Course', 'Essential cybersecurity concepts and practices for beginners. Learn about common threats, security protocols, encryption, network security, and ethical hacking basics. Includes hands-on labs and security tool demonstrations.', 'Essential cybersecurity concepts and practices for beginners.', 5, 8, 999.00, 499.00, 1, 1, 'Beginner', 12, 'https://i.ytimg.com/vi/U_P23SqJaDc/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/U_P23SqJaDc', 0),
(71, 'UI/UX Design Tutorial with Figma', 'Master UI/UX design principles and workflows using Figma. Learn wireframing, prototyping, user research, and design systems. Create beautiful, user-friendly interfaces for web and mobile applications.', 'Master UI/UX design principles and workflows using Figma.', 6, 9, 1299.00, 599.00, 1, 1, 'Beginner', 28, 'https://i.ytimg.com/vi/c9Wg6Cb_YlU/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/c9Wg6Cb_YlU', 0),
(72, 'React Native - Full Course for Beginners', 'Learn React Native to build native mobile apps using JavaScript. Master core concepts, navigation, state management, and API integration. Build and deploy apps to both iOS and Android platforms.', 'Learn React Native to build native mobile apps using JavaScript.', 4, 8, 1599.00, 199.00, 1, 1, 'Intermediate', 24, 'https://i.ytimg.com/vi/obH0Po_RdWk/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-25 09:08:41', 'https://www.youtube.com/embed/obH0Po_RdWk', 0),
(73, 'Machine Learning A-Z: Hands-On Python & R', 'Comprehensive machine learning course covering both Python and R. Learn regression, classification, clustering, deep learning, and natural language processing. Includes real-world projects and datasets.', 'Comprehensive machine learning course covering both Python and R.', 3, 9, 1899.00, 899.00, 0, 1, 'Advanced', 52, 'https://i.ytimg.com/vi/GwIo3gDZCVQ/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/GwIo3gDZCVQ', 0),
(74, 'JavaScript Mastery - From Zero to Hero', 'Master JavaScript from fundamentals to advanced concepts. Learn ES6+, DOM manipulation, asynchronous programming, and modern frameworks. Build real-world projects including a task manager and weather app.', 'Master JavaScript from fundamentals to advanced concepts.', 2, 8, 1299.00, 599.00, 0, 1, 'Beginner', 36, 'https://i.ytimg.com/vi/SBmSRK3feww/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/SBmSRK3feww', 1),
(75, 'Ethical Hacking - Complete Course', 'Learn ethical hacking, penetration testing, and security auditing. Master tools like Metasploit, Wireshark, and Burp Suite. Understand vulnerability assessment and exploitation in controlled environments.', 'Learn ethical hacking, penetration testing, and security auditing.', 5, 9, 1799.00, 899.00, 0, 1, 'Advanced', 45, 'https://i.ytimg.com/vi/3Kq1MIfTWCE/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/3Kq1MIfTWCE', 0),
(76, 'SQL Database - Complete Masterclass', 'Master SQL for database management and data analysis. Learn database design, complex queries, stored procedures, and performance optimization. Includes hands-on projects with MySQL, PostgreSQL, and SQL Server.', 'Master SQL for database management and data analysis.', 3, 8, 999.00, 499.00, 0, 1, 'Intermediate', 30, 'https://i.ytimg.com/vi/HXV3zeQKqGY/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/HXV3zeQKqGY', 1),
(77, 'AWS Certified Cloud Practitioner - Full Course', 'Comprehensive preparation for the AWS Certified Cloud Practitioner exam. Learn cloud concepts, AWS services, security, architecture, pricing, and support. Includes practice tests and real-world scenarios.', 'Comprehensive preparation for the AWS Certified Cloud Practitioner exam.', 7, 9, 1499.00, 699.00, 0, 1, 'Beginner', 25, 'https://i.ytimg.com/vi/SOTamWNgDKc/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/SOTamWNgDKc', 0),
(78, 'Docker and Kubernetes - The Complete Guide', 'Master containerization with Docker and orchestration with Kubernetes. Learn to build, deploy, and scale applications in containers. Includes CI/CD integration and microservices architecture.', 'Master containerization with Docker and orchestration with Kubernetes.', 7, 8, 1699.00, 799.00, 0, 1, 'Advanced', 38, 'https://i.ytimg.com/vi/Wf2eSG3owoA/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/Wf2eSG3owoA', 0),
(79, 'Digital Marketing Masterclass - 12 Courses in 1', 'Comprehensive digital marketing course covering SEO, social media, email marketing, content marketing, PPC, and analytics. Learn to create and execute effective marketing campaigns across multiple channels.', 'Comprehensive digital marketing course covering SEO, social media, email marketing, and more.', 8, 9, 1899.00, 899.00, 1, 1, 'Beginner', 60, 'https://i.ytimg.com/vi/uPMe6GhKQtE/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/uPMe6GhKQtE', 0),
(80, 'Blockchain Development & Cryptocurrency', 'Learn blockchain technology and cryptocurrency development. Build decentralized applications (DApps) using Ethereum and Solidity. Understand smart contracts, Web3, and blockchain architecture.', 'Learn blockchain technology and cryptocurrency development.', 9, 8, 1799.00, 899.00, 0, 1, 'Advanced', 42, 'https://i.ytimg.com/vi/gyMwXuJrbJQ/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-19 09:02:56', 'https://www.youtube.com/embed/gyMwXuJrbJQ', 0),
(81, 'Unity Game Development - Complete Course', 'Learn game development with Unity from scratch. Master C# programming, 2D and 3D game design, physics, animation, and UI systems. Build and publish your own games for multiple platforms.', 'Learn game development with Unity from scratch.', 10, 9, 1599.00, 799.00, 0, 1, 'Intermediate', 48, 'https://i.ytimg.com/vi/gB1F9G0JXOo/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/gB1F9G0JXOo', 0),
(82, 'Data Structures and Algorithms - Complete Course', 'Master essential data structures and algorithms for coding interviews and software development. Learn arrays, linked lists, trees, graphs, sorting, searching, and dynamic programming.', 'Master essential data structures and algorithms for coding interviews and software development.', 1, 8, 1299.00, 599.00, 0, 1, 'Intermediate', 35, 'https://i.ytimg.com/vi/RBSGKlAvoiM/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/RBSGKlAvoiM', 1),
(83, 'Excel VBA Programming - The Complete Guide', 'Learn Excel VBA programming to automate spreadsheet tasks and create powerful applications. Master macros, UserForms, data analysis, and integration with other Office applications.', 'Learn Excel VBA programming to automate spreadsheet tasks and create powerful applications.', 11, 9, 999.00, 499.00, 0, 1, 'Beginner', 28, 'https://i.ytimg.com/vi/G05TrN7nt6k/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/G05TrN7nt6k', 1),
(84, 'Adobe Photoshop Masterclass - Beginner to Advanced', 'Comprehensive Photoshop course covering photo editing, digital art, and graphic design. Learn layers, masks, selections, retouching, compositing, and advanced effects.', 'Comprehensive Photoshop course covering photo editing, digital art, and graphic design.', 12, 8, 1199.00, 599.00, 0, 1, 'Beginner', 32, 'https://i.ytimg.com/vi/IyR_uYsRdPs/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-17 08:05:27', 'https://www.youtube.com/embed/IyR_uYsRdPs', 0),
(85, 'Artificial Intelligence Fundamentals', 'Introduction to artificial intelligence concepts and applications. Learn about machine learning, neural networks, natural language processing, computer vision, and AI ethics.', 'Introduction to artificial intelligence concepts and applications.', 3, 9, 1499.00, 699.00, 1, 1, 'Intermediate', 40, 'https://i.ytimg.com/vi/JMUxmLyrhSk/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/JMUxmLyrhSk', 0),
(86, 'Financial Trading and Investment Masterclass', 'Learn financial trading and investment strategies for stocks, forex, and cryptocurrencies. Master technical analysis, fundamental analysis, risk management, and portfolio diversification.', 'Learn financial trading and investment strategies for stocks, forex, and cryptocurrencies.', 13, 8, 1699.00, 799.00, 0, 1, 'Beginner', 45, 'https://i.ytimg.com/vi/dJulJrRXTY0/maxresdefault.jpg', NULL, '2025-03-16 21:43:04', '2025-03-16 21:43:04', 'https://www.youtube.com/embed/dJulJrRXTY0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `course_sections`
--

CREATE TABLE `course_sections` (
  `section_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_sections`
--

INSERT INTO `course_sections` (`section_id`, `course_id`, `title`, `description`, `sort_order`) VALUES
(6, 26, 'Alpha', 'This is', 1),
(7, 80, 'Alpha', 'ee', 1),
(8, 84, 'Alpha', '', 1),
(9, 72, 'Cyber', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `download_logs`
--

CREATE TABLE `download_logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `download_date` datetime NOT NULL,
  `file_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `download_logs`
--

INSERT INTO `download_logs` (`log_id`, `user_id`, `lesson_id`, `download_date`, `file_type`) VALUES
(1, 8, 24, '2025-03-19 10:21:20', 'notes'),
(2, 8, 24, '2025-03-19 10:21:32', 'video'),
(3, 8, 24, '2025-03-19 10:22:41', 'notes'),
(4, 8, 24, '2025-03-19 10:22:55', 'video'),
(5, 8, 24, '2025-03-19 11:04:35', 'notes'),
(6, 8, 24, '2025-03-19 11:04:35', 'notes'),
(7, 8, 24, '2025-03-19 11:05:12', 'video'),
(8, 8, 24, '2025-03-19 11:05:12', 'video'),
(9, 8, 24, '2025-03-19 11:05:32', 'notes'),
(10, 8, 24, '2025-03-19 11:05:32', 'notes'),
(11, 8, 24, '2025-03-19 11:30:54', 'notes'),
(12, 8, 24, '2025-03-19 11:30:54', 'notes'),
(13, 8, 24, '2025-03-21 10:43:25', 'notes'),
(14, 8, 24, '2025-03-21 10:43:25', 'notes'),
(15, 8, 24, '2025-03-21 10:43:32', 'video'),
(16, 8, 24, '2025-03-21 10:43:32', 'video'),
(17, 8, 23, '2025-03-21 17:56:20', 'video'),
(18, 8, 23, '2025-03-21 18:16:18', 'video'),
(19, 8, 24, '2025-03-21 18:31:10', 'notes'),
(20, 8, 24, '2025-03-21 18:31:10', 'notes'),
(21, 8, 23, '2025-03-25 15:44:01', 'video'),
(22, 8, 24, '2025-03-25 15:44:27', 'video'),
(23, 8, 24, '2025-03-25 15:44:49', 'notes'),
(24, 8, 24, '2025-03-25 15:44:49', 'notes');

-- --------------------------------------------------------

--
-- Table structure for table `enrollments`
--

CREATE TABLE `enrollments` (
  `enrollment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `subscription_id` int(11) DEFAULT NULL,
  `enrollment_date` datetime DEFAULT current_timestamp(),
  `expiry_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `last_accessed` datetime DEFAULT NULL,
  `completion_percentage` decimal(5,2) DEFAULT 0.00,
  `is_free_from_subscription` tinyint(1) NOT NULL DEFAULT 0,
  `payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrollments`
--

INSERT INTO `enrollments` (`enrollment_id`, `user_id`, `course_id`, `subscription_id`, `enrollment_date`, `expiry_date`, `is_active`, `last_accessed`, `completion_percentage`, `is_free_from_subscription`, `payment_id`) VALUES
(49, 8, 72, NULL, '2025-03-18 17:48:08', NULL, 1, '2025-03-28 15:15:19', 0.00, 0, 55),
(50, 8, 26, NULL, '2025-03-19 01:05:45', NULL, 1, '2025-03-25 09:07:05', 100.00, 0, 58),
(51, 8, 80, 3, '2025-03-19 09:03:13', NULL, 1, '2025-03-28 15:04:28', 100.00, 1, NULL),
(52, 13, 80, NULL, '2025-03-19 11:34:15', NULL, 1, '2025-03-19 11:35:41', 50.00, 0, 59),
(53, 12, 71, NULL, '2025-03-19 12:49:29', NULL, 1, '2025-03-19 12:49:29', 0.00, 0, 57);

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `lesson_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `content_type` enum('video','text','quiz','assignment') NOT NULL,
  `content` text DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `duration_minutes` int(11) DEFAULT NULL,
  `sort_order` int(11) NOT NULL,
  `is_free` tinyint(1) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `note_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`lesson_id`, `section_id`, `title`, `description`, `content_type`, `content`, `video_url`, `duration_minutes`, `sort_order`, `is_free`, `created_at`, `updated_at`, `note_path`) VALUES
(22, 6, 'Day-1 Introduction', 'Laravel', 'video', '', 'https://www.youtube.com/watch?v=XzSWQsVpORI', 3, 1, 0, '2025-03-19 01:04:47', '2025-03-19 01:04:47', NULL),
(23, 7, 'What is Bitcoin?', 'sss', 'video', '', 'https://prasanga.b-cdn.net/1742380659_I_CREATE_TUTOR_APP_IN_2_MIN_USING_PYTHON___LEARN_PYTHON_BY_BUILDING_SIMPLE_PROJECTS.mp4', 2, 1, 0, '2025-03-19 09:02:05', '2025-03-21 18:14:36', NULL),
(24, 7, 'Day-3 POF', 'test', 'video', '', 'https://prasanga.b-cdn.net/1742380659_I_CREATE_TUTOR_APP_IN_2_MIN_USING_PYTHON___LEARN_PYTHON_BY_BUILDING_SIMPLE_PROJECTS.mp4', 4, 2, 0, '2025-03-19 10:21:07', '2025-03-21 17:55:23', '../uploads/notes/1742379667_ss.pdf'),
(25, 8, 'dayy2', 'dayy2', 'video', '', 'https://youtu.be/n0iYVOgOj4U', 0, 1, 0, '2025-03-25 09:06:16', '2025-03-25 09:06:16', NULL),
(26, 8, 'Day2', '2ee', 'video', '', 'https://youtu.be/n0iYVOgOj4U', 3, 2, 0, '2025-03-25 09:07:41', '2025-03-25 09:07:41', NULL),
(27, 9, 'Day-1', 'Tester', 'video', '', 'https://youtu.be/n0iYVOgOj4U', 2, 1, 0, '2025-03-25 09:08:33', '2025-03-25 09:08:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lesson_progress`
--

CREATE TABLE `lesson_progress` (
  `progress_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `status` enum('not_started','in_progress','completed') DEFAULT 'not_started',
  `progress_percentage` decimal(5,2) DEFAULT 0.00,
  `last_accessed` datetime DEFAULT NULL,
  `time_spent_seconds` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lesson_progress`
--

INSERT INTO `lesson_progress` (`progress_id`, `user_id`, `lesson_id`, `status`, `progress_percentage`, `last_accessed`, `time_spent_seconds`) VALUES
(30, 8, 22, 'completed', 100.00, '2025-03-25 08:53:56', 0),
(31, 8, 23, 'completed', 100.00, '2025-03-28 15:04:07', 0),
(32, 8, 24, 'completed', 100.00, '2025-03-28 15:04:25', 0),
(33, 13, 24, 'completed', 100.00, '2025-03-19 11:35:44', 0),
(34, 13, 23, 'completed', 100.00, '2025-03-19 11:35:44', 0),
(35, 8, 27, 'in_progress', 0.00, '2025-03-28 15:26:47', 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `notification_type` varchar(50) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `user_id`, `title`, `message`, `is_read`, `notification_type`, `related_id`, `created_at`) VALUES
(92, 8, 'Course Enrollment', 'You have been enrolled in React Native - Full Course for Beginners', 0, 'enrollment', 72, '2025-03-18 17:48:08'),
(93, 8, 'Withdrawal Approved', 'Your withdrawal request for Rs. 500.00 has been approved. Note: Accept bhyo.', 0, 'withdrawal', 11, '2025-03-18 17:48:44'),
(94, 8, 'Course Enrollment', 'You have been enrolled in Laravel 8 Full Course for Beginners - Learn Laravel PHP Framework in 7 Hours', 0, 'enrollment', 26, '2025-03-19 01:05:45'),
(95, 13, 'Course Enrollment', 'You have been enrolled in Blockchain Development & Cryptocurrency', 0, 'enrollment', 80, '2025-03-19 11:34:15'),
(96, 12, 'Course Enrollment', 'You have been enrolled in UI/UX Design Tutorial with Figma', 0, 'enrollment', 71, '2025-03-19 12:49:29'),
(97, 12, 'Subscription Approved', 'Your subscription has been approved. You can now enjoy all the benefits!', 0, 'subscription', 23, '2025-03-19 12:50:50'),
(98, 8, 'Subscription Rejected', 'Your subscription payment was rejected. Reason: ', 0, 'subscription', 22, '2025-03-19 12:51:22');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `status` enum('pending','pending_approval','completed','failed','refunded') DEFAULT 'pending',
  `reference_id` varchar(100) DEFAULT NULL,
  `payment_proof` varchar(255) DEFAULT NULL,
  `payment_date` datetime DEFAULT current_timestamp(),
  `payment_type` enum('course','subscription') NOT NULL DEFAULT 'course'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `user_id`, `course_id`, `amount`, `payment_method_id`, `transaction_id`, `status`, `reference_id`, `payment_proof`, `payment_date`, `payment_type`) VALUES
(50, 11, NULL, 5000.00, 7, '88436743422', 'completed', 'SUB-9C898A8EFD', '../uploads/receipts/1742140986_67d6f63a65163.jpg', '2025-03-16 21:48:06', 'subscription'),
(52, 8, NULL, 5000.00, 6, '56710yyu', 'completed', 'SUB-A486D584CF', '../uploads/receipts/1742177054_67d7831ee630f.jpg', '2025-03-17 07:49:14', 'subscription'),
(53, 8, NULL, 2000.00, 4, 'sss', 'failed', 'SUB-5C7189FF03', '../uploads/receipts/1742316901_67d9a5650e4c1.png', '2025-03-18 22:40:01', 'subscription'),
(54, 8, 26, 200.00, 3, NULL, 'pending', 'PAY-1178BFE8D1', NULL, '2025-03-18 17:31:00', 'course'),
(55, 8, 72, 199.00, 12, 'uui ueh', 'completed', 'PAY-D770F2F27E', '../uploads/receipts/1742320058_IMG_7876.jpeg', '2025-03-18 00:00:00', 'course'),
(56, 12, NULL, 2000.00, 12, 'nvgb', 'completed', 'SUB-58E03D822F', '../uploads/receipts/1742320595_67d9b3d3b2f54.png', '2025-03-18 17:56:35', 'subscription'),
(57, 12, 71, 599.00, 12, 'sdfsd', 'completed', 'PAY-34E9CE34EB', '../uploads/receipts/1742321014_Screenshot_2025_03_15_213027.png', '2000-02-01 00:00:00', 'course'),
(58, 8, 26, 200.00, 12, 'www', 'completed', 'PAY-5527FA81A4', '../uploads/receipts/1742346331_kgf.png', '2025-03-19 00:00:00', 'course'),
(59, 13, 80, 899.00, 11, 'ddd', 'completed', 'PAY-EA2A3D7B86', '../uploads/receipts/1742384046_ss.pdf', '2025-03-19 00:00:00', 'course'),
(60, 14, 67, 699.00, 5, NULL, 'pending', 'PAY-035F9097DC', NULL, '2025-03-19 16:12:38', 'course'),
(61, 14, NULL, 2000.00, 5, 'hsiasjdnc', 'pending', 'SUB-A191EE38CB', '../uploads/receipts/1742400884_67daed74204b3.png', '2025-03-19 16:14:44', 'subscription'),
(62, 14, NULL, 2000.00, 5, 'hsiasjdnc', 'pending', 'SUB-31B3F5AFAC', '../uploads/receipts/1742400884_67daed74c16be.png', '2025-03-19 16:14:44', 'subscription');

--
-- Triggers `payments`
--
DELIMITER $$
CREATE TRIGGER `after_payment_complete` AFTER UPDATE ON `payments` FOR EACH ROW BEGIN
    DECLARE referrer_id INT;
    DECLARE referred_user_id INT;
    DECLARE reward_amount DECIMAL(10,2);

    IF NEW.status = 'completed' AND OLD.status != 'completed' THEN
        SET referred_user_id = NEW.user_id;

        SELECT referred_by INTO referrer_id
        FROM users
        WHERE user_id = referred_user_id AND referred_by IS NOT NULL;

        IF referrer_id IS NOT NULL THEN
            SET reward_amount = NEW.amount * 0.1;

            INSERT INTO referral_rewards (
                referrer_id, referred_user_id, payment_id, amount, status, created_at
            ) VALUES (
                referrer_id, referred_user_id, NEW.payment_id, reward_amount, 'completed', NOW()
            );
        END IF;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_method_id` int(11) NOT NULL,
  `bank_detail_id` int(11) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'bank_transfer',
  `is_active` tinyint(1) DEFAULT 1,
  `display_order` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `qr_image` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_method_id`, `bank_detail_id`, `name`, `type`, `is_active`, `display_order`, `description`, `icon`, `created_at`, `updated_at`, `qr_image`) VALUES
(3, 1, 'Nabil Bank Limited', 'bank_transfer', 1, 0, 'Direct bank transfer payment method', '../uploads/payment_methods/1741537487_icon_1651775977_12_nabil_bank_ltd_1711624151.jpg', '2025-03-09 16:24:47', NULL, NULL),
(4, 2, 'Nabil Bank Limited', 'bank_transfer', 1, 0, 'Direct bank transfer payment method', '../uploads/payment_methods/1741539499_icon_1651775977_12_nabil_bank_ltd_1711624151.jpg', '2025-03-09 16:58:19', NULL, NULL),
(5, NULL, 'Khalti', 'other', 1, 0, 'Khalti id: 981138848\r\nName: Prasanga Raman Pokharel', '../uploads/payment_methods/1741796830_icon_download.png', '2025-03-12 16:27:10', NULL, NULL),
(6, 3, 'Prime Bank', 'bank_transfer', 1, 0, 'Sund-Friday', '../uploads/payment_methods/1741845571_icon_download__1_.jpeg', '2025-03-13 05:59:31', NULL, NULL),
(7, 4, 'Prime Bank', 'bank_transfer', 1, 0, 'Sund-Friday', '../uploads/payment_methods/1741845678_icon_download__1_.jpeg', '2025-03-13 06:01:18', NULL, 0x89504e470d0a1a0a0000000d49484452000000e1000000e10803000000096d22480000011d504c5445ffffffb82e7e000000cc679fc45192515151c3c3c3e4e4e4eeeeeef5e3ec5555555b5b5bf8f8f89c458593076cbfbabdaf006effc4debc3d86edcddec1448cebc7dac95d9acdcdcd636363b6247a8e8e8ecfcfcfcf7faa818181d8d8d81c1c1c9c9c9ceed5d4787878aaaaaa868686e6c1c0939393b5b5b53e3e3eff99c1f8eeeeaeaeaeea68a23737376c6c6cf2f2f2a61e24a13d7546464647514cac3779d899bad88fb7ff82b42b2b2be5bbd1cd6fa3ffd3e6eba0c3d181ac252525a1000067545e8d476e765165f2dce7e0aac7da95baa30f17b140435e565adba0bebd88aeeb95bcb8729fedb0ceffddebffa3c8ff74acfeaacbf8c8dea22a7bdcb1b2eacbccd49798c98283be6163c37374b75254dea6a6f5e5e5a9292dd49b9cd0783de500000e3e49444154789ced9d8f7b9a481ac747407e08b775fd8580120b440c9c989ac48db4346dd574bdde76ef7ac9b6b74df7ffff33ee9d018d496c7e688c438f6f9ec76718069ef96466def79d6144843265ca942953a64c993265ca94368982fa6c5da982b86d8cefc9d0e5838383c2ba827bc8bab16d9825528383376f5f1c1ee6d6d5e1e18bb76f0e0275db40d7a51fbc3bd4d6a69b493b7c77a06f1be98a94a0f0e2f1f808e38b42a06c1b6b41c1af8f8a17ebd760db5897d20beb0fbf9b3a2c50d3518d83171b00cce55e1cd0625283778f3b0667d2de51d24fcd834df451acc30373db7044ed379b694268c437ed6dc311d5df6e0830977b5bdf361c566f437606ebc5416fdb78206163c3100f4461db7868938686165363e4370698cbe569f0886a61859adfd7fa16689862cc08b5efd45aab94b444b8107c6a5c8ed572b32cfa09f998508b864babab4d47e3ca943b62c323562b4db9465494aa0369923b0ad90177741721bf6d3c3423d46a481949e14d482d1c0dbd282a7bd5b1542c4f2469509c4a13a97a5446c3a1321adfde8a141142d79b148b4baaab1d9547c3d158f2aa9551f1481a8e34ad3c1a9707434919d6aacbfe27b4127e7f1cce47613cf61672ee1e8854116e4419e1932823cc0833c2ed2b23fc110837b54c03b1012584a5cd891242f621aa710f110d84ca8f4ed8eb14e41f9c302fff3f12d66a0f21ac545247581b495118860d360cef41184ae572c4d5580effa58550aa4ebcf25019236f7037e1c09b56a5d15899a2a1e75d6f4e4a0959a8b104d51d8ec6e37b100e95112b49507aa08cd2423898d4a2a83168444bbae90dc2da200cb9908dd8b0d20829eca58a15fce0b614af08ffe8843f7a4c0384f9da4304eeef01cad341587e90aa0f1125841bbc390d84825fd8e0dd2920ecf50bf2066f4f032178fc0ddefec72794e5ceb6192f093fbec4fa79ef527f5b43ff886f2ad7b7fe14f892f0d32bac0f7fbfd44f6be89ff14da9226c14eff564fe9ecb88517c53ba081f73d9546bc437a59170a119e307bff1472e7ef8bb78fab62d2714136ae1abdf265c5cf7e1705c838f614d1b46c5e958ab54436d3c1c36b45aa586a7ba6ca5562b956a9554116aaf2405791f23828846122aa1918772d3b0089f47685cf4a46aa47139e0abd4b812c795726c85b476b1a815179a975642ed378de57efe65ef77828ba20871288c50c91b6b084565a55cf4ca0d4eab96a14d87c5e9a058e5c65c35a70db9c168d428976b1ae5841a27352a7bbffcbef7e9252144680464685244630e8d47ded82b7a8a1769dea0ac8d46a52aaa29ac24855a516273a36963142ad413464a94db7ba57df8287198f0a8a2e5d0184540d84015346a20cd1b72959c372e8752f9a83a903cd6f34a40582b960761b98866fd945ac281f7922bbd643529261c407d516308bd743af58ad2510d71124263cd8359e2f8685465070a3b8aa45c71e40daa831049d3a348a39b90f5f6f63efcf2419b7e4cdc05f6085aec1892bd7ab9d2eca0126f328a4be053253a2dcd7cf6442ccda7bdbd7f7d28b2d12b5c5796653996adb06cae54c3eb336c2d8a0693900b71ba548ac635c82ee52651580b07110b1f1ccb5147a8187632032684957fbf94507918915a1e4d27e1b431184f35361a3622484cb8c9341c4ca3c1609c2b0d8751389c54729341343d0a1be3c9246a8c6bd4f5d2cb558cd81f96a62f3f7e8ae25ab22197c3cd02010034560e3f95d06ae00bc1e1973830bc359cad61df58e24a6c89abd52a6c89ba36bc46986ccb9b456d4964562acdc6d73c31cfbb3c373bc6cad113792b6e7ba1975ed54f3ffde717a29f1fae97f14d2920ecf52f674f8fa930be290d84736f213daee29b5245b81165844fa08c704d65844fa0a5848ab09a6e7e3d9d524265d5afd4dd4494eb791a098595bf1679e35f23d7fbf4aceacfa5f444a43bfa5ccd24df761c07894d972475ddc1dff1e517cb0948bcde88743e99e92922621695e4cb38293016240bb3fcd6623915fe39d7ee4527a108843b8c9ac82024463da8dbc60e13c884d0e4e18c2bdb40d89a156c62c2ebafa6a199707e480879d244af714b59f3724c1308e786c44e1da1497a1e8f48d7649816aae38e6912c23a23e08e8c0979d48db95bb412766e3ce5be07a1cc984a82453d21eab9d7f762dc24c4bd14132616a8051980758c502a086fee36b949a81876be6d5a7d11e5f3ccb1dc327aa8c3c8f8b51e3f0a217611edd8a60830f8744876625384098fd34a285acd66d33263c202dfb6f0cb03dc16b0c4842eae3c26d4a1a0e5a79070a6b9a5890fe68489c7a7de5b7c9770168bb50961de6f3b026aeb767b4ee8b71c1708835939395d8457a33621f10b24d9842169e0712892d179356a4b0fa1b12015db52b90b848651005b5aef32fdfa4e0c2ba80be57a6922bc51889855b4d8b6246abba634112a4c1f92faa5b7d063c20e4c3d1c4882a5e9221fec4f7039e34815a1d2031605398bfe90107651cc4d621a9f69c7b11c2ea028a9224c5c840f00085df5f80110327100d74ce6876836f94811a1dc379fe53b8c8df4be6a22a1d30642db5490e902ac9ddf81b945bf0f847ebf00b361d334ed7c375d8464c4a9d086c9fc1011bf20a2647e1800e1dcd2247169ca3c3eb13466d07a26222be071355deb98f1792b001693cf33368fc4c027e51d8bd9b174de4a1d6107924ee222487e623503d45c5cbdc182b26edac62142beddf491610bc869ba76d369f260745a3eead92a32dc3e2421cf8d2f50c0c20a6e903642983dc52fcc4bcc6a9bcc80130597439214c193e1948dc340468a6ad7ebb281541508eb86401667e47abd85fcfa3123d7555515905b309155575db995b6d91319666a12aa81d5c4f3f964f9c922fe9099cd8055b0a5c461a6ac0d77304340e21448bc46782d7b619d4689e7f8ee2ca6414aea2c0d13136231f19ad3bc0d672b510813c671a982d2684b098b4d32e68420ec43f4d9342376fea09de4d234112add4ea7d3759100115942d884ac841087a8c75d12d3e0dcae8c7a504e4915e14ca4e18ee787c9dc82bcefb1b7383f4c5d2f755d17c2325f804e68394028f8f16b3a2dfc48cdb56c380f7180eeced56ae6d345481a8e8771688145015bca276b6d89f08336c8752f67fca9f316b66dc3186cb5db1dc6d1ed961e00a19facaa392ae2ed63fc2f105a3611f31a02f19479fc44edd98a0c36abf2acbdb085ed326448c622f627656d0812f2b2dc655aa661e4f380d52df8265e51335b4c47960bbcc13010aae137d6cb32c0aa85d4cd8049b87d65812d59dde6c941f2fc30f187afd3674b6198f57b2248413b3bccb122f61237bfc3588a430845133cfd0e09ef44bc74d54e172154bc9f1c26feb07d19c8e0c8db9c35721c842b28a59626d1e5931914f752237ea4365ba72133ff94119a0b3290d0e926848649086db3de2784a2d12384dd76da0899452134f7f810633f2379c97a699b2c0e935329f3163b4c339143084d8b47aaafe0a8cdb49a0e34a94b0879cb044288f00437656b6dd7f7d3602dacd3d4e3c675c84117cf9e52e72df053eea6e3384df2949b24f52e6361d3625a10b5f9c4d2f475c877761888f05c26f0c594115edb4fb3302493a86dc9404d2da162b4982689d92096734c9d446d10c0b5215766780302b77eba091118d0567cd24c9e3d919da43c59a759d847946242456c1f7777f0ea862002a10ba99d6ef735218410b5db8319d46b23758438ea8c097b0a994825bb9cc1092a4a2f6938b202d7255e326db674a685fd345737d362b562e7df4da3b798edbf1731e171a76b2351e8e3496fcfec117f88cf01e17157158e65207c7d9c9a5efabd5dd085d8e3bbc9464c66b6996d67b6388ca8dc05bd845011f14ef64bcd77b23749fdcda64a36b5835cc44348d076482e66a17127fbb2777d2df966c83d75e3db0894122a2b222eb98e5242fc9bb2ab68c96fc8524bf868ca089f4419e15aca089f4419e15aca089f4419e15aa28fd0b42cff66895942741c7d49959d2b97a88bbf1f4b1f619f177824d82e32f0536ef719ae3bdff149164c1dfa065f6821b3c5231bf520975755db40ba8ff896894cdb55e0c35efc2167fa08adba0d5379df327d3eb0cd8e1db470011b67b5312134916cf6ddba6fa96e5768f34eddee8bbaebca6ede7479ab25f4ddc05ab81f7d84c86ce77d5cc55633689b75f40ca6bf4a07f10132f33121d03970ac3603bd555060125c37dbaee5a2b6ed372dc7b5904a751b2a75dfce0b7dbbae76784b074217d3765a669eb4a6d0b1f50e0fe76517f503a5e32040930ddde70b76dfccbb8e85afa59a1099be2d22c1e721a1aa220c495c43d3ee893e4ef45cd78569bc60ab70998978017fbaa26ac2b035e132955cb708451fe1632b237c1265846b29237c1265846b29237c1265846b29237c1265846b29237c1265846b29237c1265846b29237c1265846b29237c12ad4a78b17b767ee7cea214139ebf3f019dfe7147b1f4129e9dee7a9f4ff7f74fbe9c79b7954b03a1f27c994e3c74f15f20dc3fb9bd155340787176e1ddd4972f08fdf9e7fb7d8c7871dbe529203c5b9a7b129f3bc184cb4b24a29ff0e239fefc7ab67b7eb6fbd7d9eeeef3330c7471f219a1ff02e1e9b7f7b777532a08d5db08bd73fcf9fcf9f9d7ddf3ddddf3f3e7bb18d93b798fdbf1ec8fcf67bbdf6e27dcf6fbcab16e25445f97babc5320dcc7849fbf7cdbbded722a088dfead7e1bbae64d7d0642b0307f9e9c9eeedf76b1d2371eb7b22bc9ec3ffc25f3cafbaf7ffdf1f52b18d3935b9bb0d73757aed7e349e82cd9bd7c972ef6a1f94ef74f4fbede5a4cecacfa23048fa915ffcf7f7d83a8edcbf3db0badd23f3620d95ded3aefd6788dc8dde4af83dc5f6debee322b8abcec65fb32373658840e0d860614e81bbab11edc5de649646ce85f6d7668f086447a7e1326af97df54df584141fdf1117b755afa289612e41fbba39af960e5afc06d447a475f21b4f9ae44b8df23deee5164041dcb35c59eb2de7f5e517aa2e95a9d801a23b320b35de877faf97cbeb0bae06ab847a14d891fbca99e601a2abf8e54c35cfd07b13265ca942953a64c993265cab435fd0feecdf986a7c887360000000049454e44ae426082),
(11, 7, 'Igor Walker', 'bank_transfer', 1, 15, 'Et officia velit es', '../uploads/payment_methods/1742317017_icon_nabil.png', '2025-03-18 16:56:57', NULL, NULL),
(12, 8, 'Thaddeus Villarreal', 'bank_transfer', 1, 86, 'Sunt ut nemo minim', '../uploads/payment_methods/1742318568_icon_qr.png', '2025-03-18 17:22:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `referral_id` int(11) NOT NULL,
  `referrer_id` int(11) NOT NULL,
  `referred_id` int(11) NOT NULL,
  `referral_code_id` int(11) NOT NULL,
  `enrollment_id` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `reward_amount` decimal(10,2) DEFAULT NULL,
  `status` enum('pending','rewarded','rejected') DEFAULT 'pending',
  `referral_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_codes`
--

CREATE TABLE `referral_codes` (
  `referral_code_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_rewards`
--

CREATE TABLE `referral_rewards` (
  `reward_id` int(11) NOT NULL,
  `referrer_id` int(11) NOT NULL,
  `referred_user_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` enum('pending','completed','cancelled') NOT NULL DEFAULT 'pending',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `referral_rewards`
--

INSERT INTO `referral_rewards` (`reward_id`, `referrer_id`, `referred_user_id`, `payment_id`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(30, 1, 6, 32, 50.00, 'completed', '2025-03-12 12:41:46', '2025-03-12 12:41:46'),
(31, 1, 6, 36, 500.00, 'completed', '2025-03-12 12:45:35', '2025-03-12 12:45:35'),
(32, 1, 6, 38, 70.00, 'completed', '2025-03-12 12:48:12', '2025-03-12 12:48:12'),
(33, 1, 3, 39, 500.00, 'completed', '2025-03-12 21:04:00', '2025-03-12 21:04:00'),
(34, 8, 11, 49, 89.90, 'completed', '2025-03-16 21:46:51', '2025-03-16 21:46:51'),
(35, 8, 11, 50, 500.00, 'completed', '2025-03-16 21:48:19', '2025-03-16 21:48:19'),
(36, 8, 13, 59, 89.90, 'completed', '2025-03-19 11:34:15', '2025-03-19 11:34:15'),
(37, 8, 12, 57, 59.90, 'completed', '2025-03-19 12:49:29', '2025-03-19 12:49:29'),
(38, 8, 12, 56, 200.00, 'completed', '2025-03-19 12:50:50', '2025-03-19 12:50:50');

--
-- Triggers `referral_rewards`
--
DELIMITER $$
CREATE TRIGGER `update_final_balance_on_reward_add` AFTER INSERT ON `referral_rewards` FOR EACH ROW BEGIN
    IF NEW.status = 'completed' THEN
        UPDATE users
        SET final_balance = balance + 
            COALESCE((SELECT SUM(amount) FROM referral_rewards 
                     WHERE referrer_id = user_id AND status = 'completed'), 0)
        WHERE user_id = NEW.referrer_id;
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_final_balance_on_reward_change` AFTER UPDATE ON `referral_rewards` FOR EACH ROW BEGIN
    IF OLD.status != NEW.status AND (OLD.status = 'completed' OR NEW.status = 'completed') THEN
        UPDATE users
        SET final_balance = balance + 
            COALESCE((SELECT SUM(amount) FROM referral_rewards 
                     WHERE referrer_id = user_id AND status = 'completed'), 0)
        WHERE user_id = NEW.referrer_id;
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `rating` decimal(3,2) NOT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `comment` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_approved` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_responses`
--

CREATE TABLE `review_responses` (
  `response_id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`, `description`) VALUES
(1, 'admin', 'Administrator with full system access'),
(2, 'instructor', 'Can create and manage courses'),
(3, 'student', 'Regular student user');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(100) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `setting_group` varchar(50) NOT NULL DEFAULT 'general',
  `setting_label` varchar(100) NOT NULL,
  `setting_type` varchar(20) NOT NULL DEFAULT 'text',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `setting_key`, `setting_value`, `setting_group`, `setting_label`, `setting_type`, `created_at`, `updated_at`) VALUES
(1, 'site_title', 'LMS Platform', 'general', 'Site Title', 'text', '2025-03-18 02:51:01', '2025-03-18 02:51:01'),
(2, 'site_description', 'Inpowering learners worldwide with high-quality online education. Our platform offers a wide range of courses taught by industry experts.', 'general', 'Site Description', 'textarea', '2025-03-18 02:51:01', '2025-03-18 03:46:02'),
(3, 'contact_email', 'contact@example.com', 'general', 'Contact Email', 'email', '2025-03-18 02:51:01', '2025-03-18 02:51:01'),
(4, 'contact_phone', '+1 (123) 456-7890', 'general', 'Contact Phone', 'text', '2025-03-18 02:51:01', '2025-03-18 02:51:01'),
(5, 'contact_address', '123 Education Street, Learning City, 10001', 'general', 'Contact Address', 'textarea', '2025-03-18 02:51:01', '2025-03-18 02:51:01'),
(6, 'facebook_url', 'https://youtube.com/', 'social', 'Facebook URL', 'url', '2025-03-18 02:51:01', '2025-03-18 03:44:16'),
(7, 'twitter_url', 'https://youtube.com/', 'social', 'Twitter URL', 'url', '2025-03-18 02:51:01', '2025-03-18 03:44:16'),
(8, 'instagram_url', 'https://youtube.com/', 'social', 'Instagram URL', 'url', '2025-03-18 02:51:01', '2025-03-18 03:44:16'),
(9, 'youtube_url', 'https://youtube.com/', 'social', 'YouTube URL', 'url', '2025-03-18 02:51:01', '2025-03-18 03:44:16'),
(10, 'linkedin_url', 'https://youtube.com/', 'social', 'LinkedIn URL', 'url', '2025-03-18 02:51:01', '2025-03-18 03:44:16'),
(11, 'footer_column1_title', 'About Us', 'footer', 'Footer Column 1 Title', 'text', '2025-03-18 02:51:01', '2025-03-18 02:51:01'),
(12, 'footer_column1_content', 'Inpowering learners worldwide with high-quality online education. Our platform offers a wide range of courses taught by industry experts.', 'footer', 'Footer Column 1 Content', 'textarea', '2025-03-18 02:51:01', '2025-03-18 03:45:39'),
(13, 'footer_column2_title', 'Quick Links', 'footer', 'Footer Column 2 Title', 'text', '2025-03-18 02:51:01', '2025-03-18 02:51:01'),
(14, 'footer_column3_title', 'Legal', 'footer', 'Footer Column 3 Title', 'text', '2025-03-18 02:51:01', '2025-03-18 02:51:01'),
(15, 'footer_copyright', '© {year} LMS Platform. All rights reserved.', 'footer', 'Footer Copyright Text', 'text', '2025-03-18 02:51:01', '2025-03-18 02:51:01');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `subscription_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `duration_months` int(11) NOT NULL DEFAULT 1,
  `free_courses` int(11) NOT NULL DEFAULT 0,
  `features` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscription_plans`
--

INSERT INTO `subscription_plans` (`subscription_id`, `name`, `price`, `description`, `duration_months`, `free_courses`, `features`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Basic', 0.00, 'Basic access to the platform', 1, 0, '[\"Access to free courses\",\"Community forum access\",\"Basic support\"]', 1, '2025-03-10 19:08:00', '2025-03-10 19:08:00'),
(2, 'Standard', 2000.00, 'Standard access with additional benefits', 1, 2, '[\"Access to all courses\",\"2 free premium courses\",\"Priority support\",\"Course completion certificates\"]', 1, '2025-03-10 19:08:00', '2025-03-10 19:08:00'),
(3, 'Premium', 5000.00, 'Full access to all platform features', 1, 4, '[\"Access to all courses and resources\",\"4 free premium courses\",\"24/7 premium support\",\"Course completion certificates\",\"Exclusive webinars\",\"Downloadable resources\"]', 1, '2025-03-10 19:08:00', '2025-03-10 19:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `support_categories`
--

CREATE TABLE `support_categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `support_categories`
--

INSERT INTO `support_categories` (`category_id`, `name`, `description`, `created_at`) VALUES
(1, 'Account Issues', 'Problems with login, registration, or account settings', '2025-03-16 22:19:09'),
(2, 'Course Access', 'Issues accessing purchased courses or content', '2025-03-16 22:19:09'),
(3, 'Payment Problems', 'Issues with payments, refunds, or billing', '2025-03-16 22:19:09'),
(4, 'Technical Support', 'Technical problems with the platform or courses', '2025-03-16 22:19:09'),
(5, 'Subscription Issues', 'Problems with subscription plans or renewals', '2025-03-16 22:19:09'),
(6, 'Referral Program', 'Questions about the referral program or rewards', '2025-03-16 22:19:09'),
(7, 'Content Feedback', 'Feedback about course content or quality', '2025-03-16 22:19:09'),
(8, 'General Inquiry', 'General questions about the platform or services', '2025-03-16 22:19:09');

-- --------------------------------------------------------

--
-- Table structure for table `support_messages`
--

CREATE TABLE `support_messages` (
  `message_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `message` text NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `support_messages`
--

INSERT INTO `support_messages` (`message_id`, `ticket_id`, `sender_id`, `is_admin`, `message`, `is_read`, `created_at`) VALUES
(1, 1, 8, 0, 'hello', 1, '2025-03-16 22:28:20'),
(2, 1, 8, 0, 'need help', 1, '2025-03-16 22:40:18'),
(3, 2, 11, 0, 'help', 1, '2025-03-16 22:42:05'),
(4, 2, 8, 1, 'what is issue?', 0, '2025-03-16 22:45:38'),
(5, 1, 8, 1, 'ok what the issue?', 1, '2025-03-16 22:47:43'),
(6, 1, 8, 0, 'help for refung', 1, '2025-03-17 06:45:53'),
(7, 3, 14, 0, 'eg-:hello i have got a problem in refreal', 0, '2025-03-19 16:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `priority` varchar(20) NOT NULL DEFAULT 'Medium',
  `status` varchar(20) NOT NULL DEFAULT 'Open',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`ticket_id`, `user_id`, `subject`, `category_id`, `priority`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 'Payment', 2, 'High', 'Resolved', '2025-03-16 22:28:20', '2025-03-17 06:46:07'),
(2, 11, 'Payment', 3, 'Low', 'Open', '2025-03-16 22:42:05', '2025-03-16 22:45:38'),
(3, 14, 'payment issue', 6, 'Medium', 'Open', '2025-03-19 16:13:52', '2025-03-19 16:13:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `registration_date` datetime DEFAULT current_timestamp(),
  `last_login` datetime DEFAULT NULL,
  `referral_code` varchar(20) DEFAULT NULL,
  `referred_by` int(11) DEFAULT NULL,
  `free_courses_remaining` int(11) DEFAULT 0,
  `balance` decimal(10,2) NOT NULL DEFAULT 0.00,
  `final_balance` decimal(10,2) DEFAULT 0.00,
  `otp` varchar(10) DEFAULT NULL,
  `otp_expiry` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password_hash`, `first_name`, `last_name`, `profile_picture`, `bio`, `is_active`, `registration_date`, `last_login`, `referral_code`, `referred_by`, `free_courses_remaining`, `balance`, `final_balance`, `otp`, `otp_expiry`) VALUES
(8, 'prasanga', 'incpractical@gmail.com', '$2y$10$MCWCZSWzGPwdmYV2BhUIROw5wzTcLBwIcIS55lgnbZw3eqpe6tWYK', 'Prasanga', 'Pokharel', 'uploads/profile_pictures/profile_8_1741885792.jpeg', '', 1, '2025-03-13 11:06:19', '2025-03-28 15:03:59', 'D373823A', NULL, 13, -500.00, 439.70, NULL, NULL),
(9, '9811388848', 'the@gmail.com', '$2y$10$bCWIWKF1jGuivKT4r2XkyeW3cETa3mUYluH3kvbkLQaa2OJ9WDvWW', 'Prabin', 'Subedi', 'uploads/profile_pictures/profile_9_1741876612.jpg', '', 1, '2025-03-13 11:15:30', '2025-03-13 11:17:00', '6731E7B7', NULL, 5, 0.00, 0.00, NULL, NULL),
(10, 'amiee', 'wukifozid@mailinator.com', '$2y$10$XzKyxSRwayON0V2gsV4eneAXDhpPkEIZiZaGSN9yjiAMdY53fJYZa', 'Aimee', 'Ruiz', NULL, NULL, 1, '2025-03-13 23:15:07', NULL, '93398273', 8, 0, 0.00, 0.00, NULL, NULL),
(11, 'dustin', 'inc@gmail.com', '$2y$10$.jniAfrRPkXIhKalISF2GezJIYOz.CVxu8c6aO7jNVSplbALuv8va', 'Dustin', 'Stout', NULL, NULL, 1, '2025-03-16 21:36:00', '2025-03-16 22:41:28', 'A8373089', 8, 0, 0.00, 0.00, NULL, NULL),
(12, 'test', 'business66@gmail.com', '$2y$10$ZfaVtXr/im9v1qSzJZqTDOk.H.MUbRlh.acWbkiMZdyvceu./I672', 'test', 'one', NULL, NULL, 1, '2025-03-18 17:55:25', '2025-03-18 17:55:38', 'CF8231D0', 8, 2, 0.00, 0.00, NULL, NULL),
(13, 'miranda', 'prasanga787898@gmail.com', '$2y$10$1s5pmzd0J6LNTU6UbqGawu4XX15JlkLHc55Ru5uv4CzTcklDVjcue', 'Miranda', 'Green', NULL, NULL, 1, '2025-03-19 11:32:26', '2025-03-19 11:33:22', '3960DB41', 8, 0, 0.00, 0.00, NULL, NULL),
(14, 'Helloworld', 'hello@gmail.com', '$2y$10$6MVWv7ODZ9Yow6rbqtXDx.aAZqjFsT6KMA.QfsJ0fJUpgUGwxF28K', 'Hello', 'World', NULL, NULL, 1, '2025-03-19 14:46:28', '2025-03-19 16:12:09', '3DBE20C5', NULL, 0, 0.00, 0.00, NULL, NULL),
(15, 'BnSfafHRtUUts', 'taynivp4@gmail.com', '$2y$10$NGfDuzKfzFuvz4FmXwfq8ursxfopI2nRGOwgKCMfaxT8lOILod7Du', 'wOULUMqpiBRae', 'rvMFGWoehZx', NULL, NULL, 1, '2025-03-28 02:03:44', NULL, '85C11303', NULL, 0, 0.00, 0.00, NULL, NULL);

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `update_final_balance_on_balance_change` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
    IF OLD.balance != NEW.balance THEN
        SET NEW.final_balance = NEW.balance + 
            COALESCE((SELECT SUM(amount) FROM referral_rewards 
                     WHERE referrer_id = NEW.user_id AND status = 'completed'), 0);
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `assigned_date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `assigned_date`) VALUES
(8, 1, '2025-03-13 11:15:30'),
(10, 3, '2025-03-13 23:15:07'),
(11, 3, '2025-03-16 21:36:01'),
(12, 3, '2025-03-18 17:55:25'),
(13, 3, '2025-03-19 11:32:26'),
(14, 3, '2025-03-19 14:46:28'),
(15, 3, '2025-03-28 02:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `user_subscription_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `subscription_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`user_subscription_id`, `user_id`, `subscription_id`, `start_date`, `end_date`, `payment_id`, `is_active`, `created_at`, `updated_at`) VALUES
(21, 8, 3, '2025-03-17 03:04:14', '2025-04-17 03:04:14', 52, 1, '2025-03-17 07:49:14', '2025-03-17 07:49:27'),
(22, 8, 2, '2025-03-18 17:55:01', '2025-04-18 17:55:01', 53, 0, '2025-03-18 22:40:01', '2025-03-18 22:40:01'),
(23, 12, 2, '2025-03-18 17:56:35', '2025-04-18 17:56:35', 56, 1, '2025-03-18 17:56:35', '2025-03-19 12:50:50'),
(24, 14, 2, '2025-03-19 16:14:44', '2025-04-19 16:14:44', 61, 0, '2025-03-19 16:14:44', '2025-03-19 16:14:44'),
(25, 14, 2, '2025-03-19 16:14:44', '2025-04-19 16:14:44', 62, 0, '2025-03-19 16:14:44', '2025-03-19 16:14:44');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `added_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `withdrawal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `payment_details` text NOT NULL,
  `status` enum('pending','approved','rejected','processing') NOT NULL DEFAULT 'pending',
  `admin_notes` text DEFAULT NULL,
  `requested_at` datetime DEFAULT current_timestamp(),
  `processed_at` datetime DEFAULT NULL,
  `reference_id` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`withdrawal_id`, `user_id`, `amount`, `payment_method`, `payment_details`, `status`, `admin_notes`, `requested_at`, `processed_at`, `reference_id`) VALUES
(11, 8, 500.00, 'esewa', '{\"esewa_id\":\"Prasanga Raman Pokharel\",\"phone_number\":\"9765470926\"}', 'approved', 'Accept bhyo.', '2025-03-18 07:15:46', '2025-03-18 17:48:44', 'WD-9EB810FD89');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_payment_details`
--
ALTER TABLE `bank_payment_details`
  ADD PRIMARY KEY (`bank_detail_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_category_id` (`parent_category_id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`certificate_id`),
  ADD UNIQUE KEY `certificate_number` (`certificate_number`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `course_sections`
--
ALTER TABLE `course_sections`
  ADD PRIMARY KEY (`section_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `download_logs`
--
ALTER TABLE `download_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Indexes for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `fk_enrollments_subscription` (`subscription_id`);

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`lesson_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `lesson_progress`
--
ALTER TABLE `lesson_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `payment_method_id` (`payment_method_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_method_id`),
  ADD KEY `fk_payment_methods_bank_details` (`bank_detail_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`referral_id`),
  ADD KEY `referrer_id` (`referrer_id`),
  ADD KEY `referred_id` (`referred_id`),
  ADD KEY `referral_code_id` (`referral_code_id`),
  ADD KEY `enrollment_id` (`enrollment_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `referral_codes`
--
ALTER TABLE `referral_codes`
  ADD PRIMARY KEY (`referral_code_id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `referral_rewards`
--
ALTER TABLE `referral_rewards`
  ADD PRIMARY KEY (`reward_id`),
  ADD KEY `referrer_id` (`referrer_id`),
  ADD KEY `referred_user_id` (`referred_user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `review_responses`
--
ALTER TABLE `review_responses`
  ADD PRIMARY KEY (`response_id`),
  ADD KEY `review_id` (`review_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting_key` (`setting_key`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`subscription_id`);

--
-- Indexes for table `support_categories`
--
ALTER TABLE `support_categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `referral_code_UNIQUE` (`referral_code`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`user_subscription_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subscription_id` (`subscription_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `course_id` (`course_id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`withdrawal_id`),
  ADD KEY `idx_withdrawals_user_id` (`user_id`),
  ADD KEY `idx_withdrawals_status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_payment_details`
--
ALTER TABLE `bank_payment_details`
  MODIFY `bank_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `certificate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `course_sections`
--
ALTER TABLE `course_sections`
  MODIFY `section_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `download_logs`
--
ALTER TABLE `download_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `enrollments`
--
ALTER TABLE `enrollments`
  MODIFY `enrollment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `lesson_progress`
--
ALTER TABLE `lesson_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `referral_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_codes`
--
ALTER TABLE `referral_codes`
  MODIFY `referral_code_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_rewards`
--
ALTER TABLE `referral_rewards`
  MODIFY `reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_responses`
--
ALTER TABLE `review_responses`
  MODIFY `response_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_categories`
--
ALTER TABLE `support_categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `support_messages`
--
ALTER TABLE `support_messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `user_subscription_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `withdrawal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent_category_id`) REFERENCES `categories` (`category_id`) ON DELETE SET NULL;

--
-- Constraints for table `certificates`
--
ALTER TABLE `certificates`
  ADD CONSTRAINT `certificates_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `certificates_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `courses_ibfk_2` FOREIGN KEY (`admin_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `course_sections`
--
ALTER TABLE `course_sections`
  ADD CONSTRAINT `course_sections_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;

--
-- Constraints for table `enrollments`
--
ALTER TABLE `enrollments`
  ADD CONSTRAINT `enrollments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `enrollments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_enrollments_subscription` FOREIGN KEY (`subscription_id`) REFERENCES `subscription_plans` (`subscription_id`) ON DELETE SET NULL;

--
-- Constraints for table `lessons`
--
ALTER TABLE `lessons`
  ADD CONSTRAINT `lessons_ibfk_1` FOREIGN KEY (`section_id`) REFERENCES `course_sections` (`section_id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson_progress`
--
ALTER TABLE `lesson_progress`
  ADD CONSTRAINT `lesson_progress_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_progress_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`lesson_id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_ibfk_3` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`payment_method_id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD CONSTRAINT `fk_payment_methods_bank_details` FOREIGN KEY (`bank_detail_id`) REFERENCES `bank_payment_details` (`bank_detail_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `referrals_ibfk_1` FOREIGN KEY (`referrer_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `referrals_ibfk_2` FOREIGN KEY (`referred_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `referrals_ibfk_3` FOREIGN KEY (`referral_code_id`) REFERENCES `referral_codes` (`referral_code_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `referrals_ibfk_4` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollments` (`enrollment_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `referrals_ibfk_5` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`payment_id`) ON DELETE SET NULL;

--
-- Constraints for table `referral_codes`
--
ALTER TABLE `referral_codes`
  ADD CONSTRAINT `referral_codes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;

--
-- Constraints for table `review_responses`
--
ALTER TABLE `review_responses`
  ADD CONSTRAINT `review_responses_ibfk_1` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`review_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_responses_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `support_messages`
--
ALTER TABLE `support_messages`
  ADD CONSTRAINT `support_messages_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `support_tickets` (`ticket_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `support_messages_ibfk_2` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD CONSTRAINT `support_tickets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `support_tickets_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `support_categories` (`category_id`) ON DELETE SET NULL;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD CONSTRAINT `user_subscriptions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_subscriptions_ibfk_2` FOREIGN KEY (`subscription_id`) REFERENCES `subscription_plans` (`subscription_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_subscriptions_ibfk_3` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`payment_id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE;

--
-- Constraints for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD CONSTRAINT `withdrawals_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

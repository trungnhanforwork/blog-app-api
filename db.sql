-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 11, 2024 at 09:47 AM
-- Server version: 8.0.36
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add Token', 7, 'add_token'),
(26, 'Can change Token', 7, 'change_token'),
(27, 'Can delete Token', 7, 'delete_token'),
(28, 'Can view Token', 7, 'view_token'),
(29, 'Can add token', 8, 'add_tokenproxy'),
(30, 'Can change token', 8, 'change_tokenproxy'),
(31, 'Can delete token', 8, 'delete_tokenproxy'),
(32, 'Can view token', 8, 'view_tokenproxy'),
(33, 'Can add category', 9, 'add_category'),
(34, 'Can change category', 9, 'change_category'),
(35, 'Can delete category', 9, 'delete_category'),
(36, 'Can view category', 9, 'view_category'),
(37, 'Can add post', 10, 'add_post'),
(38, 'Can change post', 10, 'change_post'),
(39, 'Can delete post', 10, 'delete_post'),
(40, 'Can view post', 10, 'view_post'),
(41, 'Can add comment', 11, 'add_comment'),
(42, 'Can change comment', 11, 'change_comment'),
(43, 'Can delete comment', 11, 'delete_comment'),
(44, 'Can view comment', 11, 'view_comment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$hzPTNqsPEws1TZCVFfbD49$8jXN6ojjScm3aZiYN5QAcVVYDlWnnM4nbXSX2CKAdpo=', '2024-05-11 09:47:04.198835', 1, 'man', 'Mẫn', 'Lê Nguyễn Trung', 'trungmanle.vm@gmail.com', 1, 1, '2024-05-10 10:09:17.528913'),
(2, 'pbkdf2_sha256$600000$MwFtbDegXu56q3kHIsoEUd$9ku/zEpLOIGiFVN10DotB173TZKc8kGDN+pVLqOQ2I4=', NULL, 0, 'superadmin', '', '', 'superadmin@gmail.com', 0, 1, '2024-05-11 06:22:59.272647');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` bigint NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `name`) VALUES
(1, 'Lập trình'),
(2, 'Đời sống'),
(3, 'Âm nhạc'),
(4, 'Công nghệ'),
(5, 'Sách'),
(6, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE `blog_comment` (
  `id` bigint NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_comment`
--

INSERT INTO `blog_comment` (`id`, `description`, `active`, `created_at`, `updated_at`, `post_id`, `user_id`) VALUES
(1, 'Bài viết bổ ích quá ạ', 1, '2024-05-10 10:13:16.909356', '2024-05-10 10:13:16.909356', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `id` bigint NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `active` tinyint(1) NOT NULL,
  `vote` int NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `category_id` bigint NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`id`, `title`, `content`, `active`, `vote`, `created_at`, `updated_at`, `category_id`, `user_id`) VALUES
(1, 'REVIEW NHẸ CÁC NGÔN NGỮ, CÔNG NGHỆ, FRAMEWORK MÀ MÌNH ĐÃ VÀ ĐANG DÙNG KIẾM CƠM – PHẦN 2', '<p>Sau gần 2 năm làm việc ở VN, mình&nbsp;<a href=\"https://toidicodedao.com/2016/04/07/du-hoc-nuoc-ngoai-co-gi-dzui/\" rel=\"noopener noreferrer\" target=\"_blank\">lên đường qua UK du học</a>. May mắn là cũng có việc làm tại phòng IT trong trường nên không bị lụt nghề.</p><p>Kì này, mình sẽ chia sẻ về công nghệ mình đã dùng hồi ở UK, và khi mới qua Sing đi làm nhé</p><p>Đây là series bài viết 4 phần:</p><ul><li>Phần 1 – Công nghệ mình dùng hồi còn ở VN</li><li>Phần 2 – Đi du học UK và làm startup Algomerchant</li><li>Phần 3- Học quá trời công nghệ mới tại 90Seconds</li><li>Phần 4 – Các công nghệ hiện tại mình đang dùng</li></ul><p><br></p><h3><strong>Làm front-end – Học React trong 2 ngày</strong></h3><p>Vào ISS, phòng IT của Đại Học Lancaster, công việc của mình là&nbsp;<a href=\"https://toidicodedao.com/2016/09/06/tam-biet-lancaster-iss-tam-ket-thuc-kiep-code-dao-noi-xu-nguoi/\" rel=\"noopener noreferrer\" target=\"_blank\">code cái app iLancaster</a>, ứng dụng cho sinh viên của trường dùng. App được xây dựng bằng platform của thằng nào mình không nhớ, nhưng bên trong là n<strong>hiều web app nhỏ</strong>, mỗi app nhỏ được viết bằng React.</p><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/pngegg_3.png\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/pngegg_3.png?w=474\"></a>Thuở đó, React vẫn còn khá mới,&nbsp;<a href=\"https://toidicodedao.com/2018/08/21/series-luoc-su-lap-trinh-web-phan-4-1-reactjs-ngang-troi-xuat-the/\" rel=\"noopener noreferrer\" target=\"_blank\">chưa phổ biến như bây giờ</a>. Mình ban đầu cũng&nbsp;<strong>không ưa React lắm</strong>&nbsp;vì thấy nó … kì kì, tự dưng&nbsp;<strong>gom cả HTML lẫn JavaScript</strong>&nbsp;vào chung 1 file JSX. Thế nhưng vì yêu cầu công việc nên cũng phải học để code thôi!</p><p>Code 1 thời gian thì mình thấy&nbsp;<em>React</em>&nbsp;cũng tạm ổn, thay vì dùng view/controller như Angular thì tách làm nhiều component, tái sử dụng component cũng khá là tiện. Số lượng các thư viện/component đã có sẵn cũng khá là nhiều.</p><p><a href=\"https://toidicodedao.files.wordpress.com/2016/03/abc1.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2016/03/abc1.jpg?w=367&amp;h=285\"></a></p><p><em>Đây là mình cái thời còn chẻ châu</em></p><p>Điểm mình không thích React chắc là …&nbsp;<strong>code 1 dự án khá tuỳ tiện, chả có chuẩn gì!</strong>&nbsp;Nếu cả team không có chuẩn chung, code ẩu thì code sẽ rất nhanh trở thành 1 đống bùi nhùi (đấy là chưa lỗi Redux v…v vào đấy).</p><p>Advertisement</p><p><br></p><p>React theo mình cho tới tận bây giờ (và chắc sẽ còn theo mình&nbsp;<strong>vài ba năm nữa</strong>), nên mình sẽ chia sẽ&nbsp;kĩ hơn về React hiện tại ở bài sau!</p><h3><strong>Tạm biệt UK, về Singapore – Gặp lại Angular, lần đầu được đụng Cloud</strong></h3><p>Sau đó, mình về Singapore, làm việc cho&nbsp;<a href=\"https://toidicodedao.com/2019/05/07/tam-biet-algomerchant-startup-dau-tien/\" rel=\"noopener noreferrer\" target=\"_blank\">startup Algomerchant</a>. Công ty nhỏ (Tầm 4-5 ông dev), nhưng dự án là bự nên mình được&nbsp;<a href=\"https://toidicodedao.com/2019/05/28/hoc-hoi-tu-dong-nghiep-phan-2/\" rel=\"noopener noreferrer\" target=\"_blank\">ôm khá là nhiều thứ</a>.</p><p>Back-end của hệ thống viết theo&nbsp;<a href=\"https://toidicodedao.com/2017/02/21/tong-quan-micro-service/\" rel=\"noopener noreferrer\" target=\"_blank\">kiến trúc Microservice</a>, dùng&nbsp;<strong>ASP.NET Web API</strong>&nbsp;nên mình cũng không cần tốn quá nhiều thời gian để tiếp cận. Front-end thì mình lại may mắn được dùng … Angular 1 cũ mèm, do dự án của công ty đã chạy được vài năm.</p><p>Đây cũng là lần đầu tiên mình được dùng các&nbsp;<a href=\"https://toidicodedao.com/2018/10/30/gioi-thieu-series-cung-hoc-co-lao-tim-hieu-ve-cloud-computing/\" rel=\"noopener noreferrer\" target=\"_blank\">dịch vụ Cloud Computing</a>. Thay vì thuê server, toàn bộ hạ tầng của công ty, từ&nbsp;<em>Web App, Database, Redis</em>… đều&nbsp;<strong>sử dụng dịch vụ của Microsoft Azure</strong>&nbsp;cả! Cảm nhận của mình là dùng khá là sướng:</p><ul><li>Không cần quản lý server gì phức tạp, muốn scale cho API chạy nhanh hơn cũng rất dễ</li><li>Chỉ cần setup 1 chút là đã có nguyên hệ thống dashboard/analytics (CPU/RAM load thế nào, API nào gọi nhiều, API nào chậm), notification qua tin nhắn/email khi có service bị chết hay bị chậm.</li><li>Dùng Azure SQL Database lâu lâu hệ thống còn thông báo<strong>&nbsp;query nào chậm, cần thêm index nào</strong>, optimize ra sao</li></ul><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/dashboard-e1612861065184.png\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/dashboard-e1612861065184.png?w=396&amp;h=224\"></a></p><p><em>Azure có những dashboard rất mạnh, đủ mọi thông tin về service đang chạy</em></p><p>Nhược điểm là mỗi tội… giá hơi cao, lại phải trả hàng tháng. Tuy nhiên, nếu so với tiền tự mua server, tự host, thêm tiền&nbsp;<strong>thuê mấy ông operation vận hành</strong>&nbsp;thì chắc cũng không quá cao!</p><h3><strong>ElectronJS – Viết Code 1 lần chạy tùm lum… chỗ</strong></h3><p>Tiếp theo, công ty có dự án viết app tên AutoInvest, kết nối với broker để trading (mua/bán cổ phiếu).</p><p>Khổ nỗi, broker mà công ty muốn dùng (<a href=\"https://www.interactivebrokers.com/en/home.php\" rel=\"noopener noreferrer\" target=\"_blank\">Interactive Brokers – IB</a>) lại ….&nbsp;<strong>méo hỗ trợ Web API</strong>, hoặc chỉ support với chức năng cực kì có hạn. Do vậy, hệ thống phải chạy trên máy tính, kết nối với app của Interactive Broker chứ không làm web được.</p><p>Do đã ớn WinForm và WPF, mình quyết định dùng&nbsp;<a href=\"https://www.electronjs.org/\" rel=\"noopener noreferrer\" target=\"_blank\">ElectronJS</a>&nbsp;để làm app này!</p><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/pinclipart.png\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/pinclipart.png?w=474\"></a></p><p>Nói đơn giản,&nbsp;<em>Electron</em>&nbsp;là sự kết hợp của&nbsp;<em>Chromium</em>&nbsp;và&nbsp;<em>NodeJS</em>, cho phép bạn tạo&nbsp;<a href=\"https://toidicodedao.com/2017/08/17/lam-the-nao-de-tro-thanh-web-developer-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">giao diện như web bằng HTML/CSS/JS</a>, dùng&nbsp;<em>NodeJS</em>&nbsp;để làm các tác vụ liên quan tới phần cứng, mạng, database… Các ứng dụng lớn như&nbsp;<em>Atom, VSCode, Slack, Figma</em>,… đều viết bằng&nbsp;<em>Electron</em>&nbsp;cả.</p><p>Advertisement</p><p><br></p><p>Sau 1 thời gian dùng, mình nhận ra Electron khá là bá đạo:</p><ul><li>Viết code 1 lần,&nbsp;<strong>chạy được trên cả Window, Linux, Mac</strong>&nbsp;(mỗi tội setup build hơi rườm ra). Nhờ vậy, sau này mình migrate app qua Linux cũng khá nhanh, chỉnh nửa buổi là xong.</li><li>Dùng&nbsp;<em>HTML/CSS/JS</em>&nbsp;để làm giao diện, nên&nbsp;<a href=\"https://toidicodedao.com/2015/08/18/nhung-ki-nang-can-co-cua-mot-web-developer/\" rel=\"noopener noreferrer\" target=\"_blank\">dân web developer</a>&nbsp;như mình bay qua phát là code được ngay</li><li>Tái sử dụng được quá trời thư viện của JavaScript và NodeJS</li></ul><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/screenshot-2021-02-09-at-4.58.59-pm-e1612861165633.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/screenshot-2021-02-09-at-4.58.59-pm-e1612861165633.jpg?w=449&amp;h=164\"></a></p><p><em>Rất nhiều ứng dụng cross-platform lớn được viết bằng Electron</em></p><p>Bên cạnh đó, Electron có 1 số khuyến điểm nho nhỏ, các bạn cần lưu ý:</p><ul><li>Build ra file cài đặt hơi bự (Vài chục tới vài trăm MB), vì phải chức Chromium Core và NodeJS</li><li>Giao diện hiển thị bằng Chromium Core nên có thể sẽ … tốn RAM, chạy chậm nếu không biết cách optimize</li></ul><h3><strong>Tạm kết</strong></h3><p>Về sau, khi hệ thống có nhiều người dùng, mình bắt đầu sử dụng&nbsp;<a href=\"https://toidicodedao.com/2018/03/20/elk-stack-logging/\" rel=\"noopener noreferrer\" target=\"_blank\">bộ ba ELK (ElasticSearch – LogStask – Kibana)</a>&nbsp;để quản lý log. Do mình đã giới thiệu trong bài viết riêng rồi nên các bạn đọc lại nha!</p><p>Sau 1 thời gian, mình&nbsp;<a href=\"https://toidicodedao.com/2019/05/07/tam-biet-algomerchant-startup-dau-tien/\" rel=\"noopener noreferrer\" target=\"_blank\">lại rời Algomerchant</a>&nbsp;– startup đầu tiên, nhảy đi tới chân trời mới vì … lương cao hơn. May thay, công ty mới dùng khá nhiều công nghệ mới, mình lại tiếp tục được học và dùng công nghệ mới!</p><p>Tất cả mình sẽ chia sẻ ở phần sau của blog nhé!</p>', 1, 2, '2024-05-10 10:12:08.004420', '2024-05-11 08:28:28.640236', 1, 1),
(2, 'REVIEW NHẸ CÁC NGÔN NGỮ, CÔNG NGHỆ, FRAMEWORK MÀ MÌNH ĐÃ VÀ ĐANG DÙNG KIẾM CƠM – PHẦN 1', '<p>Nhiều bạn hay hỏi mình code bằng ngôn ngữ gì, thích công nghệ gì. Anh em làm trong ngành ai cũng biết, đi làm một thời gian thì sẽ phải dụng khá nhiều ngôn ngữ/công nghệ, không thể nói vài dòng là hết được!</p><p>Do vậy, hôm nay mình viết blog chia sẻ về các công nghệ/ngôn ngữ lập trình mình&nbsp;<strong>đã sử dụng</strong>&nbsp;qua mấy năm đi làm nha. Mình cũng&nbsp;<strong>review nhẹ</strong>&nbsp;điểm mạng/yếu, những điều mình thích/không thích của những thứ này luôn!</p><p><br></p><p>Đây là series bài viết 4 phần:</p><ul><li>Phần 1 – Công nghệ mình dùng hồi còn ở VN</li><li>Phần 2 – Đi du học UK và làm startup Algomerchant</li><li>Phần 3- Học quá trời công nghệ mới tại 90Seconds</li><li>Phần 4 – Các công nghệ hiện tại mình đang dùng</li></ul><h3><strong>Thuở mới đi làm – C# và WPF</strong></h3><p>Hồi mới ra trường, mình đi phỏng vấn FSoft, được vào FSU 1, chuyện làm với các khách hàng Mỹ/ Châu Âu, dùng C#. Hồi đấy tuy phỏng vấn làm web nhưng mình lại… không được code web, mà phải code&nbsp;<a href=\"https://en.wikipedia.org/wiki/Windows_Presentation_Foundation\" rel=\"noopener noreferrer\" target=\"_blank\">WPF (Window Presentation Foundation)</a>.</p><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/screenshot-2021-02-09-at-5.02.15-pm.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/screenshot-2021-02-09-at-5.02.15-pm-e1612861363758.jpg?w=139&amp;h=126\"></a>Nói đơn giản,&nbsp;<em>WPF</em>&nbsp;là người kế nhiệm của&nbsp;<a href=\"https://toidicodedao.com/2015/12/03/series-c-hay-ho-tai-sao-winform-van-chua-chet-co-nen-hoc-winform-hay-khong/\" rel=\"noopener noreferrer\" target=\"_blank\">WinForm</a>, là một công nghệ được dùng để viết phần mềm trên Windows (và vẫn còn sống tới giờ). Thời đó, vì dự án yêu cầu viết phần mềm chạy 3D, quản lý giàn khoan dầu v…v nên sử dụng WPF.</p><p>&nbsp;</p><p>Mặc dù là 1 công nghệ khá cũ (từ tận 2006), nhưng cá nhân mình thấy code&nbsp;<em>WPF</em>&nbsp;làm giao diện cũng khá ok, dễ dùng XAML để customize các component. Kết hợp với các thư viện&nbsp;<em>MVVM</em>, ta có thể dễ dàng bind dữ liệu, xử lý logic bên trong từng component.</p><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/wpf-themes-collage.png\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/wpf-themes-collage.png?w=440&amp;h=315\"></a></p><p><em>WPF vẫn làm được nhiều giao diện đẹp, cool ngầu, dễ customize</em></p><p>&nbsp;</p><p>Advertisement</p><p><br></p><p>Điểm trừ duy nhất của WPF chắc là …. chỉ chạy trên Windows, chưa chạy được trên Mac và Linux. Hiện tại&nbsp;<a href=\"https://github.com/xamarin/xamarin.forms\" rel=\"noopener noreferrer\" target=\"_blank\">Xamarin.Forms</a>&nbsp;cũng hay được dùng thay WPF, sắp tới cũng có thằng&nbsp;<a href=\"https://github.com/dotnet/maui\" rel=\"noopener noreferrer\" target=\"_blank\">.NET MaUI</a>&nbsp;không biết thế nào.</p><h3><strong>Code Web ở Aswig – ASP.NET MVC</strong></h3><p>Làm được ở FSoft vài tháng, mình&nbsp;<a href=\"https://toidicodedao.com/2015/09/08/tam-biet-aswig-doi-dong-tam-su-cua-chang-junior-developer-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">nhảy qua Aswig</a>&nbsp;vì … lương cao hơn. Bên này mình vẫn code C#, nhưng được làm Web chứ không còn phải code WPF nữa.</p><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/screenshot-2021-02-09-at-5.03.39-pm.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/screenshot-2021-02-09-at-5.03.39-pm.jpg?w=172&amp;h=113\"></a>Công nghệ hồi đó team mình dùng là&nbsp;<em>ASP.NET MVC</em>&nbsp;(C# chỉ có mỗi thằng này để làm Web), cộng với&nbsp;<em>Entity Framework!</em></p><p>Cho những bạn chưa biết,&nbsp;<em>Entity Framework</em>&nbsp;là một ORM (Object Relational Mapping) của .NET, cho phép ta map các bảng trong Database thành class/object C#, thực hiện thêm/bớt/xoá/sửa mà không cần phải viết query C#.</p><p>&nbsp;</p><p>Bộ đôi này mình thấy dùng code rất sướng:</p><ul><li>Áp dụng&nbsp;<a href=\"https://toidicodedao.com/2015/11/03/dependency-injection-va-inversion-of-control-phan-1-dinh-nghia/\" rel=\"noopener noreferrer\" target=\"_blank\">Dependency Injection</a>, logic gì cứ viết vào service, inject vào Controller để controller gọi, trả kết quả về View.</li><li>Code chức năng mới khá nhanh, ít phải viết query tay nhiều, trừ trường hợp cần&nbsp;<a href=\"https://toidicodedao.com/2016/09/27/optimize-code/\" rel=\"noopener noreferrer\" target=\"_blank\">optimize code</a></li><li><em>Entity Framewor</em>k hỗ trợ việc migration/chỉnh sửa table và field trong database và model rất tiện lợn</li><li>Cấu trúc code khá ổn, không bị rối.</li></ul><p>=&gt; Cá nhân mình thấy dự án lớn viết bằng C#, nếu code cẩn thận về sau đọc cũng dễ quản lý, dễ bảo trì hơn.</p><p>Đến bây giờ,&nbsp;<em>ASP.NET Core</em>&nbsp;cũng hỗ trợ mô hình MVC lẫn&nbsp;<em>Razor Page, Entity Framework Core</em>&nbsp;(một phiên bản nhẹ hơn của EF) cũng chạy được trên cả Mac/Linux, không phải lo vụ bản quyền nữa!</p><h3><strong>Lần đầu đụng Angular 1 (AngularJS)</strong></h3><p>Hồi đấy, may là&nbsp;<a href=\"https://toidicodedao.com/2019/05/21/hoc-hoi-tu-dong-nghiep-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">anh Hưng leader</a>&nbsp;rất ham tìm tòi học hỏi, không ngại thử cái mới, nên team mình mới được thử đủ thứ công nghệ từ NoSQL (RavenDB) cho tới&nbsp;<em>Angular 1</em>&nbsp;(nay gọi là&nbsp;<em>AngularJS</em>).</p><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/angularjs-logo-blog-header_0-e1612861568403.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/angularjs-logo-blog-header_0-e1612861568403.jpg?w=206&amp;h=118\"></a>Trước đó, mình chỉ biết dùng&nbsp;<em>jQuery</em>&nbsp;thuần,&nbsp;<a href=\"https://toidicodedao.com/tag/javascript-sida/\" rel=\"noopener noreferrer\" target=\"_blank\">viết code JavaScript</a>&nbsp;để đọc DOM này nọ, code rối tình rối mù.</p><p>Khác với&nbsp;<em>jQuery</em>,&nbsp;<em>Angular</em>&nbsp;không phải là thư viện (library), mà là nguyên 1 framework với đủ tính năng từ data-binding, routing, tới API call….</p><p>&nbsp;</p><p>Từ hồi bắt đầu học và sử dụng Angular 1, mình bỗng cảm nhận được “mặt trời chân lý chói qua tim”:</p><ul><li>Code theo mô hình&nbsp;<em>MVVM</em>, tách riêng logic xử lý trong controller, logic render trong view</li><li>Hỗ trợ double-binding nên viết code xử lý là dữ liệu tự render ra HTML, tự đọc input của người dùng</li><li>Phân tách code thành nhiều module, service, dependency injection v…v</li><li>Có quá trời thư viện/component đã build sẵn, chỉ việc tải về dùng</li><li>Gắn 1 link script vào là chạy,&nbsp;<a href=\"https://toidicodedao.com/2018/08/28/series-luoc-su-lap-trinh-web-phan-4-2-front-end-web-hien-dai-co-gi-hot/\" rel=\"noopener noreferrer\" target=\"_blank\">chả cần setup build này nọ</a>&nbsp;như bọn Angular 2, React v….v sau này!</li></ul><p>Angular 1 theo chân mình từ Aswig cho tới tận … 2 công ty sau (ISS Lancater và Algomerchant). Cá nhân mình thấy dự án Angular 1&nbsp;<strong>cấu trúc code cũng ổn</strong>, nhưng vì là JavaScript nên về sau đọc code dễ bị rối, gặp mấy ông dev viết ẩu là cũng mệt.</p><p>Advertisement</p><p><br></p><p>Hiện tại, rất nhiều công ty vẫn còn đang sử dụng/bảo trì các dự án Angular 1. Tuy vậy, nếu bắt đầu học thì các bạn nên học từ Angular 2 nha.</p><h3><strong>Tạm kết</strong></h3><p>Đấy, phần này cũng tạm dài rồi nên mình tạm ngừng ở đây. Ở phần sau, mình sẽ chia sẻ về những thứ mình được học, được dùng khi đi học UK, cho tới khi lên senior, qua Singapore làm việc nhé!</p>', 1, 1, '2024-05-10 10:15:29.454708', '2024-05-11 07:06:32.773582', 1, 1),
(3, 'REVIEW NHẸ CÁC NGÔN NGỮ, CÔNG NGHỆ, FRAMEWORK MÀ MÌNH ĐÃ VÀ ĐANG DÙNG KIẾM CƠM – PHẦN 3', '<p>Rời khỏi Algomerchant, mình gia nhập 90 Seconds – 1 startup khác chuyên kết nối brand với producer để quay video.</p><p>Mặc dù lúc này, đã có hơn 4 năm kinh nghiệm, mình vẫn thấy …&nbsp;<a href=\"https://toidicodedao.com/2015/11/19/mat-toi-cua-nganh-cong-nghiep-it-phan-2/\" rel=\"noopener noreferrer\" target=\"_blank\">có quá nhiều thứ cần phải học</a>&nbsp;(nhiều tới mức mình phải&nbsp;<strong>dành nguyên phần này</strong>&nbsp;để chia sẻ về những thứ mình đã học được ở 90s).</p><p>&nbsp;</p><p>Đây là series bài viết 4 phần:</p><ul><li>Phần 1 – Công nghệ mình dùng hồi còn ở VN</li><li>Phần 2 – Đi du học UK và làm startup Algomerchant</li><li>Phần 3- Học quá trời công nghệ mới tại 90Seconds</li><li>Phần 4 – Các công nghệ hiện tại mình đang dùng</li></ul><p><br></p><p>Lúc mình gia nhập, hệ thống của công ty nghe nói đã rewrite tầm 2-3 lần. Code hiện tại có back-end viết bằng&nbsp;<em>Ruby on Rails</em>&nbsp;(code cũ), 1 số trang mới thì tách ra, code lại bằng&nbsp;<em>React</em>&nbsp;+&nbsp;<em>TypeScript</em>, gọi API qua&nbsp;<em>GraphQL</em>.</p><h3><strong>TypeScript – Yêu em từ cái nhìn đầu tiên</strong></h3><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/pngegg_8.png\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/pngegg_8.png?w=117&amp;h=117\"></a>TypeScript là một ngôn ngữ lập trình dựa trên&nbsp;<em>TypeScript</em>, cộng thêm typing và 1 số tính năng khác.</p><p>Trước đây mình cũng có nghe về nó, nhưng do không có nhu cầu nên không học. Vào 90 Seconds, sử dụng TypeScript 1 thời gian, mình trở nên&nbsp;<strong>thích nó lúc nào không biết!</strong></p><p>So với JavaScript, code bằng TypeScript có rất nhiều cái sướng:</p><ul><li>Hỗ trợ typing như&nbsp;<em>Java, C#</em>. Ta có thể đọc code và biết hàm nào nhận input là gì (string, number, object), trả input ra sao, không phải mò mẫm như JavaScript</li><li>Bộ tooling đi kèm TypeScript trong&nbsp;<a href=\"https://toidicodedao.com/2020/07/28/huong-dan-setup-visual-studio-code-nhung-extension-xin-xo-ma-dev-nao-cung-nen-dung/\" rel=\"noopener noreferrer\" target=\"_blank\">VSCode</a>&nbsp;rất mạnh, dễ dàng refactoring, nhắc lệnh, import …</li><li>Khác với Java, C#, ta không cần phải viết dài dòng các kiểu input/output. TypeScript có thể&nbsp;<strong>dựa vào code để đoán ra input/output</strong>&nbsp;của một hàm luôn, viết ngắn gọn và đỡ tốn thời gian hơn nhiều</li><li>Dùng TypeScript, mình ít bị gặp mấy lỗi linh tinh như&nbsp;<strong>gọi sai hàm, sai property</strong>, quên check null, check undefined v…v</li></ul><p>Bên cạnh đó, có 1 số nhược điểm của TS các bạn nên lưu ý:</p><ul><li>Cài đặt bước ban đầu hơi mất thời gian</li><li>Các thư viện phổ biến như&nbsp;<em>moment</em>,&nbsp;<em>lodash</em>, … đều có typings của TypeScript cả, nhưng một số thư viện nhỏ hơn sẽ không có, bạn phải tự viết hoặc dùng any</li><li>Nếu xui xui, bạn sẽ gặp&nbsp;<strong>lỗi/xung đột typing giữa các thư viện</strong>, lỗi này sửa rất mệt</li><li>TypeScript không có type validation, nếu bạn nhận data từ file/API, bạn vẫn phải check lại type</li></ul><p>Theo xu thế hiện tại, các dự án lớn cũng đang&nbsp;<strong>migrate dần qua TypeScript</strong>&nbsp;để dễ viết code, dễ bảo trì, ít bug hơn (<a href=\"https://slack.engineering/typescript-at-slack/\" rel=\"noopener noreferrer\" target=\"_blank\">Slack migrate qua TS</a>). Mình nghĩ anh em cũng nên học, có thể nó sẽ là xu thế!</p><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/screen-shot-2021-02-10-at-17.12.13-e1612948365894.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/screen-shot-2021-02-10-at-17.12.13-e1612948365894.jpg?w=438&amp;h=169\"></a></p><p><em>AirBnB cũng&nbsp;</em><a href=\"https://www.youtube.com/watch?v=P-J9Eg7hJwE\" rel=\"noopener noreferrer\" target=\"_blank\"><em>migrate qua TypeScript</em></a></p><h3><strong>Gọi API với GraphQL</strong></h3><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/pngfind.png\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/pngfind.png?w=159&amp;h=45\"></a>Một cái mới mình được học ở 90Seconds là&nbsp;<a href=\"https://graphql.org/\" rel=\"noopener noreferrer\" target=\"_blank\">GraphQL</a>. Nói cho dễ hiểu, GraphQL là một ngôn ngữ dùng để query dữ liệu từ phía server.</p><p>Advertisement</p><p><br></p><p>Bên front-end của mình (<em>React</em>) sử dụng GraphQL để gọi dữ liệu từ phía back-end (<em>Ruby</em>), thay cho RestAPI. Thật ra, cả RestAPI hay GraphQL đều dựa trên giao thức HTTP cả.</p><p>Một số ưu điểm của GraphQL:</p><ul><li>Gần như …&nbsp;<strong>không cần phải viết document</strong>, vì GraphQL sẽ tự generate ra document dựa theo model và query luôn</li><li>Front-end có thể bảo back-end nó cần những trường nào, chỉ lấy những trường đó, không cần lấy hết như RestAPI, tiết kiệm băng thông</li><li>Với dữ liệu phức tạp, cần móc nối nhiều, ta cũng có thể gọi 1 lần để lấy, không cần gọi nhiều lần</li><li>Các tooling hỗ trợ test, viết query trong graphQL cũng khá ok. Thời đó mình kết hợp với TypeScript, viết query xong tự generate ra type cho kết quả của hàm đó luôn, rất sướng!</li></ul><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/screen-shot-2021-02-10-at-17.14.08-e1612948466261.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/screen-shot-2021-02-10-at-17.14.08-e1612948466261.jpg?w=433&amp;h=170\"></a></p><p><em>Với GraphQL, đòi field nào thì API trả về field đó</em></p><p>Một số nhược điểm (đa phần ở phía back-end):</p><ul><li>Khó quản lý phân quyền: User nào có thể access model nào, hàm nào, những field nào trong model</li><li>Dễ bị vấn đề performance,&nbsp;<a href=\"https://medium.com/the-marcy-lab-school/what-is-the-n-1-problem-in-graphql-dd4921cb3c1a\" rel=\"noopener noreferrer\" target=\"_blank\">n + 1 query</a>&nbsp;nếu code quên optimize</li><li>Do còn mới nên một số thư viện hỗ trợ chưa tốt, chưa có best practice</li></ul><p>Hiện tại, một số công ty lớn (Github, Facebook) cũng đã dùng GraphQL. Tuy vậy, mình thấy vẫn&nbsp;<strong>chưa phổ biến lắm</strong>, chắc do dân tình thấy dùng RestAPI vẫn tốt, chưa cần thay đổi làm gì. Nếu anh em quan tâm cũng nên xem cho biết nhé!</p><h3><strong>Sự bá đạo của Ruby on Rails</strong></h3><p>Mang tiếng là làm front-end, nhưng&nbsp;<strong>lâu lâu mình cũng phải đụng back-end</strong>&nbsp;chút đỉnh để thêm tính năng, sửa API, đọc hiểu code, hiểu logic code cũ v…v.</p><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/pngegg_7.png\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/pngegg_7.png?w=474\"></a>Do công ty dùng&nbsp;<em>Ruby on Rails</em>, thế là mình cũng phải cắm đầu học lại&nbsp;<em>Ruby và Rails</em>. Nói đơn giản, Ruby là 1 ngôn ngữ lập trình bậc cao (giống Python). Còn Rails là một web framework xây dựng dựa trên Ruby.</p><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/pngegg_6.png\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/pngegg_6.png?w=474\"></a>Có thể nói,&nbsp;<a href=\"https://rubyonrails.org/\" rel=\"noopener noreferrer\" target=\"_blank\">Ruby on Rails</a>&nbsp;là framework tạo nên danh tiếng của Ruby. Nó&nbsp;<strong>vô cùng mạnh mẽ</strong>, code nhanh, nhiều tính năng, được giới startup cực kì ưu thích.</p><p>RoR được dùng để xây dựng các ứng dụng nổi tiếng như:&nbsp;<em>Github, Shopify, AirBnB, Twitch.</em></p><p>&nbsp;</p><p>Thật đấy, dùng&nbsp;<em>RoR</em>, các bạn sẽ thấy như framework như&nbsp;<em>ASP. NET MVC, Larave</em>l … đều chịu ảnh hưởng từ nó, chôm 1 chút thiết kế và tính năng của RoR:</p><ul><li>Chạy 1 lệnh duy nhất, generate ra 1 project với cấu trúc đầy đủ</li><li>Không cần phải viết SQL query thuần, chỉ cần dùng Active Record. Hỗ trợ association (1-1, 1-n, n-n), migration (thêm bớt table/field) tới tận răng</li><li>Mô hình MVC thuần,&nbsp;có form, data-binding, validation đầy đủ</li><li>Rất nhiều helper để viết unit test, đảm bảo chương trình được test kĩ càng</li><li>Hỗ trợ&nbsp;<strong>rails console</strong>&nbsp;để chạy lệnh, debug chương trình đang chạy</li><li>Nhiều document, dễ học, cộng đồng đông và hung hãn</li><li>… Còn nhiều nhiều lắm, kể cả bài không hết</li></ul><p>Nhược điểm thì mình cũng có nghe mấy ông back-end kể:</p><ul><li>Ruby không chậm, nhưng code Rails không cẩn thận, viết logic chồng chéo, query ẩu thì …&nbsp;<strong>code sẽ bị chậm</strong></li><li>Rails có quá nhiều … magic, viết theo đúng convention xong code tự chạy. Nếu không hiểu thì khi debug rất mệt.</li></ul><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/popular-web-apps-built-using.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/popular-web-apps-built-using-e1612948708135.jpg?w=361&amp;h=257\"></a></p><p><em>Rất nhiều app/ hệ thống lớn viết bằng Ruby on Rails</em></p><h3><strong>Tạm kết</strong></h3><p>Đấy, tuy chỉ ở 90Seconds trong 1 thời gian ngắn, nhưng mình học hỏi được rất nhiều thứ hay ho, quen được nhiều con người hay ho.</p>', 1, 1, '2024-05-10 10:17:15.377051', '2024-05-10 10:56:56.987248', 1, 1),
(4, 'REVIEW NHẸ CÁC NGÔN NGỮ, CÔNG NGHỆ, FRAMEWORK MÀ MÌNH ĐÃ VÀ ĐANG DÙNG KIẾM CƠM – PHẦN CUỐI', '<p>Hiện tại, mình đang làm tại SwatMobility. Team dev cũng nho nhỏ (tổng cộng tầm 8-10 người), nhưng anh em làm việc rất vui và chuyên nghiệp!</p><p>Kì này, mình sẽ đánh giá những công nghệ mà mình và team đang dùng, điểm mạnh/điểm yếu và những điều mình thích/ghét về chúng nhé.</p><p>Đây là series bài viết 4 phần:</p><ul><li>Phần 1 – Công nghệ mình dùng hồi còn ở VN</li><li>Phần 2 – Đi du học UK và làm startup Algomerchant</li><li>Phần 3- Học quá trời công nghệ mới tại 90Seconds</li><li>Phần 4 – Các công nghệ hiện tại mình đang dùng</li></ul><p><br></p><p>Ở công ty hiện tại, code cũ là back-end viết bằng&nbsp;<em>Golang</em>, front-end viết bằng&nbsp;<em>Angular 2</em>&nbsp;(gọi 2 chứ thật là Angular 7,8 gì đấy). Sau khi mình vào thì đang migrate dần sang React và Elixir.</p><h3><strong>Tái ngộ Angular – Nay đã là Angular 2</strong></h3><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/pngegg_9.png\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/pngegg_9.png?w=474\"></a>Angular 2 là một framework để viết front-end, người kế nhiệm của Angular 1. Như mình đã kể cho các bạn,&nbsp;<a href=\"https://toidicodedao.com/2016/08/18/js-truyen-ki-chuong-2-vo-lam-day-song/\" rel=\"noopener noreferrer\" target=\"_blank\">thời Angular 2 mới ra</a>, dân tình chửi bới thậm tệ: cấu trúc code&nbsp;<strong>hoàn toàn khác Angular 1</strong>, bắt buộc phải dùng&nbsp;<em>TypeScript</em>&nbsp;…</p><p>Hồi đó mình cũng thấy ghét, lại nghe nói code Angular rườm rà, build nặng nên cũng&nbsp;<strong>không thèm học</strong>.</p><p>Thế nhưng công ty dùng thì phải dùng thôi. Thế là mình lại phải lục tục&nbsp;<a href=\"https://toidicodedao.com/2015/06/23/cach-tiep-can-1-ngon-ngucong-nghe-moi-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">lên Pluralsight tìm học</a>&nbsp;Angular 2. May thay, dùng 1 thời gian mình cảm thấy Angular cũng … khá ổn,&nbsp;<strong>không tới nỗi tệ</strong>&nbsp;như mình nghĩ:</p><ul><li>Cấu trúc code&nbsp;<em>khá tường minh</em>, chia làm module, service, 1 component tách riêng logic, template, style ra file riêng</li><li>Framework hỗ trợ tận răng từ routing, validation, format tới API call, không cần xài thêm thư viện ngoài</li><li>Một component có Input/Output, cũng na ná props và callback bên trong React</li><li>Dùng&nbsp;<em>TypeScript</em>&nbsp;nên tooling ngon, refactor dễ, đọc là biết input/output/typing của các hàm ra sao</li><li>Có gắn kèm&nbsp;<em>RxJS</em>, làm được nhiều trò hay ho bá đạo</li></ul><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/screen-shot-2021-02-10-at-18.10.43.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/screen-shot-2021-02-10-at-18.10.43.jpg?w=419&amp;h=265\"></a></p><p><em>Các công ty lớn cũng thích lựa chọn Angular hơn</em></p><p>Nói chung, dùng xong mình&nbsp;<strong>thấy cũng ổn</strong>, không ghét&nbsp;<em>Angular</em>&nbsp;như xưa nữa. Nhược điểm thì chỉ có sơ sơ:</p><ul><li>Khó học vì …&nbsp;<strong>có quá nhiều khái niệm phải học</strong>&nbsp;(<a href=\"https://toidicodedao.com/2015/11/03/dependency-injection-va-inversion-of-control-phan-1-dinh-nghia/\" rel=\"noopener noreferrer\" target=\"_blank\">Dependency Injection</a>, RxJS, code structure, …). Mình học cũng tầm 2 tuần mới nắm sơ sơ</li><li>Số lượng job không nhiều, cộng đồng không đông bằng React</li><li>App build ra thì dung lượng&nbsp;<strong>lớn hơn React chút ít</strong>, nhưng không nhiều.</li></ul><h3><strong>Golang – Sức mạnh từ sự đơn giản</strong></h3><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/clipartkey_2207878.png\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/clipartkey_2207878.png?w=222&amp;h=92\"></a><em>Golang</em>&nbsp;là 1 ngôn ngữ lập trình&nbsp;<strong>được mấy ông trong Google design ra</strong>, có thể dùng để web, command line, system (docker, kubernetes).</p><p><br></p><p>Advertisement</p><p><br></p><p>Trái với&nbsp;<em>Angular 2</em>, việc học&nbsp;<em>Golang</em>&nbsp;của mình có vẻ khá dễ dàng. Chắc bởi vì Golang được thiết kế với tiêu chí&nbsp;<strong>đơn giản, dễ dùng, dễ học</strong>.</p><p>Mới đầu dùng Golang, mình cảm thấy … rất bực mình, vì nó&nbsp;<strong>thiếu rất nhiều thứ</strong>:</p><ul><li>Không có Generic Typing. Do vậy, ví dụ bạn viết hàm search/sort 1 array số, bạn sẽ phải viết hàm tương tự cho array chứa string/object. Bạn sẽ phải copy/paste hoặc tự generate code</li><li>Không có enum, không có cả … ternary operator (toán tử ba ngôi ? :), tự viết if/else nha mày</li><li>Hướng đối tượng theo kiểu … giả cầy, chỉ có public (viết hoa) và private (viết thường), syntax cũng khá kì khôi</li><li>Phải quay lại làm việc với … con trỏ (lâu lâu code mình lại nhầm giữa 2 thằng)</li></ul><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/screen-shot-2021-02-10-at-18.08.06-e1612951709701.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/screen-shot-2021-02-10-at-18.08.06-e1612951709701.jpg?w=388&amp;h=260\"></a></p><p><em>Vì quá đơn giản nên Golang&nbsp;</em><strong><em>thiếu rất nhiều thứ</em></strong><em>&nbsp;hay gặp ở các ngôn ngữ khác (</em><a href=\"http://golang.sucks/\" rel=\"noopener noreferrer\" target=\"_blank\"><em>golang.sucks</em></a><em>)</em></p><p>Đến bây giờ, mình vẫn rất bực mình mấy thứ này. Tuy vậy, mình cũng dần cảm nhận được cái hay ho của Golang:</p><ul><li>Ngôn ngữ lập trình&nbsp;<strong>đơn giản</strong>&nbsp;nên … code cũng đơn giản. Ví dụ trong JS, Ruby, 5 ông dev sẽ có 5 cách khác nhau để giải quyết 1 vấn đề. Trong Golang, 5 ông dev chắc … chỉ có 1, 2 cách, code đồng nhất hơn hẳn!</li><li>Có sẵn&nbsp;<em>golint</em>&nbsp;và&nbsp;<em>gofmt</em>&nbsp;đi kèm, anh em dev đỡ phải cãi nhau là code theo chuẩn nào, format nào (JS phải cài ESLint)</li><li>Quản lý&nbsp;<strong>concurrency bằng go-routine</strong>&nbsp;khá dễ hiểu, performance cao</li><li>Code đơn giản, ít magic nên đọc là hiểu, dễ tìm hiểu luồng chạy của project</li></ul><p>Vì lý do đó, rất nhiều các ứng dụng phổ biến như&nbsp;<em>Docker</em>,&nbsp;<em>Kubernetes</em>&nbsp;vẫn đang viết bằng&nbsp;<em>Golang</em>.</p><h3><strong>Bonus: NodeJS – Công nghệ chơi chơi, làm chơi chạy thật</strong></h3><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/pngegg_2.png\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/pngegg_2.png?w=184&amp;h=55\"></a>Còn 1 công nghệ nữa mình không dùng khi đi làm, nhưng rất hay dùng khi&nbsp;<strong>code các dự án web</strong>&nbsp;chơi chơi. Đó là NodeJS.&nbsp;<a href=\"https://en.wikipedia.org/wiki/Node.js\" rel=\"noopener noreferrer\" target=\"_blank\">NodeJS</a>&nbsp;là 1 công nghệ để viết JS ở phía back-end, dựa theo Chrome V8 Engine.</p><p>Cá nhân mình hay dùng nó để code dự án nhỏ lẻ, web chơi chơi vì nhiều lý do:</p><ul><li>Hệ sinh thái của JS khá lớn,&nbsp;<strong>có nhiều package</strong>, khi cần chỉ tải package về xài, tiết kiệm thời gian code</li><li>NodeJS mặc định là asynchonous, nếu code kĩ thì có thể chịu tải ổn mà&nbsp;<strong>không tốn quá nhiều tài nguyên</strong>&nbsp;(mấy con&nbsp;<a href=\"https://toidicodedao.com/2019/11/12/toi-di-code-dao-codeaholicguy-lam-bot-con-chimp-startup/\" rel=\"noopener noreferrer\" target=\"_blank\">web ghẻ của mình</a>&nbsp;dùng server 5$/tháng, vẫn chịu tải 3-500k request/tháng ầm ầm)</li><li>Cộng đồng người dùng đông và hung hãn, document nhiều, bị bug gì Google có ngay</li><li>Code NodeJS trong VS Code thì&nbsp;<strong>debug rất dễ, đặt debugger là chạy</strong>, không cần setup gì nhiều</li></ul><p><a href=\"https://toidicodedao.files.wordpress.com/2021/02/build-apis-in-nodejs-and-swagger-20-with-apigee127-8-638-e1612952063895.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2021/02/build-apis-in-nodejs-and-swagger-20-with-apigee127-8-638-e1612952063895.jpg?w=354&amp;h=248\"></a></p><p><em>Rất nhiều công ty từ to tới nhỏ sử dụng NodeJS</em></p><p>Bên cạnh đó, khi dùng NodeJS, các bạn nên lưu ý 1 số nhược điểm:</p><ul><li>Các dự án lớn thì nên dùng thêm&nbsp;<em>TypeScript</em>, kẻo về sau&nbsp;<strong>đọc/sửa code sẽ rất mệt</strong>. Có mấy dự án viết đã lâu, đọc lại mình không biết hàm nào trả về gì luôn!</li><li>Gần đây có nhiều vụ hacker tấn công bằng cách&nbsp;<strong>tạo package mạo danh</strong>, hoặc chiếm quyền và&nbsp;<a href=\"https://www.trendmicro.com/vinfo/sg/security/news/cybercrime-and-digital-threats/hacker-infects-node-js-package-to-steal-from-bitcoin-wallets\" rel=\"noopener noreferrer\" target=\"_blank\">cài mã độc vào package hiện hành</a>. Anh em dùng nhớ cẩn thận.</li><li>Mấy thể loại module của JS (module.export, import/export) hơi lằng nhằng</li></ul><h3><strong>Tạm kết</strong></h3><p>Phù, cuối cùng thì cái series dài kì này cũng đi tới hồi kết. Ban đầu mình&nbsp;<strong>chỉ định viết 1 bài</strong>&nbsp;mà chả hiểu sao nó lại kéo dài ra thế này!</p><p>Advertisement</p><p><br></p><p>Tính ra, trong quá trình làm việc, mình khá may mắn khi được&nbsp;<strong>tiếp xúc nhiều công nghệ hay</strong>, gặp nhiều người giỏi; không phải ru rú làm hoài làm mãi một thứ!</p><p>Túm cái quần lại,&nbsp;<strong>công nghệ nào cũng có cái hay cái dở riêng</strong>, tuỳ thuộc vào&nbsp;dự án, và vào team hiện tại quen dùng gì thôi. Dùng nhiều, mình cũng bớt&nbsp;<a href=\"https://toidicodedao.com/2015/07/30/c-la-ngon-ngu-tuyet-voi-nhat-java-php-c-c-ruby-chi-toan-la-thu-re-tien/\" rel=\"noopener noreferrer\" target=\"_blank\">chê ngôn ngữ này, chửi công nghệ nọ</a>, mà biết chọn thứ phù hợp theo nhu cầu dự án.</p><p>À mà nói gì thì nói, PHP vẫn là ngôn ngữ lập trình trẻ trâu rẻ tiền nhé :))</p>', 1, 1, '2024-05-10 10:17:52.591215', '2024-05-10 11:03:15.051517', 1, 1),
(5, 'CÙNG HỌC CỜ LAO – AZURE PHẦN CUỐI: TOÀN BỘ MỘT HỆ THỐNG CHẠY TRÊN AZURE SẼ NHƯ THẾ NÀO?', '<p>Ở những bài trước, tụi mình đã cùng tìm hiểu về Cloud, cũng như những dịch vụ hay dùng của Azure rồi.</p><p>Trong phần này, mình sẽ tổng hợp lại toàn bộ series, cũng như giới thiệu các bạn bạn biết Toàn bộ một hệ thống chạy trên Azure sẽ trông như thế nào nhé!</p><p>Xem xong, các bạn sẽ biết được mối quan hệ giữa các dịch vụ này, cách kết hợp chúng với nhau nha! Các bạn đọc bài, thấy quên phần nào cứ bấm vào link phần đó để đọc lại nhé!</p><h3><strong>Mục lục</strong></h3><p><strong>Lý thuyết</strong></p><ul><li><a href=\"https://toidicodedao.com/2018/10/30/gioi-thieu-series-cung-hoc-co-lao-tim-hieu-ve-cloud-computing/\" rel=\"noopener noreferrer\" target=\"_blank\">Giới thiệu Series Cùng học Cờ Lao – Tìm hiểu về Cloud Computing</a></li><li><a href=\"https://toidicodedao.com/2018/11/13/cloud-la-gi-tong-quat-ve-cloud/\" rel=\"noopener noreferrer\" target=\"_blank\">Cloud là cái chi chi? Cloud có gì hot?</a></li><li><a href=\"https://toidicodedao.com/2018/11/27/cloud-ra-doi-cloud-provider-aws-azure-gcp/\" rel=\"noopener noreferrer\" target=\"_blank\">Sự ra đời của Cloud; AWS, Azure, Google Cloud Platform và các dịch vụ của họ</a></li><li><a href=\"https://toidicodedao.com/2018/12/11/uu-nhuoc-diem-cua-cloud/\" rel=\"noopener noreferrer\" target=\"_blank\">Những ưu nhược điểm của Cloud</a></li></ul><p><strong>Thực hành cùng Azure</strong></p><ul><li><a href=\"https://toidicodedao.com/2018/12/25/cach-tao-account-microsoft-azure/\" rel=\"noopener noreferrer\" target=\"_blank\">Phần 1: Cách tạo account Microsoft Azure để bắt đầu nghịch</a></li><li><a href=\"https://toidicodedao.com/2019/01/15/cung-hoc-co-lao-azure-phan-2-tao-may-ao-virtual-machine-windows-de-nghich-ngom/\" rel=\"noopener noreferrer\" target=\"_blank\">Phần 2: Tạo máy ảo (Virtual Machine) Windows để nghịch ngợm</a></li><li><a href=\"https://toidicodedao.com/2019/03/19/deploy-ung-dung-web-tren-may-ao-azure/\" rel=\"noopener noreferrer\" target=\"_blank\">Phần 3: Cùng deploy ứng dụng Web trên máy ảo Azure Cloud</a></li><li><a href=\"https://toidicodedao.com/2019/04/09/cung-hoc-co-lao-azure-phan-4-1-azure-app-service-la-gi-no-co-gi-hay-ho/\" rel=\"noopener noreferrer\" target=\"_blank\">Phần 4.1: Azure App Service là gì? Nó có gì hay ho?</a></li><li><a href=\"https://toidicodedao.com/2019/04/23/cung-hoc-co-lao-azure-phan-4-2-deploy-ung-dung-len-azure-app-service-trong-5-phut/\" rel=\"noopener noreferrer\" target=\"_blank\">Phần 4.2: Deploy ứng dụng lên Azure App Service trong 5 phút</a></li><li><a href=\"https://toidicodedao.com/2019/06/04/cung-hoc-co-lao-azure-phan-5-1-su-ba-dao-cua-azure-sql-database/\" rel=\"noopener noreferrer\" target=\"_blank\">Phần 5.1: Sự bá đạo của Azure SQL Database?</a></li><li><a href=\"https://toidicodedao.com/2019/06/11/cung-hoc-co-lao-azure-phan-5-2-tao-va-ket-noi-sql-database-tren-cloud-trong-10-phut/\" rel=\"noopener noreferrer\" target=\"_blank\">Phần 5.2: Tạo và kết nối SQL Database trên Cloud trong 10 phút</a></li><li><a href=\"https://toidicodedao.com/2019/07/30/cung-hoc-co-lao-azure-phan-6-1-luu-tru-file-tu-vai-tram-mb-toi-hang-chuc-tb-voi-azure-storage/\" rel=\"noopener noreferrer\" target=\"_blank\">Phần 6.1: Lưu trữ file từ vài trăm MB tới hàng chục TB với Azure Storage</a></li><li><a href=\"https://toidicodedao.com/2019/08/06/cung-hoc-co-lao-azure-phan-6-2-tim-hieu-ve-azure-blob-va-azure-file/\" rel=\"noopener noreferrer\" target=\"_blank\">Phần 6.2: Tìm hiểu về Azure Blob và Azure File</a></li><li><a href=\"https://toidicodedao.com/2019/10/29/cung-hoc-co-lao-azure-phan-7-mot-so-service-hay-ho-khac-cua-azure/\" rel=\"noopener noreferrer\" target=\"_blank\">Phần 7: Một số service hay ho khác của Azure</a></li><li>Phần cuối: Toàn bộ một hệ thống chạy trên Azure sẽ như thế nào</li></ul><p><br></p><p>Advertisement</p><p><br></p><p>Để dễ hình dung, chúng ta hãy thử tượng tượng ta muốn làm&nbsp;<strong>1 mạng xã hội nho nhỏ</strong>&nbsp;như Facebook, Gạ Phò hay Củ Sen đình đám vừa ra mắt nha!</p><p>&nbsp;</p><h3><strong>Application – Azure App Service hoặc Azure VM</strong></h3><p>Mạng xã hội của chúng ta có thể được viết thành 1 cục bằng C#/PHP/Node.JS/Java. Hoặc nó có thể&nbsp;<a href=\"https://toidicodedao.com/2017/02/21/tong-quan-micro-service/\" rel=\"noopener noreferrer\" target=\"_blank\">tách thành nhiều service nhỏ</a>, mỗi service viết bằng 1 ngôn ngữ khác nhau.</p><p>Cách đơn giản nhất là deploy nguyên app/từng service lên&nbsp;<a href=\"https://toidicodedao.com/2019/04/09/cung-hoc-co-lao-azure-phan-4-1-azure-app-service-la-gi-no-co-gi-hay-ho/\" rel=\"noopener noreferrer\" target=\"_blank\">Azure App Service</a>, khỏi cần phải cài đặt gì phức tạp, muốn scale cũng dễ dàng luôn.</p><p>Trường hợp Azure App Service không hỗ trợ, chúng ta cũng có thể&nbsp;<a href=\"https://toidicodedao.com/2019/01/15/cung-hoc-co-lao-azure-phan-2-tao-may-ao-virtual-machine-windows-de-nghich-ngom/\" rel=\"noopener noreferrer\" target=\"_blank\">thuê nguyên con Azure VM</a>, tha hồ cài cắm gì cũng được. Khi cần scale, ta có thể áp dụng thêm Azure Load Balancer để cân bằng tải giữa nhiều máy luôn.</p><p><a href=\"https://toidicodedao.files.wordpress.com/2019/10/ill-1.png\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2019/10/ill-1.png?w=404&amp;h=264\"></a></p><p><em>Monolith hay Microservice, Java hay C# thì Azure App Service cũng cân được tất!</em></p><p>Ngoài ra, ở các công ty có DevOps, dùng microservice thì họ thường deploy lên&nbsp;<em>Docker Swarm</em>&nbsp;hoặc&nbsp;<em>Kubernetes</em>. Mảng này thì Google Cloud khá ngon, còn Azure hồi mình dùng thử&nbsp;<em>Azure Kubernetes</em>&nbsp;thấy hơi chuối, khuyên anh em đừng thử nha!</p><p><strong>Database – Azure SQL Database hoặc CosmosDB + Redis Cache</strong></p><p>Mạng xã hội thì phải có nơi lưu trữ thông tin của người dùng phải không nào? Thường thì dân viết C# hay dùng Microsoft SQL, còn lại thì đa phần giang hồ dùng&nbsp;<em>MySQL</em>&nbsp;hoặc&nbsp;<em>Postgres</em>.</p><p>Tin vui là cả 3 database này thì Azure đều có cả.&nbsp;<a href=\"https://toidicodedao.com/2019/06/04/cung-hoc-co-lao-azure-phan-5-1-su-ba-dao-cua-azure-sql-database/\" rel=\"noopener noreferrer\" target=\"_blank\">Azure SQL Database</a>&nbsp;còn hỗ trợ khá nhiều thứ hay ho như montoring, recommend đánh index, tự backup, dễ scale lên xuống nữa.</p><p>Ngoài ra, để giảm tải cho database, tăng tốc độ hệ thống, ta có thể&nbsp;<a href=\"https://toidicodedao.com/2018/12/18/caching-la-gi-caching-tang-toc-do-tai/\" rel=\"noopener noreferrer\" target=\"_blank\">dùng Redis làm cache</a>&nbsp;để đỡ xử lý nhiều trên server.</p><p><img src=\"https://toidicodedao.files.wordpress.com/2019/05/built-in-intelligence-1-e1558256094870.png?w=402&amp;h=222&amp;crop=1\"><em>Dùng MS SQL hay MySQL, Postgres cũng bỏ lên Azure được cả!</em></p><h3><strong>Lưu trữ File với Azure Blob/Azure File Storage</strong></h3><p>Tất nhiên, đã là mạng xã hội thì phải có nơi cho phép người dùng up hình vếu, up hình cho mèo để sống ảo, đăng clip quảng cáo bán hàng.</p><p>Advertisement</p><p><br></p><p>Azure cung cấp&nbsp;<a href=\"https://toidicodedao.com/2019/08/06/cung-hoc-co-lao-azure-phan-6-2-tim-hieu-ve-azure-blob-va-azure-file/\" rel=\"noopener noreferrer\" target=\"_blank\">Azure Blob và Azure File</a>, tha hồ cho chúng ta lưu trữ từ vài chục GB cho đến vài trăm TB. Chi phí được tính theo dung lượng lưu trữ, lưu lượng tải về nên lưu nhiều tốn nhiều, lưu ít tốn ít, không cần phải đầu tư quá nhiều.</p><p>Ngoài ra, nếu ta mở rộng, muốn dữ liệu được lưu trữ ở nhiều vùng khác nhau, phục vụ khách hàng trên toàn cầu, ta có thể&nbsp;<a href=\"https://toidicodedao.com/2018/05/29/cdn-la-gi-tang-toc-do-tai-he-thong/\" rel=\"noopener noreferrer\" target=\"_blank\">tìm hiểu và áp dụng CDN</a>. Cái này thì Azure cũng có&nbsp;<a href=\"https://azure.microsoft.com/en-us/services/cdn/\" rel=\"noopener noreferrer\" target=\"_blank\">Azure CDN</a>&nbsp;luôn!</p><p><img src=\"https://toidicodedao.files.wordpress.com/2019/07/azstor071.jpg?w=419&amp;h=243\"><em>Azure Blob cân được đủ thể loại từ vài chục GB cho đến vài trăm TB</em></p><h3><strong>Quản lý hệ thống bằng Azure Monitor</strong></h3><p>Tất nhiên, một hệ thống dù có nhiều tính năng tới mức nào, nhưng&nbsp;<strong>chạy không ổn định, lúc chậm lúc nhanh, khi sập khi tèo</strong>&nbsp;thì … dĩ nhiên sẽ bị người dùng tẩy chay.</p><p>Do vậy, bản thân mỗi service của Azure đều có gắn kèm analytic:</p><ul><li><em>Azure App Service</em>&nbsp;có hiện thị server load, memory load, thời gian response của các response, request</li><li><em>Azure VM</em>&nbsp;sẽ ghi log đủ thứ, dung lượng đĩa còn trống, RAM và CPU sử dụng, tốc độ đọc/ghi của ổ cứng v…v</li><li><em>Azure Database</em>&nbsp;thì hiển thị dung lượng còn dư, số lượng đọc/ghi, những câu query chậm, chiếm tài nguyên để optimize</li></ul><p><a href=\"https://toidicodedao.files.wordpress.com/2019/10/dashboard.png\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2019/10/dashboard.png?w=419&amp;h=237\"></a></p><p><em>Ngắm dashboard để xem hệ thống còn thoi thóp hay đã tèo</em></p><p>Trên thực tế, người ta sẽ sử dụng&nbsp;<a href=\"https://docs.microsoft.com/en-us/azure/azure-monitor/overview\" rel=\"noopener noreferrer\" target=\"_blank\">Azure Monitor</a>&nbsp;để lấy dữ liệu từ nhiều nguồn này để tạo thành dashboard, hiên thị trạng thái của hệ thống.</p><p>Ngoài ra, người ta thường setup thêm&nbsp;<em>Health Check</em>&nbsp;(Gửi request tới các service/web để xem nó sống hay không) và&nbsp;<em>Notification</em>.</p><p>Khi hệ thống có vấn đề (service chết, RAM quá cao, API chậm, …), Azure sẽ gửi thông báo qua tin nhắn SMS/ email để team có biện pháp xử lý kịp lúc</p><h3><strong>Một số tính năng thêm khác</strong></h3><ul><li>Dùng&nbsp;<em>Redis</em>&nbsp;để làm message queue</li><li>Dùng&nbsp;<em>Azure Notification Hub</em>&nbsp;để gửi notification cho người dùng trên di động</li><li>Dùng&nbsp;<em>Cognitive Services</em>&nbsp;để nhận dạng khuôn mặt, âm thanh, xử lý ảnh.</li></ul><p>Các bạn có thể tham khảo thêm tại&nbsp;<a href=\"https://toidicodedao.com/2019/10/29/cung-hoc-co-lao-azure-phan-7-mot-so-service-hay-ho-khac-cua-azure/\" rel=\"noopener noreferrer\" target=\"_blank\">Phần 7: Một số service hay ho khác của Azure</a>. Một số service chuyên biệt dùng để lưu trữ, phân tích, xử lý big data thì mình ko dùng nên ko rõ. Bạn nào đã từng làm thì vào chia sẻ nha!</p><p><a href=\"https://toidicodedao.files.wordpress.com/2019/10/microsoft-azure-cloud-infographics-logical-architecture-1-638.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2019/10/microsoft-azure-cloud-infographics-logical-architecture-1-638.jpg?w=413&amp;h=292\"></a></p><p><em>Một hệ thống phức tạp nó sẽ bự và đủ thứ hầm bà lằng thế này luôn!</em></p><h3><strong>Tạm kết</strong></h3><p>Sau một chặng đường dài hơn nửa năm, cuối cùng&nbsp;<a href=\"https://toidicodedao.com/tag/series-cung-hoc-co-lao/\" rel=\"noopener noreferrer\" target=\"_blank\">series Cùng Học Cờ Lao</a>&nbsp;cũng đã đi đến hồi kết.</p>', 1, 1, '2024-05-10 10:19:18.251397', '2024-05-10 10:44:04.308041', 1, 1);
INSERT INTO `blog_post` (`id`, `title`, `content`, `active`, `vote`, `created_at`, `updated_at`, `category_id`, `user_id`) VALUES
(6, 'CÁCH SỐNG SÓT VỚI NHỮNG ÁP LỰC TRONG NGÀNH LẬP TRÌNH', '<p>Nếu chỉ nghe lều báo nói, các bạn sẽ nghĩ rằng ngành lập trình là một ngành … dễ ăn:&nbsp;<a href=\"https://toidicodedao.com/2017/04/20/khoang-trong-kien-thuc-lap-trinh-vien/\" rel=\"noopener noreferrer\" target=\"_blank\">Nhu cầu thị trường nhiều</a>, công việc thú vị, được ngồi văn phòng máy lạnh cả ngày, lương cao so với mặt bằng chung.</p><p>Tuy vậy, ngành IT mình&nbsp;<a href=\"https://toidicodedao.com/2015/11/17/mat-toi-cua-nganh-cong-nghiep-it-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">cũng có một số mặt tối</a>&nbsp;như: kiến thức cần học rất rộng, công việc khó, ngồi nhiều dễ ảnh hưởng sức khỏe, gặp đủ thứ áp lực.</p><p>Do vậy, trong bài này, mình sẽ chia sẻ về&nbsp;<strong>những áp lực các bạn sẽ gặp</strong>&nbsp;khi theo ngành lập trình, cùng với cách sống sót và “đối phó” với chúng nhe.</p><p><br></p><h3><strong>Áp lực từ phía sếp</strong></h3><p>Nguồn gốc gây ra áp lực lớn nhất, hay gặp nhất không phải là ai xa lạ mà chính là … sếp của bạn.</p><p>Dễ hiểu thôi, sếp chính là&nbsp;<strong>người trực tiếp quản lý bạn</strong>, giao việc cho bạn, đánh giá chất lượng công việc của bạn. Do vậy, nếu gặp trúng những ông sếp “trời đánh”, bạn sẽ gặp vô vàn áp lực như:</p><ul><li>Bị giao task khó nằm ngoài chuyên môn</li><li>Bị bắt làm việc thêm giờ</li><li>Bị “đì đọt”, đánh giá thấp khi xét tăng lương, tăng chức</li></ul><p>Do vậy, cách tốt nhất để tránh áp lực từ phía sếp đó là phải… nịnh sếp, nhầm, kết thân và thấu hiểu với sếp. Hãy hiểu sếp chỉ muốn&nbsp;<strong>team làm việc hiệu quả</strong>, hoàn thành dự án đúng hạn, công ty thành công; chứ không phải muốn đì đọt bạn làm gì.</p><p><a href=\"https://toidicodedao.files.wordpress.com/2015/05/21.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2015/05/21.jpg?w=454&amp;h=138\"></a></p><p><em>Nếu không may, bạn sẽ gặp nhiều bác sếp thích&nbsp;</em><strong><em>tỏ ra nguy hiểm</em></strong></p><p>Khi trò chuyện với sếp, nếu họ đã&nbsp;<a href=\"https://toidicodedao.com/2015/06/18/con-duong-phat-trien-su-nghiep-career-path-cho-developer/\" rel=\"noopener noreferrer\" target=\"_blank\">làm quản lý lâu ngày</a>, không còn nắm vững về công nghệ, bạn&nbsp;<strong>đừng đi sâu vào kĩ thuật</strong>&nbsp;hay chuyên môn. Hãy nói những thứ sếp quan tâm như:</p><ul><li>Tiến trình của việc đang làm, estimate tiến độ dự án</li><li>Làm sao để cải thiện năng suất của bản thân và của team</li><li>Những khó khăn gặp phải</li><li>Những thứ sếp có thể giải quyết được</li></ul><p>Nói chung, khi đã thương sếp hiểu sếp, sếp cũng sẽ&nbsp;<strong>thương bạn hiểu bạn</strong>&nbsp;lại, áp lực sẽ giảm đi rất nhiều.</p><p>Advertisement</p><p><br></p><p>Còn nếu bạn xui xẻo gặp trúng mấy ông sếp&nbsp;<strong>keo kiệt, bủn xỉn lại còn ganh tị với nhân viên</strong>&nbsp;thì cứ&nbsp;<a href=\"https://toidicodedao.com/2017/06/22/tro-thanh-lap-trinh-vien-luong-cao-co-gia/\" rel=\"noopener noreferrer\" target=\"_blank\">tà tà nhảy việc</a>, tìm sếp khác tốt hơn nhé.</p><h3><strong>Áp lực từ đồng nghiệp</strong></h3><p>Bên cạnh sếp, đồng nghiệp chính là những người gây ra áp lực nhiều nhất cho bạn.</p><p>Đi làm việc một thời gian, bạn sẽ gặp nhiều loại đồng nghiệp như sau. Mỗi loại đồng nghiệp sẽ gây cho bạn một kiểu áp lực riêng:</p><ul><li>Đồng nghiệp&nbsp;<a href=\"https://toidicodedao.com/2018/05/17/hieu-ung-dunning-kruger-va-ao-tuong-suc-manh/\" rel=\"noopener noreferrer\" target=\"_blank\">ảo tưởng sức mạnh</a>&nbsp;(hoặc giỏi thật) nhưng tự kiêu, khó gần, khó nói chuyện, khó làm việc chung</li><li>Đồng nghiệp quá gà, không biết làm gì khiến bạn phải còng lưng ra gánh</li><li>Đồng nghiệp làm biếng, giỏi nịnh sếp, hay đùn đẩy công việc khiến bạn phải gánh thêm task của họ</li><li>Đồng nghiệp giỏi quá khiến mình&nbsp;<a href=\"https://toidicodedao.com/2017/12/14/cam-xuc-tieu-cuc-sinh-vien-lap-trinh-vien/\" rel=\"noopener noreferrer\" target=\"_blank\">cảm thấy tự ti, tụt hậu, thua kém</a>&nbsp;về nhiều mặt</li></ul><p><a href=\"https://toidicodedao.files.wordpress.com/2018/08/depositphotos_3829303_m.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2018/08/depositphotos_3829303_m.jpg?w=410&amp;h=273\"></a></p><p><em>Có nhiều thể loại đồng nghiệp khiến bạn rất muốn đập cho một trận (Ảnh chỉ&nbsp;</em><strong><em>mang tính chất minh họa</em></strong><em>, ngành mình&nbsp;</em><strong><em>không có mấy em xinh</em></strong><em>&nbsp;thế này đâu)</em></p><p>Nói chung, dù tốt dù xấu bạn vẫn sẽ phải làm việc chung với họ. Ai cũng có điểm mạnh điểm yếu riêng. Ví dụ có thanh niên&nbsp;<strong>code không giỏi</strong>&nbsp;nhưng biết cách..&nbsp;<strong>dụ sếp nới deadline</strong>&nbsp;cho team, tìm chỗ nhậu cho team thì sao?</p><p>Hãy tranh thủ&nbsp;<strong>học hỏi những người giỏi</strong>, né né những người dốt và làm biếng, mềm mỏng khi làm việc với những người khó gần. Nếu áp lực quá thì cứ trò chuyện trực tiếp với sếp để “đổi đồng nghiệp” hoặc “đổi team” nhé.</p><h3><strong>Áp lực theo kịp công nghệ</strong></h3><p>Đây là áp lực đặc thù của ngành IT tụi mình. Không như các ngành khác, kiến thức trong ngành IT rất nhanh hết hạn:</p><ul><li>Với ngành xây dựng, xây một cây cầu cách đây 50 năm cũng chẳng khác gì xây một cây cầu bây giờ.</li><li>Với ngành y, bệnh cảm cúm cách đây 50 năm triệu chứng cũng giống bệnh cảm cúm bây giờ.</li><li>Nhưng với ngành IT,&nbsp;<strong>công nghệ,&nbsp;</strong><a href=\"https://toidicodedao.com/2015/07/30/c-la-ngon-ngu-tuyet-voi-nhat-java-php-c-c-ruby-chi-toan-la-thu-re-tien/\" rel=\"noopener noreferrer\" target=\"_blank\"><strong>ngôn ngữ</strong></a><strong>&nbsp;hoặc framework nổi tiếng cách năm 10-15 năm giờ chẳng ai xài nữa</strong>&nbsp;cả.</li></ul><p>Do vậy, dân IT rất sợ kiến thức của mình bị lạc hậu, khó xin việc và bị đào thải. Đây là áp lực mà cả những developer lâu năm cũng dễ gặp phải.</p><p><a href=\"https://toidicodedao.files.wordpress.com/2018/08/1_v3dyq3lseelx4u3eqtubrq.png\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2018/08/1_v3dyq3lseelx4u3eqtubrq.png?w=424&amp;h=178\"></a></p><p><em>Công nghệ đến rồi đi, nếu không đuổi kịp thì bạn sẽ dễ dàng lạc hậu</em></p><p>Theo kinh nghiệm bản thân, đây là những cách mình dùng để tránh những áp lực này:</p><ul><li>Nắm vững&nbsp;<a href=\"https://toidicodedao.com/2017/04/11/can-ban-va-tu-duy-lap-trinh/\" rel=\"noopener noreferrer\" target=\"_blank\">những kiến thức căn bản</a>,&nbsp;<a href=\"https://toidicodedao.com/2016/08/25/hoc-sau-hay-hoc-rong/\" rel=\"noopener noreferrer\" target=\"_blank\">biết nhiều kiến thức rộng</a>&nbsp;sẽ giúp bạn dễ&nbsp;<a href=\"https://toidicodedao.com/2015/06/23/cach-tiep-can-1-ngon-ngucong-nghe-moi-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">tiếp cận ngôn ngữ/công nghệ</a>&nbsp;mới.</li><li>Giữ thói quen học cái mới,&nbsp;<a href=\"https://toidicodedao.com/2017/01/19/code-pet-project/\" rel=\"noopener noreferrer\" target=\"_blank\">làm những dự án nho nhỏ</a>&nbsp;để thử nghiệm cái mình cần học. Việc học lúc này sẽ trở thành niềm vui chứ không còn là áp lực nữa.</li><li>Bớt lo lắng về công nghệ, mà hãy rèn luyện tư duy sản phẩm, tư duy hệ thống.&nbsp;<a href=\"https://toidicodedao.com/2018/05/08/tai-sao-da-phan-cac-cong-ty-thich-dung-cong-nghe-loi-thoi/\" rel=\"noopener noreferrer\" target=\"_blank\">Công nghệ cũ xì</a>&nbsp;vẫn có thể&nbsp;<a href=\"https://toidicodedao.com/2018/03/27/cong-nghe-tai-trang-the-gioi-di-dong/\" rel=\"noopener noreferrer\" target=\"_blank\">làm ra được sản phẩm tốt</a>&nbsp;được cơ mà!</li></ul><h3><strong>Áp lực từ công việc hoặc dự án</strong></h3><p>Bên cạnh đó, giả sử bạn có một ông sếp hoàn hảo, có những đồng nghiệp tuyệt vời, vẫn có một loại áp lực rất bự mà&nbsp;<strong>bạn không thể nào tránh khỏi</strong>. Đó là áp lực từ công việc và dự án.</p><p>Advertisement</p><p><br></p><p>Với những dự án nhỏ hoặc dự án bảo trì, công việc của bạn sẽ khá là nhàn nhã. Tuy nhiên, với các dự án lớn, phức tạp, bạn sẽ dễ gặp những áp lực do:</p><ul><li>Dự án quá phức tạp; công nghệ lạ chưa bao giờ dùng tới, làm bạn cảm thấy khó khăn khi code</li><li>Dự án quá lớn nhưng team lại nhỏ, số lượng công việc nhiều nên khiến bạn thấy ngộp</li><li>Dự án phải hoàn thành một cách gấp rút theo yêu cầu của khách hàng, còn gọi là “cháy dự án” hoặc bị deadline dí. Lúc này, cả team phải OT sml để hoàn thành dự án đúng hạn.</li></ul><p><a href=\"https://toidicodedao.files.wordpress.com/2018/08/tim-gouw-68319-unsplash.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2018/08/tim-gouw-68319-unsplash-e1533830629750.jpg?w=399&amp;h=227\"></a></p><p><em>Áp lực từ dự án là điều rất khó tránh khỏi</em></p><p>Rất tiếc, không có cách nào để tránh khỏi những áp lực này, trừ khi bạn hoàn thành xong dự án hoặc “trốn”, chuyển qua dự án khác.</p><p>Tuy vậy, mình cũng chia sẻ một số phương pháp “sống chung với lũ”:</p><ul><li>Thảo luận với team leader/PM để deal với khách hàng xem có thêm người/kéo dài deadline được hay không</li><li>Ăn uống điều độ, giữ sức khỏe để tránh bị stresss khi phải OT quá nhiều</li></ul><p><br></p>', 1, 0, '2024-05-10 10:20:33.993321', '2024-05-10 10:20:33.993321', 2, 1),
(7, 'MỖI THÁNG MỘT CUỐN SÁCH – NHỮNG SÁCH HAY MÌNH ĐÃ ĐỌC TRONG NĂM 2015 – PHẦN 1', '<p>Từ khi ra trường, mình vẫn luôn giữ&nbsp;<a href=\"https://toidicodedao.com/2015/08/06/tao-dong-luc-hoc-tap-va-lam-viec-suc-manh-cua-thoi-quen/\" rel=\"noopener noreferrer\" target=\"_blank\">thói quen</a>&nbsp;<a href=\"https://toidicodedao.com/2015/04/21/lap-trinh-vien-trinh-cao-thi-nen-doc-sach-gi-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">đọc sách</a>, một phần là để giải trí, một phần là để học hỏi cái mới. Dù cho không học hỏi, áp dụng được gì thì cảm giác cầm cuốn sách (hoặc iPad) nghiền ngẫm từng chữ cũng khá thú vị. Để khuyến khích thói quen&nbsp;<a href=\"https://toidicodedao.com/2015/04/21/lap-trinh-vien-trinh-cao-thi-nen-doc-sach-gi-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">đọc sách</a>, cũng như chia sẻ sở thích với một số bạn, bài viết này sẽ là review tổng hợp ngắn những cuốn sách hay nhất mình đã đọc trong năm vừa rồi.</p><p>Do mình đọc khá nhiều thể loại: technical,&nbsp;<a href=\"https://toidicodedao.com/2015/08/18/nhung-ki-nang-can-co-cua-mot-web-developer/\" rel=\"noopener noreferrer\" target=\"_blank\">kĩ năng</a>&nbsp;sống, kinh tế, marketing, tiểu thuyết, tản văn, … nên những sách giới thiệu sẽ không theo một chủ đề cố định nào cả. Mỗi tháng mình đọc khoảng 6,7 cuốn sách. 12 cuốn sách dưới đây là 12 cuốn sách hay nhất mà mình đọc được mỗi tháng; có tháng mình đọc được khá nhiều cuốn hay nhưng chỉ chọn được 1 cuốn hay nhất để giới thiệu. Các bạn có thể xem toàn bộ danh sách ở&nbsp;cuối bài.</p><p><br></p><h3><strong>Tháng 1 –&nbsp;Zero to One: Notes on Startups, or How to Build the Future</strong></h3><p><a href=\"https://toidicodedao.files.wordpress.com/2015/12/1.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2015/12/1.jpg?w=217&amp;h=328\"></a></p><p>Đây là một cuốn sách khá hay về startup.&nbsp;Tác giả chỉ ra những mindset mà người làm startup nên có, những khó khăn, những điều cần phải lường trước. Ông cũng đưa ra 7 câu hỏi mà người start-up phải trả lời: Bạn đã xác định được 1 cơ hội mà nhiều người không thấy chưa? Ngoài việc tạo ra sản phẩm, bạn đã nghĩ ra cách đưa nó đến tay người dùng chưa?… Mình chưa có ý định làm startup, nhưng vẫn thấy những ý tưởng trong sách khá hay và đáng học hỏi.</p><h3><strong>Tháng 2 –&nbsp;C# in Depth 3rd Edition</strong><a href=\"https://toidicodedao.files.wordpress.com/2015/12/2.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><strong><img src=\"https://toidicodedao.files.wordpress.com/2015/12/2.jpg?w=256&amp;h=324\"></strong></a></h3><p>Một cuốn sách thuần túy technical về&nbsp;<a href=\"https://toidicodedao.com/2015/07/30/c-la-ngon-ngu-tuyet-voi-nhat-java-php-c-c-ruby-chi-toan-la-thu-re-tien/\" rel=\"noopener noreferrer\" target=\"_blank\">ngôn ngữ</a>&nbsp;C#. Nhờ đọc cuốn này, mình nghiền ngẫm ra được nhiều khái niệm mà trước giờ vẫn hơi mơ hồ như:&nbsp;<a href=\"https://toidicodedao.com/2015/02/05/callback-trong-javascript/\" rel=\"noopener noreferrer\" target=\"_blank\">callback</a>,&nbsp;<a href=\"https://toidicodedao.com/2015/02/10/series-c-hay-ho-callback-trong-c-delegate-action-predicate-func/\" rel=\"noopener noreferrer\" target=\"_blank\">delegate</a>,&nbsp;<a href=\"https://toidicodedao.com/2015/02/12/series-c-hay-ho-lambda-expression/\" rel=\"noopener noreferrer\" target=\"_blank\">lambda expression</a>,&nbsp;<a href=\"https://toidicodedao.com/2015/03/05/series-c-hay-ho-generic-la-cai-thu-chi-chi/\" rel=\"noopener noreferrer\" target=\"_blank\">generic</a>,&nbsp;<a href=\"https://toidicodedao.com/2015/03/26/series-c-hay-ho-linq/\" rel=\"noopener noreferrer\" target=\"_blank\">LINQ</a>, … và viết được series C# hay ho cho blog này. Cuốn này khá hữu dụng cho cả junior lẫn&nbsp;<a href=\"https://toidicodedao.com/2015/06/18/con-duong-phat-trien-su-nghiep-career-path-cho-developer/\" rel=\"noopener noreferrer\" target=\"_blank\">senior dev</a>eloper.</p><h3><strong>Tháng 3 –&nbsp;Blink: The Power of Thinking Without Thinking</strong><a href=\"https://toidicodedao.files.wordpress.com/2015/12/3.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><strong><img src=\"https://toidicodedao.files.wordpress.com/2015/12/3.jpg?w=294&amp;h=455\"></strong></a></h3><p>Tác giả của cuốn sách là Gladwell Malcoml, một cây viết già đời của tờ The New Yorker, với những lối suy nghĩ, cái nhìn<strong>&nbsp;lạ</strong>. Cuốn sách này nói về cách ta sử dụng tiềm thức – suy nghĩ mà không cần suy nghĩ, đưa ra quyết định “trong chớp mắt”. Cách viết của Gladwell rất cuốn hút và hấp dẫn, đi kèm với những cái nhìn lạ là những câu chuyện thú vị.</p><p>Advertisement</p><p><br></p><p>Cuốn này đã xuất bản ở Việt Nam với tựa là Trong Chớp Mắt. Những cuốn còn lại của tác giả cũng rất hay: David and Goliath, The Outlier, The Tipping Point, … mình thành fan của Gladwell nên nuốt nốt mấy cuốn đấy luôn.</p><h3><strong>Tháng 4 –&nbsp;Influence – The psychology of Persuasion</strong><a href=\"https://toidicodedao.files.wordpress.com/2015/12/4.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><strong><img src=\"https://toidicodedao.files.wordpress.com/2015/12/4.jpg?w=290&amp;h=444\"></strong></a></h3><p>Mình được một anh bạn đồng nghiệp&nbsp;<a href=\"https://toidicodedao.com/2015/09/08/tam-biet-aswig-doi-dong-tam-su-cua-chang-junior-developer-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">ASWIG</a>&nbsp;(cũng ham đọc sách) giới thiệu cuốn này. Ban đầu, mình tưởng nó chỉ là sách marketing bình thường, nhưng càng đọc mình càng bị thu hút. Cuốn sách hướng dẫn cách thuyết phục, thay đổi người khác. Trong cuốn sách, bạn sẽ học được&nbsp;<strong>6 nguyên lý cơ bản để thuyết phục</strong>&nbsp;người khác. Đây là những nguyên lý mà tụi quảng cáo, marketing áp dụng hàng ngày, đôi khi chúng ta cũng vô tình (hoặc cố ý) sử dụng mà không hay biết. VD như nguyên lý thứ sáu,<strong>&nbsp;scarity – cái gì hiếm thì sẽ quý</strong>, do đó các siêu thị hay chơi trò “Số lượng có hạn, mua ngay kẻo hết”.</p><p>Đây là một cuốn sách có thể thay đổi cách nhìn của bạn, cũng như dạy bạn thêm về cách thuyết phục bạn bè, đồng nghiệp, cấp trên, hãy tìm ebook hoặc mua đọc thử nhé.</p><h3><strong>Tháng 5 –The Game: Penetrating the Secret Society of Pickup Artists</strong></h3><h3><a href=\"https://toidicodedao.files.wordpress.com/2015/12/5.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><strong><img src=\"https://toidicodedao.files.wordpress.com/2015/12/5.jpg?w=231&amp;h=347\"></strong></a></h3><p>Đây là sách thể loại nửa tiểu thuyết, nửa hồi ký, là&nbsp;<a href=\"https://toidicodedao.com/2016/01/20/su-that-dang-long-doi-khi-cam-dau-ngoi-code-la-cach-ngu-nhat-de-giai-quyet-van-de/\" rel=\"noopener noreferrer\" target=\"_blank\">một câu chuyện</a>&nbsp;có thật của anh chàng Neil Strauss (Bạn nào hay đọc vozforum chắc cũng biết thể loại tương tự). Trong 1 lần tìm đề tài viết bài gửi cho tòa soạn, Neil đã gặp Mystery, một gã trùm “chăn rau” thứ thiệt. Từ một thanh niên “đụt”, dưới sự dạy dỗ của Mystery, anh học được những mánh khóe tiếp cận phụ nữ, những chiêu trò lấy lòng và&nbsp;<strong>đưa họ lên giường</strong>. Một thế giới nơi phụ nữ chỉ là&nbsp;<em>con mồi</em>, là&nbsp;<em>phần thưởng</em>, nơi tình yêu, rung động chỉ là những chiêu trò tâm lý…</p><p>Advertisement</p><p><br></p><p>Sách viết khá hay, khá thật và quan trọng là&nbsp;<strong>kiến thức trong sách áp dụng được vào thực tế</strong>. Các bạn nam – nhất là dân lập trình nên đọc cuốn này, nó sẽ hướng dẫn bạn cách tiếp cận phái nữ, cách đánh bóng bản thân, cách nhắn tin cho gái, phương pháp kéo – thả, … Nếu ham học hỏi bạn nên đọc thêm cuốn&nbsp;<em>The Mystery Method: How to Get Beautiful Women into Bed&nbsp;</em>do chính nhân vật Mystery người thật việc thật chắp bút. Học để kiếm gấu thì được chứ đừng dùng để chăn rau nhé !!!</p><h3><strong>Tháng 6 –&nbsp;What color is your parachute?</strong><a href=\"https://toidicodedao.files.wordpress.com/2015/12/6.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><strong><img src=\"https://toidicodedao.files.wordpress.com/2015/12/6.jpg?w=246&amp;h=342\"></strong></a></h3><p>Cuốn này mình tình cờ được anh team leader giới thiệu. Đây là một cuốn sách rất hay về việc xác định&nbsp;<a href=\"https://toidicodedao.com/2015/08/18/nhung-ki-nang-can-co-cua-mot-web-developer/\" rel=\"noopener noreferrer\" target=\"_blank\">kĩ năng</a>, hướng đi của bản thân. Đọc sách, bạn sẽ biết mình là ai, mình muốn gì, mình có thể làm gì, để xác định&nbsp;<a href=\"https://toidicodedao.com/2015/06/18/con-duong-phat-trien-su-nghiep-career-path-cho-developer/\" rel=\"noopener noreferrer\" target=\"_blank\">con đường phát triển sự nghiệp</a>&nbsp;của chính mình. Sách cũng hướng dẫn một số kênh tìm việc thường thấy, cách viết một&nbsp;<a href=\"https://toidicodedao.com/2015/07/16/muon-neo-duong-tim-viec-phan-1-viet-cv-ro-rang-va-chuyen-nghiep/\" rel=\"noopener noreferrer\" target=\"_blank\">bức thư xin việc</a>, cách&nbsp;<a href=\"https://toidicodedao.com/2015/07/21/muon-neo-duong-tim-viec-phan-2-vuot-qua-ki-phong-van-like-a-boss/\" rel=\"noopener noreferrer\" target=\"_blank\">chuẩn bị phỏng vấn</a>.</p><p>Nói không ngoa, đây là một trong những cuốn sách hay nhất về việc làm và nghề nghiệp; đó cũng là lý do nó liên tục được cập nhật phiên bản mới mỗi năm từ 1970 tới giờ.</p><p>Ở phần 2, mình sẽ giới thiệu 6 cuốn sách còn lại, các bạn đón đọc nhé.</p><p>Bonus: Đây là list các sách mình đã đọc từ tháng 1 tới tháng 6, cuốn nào&nbsp;<strong>in đậm</strong>&nbsp;là hay nhất tháng,&nbsp;<em>in nghiêng</em>&nbsp;là sách hay – đáng đọc nhé.</p><p>Tháng 1</p><ul><li>Cuốn theo chiều gió</li><li>Tuyển tập truyện ngắn Haruki Murakami</li><li><em>Superhuman by Habit</em></li><li><strong>Zero to One: Notes on Startups, or How to Build the Future</strong></li><li>Lắng nghe gió hát – Haruki Murakami</li><li>Quốc gia khởi nghiệp</li><li>The Magic of Thinking Big</li><li><em>The Pragmatic Programmer, From Journeyman To Master</em></li><li><em>The Passionate Programmer Creating a Remarkable Career</em></li><li>The Road Less Traveled</li></ul><p>Tháng 2</p><ul><li><strong>C# in Depth 3rd Edition</strong></li><li>Yêu đi thôi, muộn lắm rồi</li><li>Nghĩ giàu làm giàu (dở)</li><li>Hackers and Painters</li><li>5 cm&nbsp;trên giây</li><li><em>Nhà tự nhiên kinh tế – Tại sao kinh tế học có thể lý giải mọi điều</em></li><li>Chuyện con mèo dạy con hải&nbsp;âu bay</li></ul><p>Tháng 3</p><ul><li>Innumeracy: Mathematical Illiteracy and Its Consequences</li><li><strong>Blink: The Power of Thinking Without Thinking</strong></li><li>Năm tháng là&nbsp;đóa lưỡng sinh hoa</li><li>Cô gái văn chương và người hành hương than khóc</li><li>Tam sinh tam thế – Thập lý đào hoa</li><li><em>Outliers – The story&nbsp;of success</em></li><li>Không bao giờ là thất bại – Tất cả là thử thách</li><li><em>Một đời thương thuyết</em></li><li>Đong tấm lòng</li><li>Bảy bước tới mùa hè</li></ul><p>Tháng 4</p><ul><li>The Mastery of Love: A Practical Guide to the Art of Relationship: A Toltec Wisdom Book</li><li><strong>Influence – The psychology of Persuasion</strong></li><li>Hoàng tử bé</li><li><em>The Full Facts Book of Cold Reading: A Comprehensive Guide to the Most Persuasive Psychological Manipulation Technique in the World</em></li><li><em>The Four Agreements: A Practical Guide to Personal Freedom</em></li><li>Ngôn ngữ của chúa</li><li><em>What every BODY is saying</em></li><li>Ame &amp; Yuki – Những đứa con của sói</li><li>Quái vật giữa loài người</li><li>10 nghịch lý cuộc sống</li></ul><p>Tháng 5</p><ul><li><strong>The Game: Penetrating the Secret Society of Pickup Artists</strong></li><li>Tớ là mèo Pusheen</li><li><em>The Mystery Method: How to Get Beautiful Women into Bed</em></li><li><em>Steve Mcconnell – Rapid Development – Taming Wild Software Schedules</em></li><li>Cuộc đời của Pi</li><li>Programming Pearls</li><li>Nhà giả kim</li></ul><p>Tháng 6</p><ul><li>Sài Gòn tả pín lù</li><li><em>All marketers are liars</em></li><li><em>Cracking the Coding Interview – 150 Programming Interview Questions and Solutions</em></li><li>Facts and Fallacies of Software Engineering</li><li>58++ bài học vỡ lòng để trở thành No.1</li><li>Cái cười của thánh nhân</li><li><em>Code – The Hidden Language of Computer Hardware and Software</em></li><li>Người giỏi không bởi học nhiều</li><li><em>The Elements of Style</em></li><li><strong>What color is your parachute?</strong></li></ul><p><br></p>', 1, 0, '2024-05-10 10:22:03.160464', '2024-05-10 10:22:03.160464', 5, 1),
(8, 'MỖI THÁNG MỘT CUỐN SÁCH – NHỮNG SÁCH HAY MÌNH ĐÃ ĐỌC TRONG NĂM 2015 – PHẦN 2', '<p>Nối tiếp&nbsp;<a href=\"https://toidicodedao.com/2015/12/29/moi-thang-mot-cuon-sach-nhung-sach-hay-minh-da-doc-trong-nam-2015-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">phần 1</a>, mình sẽ giới thiệu&nbsp;<a href=\"https://toidicodedao.com/2015/12/29/moi-thang-mot-cuon-sach-nhung-sach-hay-minh-da-doc-trong-nam-2015-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">một số sách</a>&nbsp;hay trong giai đoạn tháng 7&nbsp;tới tháng 12 năm nay.</p><h3><strong>Tháng 7 –&nbsp;Apprenticeship Patterns – Guidance for the Aspiring Software Craftsman</strong><a href=\"https://toidicodedao.files.wordpress.com/2015/12/7.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><strong><img src=\"https://toidicodedao.files.wordpress.com/2015/12/7.jpg?w=259&amp;h=344\"></strong></a></h3><p>Bạn đã&nbsp;<a href=\"https://toidicodedao.com/2015/09/08/tam-biet-aswig-doi-dong-tam-su-cua-chang-junior-developer-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">đi làm</a>&nbsp;được một thời gian,&nbsp;<strong>cảm thấy chán code</strong>? Bạn mới ra trường, cảm thấy còn&nbsp;<strong>lơ ngơ chưa biết gì</strong>? Bạn nhận thấy con đường trước mắt vẫn còn mù mờ? Đừng lo, hãy đọc cuốn sách này. Sách nâng&nbsp;<a href=\"https://toidicodedao.com/2015/11/17/mat-toi-cua-nganh-cong-nghiep-it-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">ngành lập trình</a>&nbsp;lên một tầm cao mới với khái niệm&nbsp;<a href=\"https://en.wikipedia.org/wiki/Software_craftsmanship\" rel=\"noopener noreferrer\" target=\"_blank\">software craftmanship</a>, người&nbsp;<a href=\"https://toidicodedao.com/2015/06/11/nhung-dieu-truong-dai-hoc-khong-day-ban-phan-3/\" rel=\"noopener noreferrer\" target=\"_blank\">code giỏi</a>&nbsp;cũng như một bậc thầy trong các ngành nghề khác. Sách có vô vàn những mẹo vặt về cách học tập, cách trau đồi&nbsp;<a href=\"https://toidicodedao.com/2015/08/18/nhung-ki-nang-can-co-cua-mot-web-developer/\" rel=\"noopener noreferrer\" target=\"_blank\">kĩ năng</a>, cách giữ lửa&nbsp;<a href=\"https://toidicodedao.com/2015/08/06/tao-dong-luc-hoc-tap-va-lam-viec-suc-manh-cua-thoi-quen/\" rel=\"noopener noreferrer\" target=\"_blank\">đam mê</a>. Bỏ mấy ngày để đọc nó sẽ có ích về lâu dài cho&nbsp;<a href=\"https://toidicodedao.com/2016/04/14/series-phan-phac-quy-chan-chuyen-ve-nhung-o-ga-tren-con-duong-lap-trinh/\" rel=\"noopener noreferrer\" target=\"_blank\">con đường sự nghiệp</a>&nbsp;của bạn nhé.</p><p><br></p><p>Có một điều lạ là tuy sách không nổi tiếng lắm (ít review), nhưng hầu như mấy lão senior nước ngoài mình theo dõi đều khuyên đọc cuốn này. Chắc tại vì sách hay, lại được phát hành free, có thể đọc online ở&nbsp;<a href=\"http://chimera.labs.oreilly.com/books/1234000001813/index.html\" rel=\"noopener noreferrer\" target=\"_blank\">đây</a>.</p><p>Advertisement</p><p><br></p><p>Một cuốn sách khá hay của tháng này là&nbsp;<a href=\"https://toidicodedao.com/2015/09/22/review-sach-presentation-zen-99-sinh-vienlap-trinh-vien-da-lam-slide-te-hai-nhu-the-nao/\" rel=\"noopener noreferrer\" target=\"_blank\">Presentation Zen</a>&nbsp;– hướng dẫn cách làm những slide tối giản, cách thực hiện một buổi&nbsp;<a href=\"https://toidicodedao.com/2015/09/22/review-sach-presentation-zen-99-sinh-vienlap-trinh-vien-da-lam-slide-te-hai-nhu-the-nao/\" rel=\"noopener noreferrer\" target=\"_blank\">thuyết trình</a>&nbsp;cuốn hút. Mình đã review cuốn này ở 1&nbsp;<a href=\"https://toidicodedao.com/2015/09/22/review-sach-presentation-zen-99-sinh-vienlap-trinh-vien-da-lam-slide-te-hai-nhu-the-nao/\" rel=\"noopener noreferrer\" target=\"_blank\">bài viết trước của blog</a>.</p><h3><strong>Tháng 8 – Suối nguồn&nbsp;</strong><a href=\"https://toidicodedao.files.wordpress.com/2015/12/suoi-nguon1.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><strong><img src=\"https://toidicodedao.files.wordpress.com/2015/12/suoi-nguon1.jpg?w=474\"></strong></a></h3><p>Đây là cuốn tiểu thuyết duy nhất trong danh sách này. Thấy thằng bạn&nbsp;<a href=\"https://toidicodedao.com/2015/09/08/tam-biet-aswig-doi-dong-tam-su-cua-chang-junior-developer-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">cùng công ty</a>&nbsp;review nên mình tò mò đọc thử. Sách dày cui, hình như hơn 1200 trang, bản ebook chia ra làm 4 phần, mình ngấu nghiến phải 4, 5 ngày mới xong.</p><p>Suối nguồn là câu chuyện về chàng kiến trúc sư Hovard Roast, một người&nbsp;<strong>theo đuổi chân lý đến tận cùng</strong>, không bao giờ thỏa hiệp. Cả câu chuyện là một cuộc đấu tranh giữa chủ nghĩa cá nhân và chủ nghĩa tập thể, giữa cá thể vĩ đại và tập thể tầm thường. Mình đọc mà lâu lâu cũng thấy chính mình trong đó, chắc tại&nbsp;<strong>lập trình và kiến trúc</strong>&nbsp;cũng có vài điểm tương tự.</p><p>Nếu r&nbsp;rảnh, hãy thử cuốn sách này. Nó sẽ ngốn mất của bạn kha khá thời gian, nhưng khoảng thời gian đó không hề uổng phí đâu. Lâu lâu đọc danh tác thay vì đọc tin lá cải hay chơi Dota sẽ làm đầu óc ta mở mang nhiều lắm.</p><h3><strong>Tháng 9 –&nbsp;The Lean Startup</strong><a href=\"https://toidicodedao.files.wordpress.com/2015/12/8.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><strong><img src=\"https://toidicodedao.files.wordpress.com/2015/12/8.jpg?w=283&amp;h=434\"></strong></a></h3><p>Cuốn sách thứ 2 về startup trong danh sách. Tác giả cũng từng là lập trình viên, từng làm coder chính cho 1 technical startup nên cách viết khá gần gũi. Tuy là sách về startup nhưng mình lại rút ra được nhiều bài học về&nbsp;<strong>phát triển phần mềm</strong>&nbsp;từ cuốn này.</p><p>Advertisement</p><p><br></p><p>Sai lầm thường thấy của startup và lập trình viên là: Làm ra những sản phẩm/phần mềm&nbsp;<strong>tưởng rất hay nhưng không ai dùng</strong>. Đã bao giờ bạn lập trình một chức năng vì “nó hay”, nhưng người dùng không bao giờ sử dụng chưa? Đó là một sự lãng phí thời gian, tiền bạc, tài nguyên. Với “Lean Startup”, ta&nbsp;<strong>chú trọng vào việc thử-sai (fail early fall fast fail cheaply), không võ đoán</strong>. Thay vì dự đoán rằng người dùng sẽ thích sản phẩm, chức năng nào đó, hãy thử tạo ra nó; rồi kiểm tra phản ứng của người dùng, sau đó quyết định nên dừng lại hay tiếp tục.</p><p>Một cuốn sách khác khá hay của tháng là&nbsp;<em>Breakthrough rapid reading,&nbsp;</em>dạy các bạn cách tăng tốc độ&nbsp;<a href=\"https://toidicodedao.com/2015/04/21/lap-trinh-vien-trinh-cao-thi-nen-doc-sach-gi-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">đọc sách</a>, cách tiếp thu và nhớ&nbsp;<a href=\"https://toidicodedao.com/2015/06/25/cach-tiep-can-1-ngon-ngucong-nghe-moi-phan-2/\" rel=\"noopener noreferrer\" target=\"_blank\">kiến thức</a>&nbsp;từ sách. Mình áp dụng và thấy tốc độ đọc cũng tăng đáng kể, bộ 1Q84 khá dài của Haruki chỉ đọc mất 3-4 ngày là xong.</p><h3><strong>Tháng 10 –&nbsp;Kẻ thành công phải biết lắng nghe</strong><a href=\"https://toidicodedao.files.wordpress.com/2015/12/suc_manh_ngoi_but_01367466132.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><strong><img src=\"https://toidicodedao.files.wordpress.com/2015/12/suc_manh_ngoi_but_01367466132.jpg?w=264&amp;h=418\"></strong></a></h3><p>Mình mua cuốn này để đọc khi lên máy bay sang UK&nbsp;<a href=\"https://toidicodedao.com/2015/10/27/tam-biet-viet-nam-chia-se-kinh-nghiem-nop-don-du-hoc-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">du học</a>. Sách hướng dẫn ta cách lắng nghe, thấu hiểu người khác. Giữa cái xã hội toàn những thanh niên chém gió, nói giỏi hơn làm,&nbsp;<strong>tìm một người biết cách lắng nghe thực sự rất khó</strong>. Đọc sách, bạn sẽ hiểu được cách não bộ hoạt động, cách làm nguôi giận ngừng giận dữ, cách đồng cảm với người khác, cách dụ dỗ người khác thổ lộ với mình… Đối với mình, đây là một cuốn sách khá hay về kĩ năng sống, chỉ đứng sau Đắc Nhân Tâm.</p><h3><strong>Tháng 11 –&nbsp;The Inmates are Running the Asylum – Why High-Tech Products Drive Us Crazy and How to Restore the Sanity&nbsp;</strong><a href=\"https://toidicodedao.files.wordpress.com/2015/12/11.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><strong><img src=\"https://toidicodedao.files.wordpress.com/2015/12/11.jpg?w=250&amp;h=375\"></strong></a></h3><p>Mình đã từng nhắc đến cuốn này ở bài:&nbsp;<a href=\"https://toidicodedao.com/2015/04/21/lap-trinh-vien-trinh-cao-thi-nen-doc-sach-gi-phan-1/\" rel=\"noopener noreferrer\" target=\"_blank\">Lập trình viên trình cao nên đọc sách gì?</a>. Tác giả đã nêu lên thực trạng của các phần mềm/phần cứng hiện nay: Chúng&nbsp;<strong>quá phức tạp</strong>, quá&nbsp;<strong>khó sử dụng</strong>, gây khó khăn cho người dùng. Ông đưa ra một số ví dụ về các thiết bị được thiết kế cẩu thả: máy ảnh số, máy ATM, điều khiển từ xa, …</p><p>Advertisement</p><p><br></p><p>Sách đề cao tầm quan trọng của trải nghiệm người dùng (UX – User Experience), UX nên được thiết kế trước tiên trước khi thiết kế phần mềm. Đọc xong cuốn này, bạn sẽ ngộ ra được rất nhiều “chân lý”.</p><p><strong>Tháng 12 – The Psychology of Computer Programming</strong></p><p><a href=\"https://toidicodedao.files.wordpress.com/2015/12/12249922_142480536113603_8738963301268708481_n.jpg\" rel=\"noopener noreferrer\" target=\"_blank\"><img src=\"https://toidicodedao.files.wordpress.com/2015/12/12249922_142480536113603_8738963301268708481_n.jpg?w=324&amp;h=432\"></a></p><p>Do cơ duyên run rủi cho mình bắt gặp cuốn này trong kệ sách của&nbsp;<a href=\"https://toidicodedao.com/2015/04/16/tang-suc-manh-cho-javascript-voi-lodash/\" rel=\"noopener noreferrer\" target=\"_blank\">thư viện</a>&nbsp;trường. Sách ra đời năm 1971, tính ra chắc tuổi đời cũng già hơn phần đông các bạn ở đây. Bìa đã hơi long tí chút, nhưng do bảo quản kĩ nên bên trong sách còn khá mới.</p><p>Tại sao một cuốn sách tuổi đời hơn 40 năm vẫn nằm trong danh mục&nbsp;<strong>sách-khuyên-đọc</strong>&nbsp;cho quản lý và lập trình viên? Bởi vì “trong cái thế giới mà công nghệ thay đổi từng ngày, vẫn có những thứ kiến thức không bao giờ lạc hậu”. Đây là&nbsp;<strong>cuốn sách đầu tiên viết về nhân tố con người</strong>&nbsp;trong ngành lập trình.</p><p>Đọc sách, ta sẽ có một cái nhìn mới phương pháp làm việc nhóm, suy nghĩ của lập trình viên, cách khen thưởng và huấn luyện nhưng viên. Tuy đã qua 30 năm, công nghệ thay đổi,&nbsp;<a href=\"https://toidicodedao.com/2015/07/30/c-la-ngon-ngu-tuyet-voi-nhat-java-php-c-c-ruby-chi-toan-la-thu-re-tien/\" rel=\"noopener noreferrer\" target=\"_blank\">ngôn ngữ</a>&nbsp;lập trình thay đổi nhưng những thứ này vẫn còn y nguyên. Có đôi chỗ hơi khó chịu khi đọc là sách có dùng một số khái niệm + ngôn ngữ lập trình khá cũ nên nhiều đoạn về technical mình không hiểu mấy.</p><p>Bonus: Danh sách các sách mình đã đọc từ tháng 7 – tháng 12, sách<strong>&nbsp;in đậm</strong>&nbsp;là sách hay nhất tháng,&nbsp;<em>in nghiêng</em>&nbsp;là sách hay – đáng đọc nhé.</p><p>Tháng 7</p><ul><li><em>Trại súc vật</em></li><li><strong>Apprenticeship Patterns – Guidance for the Aspiring Software Craftsman</strong></li><li>On Writing Well – The Classic Guide to Writing Nonfiction</li><li>Kinh tế học và sex</li><li><em>Presentation Zen</em></li><li><em>Điểm bùng phát – The tipping point</em></li><li>Thriving on Less</li><li>Mật ngọt chết mèo</li><li><em>What The Dog Saw: And Other Adventures</em></li></ul><p>Tháng 8</p><ul><li><em>David and Goliath</em></li><li>Vui chơi để kiếm sống</li><li><em>Slide:ology: The Art and Science of Creating Great Presentation</em></li><li>Nếu gặp người ấy cho tôi gửi lời chào</li><li>Sư im lặng của bầy cừu</li><li><strong>Suối nguồn</strong></li><li><em>Microsoft dotNET – Architecting Applications for the Enterprise</em></li><li><em>Microsoft dotNET – Architecting Applications for the Enterprise, 2nd Edition</em></li><li><em>The $100 Startup</em></li></ul><p>Tháng 9</p><ul><li>Fooled by randomness</li><li><em>NoSQL Distilled</em></li><li>Âm mưu ngày tận thế</li><li>Giết con chim nhại (dở)</li><li><strong>The Lean Startup</strong></li><li><em>1Q84</em></li><li><em>Breakthrough rapid reading</em>&nbsp;(Khá hay)</li><li>20 tuổi trở thành người biết nói, giỏi làm</li></ul><p>Tháng 10</p><ul><li><em>Trên đường băng</em></li><li>Yêu người ngóng núi</li><li><em>After Dark – Haruki Murakami</em></li><li>Đi đâu cũng nhớ Sài Gòn và … Em</li><li><em>Economics for Dummies</em></li><li><strong>Kẻ thành công phải biết lắng nghe</strong></li><li><em>The Naked Presenter</em></li><li>How to succeed in written work and study</li><li>Doing Essays and Assignments: Essential Tips for Students</li><li><em>Data Mining for Dummies</em></li><li>MATLAB – A practical introduction to programming and problem solving</li><li>Just write – An easy-to-use guide at writing in university</li><li>Writing Essays at University A Guide For Students, By Students</li><li>Inside track to successful academic writing</li></ul><p>Tháng 11</p><ul><li>Data Mining, Concepts and Techniques, Third Edition (partly)</li><li>The Black Swan (về sau dài dòng nhảm)</li><li><em>Anti Patterns: Refactoring Software, Architectures, and Project in Crisis</em></li><li>Purple Cow: Transform Your Business by Being Remarkable.</li><li>It’s Not How Good You Are, It’s How Good You Want to Be</li><li><strong>The Inmates are Running the Asylum – Why High-Tech Products Drive Us Crazy and How to Restore the Sanity</strong>&nbsp;</li><li>Manga! Manga! The World of Japanese Comics</li></ul><p>Tháng 12</p><ul><li><strong>The Psychology of Computer Programming</strong></li><li>Search me – The surprising success of Google</li><li>Thỏ bảy màu – Timeline của tui có gì</li><li><em>Atlas Shrugged</em></li><li>Chuyện con ốc sên muốn biết vì sao nó chậm chạp</li><li><em>The Book Thief</em></li><li><em>Dreaming in Code</em></li><li><em>Remote – Office not required</em></li><li><em>Năm Cam – Canh bạc cuối cùng</em></li></ul><p><br></p>', 1, 0, '2024-05-10 10:23:00.873166', '2024-05-10 10:23:00.873166', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_voters`
--

CREATE TABLE `blog_post_voters` (
  `id` bigint NOT NULL,
  `post_id` bigint NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_post_voters`
--

INSERT INTO `blog_post_voters` (`id`, `post_id`, `user_id`) VALUES
(1, 1, 1),
(9, 2, 1),
(14, 3, 1),
(15, 4, 1),
(13, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8mb4_general_ci,
  `object_repr` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-05-11 09:47:19.196380', '3', 'da', 3, '', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'authtoken', 'token'),
(8, 'authtoken', 'tokenproxy'),
(9, 'blog', 'category'),
(11, 'blog', 'comment'),
(10, 'blog', 'post'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-10 09:48:58.941260'),
(2, 'auth', '0001_initial', '2024-05-10 09:49:11.381901'),
(3, 'admin', '0001_initial', '2024-05-10 09:49:14.911563'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-05-10 09:49:14.958481'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-10 09:49:15.016550'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-05-10 09:49:16.833854'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-05-10 09:49:17.599735'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-05-10 09:49:17.831022'),
(9, 'auth', '0004_alter_user_username_opts', '2024-05-10 09:49:17.898584'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-05-10 09:49:18.662986'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-05-10 09:49:19.445164'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-05-10 09:49:19.504382'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-05-10 09:49:20.264016'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-05-10 09:49:21.050603'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-05-10 09:49:21.218107'),
(16, 'auth', '0011_update_proxy_permissions', '2024-05-10 09:49:21.311598'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-05-10 09:49:23.034278'),
(18, 'authtoken', '0001_initial', '2024-05-10 09:49:24.237720'),
(19, 'authtoken', '0002_auto_20160226_1747', '2024-05-10 09:49:24.301560'),
(20, 'authtoken', '0003_tokenproxy', '2024-05-10 09:49:24.352358'),
(21, 'blog', '0001_initial', '2024-05-10 09:49:24.763000'),
(22, 'blog', '0002_role', '2024-05-10 09:49:25.904546'),
(23, 'blog', '0003_post_comment', '2024-05-10 09:49:31.533309'),
(24, 'blog', '0004_post_category', '2024-05-10 09:49:33.003255'),
(25, 'blog', '0005_alter_post_category', '2024-05-10 09:49:36.464929'),
(26, 'blog', '0006_delete_role', '2024-05-10 09:49:36.845516'),
(27, 'blog', '0007_remove_post_author_post_user', '2024-05-10 09:49:40.063071'),
(28, 'sessions', '0001_initial', '2024-05-10 09:55:25.678170'),
(29, 'blog', '0008_alter_post_content_alter_post_title', '2024-05-10 09:58:42.372591'),
(30, 'blog', '0009_alter_post_content', '2024-05-10 09:58:42.419455'),
(31, 'blog', '0010_post_voters', '2024-05-10 09:58:45.823855'),
(32, 'blog', '0011_alter_post_voters', '2024-05-10 09:58:45.906665');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `session_data` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('837bow2v5snrh1aqxgn765bjodmoowlm', '.eJxVjDsOwjAQBe_iGlnrEPyhpOcM1svuhgSQLeVTIe4OkVJA-2bmvUzGugx5nXXKo5izcebwu3Xgh5YNyB3lVi3XskxjZzfF7nS21yr6vOzu38GAefjWGgiRVcKpi-yhfcsUQcn1ECilpomOQoLzR99yUMQWYIhnITDDvD8JDDk6:1s5jJo:ZsfTKDFQWxHwpDReg3lewkjlfvjcZLIeUivDFrmR7Oo', '2024-05-25 09:47:04.285118'),
('vvquj41w6p4so3mapwel8x53ogvokpp1', '.eJxVjDsOwjAQBe_iGlnrEPyhpOcM1svuhgSQLeVTIe4OkVJA-2bmvUzGugx5nXXKo5izcebwu3Xgh5YNyB3lVi3XskxjZzfF7nS21yr6vOzu38GAefjWGgiRVcKpi-yhfcsUQcn1ECilpomOQoLzR99yUMQWYIhnITDDvD8JDDk6:1s5NBt:zo5O_v__jIrBzvw4H7pdlAkI8mc4PLAH_GSDUzVGFeI', '2024-05-24 10:09:25.800706');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_comment_post_id_580e96ef_fk_blog_post_id` (`post_id`),
  ADD KEY `blog_comment_user_id_59a54155_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_post_category_id_c326dbf8_fk_blog_category_id` (`category_id`),
  ADD KEY `blog_post_user_id_710cc4d2_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `blog_post_voters`
--
ALTER TABLE `blog_post_voters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_post_voters_post_id_user_id_6c3f4ad4_uniq` (`post_id`,`user_id`),
  ADD KEY `blog_post_voters_user_id_5051425c_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blog_comment`
--
ALTER TABLE `blog_comment`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blog_post_voters`
--
ALTER TABLE `blog_post_voters`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD CONSTRAINT `blog_comment_post_id_580e96ef_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`),
  ADD CONSTRAINT `blog_comment_user_id_59a54155_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `blog_post_category_id_c326dbf8_fk_blog_category_id` FOREIGN KEY (`category_id`) REFERENCES `blog_category` (`id`),
  ADD CONSTRAINT `blog_post_user_id_710cc4d2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `blog_post_voters`
--
ALTER TABLE `blog_post_voters`
  ADD CONSTRAINT `blog_post_voters_post_id_4c4f05b6_fk_blog_post_id` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`),
  ADD CONSTRAINT `blog_post_voters_user_id_5051425c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

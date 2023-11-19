-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2023 lúc 11:05 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `pro116`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_author` varchar(255) NOT NULL,
  `author_image` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `authors`
--

INSERT INTO `authors` (`id`, `name_author`, `author_image`, `info`, `created_at`, `updated_at`) VALUES
(1, 'Trần Trọng Hải Minh', '8935278607311.jpg', 'Nam định', '2023-11-19 10:07:34', '2023-11-19 10:07:34'),
(2, 'Phan Văn Trường', '8935278607311.jpg', 'Nam định', '2023-11-19 10:07:34', '2023-11-19 10:07:34'),
(3, ' Colleen Stanley', '8935278607311.jpg', 'Nam định', '2023-11-19 10:07:34', '2023-11-19 10:07:34'),
(4, 'Bùi Mai Linh\n', '8935278607311.jpg', 'Nam định', '2023-11-19 10:07:34', '2023-11-19 10:07:34'),
(5, 'Đoàn Giỏi', 'user.png', 'Hà Nội', '2023-11-19 14:49:48', '2023-11-19 14:49:48'),
(6, 'Thảo Trang', 'user.png', 'Hà Nam', '2023-11-19 14:52:13', '2023-11-19 14:52:13'),
(7, 'Trạch Quế Vinh', 'user.png', 'Bắc Ninh', '2023-11-19 14:53:55', '2023-11-19 14:53:55'),
(8, 'Lê Đỗ Quỳnh Hương', 'vp2.jpg', 'Hà Giang', '2023-11-19 15:02:08', '2023-11-19 15:02:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title_book` varchar(255) NOT NULL,
  `original_price` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `book_image` varchar(255) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `publish_house` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `id_review` bigint(20) UNSIGNED DEFAULT NULL,
  `id_author` bigint(20) UNSIGNED NOT NULL,
  `id_cate` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `title_book`, `original_price`, `price`, `book_image`, `description`, `publish_house`, `quantity`, `id_review`, `id_author`, `id_cate`, `created_at`, `updated_at`) VALUES
(1, 'Chết cho màu cờ - Quyền lực và chính trị của những lá cờ', '210000', '179000', 'kt1.jpg', '<p><span style=\"color: rgb(102, 100, 92); font-family: Montserrat-Light, sans-serif; font-size: 13px;\">Những lá cờ từ lâu vẫn là một biểu tượng có quyền lực lớn lao, truyền đạt nhanh chóng các thông điệp và thể hiện cảm xúc mạnh mẽ.</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Chúng cũng đồng hành cùng với những phong trào lớn của các lý tưởng, dân tộc và tôn giáo để biểu trưng cho những bước ngoặt trong lịch sử hay những thay đổi trong tiến trình phát triển, thể hiện nỗ lực đoàn kết hoặc gây chia rẽ thông qua gieo rắc nỗi sợ hãi.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Qua chín chương sách, tác giả đã đưa ra được hầu hết những lá cờ điển hình của các cường quốc và những khu vực lớn trên thế giới như: Mỹ, Anh, Liên minh châu Âu, Trung Đông, châu Á, châu Phi, Mỹ Latin và cả những lá cờ của các tổ chức khủng bố.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Mỗi lá cờ đều chứa đựng những câu chuyện bí mật, không chỉ về nguồn gốc và ý nghĩa của từng biểu tượng gắn trên chúng còn cả lịch sử lâu dài về tôn giáo và sắc tộc mà có thể lần đầu tiên ta được nghe tới.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">“Marshall đã chỉ cho ta thấy rằng chúng ta thường quên mất tính biểu tượng gây hấn của các lá cờ lâu đờ chúng là cách truyền đạt lòng trung thành, quyền lực và lý tưởng nhanh chóng và trực quan.” – The Times (UK)</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Tim Marshall là ký giả người Anh có hơn 25 năm kinh nghiệm về tin tức đối ngoại. Ngoài vai trò ký giả và biên tập viên, Marshall còn là nhà bình luận khách mời về các sự kiện thế giới cho BBC, Sky News. Ông là tác giả của nhiều cuốn sách bán chạy, trong đó nổi tiếng nhất là Những tù nhân của địa lý, được xếp vào danh sách bán chạy của The New York Times, đã được Nhã Nam xuất bản cùng hai cuốn sách nữa của ông: Chia rẽ và Quyền lực của địa lý.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....</p>', 'Nhã Nam', '10', NULL, 1, 4, '2023-11-19 10:57:57', '2023-11-19 10:57:57'),
(2, 'Cơn Lốc Quản Trị - Ba Trụ Cột Của Văn Hóa Doanh Nghiệp', '140000', '126000', 'kt2.jpg', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\"><span style=\"border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 14px; line-height: 1.714; font-family: RobotoSlab; margin: 0px; padding: 0px; color: rgb(85, 85, 85); background-color: initial;\"><b style=\"border: 0px; margin: 0px; padding: 0px; line-height: 1.714;\">Cơn Lốc Quản Trị - Ba Trụ Cột Của Văn Hóa Doanh Nghiệp</b></span><br style=\"font-family: RobotoSlab; font-size: 14px; color: rgb(85, 85, 85); line-height: 1.714;\"></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Doanh nghiệp nào cũng có lúc gặp phải những vấn đề không nhất thiết mang tính kỹ thuật, như sự thiếu vắng động lực, hoặc tinh thần tương tác và làm việc nhóm thấp, thậm chí là mâu thuẫn giữa các thành viên, trong đó có cả các lãnh đạo cấp trung và cấp cao. Chẳng công cụ quản lý nào cho phép giải quyết được những vấn đề bắt nguồn từ sự ganh tị, đố kị, thiên vị, hoặc tệ hơn nữa là nạn bè đảng hay tham nhũng nội bộ.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Các mô hình quản lý chỉ mang lý luận kỹ thuật cục bộ hạn hẹp và những giải pháp cấu trúc có sẵn cho doanh nghiệp. Chỉ văn hóa mới có khả năng vào sâu một cách uyển chuyển các vấn đề trong mối quan hệ giữa người với người. Và đây chính là những vấn đề mà các doanh nghiệp Việt Nam thường gặp phải.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Trong tác phẩm mới nhất về văn hóa doanh nghiệp, tác giả Phan Văn Trường phát triển và đi sâu hơn nữa về chủ đề khá trừu tượng này. Vẫn giữ nguyên phong cách tiếp cận dựa trên những câu chuyện từ thực tế trải nghiệm của mình, ông dẫn dắt độc giả trên con đường tìm hiểu vai trò của văn hóa doanh nghiệp, đồng thời đi sâu giải thích ba phong cách văn hóa mà chính ông đã tiên phong áp dụng cho những doanh nghiệp mình từng tham gia quản trị.</p>', 'Nxb Trẻ', '20', NULL, 2, 4, '2023-11-19 11:07:58', '2023-11-19 11:07:58'),
(3, 'TRÍ TUỆ CẢM XÚC TRONG KINH DOANH', '168000', '143000', 'kt3.jpg', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Có hàng ngàn cuốn sách dạy chúng ta cách bán hàng nhưng đa phần chỉ hướng dẫn</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">những phương pháp “đánh nhanh thắng nhanh”. Ít có tác phẩm nào dạy về việc áp</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">dụng trí tuệ cảm xúc vào bán hàng, cũng như xem trọng tầm quan trọng của nó trong</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">kinh doanh.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Với kinh nghiệm 14 năm trong lĩnh vực đào tạo, huấn luyện các chuyên gia và quản lý</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">bán hàng, chuyên gia Colleen Stanley nhận ra trí tuệ cảm xúc đóng vai trò quan trọng</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">trong mọi giai đoạn của quy trình bán hàng, từ tìm kiếm khách hàng tiềm năng, kỹ</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">thuật bán hàng, cho đến chốt giao dịch.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Khi các cá nhân và đội ngũ cải thiện được kỹ năng trí tuệ cảm xúc của mình, họ sẽ</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">nhận lại được nhiều thành quả to lớn về tài chính, doanh số bán hàng sẽ đi lên, khách</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">hàng sẽ mua nhiều hơn và giới thiệu cho bạn nhiều khách hàng khác. Và đó cũng</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">chính là mục tiêu mà cuốn sách hướng đến.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">&amp;quot;Trí tuệ cảm xúc trong kinh doanh” của tác giả Colleen Stanley ra đời nhằm cung cấp</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">các phương pháp bán hàng giúp bạn mài giũa những kỹ năng mềm trong công việc,</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">cách giải quyết các vấn đề một cách khéo léo, đồng thời xây dựng mối quan hệ mang</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">lại giá trị cho đôi bên.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Chủ đề trí tuệ cảm xúc nghe có vẻ cao siêu, nhưng thực tế không phải vậy. Nói một</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">cách đơn giản, trí tuệ cảm xúc là khả năng nhận biết cảm xúc bản thân và xác định</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">chính xác cảm xúc mình đang cảm nhận, cũng như hiểu lý do tại sao mình cảm nhận</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">như vậy. Nó là kỹ năng hiểu những căn nguyên của cảm xúc, đồng thời đánh giá được</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">tác động của cảm xúc ấy lên chính mình và những người có liên quan, từ đó điều</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">chỉnh cảm xúc của bản thân sao cho phù hợp.</p>', 'NXB Dân Trí', '10', NULL, 3, 4, '2023-11-19 11:20:14', '2023-11-19 13:58:42'),
(4, 'Một Đời Thương Thuyết (Tái Bản 2019)', '125000', '100000', 'kt4.jpg', '<p><span style=\"color: rgb(102, 100, 92); font-family: Montserrat-Light; font-size: 17px;\">Hơn 40 năm kinh nghiệm trong nghề và cả nghiệp thương thuyết, Giáo sư Phan Văn Trường, Cố vấn thương mại quốc tế của chính phủ Pháp, có lẽ đã cố gắng thể hiện gần trọn vẹn trong cuốn sách này. Được viết từ trải nghiệm của một người thường xuyên “xông pha trận mạc” đàm phán, thật khó có thể tìm được cuốn sách nào khác về đề tài này mang tính thực tế cao hơn Thương thuyết một đời. Trong đó không có những bài lý thuyết theo lớp lang chuẩn mực, nhưng độc giả sẽ được “sống” thực sự trong từng bối cảnh đàm phán như đang diễn ra trước mắt. Và độc giả sẽ đọc cuốn sách này chẳng khác gì đang đọc một tập truyện ngắn đầy những tình tiết thú vị.</span><br></p>', 'Nxb Trẻ', '10', NULL, 2, 4, '2023-11-19 11:23:10', '2023-11-19 13:58:30'),
(5, 'Một Đời Quản Trị (Tái Bản 2019)', '200000', '170000', 'kt5.jpg', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Có rất nhiều doanh nhân vĩ đại, những người sáng lập, xây dựng, điều hành những công ty hàng đầu thế giới với doanh thu cả trăm tỷ đô-la Mỹ, những công ty sáng tạo công nghệ và sản phẩm làm thay đổi thế giới, nhưng họ không viết sách dù rằng có nhiều sách viết về họ.<br style=\"font-family: RobotoSlab; font-size: 14px; color: rgb(85, 85, 85); line-height: 1.714;\">GS. Phan Văn Trường khác họ. Ông đã từng đứng đầu các tập đoàn khổng lồ với doanh thu 60-70 tỷ đô-la Mỹ, hoạt động trên cả trăm quốc gia, với hàng chục nghìn nhân viên đủ các quốc tịch. Và ông viết sách. Chính xác hơn là ông ghi lại những gì tinh túy nhất và lại giản dị nhất của một doanh nhân người Việt tầm cỡ Global.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Cuốn sách là nhật ký, là tâm sức cả đời của ông nên thật khó giới thiệu trong vài trang. Nhưng tôi muốn ghi lại những điều tâm đắc.<br style=\"font-family: RobotoSlab; font-size: 14px; color: rgb(85, 85, 85); line-height: 1.714;\">-&nbsp; &nbsp;Phần lớn Doanh nhân nhầm lẫn giữa quản lý và quản trị. Vậy nhà lãnh đạo quản trị Doanh nghiệp như thế nào, họ phải làm gì…<br style=\"font-family: RobotoSlab; font-size: 14px; color: rgb(85, 85, 85); line-height: 1.714;\">-&nbsp; &nbsp;Làm thế nào để xây dựng doanh nghiệp trường tồn<br style=\"font-family: RobotoSlab; font-size: 14px; color: rgb(85, 85, 85); line-height: 1.714;\">-&nbsp; &nbsp;Quản trị doanh nghiệp chính là quản trị con người</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Có lẽ những điều trên bạn đã gặp ở rất nhiều cuốn sách nhưng ở đây có 2 điều khác biệt:<br style=\"font-family: RobotoSlab; font-size: 14px; color: rgb(85, 85, 85); line-height: 1.714;\">-&nbsp; &nbsp;Là bài học thực tế, là tinh túy của một doanh nhân tầm cỡ Global<br style=\"font-family: RobotoSlab; font-size: 14px; color: rgb(85, 85, 85); line-height: 1.714;\">-&nbsp; &nbsp;Hành xử chuyên nghiệp, quyết định sáng suốt, thành công lớn…ở tầm Global&nbsp; nhưng vẫn mang đậm chất Việt, đậm chất nhân văn.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Và đặc biệt những câu chuyện của ông, những bài học của ông lại được kể bằng những con người thực Ông đã cùng làm việc, bằng những câu chuyện thực của đời mình</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\"><br></p>', 'Nxb Trẻ', '10', NULL, 2, 4, '2023-11-19 11:42:56', '2023-11-19 13:58:19'),
(6, 'Hành Trình Trở Về Của Bầy Chó', '99000', '84000', 'stn1.jpg', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\"><strong style=\"font-weight: bold; border: 0px; font-size: 14px; margin: 0px; padding: 0px; font-family: RobotoSlab; color: rgb(85, 85, 85); line-height: 1.714;\">“Hành trình trở về của bầy chó”</strong>&nbsp;Cuốn sách này dành cho mọi trẻ em ở độ tuổi biết đọc (từ 7+); dành cho những người yêu động vật và bảo vệ động vật.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Có thể bạn đã đọc rất nhiều cuốn truyện kinh điển viết về loài chó. Nhưng với&nbsp;<strong style=\"font-weight: bold; border: 0px; font-size: 14px; margin: 0px; padding: 0px; font-family: RobotoSlab; color: rgb(85, 85, 85); line-height: 1.714;\"><em style=\"border: 0px; margin: 0px; padding: 0px; line-height: 1.714;\">“Hành trình trở về của bầy chó”,&nbsp;</em></strong>bạn sẽ được trải nghiệm một hành trình phiêu lưu rất riêng, với những mâu thuẫn, tình đoàn kết, lòng nhân ái và sự cảm thông đặc biệt với những loài động vật xung quanh ta.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Thú nuôi được chúng ta yêu quý, nhưng cũng có những người độc ác chia cắt chúng ta với chúng. Lão Sẹo là một chú chó vừa đáng thương, vừa đáng giận. Nhưng ẩn đằng sau lòng căm thù loài người chú chó này là một câu chuyện cảm động và xót xa. Bạn đọc hãy đọc vả cảm nhận, để thấy động vật xung quanh ta cũng có tình cảm và lòng gắn bó, yêu thương.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\"><strong style=\"font-weight: bold; border: 0px; font-size: 14px; margin: 0px; padding: 0px; font-family: RobotoSlab; color: rgb(85, 85, 85); line-height: 1.714;\"><em style=\"border: 0px; margin: 0px; padding: 0px; line-height: 1.714;\">Tóm tắt nội dung câu chuyện:</em></strong></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Có một đàn chó sinh sống trong một đường cống bỏ hoang.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Đứng đầu bầy chó là Lão Sẹo, một con chó đã trải qua sự lợi dụng, ngược đãi của con người. Lão thông minh và lòng đầy thù hận.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Lão Sẹo ôm ấp một kế hoạch. Lão tập hợp những con chó hoang lại, ngày qua ngày, tất cả cùng nhau sinh sống trong một đường cống bỏ hoang do chính lão xây dựng, nhằm lên kế hoạch phục thù. Mong muốn cuối cùng của Lão Sẹo là xóa sổ con người và giành lại cuộc sống tự do cho loài chó.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Tuy nhiên, cuộc chiến chống lại con người vốn là một hành trình đầy gian nan, cả sức lực và trí tuệ đều không cân sức. Lão Sẹo và bầy chó sẽ ra sao? Chúng có tìm thấy hướng đi đúng đắn trong hành trình trở về này hay không?</p>', 'Thái Hà', '10', NULL, 4, 2, '2023-11-19 11:47:19', '2023-11-19 13:58:09'),
(7, 'Cùng Khám Phá - Bước Vào Rừng Rậm - Bìa Cứng', '70000', '60000', 'stn2.jpg', '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Cùng Khám Phá - Bước Vào Rừng Rậm - Bìa Cứng</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Bé hãy cùng các bạn nhỏ phiêu lưu một chuyến bằng xe cắm trại để khám phá khu rừng nhé! Mỗi trang sách&nbsp;Cùng Khám Phá: Bước Vào Rừng Rậm (Song Ngữ Anh Việt)&nbsp;ẩn chưa rất nhiều điều thú vị cho các bé khám phá đấy.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; font-size: 17px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....</p>', 'Tân Việt', '15', NULL, 4, 2, '2023-11-19 11:49:00', '2023-11-19 13:57:56'),
(8, 'Đất Rừng Phương Nam (Tái Bản)', '210000', '150000', 'stn3.jpg', '<p><span style=\"color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; font-size: 14.3px; text-align: justify;\">Cuộc đời lưu lạc của chú bé An qua những miền đất rừng phương Nam thời kì đầu cuộc kháng chiến chống Pháp. Một vùng đất trù phú, đa dạng, kì vĩ với những kênh rạch, tôm cá, chim chóc, muông thú, lúa gạo... và cây cối, rừng già. Trong thế giới đó có những con người vô cùng nhân hậu như cha mẹ nuôi của bé An, như cậu bé Cò, chú Võ Tòng... cùng những người anh em giàu lòng yêu quê hương, đất nước. Cuộc sống tự do và cuộc đời phóng khoáng cởi mở đã để lại ấn tượng sâu sắc trong tâm khảm người đọc nhiều thế hệ suốt những năm tháng qua</span><br></p>', 'NXB Kim Đồng', '22', NULL, 5, 1, '2023-11-19 14:51:11', '2023-11-19 14:51:11'),
(9, 'Thai Giáo Theo Chuyên Gia - 280 Ngày - Mỗi Ngày Đọc Một Trang (Tái Bản 2021)', '100000', '75000', 'ndc1.jpg', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;\">Thai giáo, xét theo nghĩa rộng là: Trong thời gian thai nghén, bà bầu ngoài việc coi trọng sức khỏe và dinh dưỡng cho mình còn cần chú trọng những ảnh hưởng từ môi trường, cố gắng bồi dưỡng tâm lí tích cực để thai nhi ở trong bụng mẹ có thể cảm nhận được những điều tốt đẹp, khiến cho bé sau khi ra đời được khỏe mạnh và thông minh.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;\">Theo nghĩa hẹp, thai giáo là: Thông qua những phương pháp nhất định, ví dụ như nói chuyện với thai nhi, vuốt ve vùng bụng của mẹ, nghe những bản nhạc êm dịu, vận động nhẹ nhàng</p>', 'NXB Phụ Nữ Việt Nam', '21', NULL, 4, 3, '2023-11-19 14:55:01', '2023-11-19 14:55:01'),
(10, 'Combo Sách Hành Trình Thai Giáo 280 Ngày', '300000', '275000', 'ndc2.jpg', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px; font-weight: bold; font-family: Arial, Helvetica, sans-serif;\">Combo Sách Hành Trình Thai Giáo 280 Ngày - Mỗi Ngày Đọc Một Trang + Lần Đầu Làm Mẹ (Bộ 2 Cuốn)</strong></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px; font-weight: bold; font-family: Arial, Helvetica, sans-serif;\">1. Hành Trình Thai Giáo 280 Ngày - Mỗi Ngày Đọc Một Trang</strong></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;\">Thai giáo theo nghĩa rộng chính là thông qua chế độ dinh dưỡng, môi trường và tinh thần để thúc đẩy sự phát triển toàn diện của trẻ. Theo nghĩa hẹp thai giáo là căn cứ vào thời điểm cụ thể để áp dụng các biện pháp như: nghe nhạc, chiếu sáng, tắm nắng, nói chuyện... để giúp bé chào đời khỏe, đẹp, thông minh.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;\">Cuốn sách này theo sát hành trình phát triển của thai nhi, không bỏ qua bất cứ thời khắc quan trọng nào. Bạn sẽ chủ động và tự tin suốt chặng đường mang thai với chỉ dẫn thai giáo chi tiết tới từng ngày.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;\">\"Cuốn sách đưa ra rất nhiều phương pháp để bà bầu vận động cùng thai nhi. Trong quá trình vận động, tôi cảm nhận được rõ ràng rằng bản thân mình đang giao lưu với thai nhi</p>', 'Phụ Nữ Việt Nam, Lao Động', '10', NULL, 6, 3, '2023-11-19 14:56:09', '2023-11-19 15:00:40'),
(11, 'Lịch Treo Tường 2019 - VietNam Football Calendar 2019', '110000', '79000', 'vp1.jpg', '<h3 class=\"mainbox2-title clearfix margin-top-20\" style=\"margin: 20px 0px 10px; font-family: Montserrat-Light, sans-serif; font-weight: bold; line-height: 1.5; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 16px; border-top: 0px; border-right: 0px; border-bottom: none; border-left: 0px; border-image: initial; padding: 0px; clear: both; height: 30px; float: left; width: 790px; position: relative; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 790px;\">Lịch Treo Tường 2019 - VietNam Football Calendar 2019</h3><div class=\"mainbox2-body\" style=\"border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Montserrat-Light, sans-serif; margin: 0px; padding: 0px 0px 30px; color: rgb(102, 100, 92); position: relative; float: left; width: 1180px;\"><div class=\"full-description\" style=\"border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 17px; line-height: 1.714; font-family: RobotoSlab; margin: 0px; padding: 0px; color: rgb(85, 85, 85); display: inline-block; float: left; width: 1180px; position: relative;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\"></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\"><b style=\"border: 0px; font-size: 14px; margin: 0px; padding: 0px; font-family: RobotoSlab; color: rgb(85, 85, 85); line-height: 1.714;\">BỘ LỊCH BÓNG ĐÁ 2019 - TỰ HÀO VIỆT NAM</b></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">VIỆT NAM ƠI, Chúng ta đã làm được rồi. Sau 10 năm chờ đợi, một lần nữa Việt Nam được nâng cao CÚP VÀNG CHIẾN THẮNG&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">- Một năm TỰ HÀO của VIỆT NAM</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">- Một năm HẠNH PHÚC của NGƯỜI HÂM MỘ VIỆT</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">2018 - Năm Của Chiến Thắng đang đi qua để bước sang năm mới 2019 viết nên những trang sử mới.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">HÃY LƯU GIỮ và NỐI DÀI những cảm xúc trong năm 2019 này với&nbsp;<b style=\"border: 0px; font-size: 14px; margin: 0px; padding: 0px; font-family: RobotoSlab; color: rgb(85, 85, 85); line-height: 1.714;\"><i style=\"border: 0px; margin: 0px; padding: 0px; line-height: 1.714;\">Bộ Lịch Bóng Đá 2019.</i></b></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Bộ Lịch tập hợp những hình ảnh THI ĐẤU ẤN TƯỢNG được mua BẢN QUYỀN từ những Nhà báo Thể Thao ghi hình trực tiếp tại Chung kết AFC Cup và AFF Cup 2018</p></div></div>', 'NXB Hồng Đức', '20', NULL, 7, 6, '2023-11-19 14:57:43', '2023-11-19 14:57:43'),
(13, 'Sổ Tay Agenda 2019', '120000', '90000', 'vp2.jpg', '<h3 class=\"mainbox2-title clearfix margin-top-20\" style=\"margin: 20px 0px 10px; font-family: Montserrat-Light, sans-serif; font-weight: bold; line-height: 1.5; color: rgb(85, 85, 85); text-rendering: optimizelegibility; font-size: 16px; border-top: 0px; border-right: 0px; border-bottom: none; border-left: 0px; border-image: initial; padding: 0px; clear: both; height: 30px; float: left; width: 790px; position: relative; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; max-width: 790px;\">Sổ Tay Agenda 2019 (Phiên Bản Agenda Hoa Văn)</h3><div class=\"mainbox2-body\" style=\"border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 15px; line-height: 26px; font-family: Montserrat-Light, sans-serif; margin: 0px; padding: 0px 0px 30px; color: rgb(102, 100, 92); position: relative; float: left; width: 1180px;\"><div class=\"full-description\" style=\"border: 0px; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-alternates: normal; font-kerning: auto; font-optical-sizing: auto; font-feature-settings: normal; font-variation-settings: normal; font-stretch: normal; font-size: 17px; line-height: 1.714; font-family: RobotoSlab; margin: 0px; padding: 0px; color: rgb(85, 85, 85); display: inline-block; float: left; width: 1180px; position: relative;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; border: 0px; padding: 6px 0px; color: rgb(102, 100, 92); font-family: Montserrat-Light !important;\">Sổ tay tiện dụng và phù hợp với mọi đối tượng, dù bạn là học sinh-sinh viên, người đi làm..., dành để viết nhật kí, ghi chú công việc hay lưu bút, làm quà tặng...</p></div></div>', 'NXB Văn hóa - Văn nghệ', '21', NULL, 7, 6, '2023-11-19 15:00:26', '2023-11-19 15:00:26'),
(14, 'Thay Đổi Cuộc Sống Với Nhân Số Học', '199000', '150000', 'tl1.jpg', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;\">Thay Đổi Cuộc Sống Với Nhân Số Học</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px; font-weight: bold; font-family: Arial, Helvetica, sans-serif;\">Cuốn sách&nbsp;<em style=\"margin: 0px; padding: 0px;\">Thay đổi cuộc sống với</em>&nbsp;<em style=\"margin: 0px; padding: 0px;\">Nhân số học</em>&nbsp;là tác phẩm được chị Lê Đỗ Quỳnh Hương phát triển từ tác phẩm gốc “The Complete Book of Numerology” của tiến sỹ David A. Phillips, khiến bộ môn Nhân số học khởi nguồn từ nhà toán học Pythagoras trở nên gần gũi, dễ hiểu hơn với độc giả Việt Nam.</strong></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;\">Đầu năm 2020, chuỗi chương trình “<em style=\"margin: 0px; padding: 0px;\">Thay đổi cuộc sống với Nhân số học”</em>&nbsp;của &nbsp;biên tập viên, người dẫn chương trình quen thuộc tại Việt Nam Lê Đỗ Quỳnh Hương ra đời trên Youtube, với mục đích chia sẻ kiến thức, giúp mọi người tìm hiểu và phát triển, hoàn thiện bản thân, các mối quan hệ xã hội thông qua bộ môn Nhân số học. Chương trình đã nhận được sự yêu mến và phản hồi tích cực của rất nhiều khán giả và độc giả sau mỗi tập phát sóng.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;\">Nhân số học là một môn nghiên cứu sự tương quan giữa những con số trong ngày sinh, cái tên với cuộc sống, vận mệnh, đường đời và tính cách của mỗi người. Bộ môn này đã được nhà toán học Pythagoras khởi xướng cách đây 2.600 năm và sau này được nhiều thế hệ học trò liên tục kế thừa, phát triển.&nbsp;&nbsp;</p>', 'NXB Tổng Hợp TPHCM', '21', NULL, 8, 5, '2023-11-19 15:03:26', '2023-11-19 15:03:26'),
(15, 'Lý Thuyết Trò Chơi', '120000', '70000', 'lt2.jpg', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px; font-weight: bold; font-family: Arial, Helvetica, sans-serif;\">Lý Thuyết Trò Chơi</strong></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;\">Đời người giống như trò chơi, mỗi bước đều phải cân nhắc xem đi như thế nào, đi về đâu, phải kết hợp nhiều yếu tố lại chúng ta mới có thể đưa ra được lựa chọn. Mà trong quá trình chọn lựa này các yếu tố khiến ta phải cân nhắc và những đường đi khác nhau sẽ ảnh hưởng trực tiếp đến kết quả.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 1em; color: rgb(51, 51, 51); font-family: nunito-sans, sans-serif, Helvetica, Arial; text-align: justify;\">Cuốn sách Lý thuyết trò chơi là bách khoa toàn thư về tâm lý học, về tẩy não và chống lại tẩy não, thao túng và chống lại thao túng, thống trị&nbsp;</p>', 'Dân Trí', '20', NULL, 1, 5, '2023-11-19 15:04:27', '2023-11-19 15:04:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_Name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `cate_Name`, `created_at`, `updated_at`, `slug`) VALUES
(1, 'Văn Học', '2023-11-19 10:31:30', '2023-11-19 10:31:30', 'van-hoc'),
(2, 'Sách Thiếu Nhi', '2023-11-19 10:32:04', '2023-11-19 10:32:04', 'sach-thieu-nhi'),
(3, 'Nuôi Dạy Con', '2023-11-19 10:32:46', '2023-11-19 10:32:46', 'nuoi-day-con'),
(4, 'Kinh Tế', '2023-11-19 10:32:55', '2023-11-19 10:32:55', 'kinh-te'),
(5, 'Tâm Lý - Kỹ Năng Sống', '2023-11-19 10:33:16', '2023-11-19 10:33:16', 'tam-ly-ky-nang-song'),
(6, 'Tạp Chí - Văn Phòng Phẩm', '2023-11-19 10:34:14', '2023-11-19 10:34:14', 'tap-chi-van-phong-pham');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_details`
--

CREATE TABLE `image_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` text NOT NULL,
  `id_book` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_04_153155_create_categories_table', 1),
(6, '2023_10_04_153344_create_books_table', 1),
(7, '2023_10_04_153615_create_authors_table', 1),
(8, '2023_10_04_153737_create_orders_table', 1),
(9, '2023_10_04_154006_create_reviews_table', 1),
(10, '2023_10_04_154203_create_sales_table', 1),
(11, '2023_10_05_030740_add_authors_reference_to_books_table', 1),
(12, '2023_10_05_030944_add_categories_reference_to_books_table', 1),
(13, '2023_10_05_031146_add_books_reference_to_sales_table', 1),
(14, '2023_10_05_031226_add_categories_reference_to_sales_table', 1),
(15, '2023_10_07_111416_add_userrs_reference_to_bills_table', 1),
(16, '2023_10_07_111601_add_users_reference_to_reviews_table', 1),
(17, '2023_10_07_111650_add_books_reference_to_reviews_table', 1),
(18, '2023_10_07_112446_add_reviews_reference_to_books_table', 1),
(19, '2023_10_07_113405_create_carts_table', 1),
(20, '2023_10_07_113631_add_id_cart_reference_to_bills_table', 1),
(21, '2023_10_31_094159_create_image_details_table', 1),
(22, '2023_11_08_094223_add_user_id_to_carts_table', 1),
(23, '2023_11_15_153729_add_slug_categories', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `id_customer` bigint(20) UNSIGNED NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `ship` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `payment` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `cart_id` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`cart_id`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `date`, `id_customer`, `address`, `phone`, `email`, `total`, `ship`, `status`, `payment`, `note`, `cart_id`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-11-19', 5, 'nam điền', '0840102038021', 'admin@admin.com', '94', '10', 'Đã nhận đơn', 'Nhận Hàng Thanh Toán', 'dsdsdsds', NULL, '2023-11-19 12:01:11', '2023-11-19 14:41:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(255) NOT NULL,
  `id_customer` bigint(20) UNSIGNED NOT NULL,
  `id_book` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `content`, `id_customer`, `id_book`, `created_at`, `updated_at`) VALUES
(1, 's', 5, 7, '2023-11-19 12:19:25', '2023-11-19 12:19:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_book` bigint(20) UNSIGNED NOT NULL,
  `id_category` bigint(20) UNSIGNED NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `role` bigint(20) NOT NULL DEFAULT 3,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `address`, `phone`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'nguoidung', 'nguoidung', 'nguoidung@admin.com', '2023-11-19 10:04:01', '$2y$10$ogHC6z33uA0e3vRrUhd1d.k2vND.5b1OYL/rnFcRlZkk8W33pp.kW', NULL, NULL, 3, 'eNvt1FUlUt', '2023-11-19 10:04:01', '2023-11-19 10:04:01'),
(4, 'Coca', 'huynt', 'huybanhbeo.03@gmail.com', NULL, '$2y$10$9Fv4zPG3pDQ.xAnJzmGfouv78fowAmBXQYJMrK8fjBOgFq1Cqfocq', 'wsasasas', '0947057282', 2, NULL, '2023-11-19 10:05:33', '2023-11-19 10:05:33'),
(5, 'admin', 'admin', 'admin@admin.com', '2023-11-19 10:06:33', '$2y$10$rJzkbZEmi28PaiiwaHqAwe/DHfQkOcmyOH6zeN6ZFdlq31fGZ.RZW', NULL, NULL, 1, 'eESrVDgMOc', '2023-11-19 10:06:33', '2023-11-19 10:06:33');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_id_author_foreign` (`id_author`),
  ADD KEY `books_id_cate_foreign` (`id_cate`),
  ADD KEY `books_id_review_foreign` (`id_review`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_book_id_foreign` (`book_id`),
  ADD KEY `carts_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `image_details`
--
ALTER TABLE `image_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_id_customer_foreign` (`id_customer`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_id_customer_foreign` (`id_customer`),
  ADD KEY `reviews_id_book_foreign` (`id_book`);

--
-- Chỉ mục cho bảng `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_id_book_foreign` (`id_book`),
  ADD KEY `sales_id_category_foreign` (`id_category`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `image_details`
--
ALTER TABLE `image_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_id_author_foreign` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `books_id_cate_foreign` FOREIGN KEY (`id_cate`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `books_id_review_foreign` FOREIGN KEY (`id_review`) REFERENCES `reviews` (`id`);

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_id_book_foreign` FOREIGN KEY (`id_book`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `reviews_id_customer_foreign` FOREIGN KEY (`id_customer`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_id_book_foreign` FOREIGN KEY (`id_book`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `sales_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

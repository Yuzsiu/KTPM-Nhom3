-- =======================================================================
-- SCRIPT THÃŠM 18 Sáº¢N PHáº¨M Má»šI (Chia Ä‘á»u 3 sáº£n pháº©m/hÃ£ng)
-- ID báº¯t Ä‘áº§u tá»« 101 Ä‘á»ƒ khÃ´ng trÃ¹ng vá»›i 22 sáº£n pháº©m báº¡n Ä‘ang cÃ³ sáºµn.
-- HÃ£ng: Acer(1), Asus(4), Dell(5), Lenovo(7), HP(6), Apple(3)
-- =======================================================================

-- 1. Báº£ng products
INSERT INTO products (id, name, price, stock, image, category_id) VALUES
(101, 'Acer Predator Helios Neo 16 (2024)', 32990000, 15, 'assets/acer_helios_neo_16_img0.jpg', 1),
(102, 'Acer Nitro V 15 (2024)', 24590000, 20, 'assets/acer_nitro_v15_img0.jpg', 1),
(103, 'Acer Swift Go 14 OLED (2024)', 19990000, 10, 'assets/acer_swift_go14_img0.jpg', 1),

(104, 'Asus ROG Zephyrus G14 (2024)', 39990000, 8, 'assets/asus_rog_g14_img0.jpg', 4),
(105, 'Asus TUF Gaming A15 (2024)', 26490000, 12, 'assets/asus_tuf_a15_img0.jpg', 4),
(106, 'Asus Zenbook S 13 OLED (2024)', 29990000, 5, 'assets/asus_zenbook_s13_img0.jpg', 4),

(107, 'Dell XPS 15 9530 (2024)', 45990000, 5, 'assets/dell_xps_15_img0.jpg', 5),
(108, 'Dell Inspiron 16 Plus 7630 (2024)', 28990000, 8, 'assets/dell_inspiron_16_img0.jpg', 5),
(109, 'Dell Alienware m16 R2 (2024)', 52990000, 3, 'assets/dell_alienware_m16_img0.jpg', 5),

(110, 'Lenovo Legion Slim 5 16IRH8 (2024)', 29990000, 12, 'assets/lenovo_legion_slim5_img0.jpg', 7),
(111, 'Lenovo LOQ 15IRX9 (2024)', 23990000, 25, 'assets/lenovo_loq_15_img0.jpg', 7),
(112, 'Lenovo ThinkPad T14 Gen 4 (2024)', 34500000, 10, 'assets/lenovo_thinkpad_t14_img0.jpg', 7),

(113, 'HP Omen 16 (2024)', 31500000, 7, 'assets/hp_omen_16_img0.jpg', 6),
(114, 'HP Victus 16 (2024)', 22990000, 15, 'assets/hp_victus_16_img0.jpg', 6),
(115, 'HP Envy x360 14 (2024)', 25990000, 10, 'assets/hp_envy_x360_img0.jpg', 6),

(116, 'MacBook Air 15 inch M3 (2024)', 32990000, 20, 'assets/macbook_air_15_m3_img0.jpg', 3),
(117, 'MacBook Air 13 inch M3 (2024)', 27990000, 30, 'assets/macbook_air_13_m3_img0.jpg', 3),
(118, 'MacBook Pro 16 inch M3 Max (2024)', 89990000, 5, 'assets/macbook_pro_16_m3max_img0.jpg', 3);


-- 2. Báº£ng product_details
INSERT INTO product_details (product_id, cpu, ram, storage, gpu, screen, battery, audio, ports, wireless, weight, color, condition_status, warranty, more_info) VALUES
(101, 'Intel Core i7 13700HX (16 nhÃ¢n, 24 luá»“ng, tá»‘i Ä‘a 5.0GHz)', '16GB DDR5 4800MHz, 2 khe, há»— trá»£ nÃ¢ng cáº¥p', '512GB SSD NVMe, 2 slot', 'NVIDIA GeForce RTX 4060 8GB GDDR6', '16" WQXGA (2560x1600) 165Hz, 500 nits, 100% sRGB', '90Wh', 'DTS:X Ultra', '2x USB-C 3.2, 3x USB-A 3.2, HDMI 2.1', 'Wi-Fi 6E, Bluetooth 5.2', '2.6kg', 'Äen', 'New 100%', '12 thÃ¡ng táº¡i D-computer', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Intel Core i7 13700HX<br>-RAM: 16GB DDR5 4800MHz<br>-MÃ n hÃ¬nh: 16" 2.5K 165Hz<br>-Äá»“ há»a: NVIDIA RTX 4060 8GB<br>-Nhu cáº§u: Gaming / Äá»“ há»a'),
(102, 'Intel Core i5 13420H (8 nhÃ¢n, 12 luá»“ng, tá»‘i Ä‘a 4.6GHz)', '16GB DDR5 5200MHz, 2 khe, há»— trá»£ nÃ¢ng cáº¥p', '512GB SSD NVMe, 2 slot', 'NVIDIA GeForce RTX 4050 6GB GDDR6', '15.6" FHD (1920x1080) 144Hz, 250 nits', '57Wh', 'DTS:X Ultra', '1x USB-C 3.2, 3x USB-A 3.2, HDMI 2.1', 'Wi-Fi 6, Bluetooth 5.1', '2.11kg', 'Äen', 'New 100%', '12 thÃ¡ng chÃ­nh hÃ£ng', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Intel Core i5 13420H<br>-RAM: 16GB DDR5 5200MHz<br>-MÃ n hÃ¬nh: 15.6" FHD 144Hz<br>-Äá»“ há»a: NVIDIA RTX 4050 6GB<br>-Nhu cáº§u: Gaming / Há»c táº­p'),
(103, 'Intel Core Ultra 5 125H (14 nhÃ¢n, 18 luá»“ng)', '16GB LPDDR5X 6400MHz, onboard', '512GB SSD NVMe, 1 slot', 'Intel Arc Graphics', '14" 2.8K OLED (2880x1800) 90Hz, 400 nits, 100% DCI-P3', '65Wh', 'Acer TrueHarmony', '2x Thunderbolt 4, 2x USB-A 3.2, HDMI 2.1', 'Wi-Fi 6E, Bluetooth 5.3', '1.32kg', 'Báº¡c', 'New 100%', '12 thÃ¡ng chÃ­nh hÃ£ng', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Intel Core Ultra 5 125H<br>-RAM: 16GB LPDDR5X<br>-MÃ n hÃ¬nh: 14" 2.8K OLED 90Hz<br>-Äá»“ há»a: Intel Arc Graphics<br>-Nhu cáº§u: VÄƒn phÃ²ng / Láº­p trÃ¬nh nháº¹'),

(104, 'AMD Ryzen 9 7940HS (8 nhÃ¢n, 16 luá»“ng, tá»‘i Ä‘a 5.2GHz)', '16GB DDR5 4800MHz, onboard', '1TB SSD NVMe, 1 slot', 'NVIDIA GeForce RTX 4060 8GB GDDR6', '14" QHD+ (2560x1600) 165Hz, 500 nits, 100% DCI-P3', '76Wh', '4 loa, Dolby Atmos', '2x USB-C 3.2, 2x USB-A 3.2, HDMI 2.1', 'Wi-Fi 6E, Bluetooth 5.3', '1.65kg', 'XÃ¡m', 'New 100%', '24 thÃ¡ng táº¡i hÃ£ng', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: AMD Ryzen 9 7940HS<br>-RAM: 16GB DDR5 4800MHz<br>-MÃ n hÃ¬nh: 14" QHD+ 165Hz<br>-Äá»“ há»a: NVIDIA RTX 4060 8GB<br>-Nhu cáº§u: Gaming / Láº­p trÃ¬nh'),
(105, 'AMD Ryzen 7 7735HS (8 nhÃ¢n, 16 luá»“ng, tá»‘i Ä‘a 4.7GHz)', '16GB DDR5 4800MHz, 2 khe, há»— trá»£ nÃ¢ng cáº¥p', '512GB SSD NVMe, 2 slot', 'NVIDIA GeForce RTX 4050 6GB GDDR6', '15.6" FHD (1920x1080) 144Hz, 100% sRGB', '90Wh', 'Dolby Atmos', '1x USB-C 4.0, 1x USB-C 3.2, 2x USB-A 3.2', 'Wi-Fi 6, Bluetooth 5.2', '2.2kg', 'XÃ¡m Ä‘en', 'New 100%', '24 thÃ¡ng chÃ­nh hÃ£ng', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: AMD Ryzen 7 7735HS<br>-RAM: 16GB DDR5 4800MHz<br>-MÃ n hÃ¬nh: 15.6" FHD 144Hz<br>-Äá»“ há»a: NVIDIA RTX 4050 6GB<br>-Nhu cáº§u: Gaming / Há»c táº­p'),
(106, 'Intel Core i7 1355U (10 nhÃ¢n, 12 luá»“ng, tá»‘i Ä‘a 5.0GHz)', '16GB LPDDR5 5200MHz, onboard', '1TB SSD NVMe', 'Intel Iris Xe Graphics', '13.3" 2.8K OLED (2880x1800) 60Hz, 550 nits', '63Wh', 'Harman Kardon, Dolby Atmos', '2x Thunderbolt 4, 1x USB-A 3.2, HDMI 2.1', 'Wi-Fi 6E, Bluetooth 5.3', '1.0kg', 'Xanh Ä‘en', 'New 100%', '24 thÃ¡ng chÃ­nh hÃ£ng', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Intel Core i7 1355U<br>-RAM: 16GB LPDDR5<br>-MÃ n hÃ¬nh: 13.3" 2.8K OLED<br>-Äá»“ há»a: Intel Iris Xe<br>-Nhu cáº§u: VÄƒn phÃ²ng / Láº­p trÃ¬nh'),

(107, 'Intel Core i7 13700H (14 nhÃ¢n, 20 luá»“ng, tá»‘i Ä‘a 5.0GHz)', '16GB DDR5 4800MHz, 2 khe, há»— trá»£ nÃ¢ng cáº¥p', '1TB SSD NVMe, 2 slot', 'NVIDIA GeForce RTX 4050 6GB GDDR6', '15.6" FHD+ (1920x1200), 500 nits, 100% sRGB', '86Wh', 'Studio Quality, Waves Nx 3D', '2x Thunderbolt 4, 1x USB-C 3.2', 'Wi-Fi 6, Bluetooth 5.3', '1.92kg', 'Báº¡c', 'New 100%', '12 thÃ¡ng táº¡i D-computer', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Intel Core i7 13700H<br>-RAM: 16GB DDR5 4800MHz<br>-MÃ n hÃ¬nh: 15.6" FHD+ 500 nits<br>-Äá»“ há»a: NVIDIA RTX 4050 6GB<br>-Nhu cáº§u: Äá»“ há»a / Láº­p trÃ¬nh'),
(108, 'Intel Core i7 13700H (14 nhÃ¢n, 20 luá»“ng)', '16GB LPDDR5 4800MHz, onboard', '1TB SSD NVMe', 'NVIDIA GeForce RTX 3050 6GB GDDR6', '16.0" 2.5K (2560x1600) 120Hz, 300 nits, 100% sRGB', '86Wh', 'Waves MaxxAudio Pro', '1x Thunderbolt 4, 2x USB-A 3.2, HDMI 2.0', 'Wi-Fi 6E, Bluetooth 5.2', '2.06kg', 'Báº¡c', 'New 100%', '12 thÃ¡ng chÃ­nh hÃ£ng', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Intel Core i7 13700H<br>-RAM: 16GB LPDDR5<br>-MÃ n hÃ¬nh: 16" 2.5K 120Hz<br>-Äá»“ há»a: NVIDIA RTX 3050 6GB<br>-Nhu cáº§u: VÄƒn phÃ²ng / Láº­p trÃ¬nh'),
(109, 'Intel Core Ultra 7 155H (16 nhÃ¢n, 22 luá»“ng)', '16GB DDR5 5600MHz, 2 khe, há»— trá»£ nÃ¢ng cáº¥p', '1TB SSD NVMe', 'NVIDIA GeForce RTX 4070 8GB GDDR6', '16.0" QHD+ (2560x1600) 240Hz, 100% sRGB', '90Wh', 'Alienware Sound', '2x Thunderbolt 4, 2x USB-A 3.2, HDMI 2.1, RJ45', 'Wi-Fi 7, Bluetooth 5.4', '2.61kg', 'Äen Ã¡nh kim', 'New 100%', '12 thÃ¡ng cao cáº¥p', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Intel Core Ultra 7 155H<br>-RAM: 16GB DDR5 5600MHz<br>-MÃ n hÃ¬nh: 16" QHD+ 240Hz<br>-Äá»“ há»a: NVIDIA RTX 4070 8GB<br>-Nhu cáº§u: Gaming / Äá»“ há»a'),

(110, 'Intel Core i7 13700H (14 nhÃ¢n, 20 luá»“ng, tá»‘i Ä‘a 5.0GHz)', '16GB DDR5 5200MHz, 2 khe, há»— trá»£ nÃ¢ng cáº¥p', '512GB SSD NVMe, 2 slot', 'NVIDIA GeForce RTX 4060 8GB GDDR6', '16" WQXGA (2560x1600) 165Hz, 300 nits, 100% sRGB', '80Wh', '2 loa, Nahimic Audio', '2x USB-C 3.2, 2x USB-A 3.2, HDMI 2.1', 'Wi-Fi 6E, Bluetooth 5.1', '2.4kg', 'XÃ¡m', 'New 100%', '24 thÃ¡ng táº¡i Lenovo', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Intel Core i7 13700H<br>-RAM: 16GB DDR5 5200MHz<br>-MÃ n hÃ¬nh: 16" 2.5K 165Hz<br>-Äá»“ há»a: NVIDIA RTX 4060 8GB<br>-Nhu cáº§u: Gaming / Láº­p trÃ¬nh'),
(111, 'Intel Core i7 13650HX (14 nhÃ¢n, 20 luá»“ng)', '16GB DDR5 4800MHz, 2 khe, há»— trá»£ nÃ¢ng cáº¥p', '512GB SSD NVMe', 'NVIDIA GeForce RTX 4050 6GB GDDR6', '15.6" FHD (1920x1080) 144Hz, 100% sRGB', '60Wh', 'Nahimic Audio', '1x USB-C 3.2, 3x USB-A 3.2, HDMI 2.1', 'Wi-Fi 6, Bluetooth 5.1', '2.38kg', 'XÃ¡m', 'New 100%', '24 thÃ¡ng chÃ­nh hÃ£ng', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Intel Core i7 13650HX<br>-RAM: 16GB DDR5 4800MHz<br>-MÃ n hÃ¬nh: 15.6" FHD 144Hz<br>-Äá»“ há»a: NVIDIA RTX 4050 6GB<br>-Nhu cáº§u: Gaming / Há»c táº­p'),
(112, 'Intel Core i5 1335U (10 nhÃ¢n, 12 luá»“ng)', '16GB LPDDR5x 4800MHz, onboard', '512GB SSD NVMe', 'Intel Iris Xe Graphics', '14.0" WUXGA (1920x1200) IPS, 300 nits, chá»‘ng chÃ³i', '52.5Wh', 'Dolby Audio', '2x Thunderbolt 4, 2x USB-A 3.2, HDMI 2.1, RJ45', 'Wi-Fi 6E, Bluetooth 5.3', '1.36kg', 'Äen', 'New 100%', '36 thÃ¡ng Premier Support', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Intel Core i5 1335U<br>-RAM: 16GB LPDDR5x<br>-MÃ n hÃ¬nh: 14" WUXGA IPS<br>-Äá»“ há»a: Intel Iris Xe<br>-Nhu cáº§u: Láº­p trÃ¬nh / VÄƒn phÃ²ng'),

(113, 'AMD Ryzen 7 7840HS (8 nhÃ¢n, 16 luá»“ng, tá»‘i Ä‘a 5.1GHz)', '16GB DDR5 5600MHz, 2 khe, há»— trá»£ nÃ¢ng cáº¥p', '512GB SSD NVMe, 2 slot', 'NVIDIA GeForce RTX 4060 8GB GDDR6', '16.1" FHD (1920x1080) 165Hz, 300 nits, 100% sRGB', '83Wh', 'Bang & Olufsen, DTS:X', '2x USB-C 3.2, 2x USB-A 3.2, HDMI 2.1', 'Wi-Fi 6E, Bluetooth 5.3', '2.37kg', 'Äen', 'New 100%', '12 thÃ¡ng táº¡i hÃ£ng', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: AMD Ryzen 7 7840HS<br>-RAM: 16GB DDR5 5600MHz<br>-MÃ n hÃ¬nh: 16.1" FHD 165Hz<br>-Äá»“ há»a: NVIDIA RTX 4060 8GB<br>-Nhu cáº§u: Gaming / Äá»“ há»a'),
(114, 'Intel Core i5 13500H (12 nhÃ¢n, 16 luá»“ng)', '16GB DDR5 5200MHz, 2 khe, há»— trá»£ nÃ¢ng cáº¥p', '512GB SSD NVMe', 'NVIDIA GeForce RTX 4050 6GB GDDR6', '16.1" FHD (1920x1080) 144Hz, 250 nits', '70Wh', 'B&O Audio', '1x USB-C 3.2, 3x USB-A 3.2, HDMI 2.1, RJ45', 'Wi-Fi 6E, Bluetooth 5.3', '2.33kg', 'Xanh Ä‘en', 'New 100%', '12 thÃ¡ng chÃ­nh hÃ£ng', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Intel Core i5 13500H<br>-RAM: 16GB DDR5 5200MHz<br>-MÃ n hÃ¬nh: 16.1" FHD 144Hz<br>-Äá»“ há»a: NVIDIA RTX 4050 6GB<br>-Nhu cáº§u: Gaming / Há»c táº­p'),
(115, 'Intel Core Ultra 7 155U (12 nhÃ¢n, 14 luá»“ng)', '16GB LPDDR5 6400MHz, onboard', '1TB SSD NVMe', 'Intel Graphics', '14.0" WUXGA (1920x1200) IPS Cáº£m á»©ng, 300 nits', '59Wh', 'Poly Studio, DTS:X', '2x Thunderbolt 4, 2x USB-A 3.2, HDMI 2.1', 'Wi-Fi 7, Bluetooth 5.4', '1.39kg', 'Báº¡c', 'New 100%', '12 thÃ¡ng chÃ­nh hÃ£ng', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Intel Core Ultra 7 155U<br>-RAM: 16GB LPDDR5 6400MHz<br>-MÃ n hÃ¬nh: 14" WUXGA Cáº£m á»©ng<br>-Äá»“ há»a: Intel Graphics<br>-Nhu cáº§u: VÄƒn phÃ²ng / Doanh nhÃ¢n'),

(116, 'Apple M3 (8-core CPU)', '16GB Unified Memory, onboard', '512GB SSD, khÃ´ng há»— trá»£ nÃ¢ng cáº¥p', '10-core GPU', '15.3" Liquid Retina (2880x1864), 500 nits', '66.5Wh', '6 loa, Spatial Audio', '2x Thunderbolt / USB 4, MagSafe 3', 'Wi-Fi 6E, Bluetooth 5.3', '1.51kg', 'Starlight', 'New 100%', '12 thÃ¡ng táº¡i Apple', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Apple M3 8-core<br>-RAM: 16GB Unified<br>-MÃ n hÃ¬nh: 15.3" Liquid Retina<br>-Äá»“ há»a: 10-core GPU<br>-Nhu cáº§u: VÄƒn phÃ²ng / Láº­p trÃ¬nh'),
(117, 'Apple M3 (8-core CPU)', '8GB Unified Memory, onboard', '256GB SSD, khÃ´ng há»— trá»£ nÃ¢ng cáº¥p', '8-core GPU', '13.6" Liquid Retina (2560x1664), 500 nits', '52.6Wh', '4 loa, Spatial Audio', '2x Thunderbolt / USB 4, MagSafe 3', 'Wi-Fi 6E, Bluetooth 5.3', '1.24kg', 'Midnight', 'New 100%', '12 thÃ¡ng táº¡i Apple', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Apple M3 8-core<br>-RAM: 8GB Unified<br>-MÃ n hÃ¬nh: 13.6" Liquid Retina<br>-Äá»“ há»a: 8-core GPU<br>-Nhu cáº§u: VÄƒn phÃ²ng / Há»c táº­p'),
(118, 'Apple M3 Max (16-core CPU)', '48GB Unified Memory, onboard', '1TB SSD, khÃ´ng há»— trá»£ nÃ¢ng cáº¥p', '40-core GPU', '16.2" Liquid Retina XDR (3456x2234) 120Hz, 1000 nits', '100Wh', '6 loa, Spatial Audio', '3x Thunderbolt 4, HDMI, SDXC, MagSafe 3', 'Wi-Fi 6E, Bluetooth 5.3', '2.16kg', 'Space Black', 'New 100%', '12 thÃ¡ng táº¡i Apple', 'Chi Tiáº¿t Cáº¥u HÃ¬nh<br>-CPU: Apple M3 Max 16-core<br>-RAM: 48GB Unified<br>-MÃ n hÃ¬nh: 16.2" Liquid Retina XDR 120Hz<br>-Äá»“ há»a: 40-core GPU<br>-Nhu cáº§u: Äá»“ há»a / Láº­p trÃ¬nh náº·ng');


-- 3. Báº£ng product_images (ThÃªm 3 áº£nh cho má»—i sáº£n pháº©m)
INSERT INTO product_images (product_id, image_url) VALUES
(101, 'assets/acer_helios_neo_16_img0.jpg'), (101, 'assets/acer_helios_neo_16_img1.jpg'), (101, 'assets/acer_helios_neo_16_img2.jpg'),
(102, 'assets/acer_nitro_v15_img0.jpg'), (102, 'assets/acer_nitro_v15_img1.jpg'), (102, 'assets/acer_nitro_v15_img2.jpg'),
(103, 'assets/acer_swift_go14_img0.jpg'), (103, 'assets/acer_swift_go14_img1.jpg'), (103, 'assets/acer_swift_go14_img2.jpg'),

(104, 'assets/asus_rog_g14_img0.jpg'), (104, 'assets/asus_rog_g14_img1.jpg'), (104, 'assets/asus_rog_g14_img2.jpg'),
(105, 'assets/asus_tuf_a15_img0.jpg'), (105, 'assets/asus_tuf_a15_img1.jpg'), (105, 'assets/asus_tuf_a15_img2.jpg'),
(106, 'assets/asus_zenbook_s13_img0.jpg'), (106, 'assets/asus_zenbook_s13_img1.jpg'), (106, 'assets/asus_zenbook_s13_img2.jpg'),

(107, 'assets/dell_xps_15_img0.jpg'), (107, 'assets/dell_xps_15_img1.jpg'), (107, 'assets/dell_xps_15_img2.jpg'),
(108, 'assets/dell_inspiron_16_img0.jpg'), (108, 'assets/dell_inspiron_16_img1.jpg'), (108, 'assets/dell_inspiron_16_img2.jpg'),
(109, 'assets/dell_alienware_m16_img0.jpg'), (109, 'assets/dell_alienware_m16_img1.jpg'), (109, 'assets/dell_alienware_m16_img2.jpg'),

(110, 'assets/lenovo_legion_slim5_img0.jpg'), (110, 'assets/lenovo_legion_slim5_img1.jpg'), (110, 'assets/lenovo_legion_slim5_img2.jpg'),
(111, 'assets/lenovo_loq_15_img0.jpg'), (111, 'assets/lenovo_loq_15_img1.jpg'), (111, 'assets/lenovo_loq_15_img2.jpg'),
(112, 'assets/lenovo_thinkpad_t14_img0.jpg'), (112, 'assets/lenovo_thinkpad_t14_img1.jpg'), (112, 'assets/lenovo_thinkpad_t14_img2.jpg'),

(113, 'assets/hp_omen_16_img0.jpg'), (113, 'assets/hp_omen_16_img1.jpg'), (113, 'assets/hp_omen_16_img2.jpg'),
(114, 'assets/hp_victus_16_img0.jpg'), (114, 'assets/hp_victus_16_img1.jpg'), (114, 'assets/hp_victus_16_img2.jpg'),
(115, 'assets/hp_envy_x360_img0.jpg'), (115, 'assets/hp_envy_x360_img1.jpg'), (115, 'assets/hp_envy_x360_img2.jpg'),

(116, 'assets/macbook_air_15_m3_img0.jpg'), (116, 'assets/macbook_air_15_m3_img1.jpg'), (116, 'assets/macbook_air_15_m3_img2.jpg'),
(117, 'assets/macbook_air_13_m3_img0.jpg'), (117, 'assets/macbook_air_13_m3_img1.jpg'), (117, 'assets/macbook_air_13_m3_img2.jpg'),
(118, 'assets/macbook_pro_16_m3max_img0.jpg'), (118, 'assets/macbook_pro_16_m3max_img1.jpg'), (118, 'assets/macbook_pro_16_m3max_img2.jpg');

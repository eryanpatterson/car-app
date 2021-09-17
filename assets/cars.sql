UPDATE `makes` SET `logo` = 'https://www.codinter.com/en/wp-content/uploads/sites/2/2018/01/logo-toyota-256x256.png' WHERE `makes`.`id` = 2;

UPDATE `makes` SET `logo` = 'https://www.freeiconspng.com/thumbs/honda-logo-png/honda-icon-13.png' WHERE `makes`.`id` = 5;
UPDATE `cars` SET `image` = 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-honda-accord-hybrid-109-edit-1604961241.jpg?crop=0.591xw:0.499xh;0.0962xw,0.501xh&resize=2048:*' WHERE `cars`.`id` = 6; 


INSERT INTO `images` (`id`, `src`, `car`) VALUES
(13, 'https://www.toyota.com/imgix/responsive/images/gallery/photos-videos/2021/camry/CAH_MY21_0003_V001.png?w=2880&q=90&fm=jpg&fit=max&cs=strip&bg=fff&auto=compress', 'camry'),
(14, 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2021-honda-accord-hybrid-109-edit-1604961241.jpg?crop=0.591xw:0.499xh;0.0962xw,0.501xh&resize=2048:*', 'accord'),
(15, 'https://www.mazdausa.com/siteassets/vehicles/2021/mazda6/environmental-360/sport/soul-red-crystal/e360-my21-mazda6-sport-soulredcrystal-023.jpg#default?w=1480', 'mazda-6'),
(16, 'https://www.vw.com/api/assets/onehub_pkw/us/en/gallery/passat/2022/exterior/VW_NGW6_Showroom_Passat_Gallery_Exterior-5.jpg', 'passat'),
(17, 'https://www.ford.com/is/image/content/dam/vdm_ford/live/en_us/ford/nameplate/f-150/2021/collections/dm/21_FRD_F15_51223.tif?croppathe=1_3x2&wid=1440', 'f-150'),
(18, 'https://www.vw.com/api/assets/onehub_pkw/us/en/gallery/passat/2022/exterior/VW_NGW6_Showroom_Passat_Gallery_Exterior-9.jpg/renditions/original', 'passat'),
(19, 'https://www.vw.com/api/assets/onehub_pkw/us/en/gallery/passat/2022/exterior/VW_NGW6_Showroom_Passat_Gallery_Exterior-6.jpg/renditions/original', 'passat'),
(20, 'https://www.mazdausa.com/siteassets/vehicles/2021/mazda6/vlp/gallery-slider/2021-mazda-6-sedan-drivers-car.jpg?w=1800', 'mazda-6'),
(21, 'https://www.toyota.com/imgix/responsive/images/gallery/photos-videos/2021/camry/CAM_MY20_0034_V003.png?w=2880&q=90&fm=jpg&fit=max&cs=strip&bg=fff&auto=compress', 'camry'),
(22, 'https://www.toyota.com/imgix/responsive/images/gallery/photos-videos/2021/camry/CAM_MY19_0018_V003.png?w=2880&q=90&fm=jpg&fit=max&cs=strip&bg=fff&auto=compress', 'camry'),
(23, 'https://media.ed.edmunds-media.com/honda/accord/2021/oem/2021_honda_accord_sedan_sport_fq_oem_1_1600.jpg', 'accord'),
(24, 'https://www.ford.com/is/image/content/dam/vdm_ford/live/en_us/ford/nameplate/f-150/2021/collections/dm/21_FRD_F15_51172.tif?croppathe=1_3x2&wid=1440', 'f-150');


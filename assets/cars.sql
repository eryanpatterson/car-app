INSERT INTO `makes` (`id`, `make_name`, `country`, `slug`, `logo`) VALUE
(5, 'Honda', 'Japan', 'honda', 'https://listcarbrands.com/wp-content/uploads/2016/03/logo-Honda.png');

INSERT INTO `styles` (`id`, `style_name`, `slug`) VALUES
(2, 'Mid-Size Sedan', 'mid-size-sedan'),
(3, 'Full-Size Pickup', 'full-size-pickup');


INSERT INTO `cars` (`id`, `make`, `style`, `model`, `image`, `slug`, `msrp`, `c_and_d`, `maker_site`) VALUES
(5, 'Toyota', 'Mid-Size Sedan', 'Camry', 'https://www.toyota.com/imgix/responsive/images/gallery/photos-videos/2021/camry/CAH_MY21_0003_V001.png?w=2880&q=90&fm=jpg&fit=max&cs=strip&bg=fff&auto=compress', 'camry', '$26,000 - $33,300', 'https://www.caranddriver.com/toyota/camry', 'https://www.toyota.com/camry/2021/'),
(6, 'Honda', 'Mid-Size Sedan', 'Accord', 'https://automobiles.honda.com/-/media/Honda-Automobiles/Vehicles/2021/Accord-Sedan/Gallery/Responsive/MY21-Accord-Horsepower-Torque-1400-1x-A.jpg', 'accord', '$26,000 - $37,900', 'https://www.caranddriver.com/honda/accord', 'https://automobiles.honda.com/accord-sedan'),
(7, 'Mazda', 'Mid-Size Sedan', 'Mazda-6', 'https://www.mazdausa.com/siteassets/vehicles/2021/mazda6/environmental-360/sport/soul-red-crystal/e360-my21-mazda6-sport-soulredcrystal-023.jpg#default?w=1480', 'mazda-6', '$25,500 - $36,900', 'https://www.caranddriver.com/mazda/mazda-6', 'https://www.mazdausa.com/vehicles/2021-mazda6'),
(8, 'Volkswagen', 'Mid-Size Sedan', 'Passat', 'https://www.vw.com/api/assets/onehub_pkw/us/en/gallery/passat/2022/exterior/VW_NGW6_Showroom_Passat_Gallery_Exterior-5.jpg', 'passat', '$25,000 - $31,300', 'https://www.caranddriver.com/volkswagen/passat', 'https://www.vw.com/en/models/passat.html'),
(9, 'Ford', 'Full-Size Pickup', 'F-150', 'https://www.ford.com/is/image/content/dam/vdm_ford/live/en_us/ford/nameplate/f-150/2021/collections/dm/21_FRD_F15_51223.tif?croppathe=1_3x2&wid=1440', 'f-150', '$31,000 - $72,900', 'https://www.caranddriver.com/ford/f-150', 'https://www.ford.com/trucks/f150/');


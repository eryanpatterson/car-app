<?php require_once('config.php') ?>
<?php require_once( ROOT_PATH . '/assets/logic.php') ?>
<?php require_once( ROOT_PATH . '/components/head.php') ?>

<?php $car = getCarData($_GET['model']); ?>
<?php $make = getMakeOfCar($car['make']); ?>
<?php $style = getStyleOfCar($car['style']); ?>
<?php $name = $car['make'] . ' ' . $car['model']; ?>
<?php $images = getCarImages($car['slug']); ?>

    <title>Car Compare: <?php echo $name ?></title>
</head>

<body>
    <?php include( ROOT_PATH . '/components/navbar.php'); ?>
    <div class="container">
        <div class="header row">
            <div class="col-sm-6">
                <h1 class="model"> <?php echo $name ?> </h1>
            </div>
            
        </div>
        <div class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <?php for ($i = 0; $i < count($images); $i++): ?>
                    <div class="item <?php if ($i === 0) echo 'active'?>">
                        <img 
                            src="<?php echo $images[$i]['src']?>"
                            alt="<?php echo 'A picture of the ' . $car_name?>"
                            style="width:100%;"
                        >
                    </div>
                <?php endfor ?>
            </div>
        </div>
        <div class="row description">
            <div class="col-sm-4">
                <p><a href="<?php echo BASE_URL . 'styles.php?style=' . $style['slug'] ?>"><?php echo $car['style']?></a></p>
            </div>
            <div class="col-sm-4">
                <p><?php echo $car['msrp']?></p>
            </div>
            <div class="col-sm-4">
                <div class="col-sm-6">
                <a href="<?php echo $car['c_and_d']?>">
                    <img src="assets/images/c_and_d.jpg" alt="Car and driver logo" class="img-responsive">
                </a>
                </div>
                <div class="col-sm-6 logo">
                <a href="<?php echo BASE_URL . '/makes.php?make=' . $make['slug']?>">     
                    <img src="<?php echo $make['logo'] ?>"
                        alt="<?php echo $make['make_name'] . ' logo' ?>"
                    >
                </a>
                </div>
            </div>
        </div>
    </div>
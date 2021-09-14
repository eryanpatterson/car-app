<?php require_once('config.php') ?>
<?php require_once( ROOT_PATH . '/assets/logic.php') ?>
<?php require_once( ROOT_PATH . '/components/head.php') ?>

<?php $make = getMakeData($_GET['make']); ?>
<?php $cars = getCarsForMake($make['name']); ?>

    <title>Make: <?php echo $make['name'] ?></title>
</head>

<body>
    <div class="container">    
        <div class="navbar">
            <div class="col-sm-2">
                <h1> <?php echo $make['name'] ?> </h1>
            </div>
            <div class="col-sm-2">
                <img src="<?php echo $make['logo'] ?>"
                    alt="<?php echo $make['name'] . ' logo' ?>">
            </div>
        </div>
        <?php foreach ($cars as $car): ?>
            <div class="col-sm-3">
                <a href="<?php echo BASE_URL . 'cars.php?model=' . $car['slug'] ?>">
                    <img
                        src="<?php echo $car['image'] ?>"
                        class="img-thumbnail" alt="<?php echo 'Picture of ' . 
                            $car['make'] . ' ' . $car['model'] ?>"
                    >
                </a>
                <p><?php echo $car['model'] ?></p>
            </div>
        <?php endforeach ?>
    </div>
</body>

<?php require_once('config.php') ?>
<?php require_once( ROOT_PATH . '/assets/logic.php') ?>
<?php require_once( ROOT_PATH . '/components/head.php') ?>

<?php $car = getCarData($_GET['model']); ?>
<?php $car_name = $car['make'] . ' ' . $car['model']; ?>
<?php $images = getCarImages($car['slug']); ?>

    <title>Car Compare: <?php echo $car_name ?></title>
</head>

<body>
    <div class="container">
        <div class="page-header">
            <h1> <?php echo $car_name ?> </h1>
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
    </div>
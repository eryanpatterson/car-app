<?php require_once('config.php') ?>
<?php require_once( ROOT_PATH . '/assets/logic.php') ?>
<?php require_once( ROOT_PATH . '/components/head.php') ?>

<?php $make = getMakeData($_GET['make']); ?>
<?php $name = $make['make_name']; ?>
<?php $logo = $make['logo']; ?>
<?php $cars = getCarsForMake($name); ?>

    <title>Make: <?php echo $make['make_name'] ?></title>
</head>

<body>
    <?php include( ROOT_PATH . '/components/navbar.php'); ?>

    <div class="container">    
        <div class="row">    
            <div class="col-sm-6">
                <h1 class="name"> <?php echo $name ?> </h1>
            </div>
            <div class="col-sm-6 logo">
                <img src="<?php echo $logo ?>"
                    alt="<?php echo $make['make_name'] . ' logo' ?>"
                >
            </div>
        </div>        
        <?php include( ROOT_PATH . '/components/cars.php'); ?>
    </div>
</body>

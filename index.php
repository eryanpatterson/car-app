<?php require_once('config.php') ?>
<?php require_once( ROOT_PATH . '/assets/logic.php') ?>
<?php require_once( ROOT_PATH . '/components/head.php') ?>

<?php $makes = getMakes(); ?>
    <title>Car Compare: Home</title>
</head>

<body>
    <?php $test = getenv("TEST_VAR"); ?>
        
    <?php include( ROOT_PATH . '/components/navbar.php') ?>
    <div class="container">
        <h1><?php echo $test;?></h1>
        <div class="heading text-center">
            <h2>Browse by make or style.</h2>
        </div>
        <div class="main">
        <?php foreach ($makes as $make): ?>
            <div class="col-sm-4 icon">
                <a href="<?php echo BASE_URL . 'makes.php?make=' . $make['slug'] ?>">
                    <img 
                        src="<?php echo $make['logo'] ?>"
                        class="img-thumbnail" alt="<?php echo $make['make_name'] . ' logo' ?>"    
                    >
                </a>
            </div>
        <?php endforeach ?>
        </div>
    </div>
</body>
</html>
<?php require_once('config.php') ?>
<?php require_once( ROOT_PATH . '/assets/logic.php') ?>
<?php require_once( ROOT_PATH . '/components/head.php') ?>

<?php $makes = getMakes(); ?>
    <title>Car Compare: Home</title>
</head>

<body>
    <div class="container">
        <div class="jumbotron text-center">
            <h1>Car Compare</h1>
            <p>Browse by make or style.</p>
        </div>
        <div class="main">
        <?php foreach ($makes as $make): ?>
            <div class="col-sm-4 icon">
                <a href="<?php echo BASE_URL . 'makes.php?make=' . $make['slug'] ?>">
                    <img 
                        src="<?php echo $make['logo'] ?>"
                        class="img-thumbnail" alt="<?php echo $make['name'] . ' logo' ?>"    
                    >
                </a>
            </div>
        <?php endforeach ?>
        </div>
    </div>
</body>
</html>
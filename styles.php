<?php require_once('config.php') ?>
<?php require_once( ROOT_PATH . '/assets/logic.php') ?>
<?php require_once( ROOT_PATH . '/components/head.php') ?>

<?php $style = getStyleData($_GET['style']); ?>
<?php $cars = getCarsForStyle($style['style_name']); ?>
    
    <title><?php echo $style['style_name'] . 's'?></title>
</head>

<body>
    <?php include( ROOT_PATH . '/components/navbar.php') ?>
    <div class="container">
        <div class="row">    
            <div class="col-sm-6">
                <h1 class="name"> <?php echo $style['style_name'] . 's' ?> </h1>
            </div>
        </div>        
        <?php include( ROOT_PATH . '/components/cars.php'); ?>
    </div>
</body>
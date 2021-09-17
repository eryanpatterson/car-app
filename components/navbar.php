<?php $nav_makes = getMakes(); ?>
<?php $nav_styles = getStyles(); ?>

<div class="navbar navbar-expand-lg navbar-light">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="home" href="<?php echo 'index.php' ?>">car compare</a>
        </div>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">
                        Makes <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <?php foreach($nav_makes as $nav_make): ?>
                            <li>
                                <a class="dropdown-item" href="<?php echo '/makes.php?make=' . $nav_make['slug']?>">
                                    <?php echo $nav_make['make_name'] ?>
                                </a>
                            </li>
                        <?php endforeach ?>
                    </ul>
                </li>
                <li class="dropdown">
                    <a class="dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">
                        Styles <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <?php foreach($nav_styles as $nav_style): ?>
                            <li>
                                <a class="dropdown-item" href="<?php echo '/styles.php?style=' . $nav_style['slug']?>">
                                    <?php echo $nav_style['style_name'] ?>
                                </a>
                            </li>
                        <?php endforeach ?>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
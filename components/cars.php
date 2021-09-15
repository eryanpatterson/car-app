<?php foreach ($cars as $car): ?>
    <div class="col-sm-4 car">
        <div class="thumbnail">
            <a href="<?php echo BASE_URL . 'cars.php?model=' . $car['slug'] ?>">
                <img
                    src="<?php echo $car['image'] ?>"
                    clas="" alt="<?php echo 'Picture of ' . 
                        $car['make'] . ' ' . $car['model'] ?>"
                >
            </a>
        <p><?php echo $car['model'] ?></p>
        </div>
    </div>
<?php endforeach ?>
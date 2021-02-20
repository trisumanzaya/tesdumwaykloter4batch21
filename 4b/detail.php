<?php
require 'functions.php';

$id = isset($_GET['id']) ? (int) $_GET['id'] : null;
$data = query("SELECT * FROM cars
LEFT JOIN brand
ON
cars.brand_id=brand.id WHERE cars.id = {$_GET['id']}")[0];
if (!isset($selectedQty)) {
  $selectedQty=$data['stock'];
}
if (isset($_POST['qty-plus'])) {
  var_dump($selectedQty);
  $_GET['qty'] = $selectedQty;
  $selectedQty++;
}
if (isset($_POST['qty-min'])) {
  var_dump($selectedQty);
  $selectedQty--;
}
if (isset($_POST["update-cars"])) {
  updateStock($_POST, $_GET['id']);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/detail.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Details</title>
    <style>
    .btn {
  border: 1px solid #9F9F9F;
  width: 54px;
  font-family: Poppins;
  font-size: 25px;
  font-style: normal;
  font-weight: 900;
  line-height: 38px;
  letter-spacing: 0em;
  text-align: center;
  color: #6A4029;
  border-radius: 10px;
}
.form-control {
  border: 1px solid #9F9F9F;
  height: 100%;
  font-family: Poppins;
  font-size: 25px;
  font-style: normal;
  font-weight: 700;
  line-height: 38px;
  letter-spacing: 0em;
  text-align: center;
  color: #6A4029;
  background-color: white!important;
}
.form-control:focus {
  border: 1px solid #9F9F9F;
  box-shadow: none;
}
.btn:focus {
  border: 1px solid #9F9F9F;
  box-shadow: none;
  background-color: rgb(245, 245, 245);
}
.btn:hover {
  color: rgba(106, 64, 41, 0.8);
}
.input-group {
  width: 181px;
  height: 63px;
}
.btn-save {
    border: 1px solid #d0cccc;
    color: #D0CCCC;
    font-size: 18px;
    background: black;
    color: #fff;
    border-radius: 12px;
    display: block;
    text-align: center;
    padding: 10px 0px;
    margin-top: 20px;
    /* width: 400px;
    margin-left: 28%; */
}
    </style>
</head>
<body class="container-details">
    <header >
        <header class="navigation">
            <div class="back">
                <a href="./index.php">
                    <img src="https://i.ibb.co/GnGXBMC/back.jpg" alt="back" border="0">
                </a>
            </div>
        </header>
    </header>
    <div class="conten" >
      <section class="detailbook">
        
        <div class="detailhead">
          <img src=<?= $data['image'];?> class="rectangle" >
          <form method="POST">
          <a style= "font-size: 50px"href="#"><?=$data['name'];?></a>
            <div class="title-book">
                <h5><?= $data['price']; ?></h5>
                <h5><?= 'Stock: '. $data['stock']; ?></h5>
                <div class="input-group">
              <div class="input-group-prepend">
                <button class="btn" type="button" onclick="minusAmount()">-</button>
              </div>
              <input id="qty-input" type="text" class="form-control" placeholder=<?= $data['stock'];?> value="<?= $selectedQty;?>" name="stock">
              <div class="input-group-append">
                <button class="btn" type="button" onclick="plusAmount()">+</button>
              </div>
            </div>
            <button type="submit" class="btn-save btn-primary" name="update-cars">Save changes</button>
            </form>
            </div>        
        </div>
         <p class>
         <?=$data['description'];?>
        </p>
    </section>
    
    </div>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
<script>
  
    function plusAmount () {
        let qtyInput = document.getElementById('qty-input');
        qtyInput.value++;
    };

    function minusAmount () {
        let qtyInput = document.getElementById('qty-input');
      if (qtyInput.value > 0) {
        qtyInput.value--;
      }
    }
</script>
</html>


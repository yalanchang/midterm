<?php
require_once "./connect.php";
require_once "./Utilities.php";

if(!isset($_POST["id"])){
  echo "不要再從網址使用 do 系列的檔案了, 罷脫";
  exit;
}

if(!isset($_POST["category"])){
  alertAndBack("請選擇分類");
  exit;
}
if(!isset($_POST["description"])){
  alertAndBack("請填寫產品描述");
  exit;
}
if(!isset($_POST["style"])){
  alertAndBack("請選擇風格");
  exit;
}
if(!isset($_POST["quantity"])){
  alertAndBack("請選擇風格");
  exit;
}
if(!isset($_POST["price"])){
  alertAndBack("請選擇價錢");
  exit;
}
$required = ["name", "description","category","quantity","style"];
$wordings = ["請填寫名稱", "請填寫產品描述","請選擇分類","請選擇數量","請選擇風格"];

foreach($required as $index => $value){
  if($_POST[$value] == ""){
    echo $wordings[$index];
    goBack();
    exit;
  }
}

$img = "";
if($_FILES["imgFile"]["error"] == 0){
  $timestamp = time();
  $ext = pathinfo($_FILES["imgFile"]["name"], PATHINFO_EXTENSION);
  $newFile = "{$timestamp}.{$ext}";
  $file = "./uploads/{$newFile}";
  if(move_uploaded_file($_FILES["imgFile"]["tmp_name"], $file)){
    $img = $newFile;
  }
}
$id = $_POST["id"];
$name = htmlspecialchars($_POST["name"]);
$category = $_POST["category"];
$description = htmlspecialchars($_POST["description"]);
$style = htmlspecialchars($_POST["style"]);
$price = floatval($_POST["price"]);
$quantity = intval($_POST["quantity"]);
$product_id=$_POST["msgID"];


$sql = "UPDATE `products` SET `name` = ?, `category_id` = ?,`description`=? ,`style`=?,`price`=?,`quantity`=? WHERE `id` = ? ";
$values = [$name,$category,$description,$style,$price,$quantity,$id];
try {
  $stmt = $pdo->prepare($sql);
  $stmt->execute($values);
} catch (PDOException $e) {
  echo "商品更新錯誤: {{$e->getMessage()}}";
  exit;
}

if($img !== ""){
  $sqlImg = "SELECT `img` FROM `product_img` WHERE `product_id` = ?";
  try{
        $stmtImg = $pdo->prepare($sqlImg);
        $stmtImg->execute([$product_id]);
        $rowOldImg = $stmtImg->fetch(PDO::FETCH_ASSOC);
        if($rowOldImg){
            $path = "./uploads/{$rowOldImg["img"]}";
            if(file_exists($path)){
                unlink($path);
            }
        }

        // 更新圖片表
        $sqlUpdateImg = "UPDATE `product_img` SET `img` = ? WHERE `product_id` = ?  LIMIT 1";
        $stmtUpdateImg = $pdo->prepare($sqlUpdateImg);
        $stmtUpdateImg->execute([$img, $product_id]);

    } catch (PDOException $e) {
        echo "圖片更新錯誤: {{$e->getMessage()}}";
        exit;
    }
  }
echo "更新資料成功";
timeoutGoBack(5);



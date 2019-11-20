<?php
$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
echo $target_file."<br>";
$uploadOk = 1;
$imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image
if(isset($_POST["submit"])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 1;
    }
}
// Check if file already exists
if (file_exists($target_file)) {
    echo "<br>Lo siento, el archivo ya existe.";
    $uploadOk = 0;
}
// Check file size
if ($_FILES["fileToUpload"]["size"] > 50000000) {
    echo "<br>Lo siento, tu archivo es muy grande.";
    $uploadOk = 0;
}
// Allow certain file formats
if( $imageFileType != "pdf" && $imageFileType != "xlsx" && $imageFileType != "xls" && $imageFileType != "docx" && $imageFileType != "pptx") {
    echo "Lo siento, solo archivos PDF & XLS & DOC & PPT Son permitidos.";
    $uploadOk = 0;
}
// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Lo siento, su archivo no fué cargado ";
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
        echo "El archivo". basename( $_FILES["fileToUpload"]["name"]). " ha sido cargado.";
    } else {
        echo "Lo siento, ocurriò un error al cargar tu archivo.";
    }
}
?> 
<?php

include ("db_connection.php");

// Upload Video
if(isset($_POST['upload_video'])) {
    if(!empty($_FILES)){
        
        $fname= $_POST["fname"];                                        //Custom File name input
        $tempfile = $_FILES["file"]["tmp_name"];                         //Temporary file location on server
        $type = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);   //File extention
        $name = $fname . '.' . $type;                                    //Complete file name with extention to be used in API
            
        require('doodstream.php');
        $ds = new DoodstreamAPI();
        $key = "your_api_key";      //Insert API key here
        $ds->Setup($key);
        
        $result = $ds->Upload($tempfile, $type, $name);
        
        echo $result;
    }
    else{
        die('No file uploaded');
    }
} 

// Upload Video Data
if(isset($_POST['video_data'])) {
    $title = $_POST['video_data'];
    $filecode = $_POST['filecode'];
    $download_url = $_POST['download_url'];
    $protected_embed = $_POST['protected_embed'];
    $protected_dl = $_POST['protected_dl'];
    $single_img = $_POST['single_img'];
    $splash_img = $_POST['splash_img'];
    $uploaded = $_POST['uploaded'];
    
    $query = mysqli_query($conn, "INSERT INTO video_data (title, filecode, download_url, protected_embed, protected_dl, single_img, splash_img, uploaded) 
                                    VALUES ('". $title ."', '". $filecode ."', '". $download_url ."', '". $protected_embed ."', '". $protected_dl ."', '". $single_img ."', '". $splash_img ."', '". $uploaded ."')");
    if($query) {
        echo "success";
    }
    else {
        echo "fail";
    }
    
}



?>
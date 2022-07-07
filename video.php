<?php

    include ("config/db_connection.php");

    $url = $_SERVER['REQUEST_URI'];
    $path = parse_url($url, PHP_URL_PATH);
    $pathFragments = explode('/', $path);

    $filecode = end($pathFragments);

?>

<html>
<head>
    <title>Test Embeded Video</title>
</head>

<body>
    
<?php
    $fetch = mysqli_query($conn, "SELECT * FROM video_data WHERE filecode = '". $filecode ."'");
    if(mysqli_num_rows($fetch) > 0) {
        $video_row = mysqli_fetch_array($fetch);
?>
    
    <center>
        <h1><b>Title: </b><?php echo $video_row['title']; ?></h1>
        <a href="<?php echo $video_row['download_url']; ?>" target="_blank" download="<?php echo $video_row['title']; ?>">
            <button style="margin-bottom: 20px; padding: 5px;">Download Video</button>
        </a>
        
        <iframe width="100%" height="100%" src="<?php echo $video_row['protected_embed']; ?>" frameborder="0" allowfullscreen></iframe>
        
    </center>
    
<?php
    }
    else {
        echo '<h1 style="color: red; text-align: center;"><b>No Video Found</b></h1>';
    }

?>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

</body>








</html>

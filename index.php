<html>
<head><title>Test Upload Template Doodstream API</title></head>
<body>
    
    <form enctype="multipart/form-data" action="config/upload.php" id="form" method="post" align="center">
        <div>
            <label>Custom File Name: </label><br>
            <input type="text" placeholder="File Name" name="fname" minlength="3" required/>
        </div>
        <br><br>
        <div>
            <label>Select video: </label><br>
            <input type="file" name="file" accept="video/*" required/><br>
        </div>
        <br>
        <input type="hidden" name="upload_video" />
        <input name="submit" type="submit" value="Upload" id="btn_submit" />
        <p id="api_response"></p>
    </form>
    

    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <script type="text/javascript">
    
        function upload_video_data(title, filecode, download_url, protected_embed, protected_dl, single_img, splash_img, uploaded) {
            $('#api_response').append("");
            $.ajax({  
                url:"config/upload.php",  
                method:"POST",
                data:{video_data: title, filecode: filecode, download_url: download_url, protected_embed: protected_embed, protected_dl: protected_dl, single_img: single_img, splash_img: splash_img, uploaded: uploaded},
                success:function(response){
                    if(response == "success") {
                        $('#api_response').append("Your Can access your video from provided URL: <a href='https://openvideo.net/video/"+ filecode +"' target='_blank' >https://openvideo.net/video/"+ filecode +"</a>");
                    }
                    else {
                        alert('Unable to Upload Video!');
                    }
                }
            });
        }
        
        // File Upload Click Event
        $('#form').on("submit", function(event){
            event.preventDefault();
            $.ajax({
                url: $(this).attr('action'),
                type: "POST",
                data: new FormData(this),
                contentType: false,
                cache: false,
                processData: false,
                beforeSend: function () {
                    $('#btn_submit').attr('disabled','disabled').val('Uploading...');
                },
                success: function(response){
                    $('#btn_submit').removeAttr('disabled').val('Upload');
                    var data = JSON.parse(response);
                    var title = data.result[0].title;
                    var filecode = data.result[0].filecode;
                    var download_url = data.result[0].download_url;
                    var protected_embed = data.result[0].protected_embed;
                    var protected_dl = data.result[0].protected_dl;
                    var single_img = data.result[0].single_img;
                    var splash_img = data.result[0].splash_img;
                    var uploaded = data.result[0].uploaded;
                    
                    upload_video_data(title, filecode, download_url, protected_embed, protected_dl, single_img, splash_img, uploaded);
                },
                error: function(){}
            });
        });

    </script>

</body>
</html>










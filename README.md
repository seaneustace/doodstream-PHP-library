# doodstream-PHP-libraryV2
Unofficial PHP API library for Doodstream.com Version 2<br>
Minimum PHP version : 5.5
Credit: https://github.com/Marchay

I hope this finds you well, I expanded on Marchay's template for a project i was working on. The same Doodstream PHP template with but with a SQL implementation to store and serve these API Post's for end-users :)

## Demo Website

https://openvideo.net

## Initializing
*doodstream.php* needs to be included into the code and initialized using the following way:- 

```php
  require('doodstream.php');
  $key = "your-key-here";
  $ds = new DoodstreamAPI();
  $ds->Setup($key);
  ```
  
## Upload.php

```
$key = "your_api_key";      //Insert API key here
```

## Database

```
// Database configuration  
define('DB_HOST', 'localhost'); 
define('DB_USERNAME', 'username'); //your db_username
define('DB_PASSWORD', 'password'); //your db_password
define('DB_NAME', 'db_name'); //your db_name
```

`video_data` (`id`, `title`, `filecode`, `download_url`, `protected_embed`, `protected_dl`, `single_img`, `splash_img`, `uploaded`)`

Video_data pulled from API POST stored via SQL, served via video.php

## Version 2 Update

* Re-Designed Graphical User Interface (GUI)
* Drag & Drop Video Files
* API requests stored via SQL for functioning file-sharing experience via your custom domain (e.g. example.com/myvideo)
* Progress Bar and Video landing Page with Built-in Doodstream Player & end-user code
* Click-to-copy functionality and much more

## Example Usage

```php
  require('doodstream.php');
  $ds = new DoodstreamAPI();
  $key = "your-key-here";
  $ds->Setup($key);
  $uploads = $ds->List("1", "100");  //Lists the first page of the recent uploads(100 per page as defined)
  print_r($uploads);
```
Example of uploading a file using API can be found inside `example folder`

## Limitations

Please Note: Not stated in the original https://github.com/Marchay/doodstream-PHP-library from marchay there is a limitation with post_max_size with your hosting providers usually this limit is within 250mb-2Gb so please keep this in mind before implementing this solution.

## Functions

Following are the functions supported by the library
###### Account
Get's account Information
```php
$ds->AccountInfo(); // No parameters required
```
Get's report of your account (default last 7 days)
```php
$ds->AccountReport($last); // Optional Parameter:- last - Get repost of last x days
```
Get's DMCA reported files list (500 results per page)
```php
$ds->DMCAList(); // No parameters required
```

###### Upload
Upload Local File to DoodSteam 
```php
$ds->Upload($tempfile, $type, $name); // Parameters(Required):-1) tempfile - Location of the file's temporary location on the server, called using $_FILES['video']['tmp_name']
                                     //                        2) type - Video Extention, called using $_FILES['video']['type'] 
                                    //                         3) name - Name you want to save the video with, needs to full name with extention for example :- Video1.mp4
```
###### Copy or Clone <br>
Copy / Clone your's or other's file
```php
$ds->Copy($file_code, $fld_id(Optional)); // Parameters:- 1)(Required) file_code - File code of the video you want to copy
                                         //               2)(Optional) fld_id - Folder ID to store inside
```

###### Remote Upload
Remote Upload (Add Link)
```php
$ds->RUpload($url, $new_title(Optional)); // Parameters:- 1)(Required) url - URL to remote upload
                                         //               2)(Optional) new_title - Set a custom video title
```
Get Remote Upload List/Queue
```php
$ds->RUploadList(); // No parameters required
```

Get Remote Upload File Status
```php
$ds->RUploadStatus($file_code); // Parameters:- (Required) file_code - File code of the file in Remote Upload Queue
```

Get total & used remote upload slots
```php
$ds->RUploadSlots(); // No parameters required
```

###### Remote Upload Actions

Restart Errors In Remote Upload List/Queue
```php
$ds->RestartErrors(); // No parameters required
```

Clear All Errors In Remote Upload List/Queue
```php
$ds->ClearErrors(); // No parameters required
```

Clear All Pending Files In Remote Upload List/Queue
```php
$ds->ClearAll(); // No parameters required
```

Remove a Specific File from Remote Upload List/Queue
```php
$ds->DeleteCode($file_code); // Parameters:- (Required) file_code - File code to be removed from Remote Upload List/Queue
```
###### Manage Folders

Create a folder
```php
$ds->CreateFolder($name, $parent_id(Optional)); // Parameters:- 1)(Required) name - Name of the folder to be created
                                               //               2)(Optional) parent_id - Parent folder ID
```

Rename a folder
```php
$ds->RenameFolder($fld_id, $name); // Parameters:- 1)(Required) fld_id - Folder ID
	                          //               2)(Required) name - New name of the folder
```

###### Manage Files

Get List of Videos Uploaded with info
```php
$ds->List($page, $per_page, $fld_id(Optional)); // Parameters:- 1)(Required) page - Pagination , page number from which results have to shown (1 for the most recent uploads; Ascending Order followed)
	                                              //        2)(Required) per_page - Max videos per page (Cannot be more than 200)
	                                             //         3)(Optional) fld_id - Show videos inside a specific folder 
```

Check status of an uploaded file
```php
$ds->FileStatus($file_code); // Parameters:- 1)(Required) file_code - File Code
```

Get File Info
```php
$ds->FileInfo($file_code); // Parameters:- 1)(Required) file_code - File Code
```

Get file splash, single or thumbnail image
```php
$ds->FileImage($file_code); // Parameters:- 1)(Required) file_code - File Code
```

Rename a file
```php
$ds->FileRename($file_code, $name); //Parameters:- 1)(Required) file_code - File Code
                                   //              2)(Required) name - New File Name
```

Search your files
```php
$ds->Search($search_term); // Parameters:- 1)(Required) search_term - Search term
```


###### Extras 

Remote Splash/Single Image (Functions returns embed link with added parameters)
```php
$ds->CustomEmbedImage($code, $imgurl, $protected(Optional)); // Parameters:- 1)(Required) code/url - File code of the video OR insert an embed url of the video in the parameter(If using a url, make sure it includes https://, do not pass protected embed link)
                                                            //                2)(Required) imgurl - URL of the image you want to set as the splash/single image
							   //                 3)(Optional) protected - Return protected embed url if set this parameter to 1, defaults to Null/Static URL if not set. 
```

Remote subitles (custom subtitles; Functions returns embed link with added parameters)
```php
$ds->RemoteSubtitles($code, $c1_file, $c1_label); // Parameters:- 1)(Required) code/url - File code of the video OR insert an embed url of the video in the parameter(If using a url, make sure it includes https://, do not pass protected embed link)
                                                 //                2)(Required) c1_file - Subtitle URL (srt or vtt)
					        //                 3)(Required) c1_label - Subtitle language or any lable
```

Remote subtitle JSON (Load multiple subtitles via URL in JSON format; Functions returns embed link with added parameters)
```php
$ds->RemoteJSONSubtitles($code, $subtitle_json); // Parameters:- 1)(Required) code/url - File code of the video OR insert an embed url of the video in the parameter(If using a url, make sure it includes https://, do not pass protected embed link)
                                                //                2)(Required) subtitle_json - Multiple subtitle in JSON format  (Look at https://doodstream.com/api-docs#remote-subtitle-json for example)
```

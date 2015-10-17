# apple-photos-upload
A folder action for moving photos in to Apple Photos.

This was orginally developed by @natcl however I can't seem to find the orginal repo now. 

To set this up when you export the photos put the name of the album in the photo file name like this:

[album name] -- [flile name].jpg
Family Pictures -- img0001.jpg

The " -- " is what the script looks for to find the album name and then looks for that album in Photos, if it exists it then the photos are loaded into the existing album, if it doesn't exist then a new one is created and the photos are loaded into it. 


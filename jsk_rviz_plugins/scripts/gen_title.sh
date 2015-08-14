#!/bin/bash
# ./gen_title.sh input.movie output.png title description

function gen_title()
{
size=$(mediainfo mediainfo --Inform="Video;%Width%x%Height%" $1)
# convert -size $size xc:white -pointsize 60 -fill "#444" -gravity NorthWest -draw "text 50, 100 '$3'" -draw "line 50,170 800,170" -pointsize 45  -draw "text 50,300 '$4'" $2
#convert -size $size xc:"#fdf6e3" -pointsize 60 -fill "#2aa198" -gravity NorthWest -draw "text 50, 100 '$3'" -draw "line 50,170 800,170" -pointsize 45 -fill "#073642" -draw "text 50,300 '$4'" $2
convert -size $size xc:"#fdf6e3" -pointsize 60 -fill "#dc322f" -gravity NorthWest -draw "text 50, 100 '$3'" -draw "line 50,170 800,170" -pointsize 45 -fill "#073642" -draw "text 50,300 '$4'" $2

}

gen_title ~/Videos/3dplot.webm bouding_box_array.png "jsk_rviz_plugins::BoundingBoxArray" "jsk_rviz_plugins::BoundingBoxArray is a rviz plugin to visualize
jsk_recognition_msgs/BoundingBoxArray.

It is useful to visualize segmentation result.
"

gen_title ~/Videos/3dplot.webm polygon_array.png "jsk_rviz_plugins::PolygonArray" "jsk_rviz_plugins::PolygonArray is a rviz plugin to visualize
jsk_recognition_msgs/PolygonArray.

It is useful to visualize segmentation result of plane detection.
"

gen_title ~/Videos/3dplot.webm pictogram.png "jsk_rviz_plugins::Pictogram" "jsk_rviz_plugins::Pictogram can visualize pictogram in rviz
like visualization_msgs::Marker::Text.

Pictogram is simple icon to convey simple meaning.

You need to use jsk_rviz_plugins/Pictogram message.

Supported pictgrams are Entypo and FontAwesome.
"

gen_title ~/Videos/3dplot.webm pictogram_array.png "jsk_rviz_plugins::PictogramArray" "jsk_rviz_plugins::PictogramArray is an array version of jsk_rviz_plugins::Pictogram.

You need to use jsk_rviz_plugins/PictogramArray message.
"

gen_title ~/Videos/3dplot.webm camera_info.png "jsk_rviz_plugins::CameraInfo" "jsk_rviz_plugins::CameraInfo can visualize
sensor_msgs/CameraInfo message.
CameraInfo is visualized as a square pyramid.

It is useful to visualize Field-of-View of robot.

You can also paste image as bottom texture.
"

gen_title ~/Videos/3dplot.webm overlay_image.png "jsk_rviz_plugins::OverlayImage" "jsk_rviz_plugins::OverlayImage can overlay
2-D image on rviz.

You need to use sensor_msgs/Image.
"

gen_title ~/Videos/3dplot.webm ovelray_text.png "jsk_rviz_plugins::OverlayText" "jsk_rviz_plugins::OverlayText can overlay text on rviz.

You need to use jsk_rviz_plugins/OverlayText message.
"

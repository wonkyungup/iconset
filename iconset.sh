#!/bin/bash

icon_name="icon"
if [ -z "$1" ]; then
    echo "Enter the path to the icon file:"
    read -r icon_path
else
    icon_path="$1"
fi

if [ ! -f "$icon_path" ]; then
    echo "Invalid path: $icon_path"
    exit 1
fi

image_width=$(sips -g pixelWidth "$icon_path" | grep -o '[0-9]*$')
image_height=$(sips -g pixelHeight "$icon_path" | grep -o '[0-9]*$')

if [ "$image_width" -ne 1024 ] || [ "$image_height" -ne 1024 ]; then
    echo "Warning: The image entered is not 1024x1024 in quality."
    echo "Use a 1024x1024 image file for better clarity"
fi

icon_file=$(basename "$icon_path")

mkdir icon.iconset
sips -z 16 16     "$icon_path" --out icon.iconset/icon_16x16.png
sips -z 32 32     "$icon_path" --out icon.iconset/icon_16x16@2x.png
sips -z 32 32     "$icon_path" --out icon.iconset/icon_32x32.png
sips -z 48 48     "$icon_path" --out icon.iconset/icon_48x48.png
sips -z 64 64     "$icon_path" --out icon.iconset/icon_32x32@2x.png
sips -z 96 96     "$icon_path" --out icon.iconset/icon_48x48@2x.png
sips -z 128 128   "$icon_path" --out icon.iconset/icon_128x128.png
sips -z 256 256   "$icon_path" --out icon.iconset/icon_128x128@2x.png
sips -z 256 256   "$icon_path" --out icon.iconset/icon_256x256.png
sips -z 512 512   "$icon_path" --out icon.iconset/icon_256x256@2x.png
sips -z 512 512   "$icon_path" --out icon.iconset/icon_512x512.png
cp "$icon_path" icon.iconset/icon_512x512@2x.png
iconutil -c icns icon.iconset

# Create .ico file from .icns
sips -s format bmp icon.iconset/icon_512x512@2x.png --out icon.ico
iconutil -c icns icon.iconset
rm -R icon.iconset

echo "Icon files created: ${icon_file}.icns, ${icon_file}.ico"

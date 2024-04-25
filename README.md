# iconset

Unix System Icon Librarian

## How To Use

Using the "iconset.sh" script inside

## How to run a script
```
> sh iconset.sh $PATH_PNG
> ./iconset.sh $PATH_PNG
```
## Example

```
➜  iconset git:(master) ✗ sh iconset.sh ~/Desktop/test.png
Warning: The image entered is not 1024x1024 in quality.
Use a 1024x1024 image file for better clarity
/Users/$USER/Desktop/test.png
  /Users/$USER/Desktop/iconset/icon.iconset/icon_16x16.png
/Users/$USER/Desktop/test.png
  /Users/$USER/Desktop/iconset/icon.iconset/icon_16x16@2x.png
/Users/$USER/Desktop/test.png
  /Users/$USER/Desktop/iconset/icon.iconset/icon_32x32.png
/Users/$USER/Desktop/test.png
  /Users/$USER/Desktop/iconset/icon.iconset/icon_48x48.png
/Users/$USER/Desktop/test.png
  /Users/$USER/Desktop/iconset/icon.iconset/icon_32x32@2x.png
/Users/$USER/Desktop/test.png
  /Users/$USER/Desktop/iconset/icon.iconset/icon_48x48@2x.png
/Users/$USER/Desktop/test.png
  /Users/$USER/Desktop/iconset/icon.iconset/icon_128x128.png
/Users/$USER/Desktop/test.png
  /Users/$USER/Desktop/iconset/icon.iconset/icon_128x128@2x.png
/Users/$USER/Desktop/test.png
  /Users/$USER/Desktop/iconset/icon.iconset/icon_256x256.png
/Users/$USER/Desktop/test.png
  /Users/$USER/Desktop/iconset/icon.iconset/icon_256x256@2x.png
/Users/$USER/Desktop/test.png
  /Users/$USER/Desktop/iconset/icon.iconset/icon_512x512.png
Icon created: test.png.icns

➜  iconset git:(master) ✗ ls -l
total 1000
-rw-r--r--  1 $USER  staff   1.4K  4 25 14:43 README.md
-rw-r--r--  1 $USER  staff   492K  4 25 14:42 icon.icns
-rwxr-xr-x  1 $USER  staff   1.5K  4 25 14:33 iconset.sh
```

## Cautions for use

1. The sharpest image quality is between 1024x1024.
2. Currently, only ICNS files are created. (ICO file generation is being tested.)

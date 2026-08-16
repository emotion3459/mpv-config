@echo off

for %%a in (
    https://raw.githubusercontent.com/mpv-player/mpv/master/TOOLS/lua/autocrop.lua
    https://raw.githubusercontent.com/po5/trackselect/master/trackselect.lua
    https://raw.githubusercontent.com/Dudemanguy/mpv-manga-reader/master/manga-reader.lua
    https://raw.githubusercontent.com/Artoriuz/ArtCNN/main/GLSL/ArtCNN_C4F32.glsl
) do (
    if /i "%%~xa"==".glsl" (set "dir=shaders") else (set "dir=scripts")
    call curl -sS --create-dirs -o "%%dir%%\%%~nxa" "%%a"
)

echo Updating Finished!
pause

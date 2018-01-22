@echo off
@title QQ_video_transformer
set rootDir=E:\QLDownload\bc354e5158a1f2c207283ebdf750da50\vodcache
set videoDir=E:\QMDownload

for /d %%f in (%rootDir%\*) do (
	echo %%f , ready to transform............
	cd %%f
	if exist "*.tpt" (
		for /f "delims=\" %%a in ('dir /b *.tpt') do (copy/b *.tdl %videoDir%\QQ_video_%%~na.mp4)
	) else (
		copy/b *.tdl %videoDir%\QQ_video_last.mp4
	)	
	echo transform suceess!
)
cd %videoDir%
echo done.
pause

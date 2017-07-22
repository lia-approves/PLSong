cd ~/cmptg130e
cd Ada_PL/gnat-gpl-2016-x86_64-linux-bin/bin
./gnatmake -q aplsong.adb
./aplsong
cd ../../../

echo Bash ties up and throws into the mountains everything.

cd D_PL/tango-0.99.8-bin-linux-dmd.1.041
./bin/dmd DPlSong.d
./DPlSong
cd ../../

cd Fortran_PL
gfortran FPlSong.f95
mv a.out FPlSong
./FPlSong
cd ../

cd Go_PL/go
export GOROOT=~/cmptg130e/Go_PL/go
./bin/go run GPlSong.go
cd ../../

cd Java_PL/jdk1.8.0_131
javac JPlSong.java
java JPlSong
cd ../../

cd Lua_PL/lua-5.3.4
./install/bin/lua LPlSong.lua
cd ../../

cd Python_PL
python PPlSong.py
cd ../

cd Smalltalk_PL/smalltalk-3.2.5
./gst SPlSong.st
cd ../../

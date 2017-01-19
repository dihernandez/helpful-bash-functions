alias athena_login="ssh athena.dialup.mit.edu -X -l dianah13"
alias clang_32asm="clang -m32 -S"
alias compile_analyzer="g++ -std=c++0x example.cpp -o compiled_analyzer"
alias compile_picture_analyzer="g++ -o pictureAnalyzerMain.out pictureAnalyzerMain.cpp -O2 -lm -lpthread -I/usr/X11R6/include -L/usr/X11R6/lib -lm -lpthread"
alias gotogo="cd $GOPATH/src/drartemis"
alias findme="pkg-config --cflags"
alias reload="source ~/.bash_profile"
alias arm_compile="clang armv5-none-eabi"
alias reset_camera="sudo killall VDCAssistant"
# Sublime Control
alias subl="cd /Applications/Sublime\ Text.app/Contents/MacOS/ && ./Sublime\ Text"
# never use nano
alias nano="subl"
#macvim
alias mvim="/Applications/MacVim.app/Contents/MacOS/Vim"
#eclipse
alias eclipse="cd /Applications/Eclipse.app/Contents/MacOS && ./eclipse -clean -data ~/git/ && cd ~/git/"

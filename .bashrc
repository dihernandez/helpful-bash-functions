vlsiLoggin() {
    computer_chosen=$((1 + RANDOM % 4))
    ssh dianah13@vlsifarm-0${computer_chosen}.mit.edu
}

cppCompile ()
{
    mystr=$1
    cliargs=$2
    mystrlen=${#mystr}-3
    g++ "$1" -o ${mystr:0:mystrlen}"out" $cliargs

}

cCompile ()
{
    mystr=$1
    cliargs=$2
    mystrlen=${#mystr}-1
    gcc "$1" -o ${mystr:0:mystrlen}"out" $cliargs
}

androidBuild()
{
    appname=$1
    ./gradlew assembleDebug
    adb install -r app/build/outputs/apk/app-debug-unaligned.apk
    adb shell am start -n edu.mit.drartemis.${appname}.app/edu.mit.drartemis.${appname}.app.MainActivity
}

function pause(){
   read -p "$*"
}

#this assumes you are in the same directory as the image file you are writing to the usb stick
createBootableUsb()
{
    inputName=$1
    nameEnd=${#inputName}-4
    imageName=${inputName:0:nameEnd}
    imageExtension=${inputName:nameEnd:nameEnd+4}
    echo "before if block result will be" $imageExtension
    if [ "$imageExtension" != ".img" ]
        then
            echo "right after if block"
            DIR=$(pwd)
            echo "image name is " $imageName
            echo "will look for file in " $DIR/$inputName
            hdiutil convert -format UDRW -o $DIR/${imageName}.img $DIR/$inputName
    fi
    beforeUsb="$(diskutil list)"
    echo "beforeUsblist is" $beforeUsb
    pause 'Please insert usb and press a key to continue'
    afterUsb="$(diskutil list)"
    echo "afterUsblist is" $afterUsb
    rmMediaName="$(diff -u <(echo "$beforeUsb") <(echo "$afterUsb") | grep "/dev/disk")"
    rmMediaLen=${#rmMediaName}
    rmMediaName=${rmMediaName:1:rmMediaLen}
    echo "rmMediaName is" $rmMediaName
    diskutil unmountDisk $rmMediaName
    sudo dd if=./${imageName}.img.dmg of=$rmMediaName bs=1m
    echo 'Sucessfully copied file, ejecting now...'
    diskutil eject $rmMediaName
}

avrArduinoBuildBasic () {
    inputFile=$1
    ttyName=$2
    fileNameLen=${#inputFile}-2
    name=${inputFile:0:fileNameLen} 
    avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o ${name}.o ${name}.c 
    avr-gcc -mmcu=atmega328p $name.o -o $name
    avr-objcopy -O ihex -R .eeprom $name ${name}.hex
    avrdude -F -D -V -c arduino -p ATMEGA328P -P /dev/$ttyName -b 115200 -U flash:w:$name.hex
}

clearAllInFile () {
    for file in $1
    do
	rm $file
    done	
}

removeAllBackupFiles () {
    ls -a | grep ".*~" > to_delete.txt 
    clearAllInFile to_delete.txt
}

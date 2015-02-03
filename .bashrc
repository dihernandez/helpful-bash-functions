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
    sudo dd if=$DIR/${imageName}.img.dmg of=$rmMediaName bs=1m
    echo 'Sucessfully copied file, ejecting now...'
    diskutil eject $rmMediaName
}

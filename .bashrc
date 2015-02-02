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

cppCompile ()
{
    mystr=$1
    mystrlen=${#mystr}-3
    g++ "$1" -o ${mystr:0:mystrlen}"out"

}

cCompile ()
{
    mystr=$1
    mystrlen=${#mystr}-1
    gcc "$1" -o ${mystr:0:mystrlen}"out" $2
}

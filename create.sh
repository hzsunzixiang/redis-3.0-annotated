
#DIR=/home/StephenSun/redis-3.0-annotated
DIR=`pwd;`
#set -x

FILE="$DIR/src $DIR/tests $DIR/utils"

find -L  $FILE -name "*.h"  -o -name "*.c" > cscope_my.files

cscope -bkq -i cscope_my.files  -f cscope_my.out

for i in $FILE
do
	cp .vimrc $i
done

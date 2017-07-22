//https://en.wikipedia.org/wiki/Flexible_array_member
//https://gcc.gnu.org/onlinedocs/gcc/Zero-Length.html


// 弹性数组(Flexible array member)  零长数组(Zero-length arrays ) 变长数组(Variable-length array)
// 这里是弹性数组或者零长数组
#include <stdio.h>
struct sdshdr {

    // buf 中已占用空间的长度
    int len;

    // buf 中剩余可用空间的长度
    int free;

    // 数据空间
	char buf[];
};

int main()
{

	printf("sizeof(sdshdr):%ld\n", sizeof(struct sdshdr));
	return 0;
}

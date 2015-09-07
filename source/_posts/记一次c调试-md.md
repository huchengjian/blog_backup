title: 记一次c调试.md
date: 2015-09-07 11:59:12
tags: dev algorithm
---

最近的校招笔试都是各种的算法题，实现上也大都要求C/C++的实现。可是天了噜，c语言除本科学过后，参加过一两次的比赛外，基本就没再碰过。这不，为了这堆算法题还得捡起来。

这不，今天参加xx家的一次线上模拟笔试，有看似一道常规的算法题。由于对C语法的不熟悉，硬是跳了半小时才算通过。现将题和解答摘录如下，算是纪念这调试的半小时吧。

question:
Given a string, remove spare space at the front and the end of string, for the space inside the string keep only one space.

eg:
Given  "  I love  you!  "
return "I love you!"

算法思想比较常规，直接贴参考解答吧。

```C
char* formatString(char *sourceString) {
    char* newString = sourceString;
    char * start = newString;

    int space_flag = 0;
    while(*sourceString != '\0'){
        if(*sourceString == ' '){
            if(!space_flag){
                *newString = ' ';
                newString++;
            }
            space_flag = 1;
        }
        else{
            *newString = *sourceString;
            space_flag = 0;
            newString++;
        }
        sourceString++;
    }

    if(*start == ' '){
        start ++;
    }

    if(space_flag){
        *--newString = '\0';
    }
    else{
        *newString = '\0';
    }
    return start;
}
```

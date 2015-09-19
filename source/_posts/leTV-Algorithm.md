title: 数组中最小未出现的正整数
date: 2015-09-20 02:40:36
tags: school enrollment
---

又是一道没有答出来的算法题，如下：

面试题#给定一个无序的整数数组，怎么找到第一个大于0，并且不在此数组的最小整数。比如[1,2,0] 返回 3, [3,4,-1,1] 返回 2。最好能O(1)空间和O(n)时间。

```java
public int findMinMiss(int[] a, int n) {

		if (n==0) {
			return 1;
		}

		for(int i = 0;i<n;i++){
			while(a[i]>0 && a[i]<=n && a[i] != i+1&&a[i]!=a[a[i]-1]){
				int temp = a[a[i]-1];;
				a[a[i]-1] = a[i];
				a[i] = temp;
			}
		}

		int i = 0;
		for ( ;i < a.length; i++) {
			if (a[i]!=i+1) {
				break;
			}
		}
		return i+1;

}
```

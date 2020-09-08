# top+jstack 定位CPU过高

前言：系统环境: CentOS 7.2.1511 | JDK 1.8.0_231

### top 查看系统资源使用情况

```shell
top -c
```

![](https://images.cnblogs.com/cnblogs_com/mworld/1798392/o_200908070534top%20-c.png)

### 获取CPU使用占比最高的进程号

注：

①可以使用 shift + p (按照CPU使用占比倒叙排)，shift +m (内存使用占比倒叙排)

②使用 top -Hp $PID ,例如这里的PID为28657 ，进行线程跟踪

```shell
top -Hp 28657
```



![](https://images.cnblogs.com/cnblogs_com/mworld/1798392/o_200908070548top%20-Hp.png)

### 使用jstack将占用CPU过高的PID的堆栈信息输出到指定文件

```shell
jstack -l 28658 > ./28658.stack  # 这里在当前目录，将内容写入到 28658.stack文件中，文件名及其后缀任意，能够起到标识作用即可
```



### 转换十六进制的PID

```shell
> printf '%x \n' 28658
> 6ff2
```

### 根据上述的十六进制PID，在文件中定位具体的堆栈信息

```shell
cat 28658.stack |grep '6ff2' -C 10  # -C 10 的含义是从定位行开始，显示它下面的10行记录
```


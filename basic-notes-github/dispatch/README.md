# 调度
## 五个调度原则
### CPU利用率：调度程序应确保 CPU 是始终匆忙的状态，这可提高 CPU 的利用率
### 系统吞吐量：吞吐量表示的是单位时间内 CPU 完成进程的数量，长作业的进程会占用较长的 CPU 资源，因此会降低吞吐量，相反，短作业的进程会提升系统吞吐量
### 周转时间：周转时间是进程运行和阻塞时间总和，一个进程的周转时间越小越好
### 等待时间：这个等待时间不是阻塞状态的时间，而是进程处于就绪队列的时间，等待的时间越长，用户越不满意
### 响应时间：用户提交请求到系统第一次产生响应所花费的时间，在交互式系统中，响应时间是衡量调度算法好坏的主要标准

## 单 核CPU系统中常见的调度算法
### 1、先来先服务算法(First Come First Served,FCFS)：每次从就绪队列选择最先进入队列的进程，然后一直运行，直到进程退出或被阻塞，才会继续从队列中选择第一个进程接着运行

### 2、最短作业优先调度算法(Shortest Job First,SJF)：优先选择运行时间最短的进程来运行，这有助于提高系统的吞吐量

### 3、高响应比优先调度算法(Highest Response Ratio Next,HRRN)：每次进行进程调度时，先计算「响应比优先级」，然后把「响应比优先级」最高的进程投入运行

### 4、时间片轮转调度算法(Round Robin,RR)：每个进程被分配一个时间段，称为时间片（Quantum），即允许该进程在该时间段中运行，如果时间片用完，进程还在运行，那么将会把此进程从 CPU 释放出来，并把 CPU 分配另外一个进程；如果该进程在时间片结束前阻塞或结束，则 CPU 立即进行切换。

### 5、最高优先级调度算法(Highest Prority First,HPF)：从就绪队列中选择最高优先级的进程进行运行.

### 6、多级反馈队列调度算法(Multilevel Feedback Queue)：

- 设置了多个队列，赋予每个队列不同的优先级，每个队列优先级从高到低，同时优先级越高时间片越短
- 新的进程会被放入到第一级队列的末尾，按先来先服务的原则排队等待被调度，如果在第一级队列规定的时间片没运行完成，则将其转入到第二级队列的末尾，以此类推，直至完成
- 当较高优先级的队列为空，才调度较低优先级的队列中的进程运行。如果进程运行时，有新进程进入较高优先级的队列，则停止当前运行的进程并将其移入到原队列末尾，接着让较高优先级的进程运行
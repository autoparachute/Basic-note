#同步与互斥
##竞争与协作
###1、互斥的概念
####一个线程在临界区执行时，其他线程应该被阻止进入临界区

###2、同步的概念
####并发进程/线程在一些关键点上可能需要互相等待与互通消息，这种相互制约的等待与互通信息称为进程/线程同步

---
##原子操作指令：原子操作就是要么全部执行，要么都不执行，不能出现执行到一半的中间状态
####例子
	int TestAndSet(int *old_ptr, int new)
	{
		int old=*old_ptr;
		*old_ptr=new;
		return old;
	}
####1、把old_ptr更新为new的新值
####2、返回old_ptr的旧值

---
##互斥与同步的实现
###1、锁：加锁、解锁操作
	typedef struct lock_t{
		int flag;
	} lock_t;

	void init(lock_t *lock)
	{
		lock->flag = 0;
	}	

	void lock(lock_t *lock)
	{
		while(TestAndSet(&lock->flag,1)==1);
	}

	void unlock(lock_t *lock)
	{
		lock->flag = 0;
	}
####第一个场景是，首先假设一个线程在运行，调用 lock()，没有其他线程持有锁，所以 flag 是 0。当调用 TestAndSet(flag, 1) 方法，返回 0，线程会跳出 while 循环，获取锁。同时也会原子的设置 flag 为1，标志锁已经被持有。当线程离开临界区，调用 unlock() 将 flag 清理为 0。
####第二种场景是，当某一个线程已经持有锁（即 flag 为1）。本线程调用 lock()，然后调用 TestAndSet(flag, 1)，这一次返回 1。只要另一个线程一直持有锁，TestAndSet() 会重复返回 1，本线程会一直忙等。当 flag 终于被改为 0，本线程会调用 TestAndSet()，返回 0 并且原子地设置为 1，从而获得锁，进入临界区。
###很明显，当获取不到锁时，线程就会一直 wile 循环，不做任何事情，所以就被称为「忙等待锁」，也被称为自旋锁（spin lock）

---
###2、信号量：P、V操作
	typedef struct sem_t{
		int sem;	//资源个数
		queue_t *q;		//等待队列
	}sem_t;

	//初始化信号量
	void init(sem_t *s, int sem)
	{
		s->sem=sem;
		queue_init(s->q);
	}

	//P操作
	void P(sem_t *s)
	{
		s->sem--;
		if(s->sem<0)
		{
			1、保留调用线程CPU现场
			2、将该线程的TCB插入到S的等待队列
			3、设置该线程为等待状态
			4、执行调度程序
		}
	}
	
	\\V操作
	void V(sem_t *s)
	{
		s->sem++;
		if(s->sem<=0)
		{
			1、移出S等待队列首元素
			2、将该线程的TCB插入就绪队列
			3、设置该线程为就绪状态
		}
	}

##生产者-消费者问题

##哲学家就餐问题

##读者-写者问题

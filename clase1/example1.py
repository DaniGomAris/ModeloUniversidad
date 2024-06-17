'''
from time import perf_counter
from threading import Thread
from task1 import task
    
start_time = perf_counter()

# Create two threads, each one with a task function
t0 = Thread(target=task, args=(0,))
t1 = Thread(target=task, args=(1,))

# Start the threads
t0.start()
t1.start()

# Wait for the threads to complete
t0.join()
t1.join()

end_time = perf_counter()

print("Time: {0}".format(end_time-start_time))

Exercise 1
Repeat the previous example but using eight threads (Hint: the Thread objects can be stored in a python list):


'''
from time import perf_counter
from threading import Thread
from task1 import task
    
start_time = perf_counter()

# Create 8 threads, each one with a task function
threads = []
for i in range(8):
    threads.append(Thread(target=task, args=(i,)))

# Start the threads
for thr in threads:
    thr.start()

# Wait for the threads to complete
for thr in threads:
    thr.join()

end_time = perf_counter()

print("Time: {0}".format(end_time-start_time))
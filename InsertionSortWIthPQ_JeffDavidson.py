#jeff davidson
#homework 4
# insertion sort program using pq

class priorityQueue():
    def __init__(self):
        self.queue = []

    def isEmpty(self): # check if empty
        return len(self.queue) == 0

    def insert(self,element): # insert element from sequence into pq
        if self.isEmpty(): # check if empty to add first element into pq
            self.queue.append(element)
        else:                          #if not empty compare values to place element in right index
            for i in range(0, len(self.queue)):
                if self.queue[i] > element: # if new element is less than find the spot it belongs at
                    temp = self.queue[i]
                    self.queue[i] = element
                    self.queue.insert(i+1,temp)
                    break
                if self.queue[len(self.queue)-1] < element: # if new element is larger than last element add it at the end
                    self.queue.append(element)

        print(self.queue) #print to show that it is inserting as a sorted list

    def delete(self): # delete from pq and add to sequence
        temp = self.queue[0]
        del(self.queue[0])
        return temp

#start pq and sequence
queue = priorityQueue()
sequence = [7,4,8,2,5,3,9]

print(sequence)
n = len(sequence)

# insert into pq
for x in range(0,n):
    temp = sequence[0] #remove from sequence
    del(sequence[0])
    queue.insert(temp)

#show sequence is empty
print(sequence)

#insert back into sequence
for x in range(0,n):
   sequence.append(queue.delete())


#print finished sorted
print(sequence)








#queue.printQueue()

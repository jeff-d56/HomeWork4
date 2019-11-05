#jeff davidson
#tree traversal inorder and preorder

class newNode: #creates a new node to be used to create a tree
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

# recursive function to tell where a node is suppose to be pretty much builds the tree to be traversed
def traversed(a, i, root):
    if i < len(a): #if i is greater than length of entered array
        temp = newNode(arr[i]) # store current value in temp
        root = temp # set root of new node to the value of temp
        root.left = traversed(a, (2 * i) + 1, root.left) #recure to set value of left node

        root.right = traversed(a, (2 * i) + 2, root.right) #recure to set value of right node
    return root

# function to traverse the tree inorder
def inOrder(root):
    if root != None: #base case
        inOrder(root.left) #recure to the left of the root
        if root.val != "null": # check root before print
            print(root.val, end=" ") #prints value
        inOrder(root.right) #recure to the right of the root

#function to traverse tree in pre order
def preOrder(root):
        if root != None: #base case
            if root.val != "null": # check to make sure root is not null
                print(root.val, end=" ") #print root value
            preOrder(root.left) # recure left of root
            preOrder(root.right) # recure right of root



#main
arr = [1,"null",2,"null","null",3] #array with nulls as place holder i couldnt figure out how to do it without them but you said in an email this was fine so i left it as is
n = len(arr) #length of entered array
root = None # set root to none
root = traversed(arr,0,root) #set root to what is returned from the function that builds the tree

#print traverse in these orders
inOrder(root)
print() #new line
preOrder(root)

n = 6
a = 10
b = 10
s = 0.6
w = 0.6
row = 4*n+1

edge = [0]*row
for i in range(len(edge)):
    edge[i] = [0,0]
# np.zeros((dimension, 2), dtype=int)

#  edge = [[0 for col in range(2)] for row in range(dimension)]
# edge = [[0] * 2] * dimension

# First loop is unique

edge[0:5] = [
    [ -(a-w)/2 , (b-w)/2 ],
    [ (a-w)/2 , (b-w)/2 ],
    [ (a-w)/2 , -(b-w)/2 ],
    [ -(a-w)/2 , -(b-w)/2 ],
    [ -(a-w)/2 , (b-w)/2-s-w ]
        ]
for i in range(2,n+1):
    k = i-1
    edge[4*k]   = [ -(a-w)/2+(k-1)*(s+w) , (b-w)/2-k*(s+w) ]
    edge[4*k+1] = [ (a-w)/2-k*(s+w) , (b-w)/2-k*(s+w) ]
    edge[4*k+2] = [ (a-w)/2-k*(s+w) , -(b-w)/2+k*(s+w) ]
    edge[4*k+3] = [ -(a-w)/2+k*(s+w) , -(b-w)/2+k*(s+w) ]

edge[4*n] = [ -(a-w)/2+(n-1)*(s+w) , (b-w)/2-n*(s+w) ]
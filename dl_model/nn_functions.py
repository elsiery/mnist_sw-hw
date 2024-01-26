"""

Author: Elsie Rezinold Yedida



"""



import numpy as np



def node(im,w,b,activation):
    z = np.dot(w,im)+b
    if activation=="sigmoid":
        y = sigmoid(z)
    elif activation=="relu":
        y = relu(z)
    else:
        y = z
    return y



def sigmoid(x):
    s = 1/(1+np.exp(-x))
    return s


def relu(x):
    x = np.maximum(x,0)
    return x



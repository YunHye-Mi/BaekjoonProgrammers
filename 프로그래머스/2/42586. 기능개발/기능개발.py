import math

def solution(progresses, speeds):
    answer = []
    f = 0
    P = [math.ceil((100-p)/s) for p, s in zip(progresses, speeds)]
    
    for i in range(len(P)):
        if P[i] > P[f]:
            answer.append(i-f)
            f = i
    answer.append(len(P)-f)
    return answer
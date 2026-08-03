def dfs(numbers, target, res, i):
    if i == len(numbers):
        if res == target:
            return 1
        else:
            return 0
    
    return dfs(numbers, target, res+numbers[i], i+1) + dfs(numbers, target, res-numbers[i], i+1)
    

def solution(numbers, target):
    answer = 0
    
    answer = dfs(numbers, target, 0, 0)
    
    return answer
def solution(numbers):
    num = list(map(str, numbers))
    num.sort(key = lambda x : x*3, reverse=True)
    answer = "".join(num)
    if answer[0] == "0":
        answer = "0"
    return answer
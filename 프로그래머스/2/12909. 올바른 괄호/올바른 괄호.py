def solution(s):
    st = []
    for i in s:
        if i == '(':
            st.append(i)
        else:
            if st and st[-1] == '(':
                st.pop()
            else:
                st.append(i)
    if st:
        return False
    return True
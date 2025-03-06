def truy_cap_phan_tu(tuple_data):
    first_element = tuple_data[0]
    last_element = tuple_data[-1]
    return first_element ,last_element


input_tuple = eval(input("nhap tuple VD 1,2,4: "))
first,last = truy_cap_phan_tu(input_tuple)

print("in phan tu dau tien: ",first)
print("in phan cuoi cung: ",last)


print("Minimum Value: ")
min_n = parse(UInt16, readline())

print("Maximum Value: ")
max_n = parse(UInt16, readline())

highest = -1

for i = min_n:max_n
    sequence_size = 0
    x = i
    while x != 1
        bit_and = (x & 1)
        while (x & 1) == 1
                x = Int64(3*x+1)
                #print(x)
                print("\t")
                if x > highest
                    highest = x
                end
                sequence_size = sequence_size + 2
        end
        while (x & 1) == 0
                x = Int64(x/2)
                #print(x)
                print("\t")
                if x > highest
                    highest = x
                end
                sequence_size = sequence_size + 1
        end
    end
end

print(highest)
print("\t")

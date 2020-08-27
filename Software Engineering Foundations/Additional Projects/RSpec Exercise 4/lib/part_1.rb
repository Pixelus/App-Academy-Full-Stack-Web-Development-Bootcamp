def my_reject(arr, &prc)
    false_elements = []
    arr.each { |ele| false_elements << ele if prc.call(ele) == false }
    false_elements
end

def my_one?(arr, &prc)
    return true if my_reject(arr, &prc).length == arr.length - 1
    false
end

def hash_select(hash, &prc)
    true_hashes = Hash.new 
    hash.each { |k, v| true_hashes[k] = v if prc.call(k, v) == true } 
    true_hashes
end

def xor_select(arr, prc_1, prc_2)
    arr.select do |ele|
        !(prc_1.call(ele) && prc_2.call(ele)) && (prc_1.call(ele) || prc_2.call(ele))
    end
end

def proc_count(value, procs)
    count = 0
    procs.count { |prc| count += 1 if prc.call(value) == true }
    count
end
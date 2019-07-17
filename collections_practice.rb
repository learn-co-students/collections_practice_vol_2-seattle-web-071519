# your code goes here
def begins_with_r(array)
    array.each do |i|
        if i[0] != 'r'
            return false
        end
    end
    return true
end

def contain_a(array)
    array.select do |i|
        i.include?('a')
    end
end

def first_wa(array)
    array.each do |i|
        if i.slice(0,2) == 'wa'
            return i
        end
    end
end

def remove_non_strings(array)
    array.select do |i|
        i.class == String
    end
end

def count_elements(array)
    counter = {}
    array.each do |element|
        if counter.include?(element[:name])
            counter[element[:name]]+=1
        else
            counter[element[:name]] = 1
        end
    end
    new_array = []
    counter.each do |name,count|
        new_array << {:count => count, :name => name}
    end
    return new_array
end

def merge_data(keys, data)
    merged = []
    keys.size.times do |i|
        merged[i] = {}
        name = keys[i][:first_name]
        merged[i][:first_name] = name
        data[0][name].each_pair do |a,b|
            merged[i][a] = b
        end
        merged[i][:motto] = keys[i][:motto]
    end
    return merged
end

def find_cool(cool)
    cool.select do |person|
        person[:temperature] == "cool"
    end
end

def organize_schools(list)
    locations = {}
    list.each do |school,temp|
        location = temp[:location]
        if locations[location] == nil
            locations[location] = []
        end
            locations[location].push(school)
    end
    return locations
end
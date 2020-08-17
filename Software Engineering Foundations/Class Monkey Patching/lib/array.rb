# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        if self == []
            nil
        else
            sorted = self.sort
            smallest = sorted[0]
            largest = sorted[-1]
            largest - smallest
        end
    end

    def average
        if self == []
            nil
        else
            sum = self.sum / 1.0
            numbers_of_elements = self.length / 1.0
            average = sum / numbers_of_elements
        end
    end

    def median
        sorted = self.sort
        middle = sorted.length / 2
        if sorted.length % 2 != 0
            sorted[middle]
        elsif self == []
            nil
        else
            first_middle_element = sorted[middle - 1]
            second_middle_element = sorted[middle]
            average = (first_middle_element + second_middle_element) / 2.0
        end
    end

    def counts
        count = Hash.new(0)
        self.each { |ele| count[ele] += 1 }
        count
    end

    def my_count(value)
        self.counts[value]
    end

    def my_index(value)
        if self.counts[value] == 0
            nil
        else
            self.each_with_index do |ele, i|
                return i if ele.include?(value)
            end
        end
    end

    def my_uniq
        new_arr = self.counts.map { |key, value| key }
    end

    def my_transpose
        array = Array.new(self.length) { Array.new(self.length) }
        self.each_with_index do |ele, i|
            self.each_with_index do |ele, j|
                array[i][j] = self[j][i]
            end
        end
        array
    end
end
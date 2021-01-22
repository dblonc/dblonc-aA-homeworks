def sluggish_octopus(arr)

    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
            if ele2.length > ele1.length && idx2 > idx1
                 return ele2
            else
                 return ele1
            end
        end
    end
end
p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
#=> "fiiiissshhhhhh"

def dominant_octopus(&prc)
    prc ||= Proc.new{|x,y| x <=> y}
    return arr if self.length <= 1
    
    mid = self.length/2
    left = self.take(mid).dominant_octopus(&prc)
    right = self.drop(mid).dominant_octopus(&prc)
    Array.merge(left, right, &prc)
end

def self.merge(left, right, &prc)

    merged = []

    until left.empty? || right.empty?
        case prc.call(left.first, right.first)
        when -1
            merged << left.shift
        when 0
            merged << left.shift
        when 1 
            merged << right.shift
        end
    end

    merged.concat(left)
    merged.concat(right)


    merged
end

['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'].dominant_octopus

def clever_octopus(arr)

    fish = fish[0]

    arr.each do |fishy|
        if fishy.length > fish.length
            fish = fishy
        end
    end
    fish
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(arrow, arr)
    arr.each_with_index do |dir, idx|
        return idx if arrow == dir

    end

end
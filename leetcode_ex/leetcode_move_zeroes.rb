# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
    for i in 0..(nums.length-1)
        if nums[i] == 0
          nums.push(0)
          nums.drop(1)
        end
    end
    nums
end
nums = [0,1,0,3,12]
move_zeroes(nums)


function [isEven] = parityBit (data)
  sum = 0;
  isEven = 0;
  for i = length(data):1
    if data(i) == 1
      sum = sum + 1;
    end
  end
  
  if mod(sum, 2) == 0
    isEven = 1;
  end
  
end

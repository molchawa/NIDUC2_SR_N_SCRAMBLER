
function [isEven] = parityBit (data)
  sum = 0;
  isEven = 0;
  for i = 1:length(data)
    if data(i) == 1
      sum = sum + 1;
    end
  end
  
  if mod(sum, 2) == 0
    isEven = 1;
  end
  
end

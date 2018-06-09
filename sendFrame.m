function frame = sendFrame (data, isAdditive)
  
  
  if isAdditive == true
    scrambledData = coding(data);
  else
    scrambledData = codingMulti(data);
  end
  startFlag = [0 1 0 0 0 1 1 1];
  controlSum = parityBit(data); %w przyszlosci powinno byc tu CRC-8
  frame = [startFlag, scrambledData, controlSum];
end

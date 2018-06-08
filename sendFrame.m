function frame = sendFrame (data)
  
  scrambledData = coding(data);
  startFlag = [0 1 0 0 0 1 1 1];
  controlSum = parityBit(data); %w przyszlosci powinno byc tu CRC-8
  frame = [startFlag, scrambledData, controlSum];
end

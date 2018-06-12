function frame = sendFrame (data, isAdditive, crc)
  
 
  startFlag = [0 1 0 0 0 1 1 1];
  
  
  if isAdditive == true
    scrambledData = coding(data);
  else
    scrambledData = codingMulti(data);
  end
  
  if crc == 0
  frame = [startFlag, scrambledData];
  return;
  end
  
  if crc == 1
  controlSum = parityBit(scrambledData);
  end
  
  if crc == 8
  controlSum = CRC(scrambledData);
  
  end
  
  frame = [startFlag, scrambledData, controlSum];
  
end

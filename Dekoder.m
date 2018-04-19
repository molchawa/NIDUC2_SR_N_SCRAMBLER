if haveFrame(frame) == false
  return;
endif
receivedData = [frame(9:frameLength+8)];
if parityBit(receivedData) != frame(length(frame))
  return;
endif

frameIsBad = false;

receivedData = coding(receivedData);
newData = [newData, receivedData];

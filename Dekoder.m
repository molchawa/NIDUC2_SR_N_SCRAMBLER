if haveFrame(frame) == false
  return;
end
receivedData = [frame(9:frameLength+8)];
if parityBit(receivedData) ~= frame(length(frame))
  return;
end

frameIsBad = false;

receivedData = coding(receivedData);
newData = [newData, receivedData];

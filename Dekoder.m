if haveFrame(frame) == false
  return;
end
receivedData = [frame(9:frameLength+8)];
if parityBit(receivedData) ~= frame(length(frame))
  return;
end

frameIsBad = false;

if isScramblerAdditive == true
  receivedData = coding(receivedData);
else
  receivedData = decodingMulti(receivedData);
end
newData = [newData, receivedData];

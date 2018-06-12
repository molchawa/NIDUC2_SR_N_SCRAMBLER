if haveFrame(frame) == false
  return;
end
receivedData = [frame(9:length(frame))];

if crc == 0
   receivedData = [frame(9:length(frame))];
end


if crc == 1
  if parityBit(receivedData) ~= frame(length(frame))
    return;
  end
  lengRData = length(frame)-1;
  receivedData = [frame(9:length(frame)-1)];
end

if crc == 8
  if crcDividing(receivedData) ~= 0
    return;
   end
   receivedData = [frame(9:length(frame)-8)];
end


frameIsBad = false;

if isScramblerAdditive == true
  receivedData = coding(receivedData);
else
  receivedData = decodingMulti(receivedData);
end
newData = [newData, receivedData];

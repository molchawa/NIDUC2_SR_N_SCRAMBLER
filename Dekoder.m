if haveFrame(frame) == false
  counterWithoutFrame = counterWithoutFrame+1;
  return;
end
counterWithoutFrame = 0;
receivedData = [frame(9:length(frame))];

if crc == 0
   receivedData = [frame(9:length(frame))];
end


if crc == 1
  if parityBit(receivedData) ~= frame(length(frame))
    counterBadFrame = counterBadFrame + 1;
  end
  receivedData = [frame(9:length(frame)-1)];
end

if crc == 8
  if crcDividing(receivedData) ~= 0
    counterBadFrame = counterBadFrame + 1;
   end
   receivedData = [frame(9:length(frame)-8)];
end

if(counterBadFrame > 0 && counterBadFrame < amountBadFrame)
return;
end

frameIsBad = false;
counterBadFrame = 0;

if isScramblerAdditive == true
  receivedData = coding(receivedData);
else
  receivedData = decodingMulti(receivedData);
end
newData = [newData, receivedData];

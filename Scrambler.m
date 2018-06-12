frameLength = 160; % d�ugo�� danych u�ytecznych w ramce
dataSize = 100000; % rozmiar danych wej�ciowych
amountWithoutFrame = 100; %wielko�� charakteryzuj�ca czas, po kt�rym odbiornik zako�czy nas�uchiwanie
amountBadFrame = 10; %maksymalna ilo�� retransmisji uszkodzonej ramki
data = round(rand(1,dataSize)); %dane wej�ciowe
newData = [];% dane wyj�ciowe
transmissionEnd = false;
isScramblerAdditive = false; %true - addytywny, false - multiplikatywny
crc = 1; % 1 - bit parzysto�ci (crc-1), 8 - crc-8, 0 - nic 
% to wy�ej tak dziwnie, bo my�la�em o innych crc jeszce, ale to ju� nie w tym projekcie xD
counterWithoutFrame = 0; %ilo�� nieodebranych ramek
counterBadFrame = 0; %ilo�� wykrytych uszkodzonych ramek
while transmissionEnd == false
  Enkoder;
  frameIsBad = true;
  while frameIsBad
    frame = sendFrame(dataToFrame, isScramblerAdditive, crc);
    %zaklocenia
    Dekoder;
    if counterWithoutFrame >= amountWithoutFrame
      transmissionEnd = true;
    end
  end
end

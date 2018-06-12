frameLength = 160; % d³ugoœæ danych u¿ytecznych w ramce
dataSize = 100000; % rozmiar danych wejœciowych
amountWithoutFrame = 100; %wielkoœæ charakteryzuj¹ca czas, po którym odbiornik zakoñczy nas³uchiwanie
amountBadFrame = 10; %maksymalna iloœæ retransmisji uszkodzonej ramki
data = round(rand(1,dataSize)); %dane wejœciowe
newData = [];% dane wyjœciowe
transmissionEnd = false;
isScramblerAdditive = false; %true - addytywny, false - multiplikatywny
crc = 1; % 1 - bit parzystoœci (crc-1), 8 - crc-8, 0 - nic 
% to wy¿ej tak dziwnie, bo myœla³em o innych crc jeszce, ale to ju¿ nie w tym projekcie xD
counterWithoutFrame = 0; %iloœæ nieodebranych ramek
counterBadFrame = 0; %iloœæ wykrytych uszkodzonych ramek
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

frameLength = 30; % d�ugo�� danych u�ytecznych w ramce
data = zeros(1, 200); %dane wej�ciowe
newData = [];% dane wyj�ciowe
transmissionEnd = false;
isScramblerAdditive = false; %true - addytywny, false - multiplikatywny
crc = 1; % 1 - bit parzysto�ci (crc-1), 8 - crc-8, 0 - nic 
% to wy�ej tak dziwnie, bo my�la�em o innych crc jeszce, ale to ju� nie w tym projekcie xD
licznik=0;
while transmissionEnd == false
  Enkoder;
  licznik=licznik+1
  frameIsBad = true;
  while frameIsBad
    frame = sendFrame(dataToFrame, isScramblerAdditive, crc);
    %zaklocenia
    Dekoder;
  end
end

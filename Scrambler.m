frameLength = 30; % to jest dlugosc ramki bez naglowka (8 bitow) i stopki (1 bit), lacznie 39 bitow
data = zeros(1, 200);
newData = [];%tu beda otrzymane dane
transmissionEnd = false;
isScramblerAdditive = false;
licznik=0;
while transmissionEnd == false
  Enkoder;
  licznik=licznik+1
  frameIsBad = true;
  while frameIsBad
    frame = sendFrame(dataToFrame, isScramblerAdditive);
    %zaklocenia
    Dekoder;
  end
end


%ostatnia ramka powinna byc krotsza, bo przy uzupelnianiu zerami, moze nastapic blad przy odczytywaniu
% w sensie wyjscie jest dluzsze od wejscia
if length(data) <= frameLength
  sub = frameLength-length(data);
  dataToFrame = [data(1:length(data)), zeros(1, sub)]; %uzupelnienie zerami, aby dlugosc ramki sie zgadzala
  transmissionEnd = true;
else
  dataToFrame = [data(1:frameLength)];
end
data = [data(frameLength + 1: length(data))]; % usuwanie wyslanych bitow


%data = coding(data);
      

function newData = coding (data)

  key = [1 0 0 1 0 1 0 1 0 0 0 0 0 0 0]; %klucz zgodny ze standardami u¿ywanymi w DVB
  indexKey = 1;
  indexData = 1;
    while indexData<=length(data)
      xoredBit = xor(key(14), key(15));
      data(indexData) = xor(xoredBit, data(indexData));
      indexData = indexData+1;
      for i = 0:13
        key(15 - i) = key(14 - i);  %to jakieœ dziwne, nie mo¿na zrobiæ for i = 15:2, lol
      end
      key(1) = xoredBit;
    end
      
      newData = data;
      
end

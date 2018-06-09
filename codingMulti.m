
function newData = codingMulti (data)

  key = [1 0 0 1 0 1 0 1 0 0 0 0 0 0 0 1 0 0 1 0 1 0 1]; 
  indexKey = 1;
  indexData = 1;
    while indexData<=length(data)
      xoredBit = xor(key(18), key(23));
      xoredBit = xor(xoredBit, data(indexData));
      data(indexData) = xoredBit;
      indexData = indexData+1;
      for i = 0:21
        key(23 - i) = key(22 - i);  
      end
      key(1) = xoredBit;
    end
      
      newData = data;
      
end

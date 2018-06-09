
function newData = decodingMulti (data)

  key = [1 0 0 1 0 0 0 1 0 0 1 0 0 0 0 1 0 0 0 0 0 0 1]; 
  indexKey = 1;
  indexData = 1;
    while indexData<=length(data)
      xoredBit = xor(key(18), key(23));
      xoredBit = xor(xoredBit, data(indexData));
      newData(indexData) = xoredBit;
      for i = 22:1
        key(i+1) = key(i);  
      end
      key(1) = data(indexData);
      indexData = indexData+1;
    end
      
      
end

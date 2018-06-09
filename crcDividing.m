
function out = crcDividing (data)
  
   indexOfData = length(data) - 7;
   divider = [0 0 0 0 0 0 0 0];
   for i = 1:8
     divider(i) = data(indexOfData);
     indexOfData = indexOfData + 1;
   end
   
  dividerDec = 0;
  for i = 8:1
    dividerDec = dividerDec + divider(i) * 2^(8-i);
  end

  lData = length(data);
  number = 0;
  for i = lData:1
    number = number + data(i)*2^(lData - i);
  end
   out = mod(number, dividerDec);
end

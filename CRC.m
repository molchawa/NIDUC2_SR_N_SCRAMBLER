
function out = CRC (data)
  

  divider = 16*13+5; %0xD5
  number = 0;
  lData = length(data);
  for i = lData:1
    number = number + data(i)*2^(lData - i);
  end
  
  modulo = mod(number, divider);
  
  out = [0 0 0 0 0 0 0 0];
  for i = 8:1
    out(i) = modulo/2;
  end
end
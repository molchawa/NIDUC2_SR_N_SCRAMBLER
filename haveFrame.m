
function [isItFrame] = haveFrame (frame)

isItFrame = false;

if frame(1) ~= 0
  return;
end

if frame(2) ~= 1
  return;
end

if frame(3) ~= 0
  return;
end

if frame(4) ~= 0
  return;
end

if frame(5) ~= 0
  return;
end

if frame(6) ~= 1
  return;
end

if frame(7) ~= 1
  return;
end

if frame(8) ~= 1
  return;
end

isItFrame = true;
end

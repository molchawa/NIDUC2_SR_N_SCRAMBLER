## Copyright (C) 2018 panie
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} coding (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: panie <panie@DESKTOP-F37IOF0>
## Created: 2018-04-18

function newData = coding (data)

  key = [1 0 0 1 0 1 0 1 0 0 0 0 0 0 0]; #klucz zgodny ze standardami u¿ywanymi w DVB
  indexKey = 1;
  indexData = 1;
    while indexData<=length(data)
      xoredBit = xor(key(14), key(15));
      data(indexData) = xor(xoredBit, data(indexData));
      indexData = indexData+1;
      for i = 0:13
        key(15 - i) = key(14 - i);  #to jakieœ dziwne, nie mo¿na zrobiæ for i = 15:2, lol
      endfor
      key(1) = xoredBit;
      endwhile
      
      newData = data;
      
endfunction

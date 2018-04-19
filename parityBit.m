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
## @deftypefn {} {@var{retval} =} parityBit (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: panie <panie@DESKTOP-F37IOF0>
## Created: 2018-04-19

function [isEven] = parityBit (data)
  sum = 0;
  isEven = 0;
  for i = 1:length(data)
    if data(i) == 1
      sum = sum + 1;
    endif
  endfor
  
  if mod(sum, 2) == 0
    isEven = 1;
  endif
  
endfunction

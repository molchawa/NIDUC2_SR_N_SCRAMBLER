%?wicz? gita, potem usun? ~Piotrek
function frame = zak_los_skok (frame)

c_bit=frame; % ciag binarny
c_bit1=c_bit;
dl_c=length(c_bit); %dlugosc 
skok=dl_c/10;
licz=1;
for i=1:skok:dl_c
    przedzial=randi([1 1*skok-1],1,1);
    z=c_bit(i:i+przedzial);
    nz=bsc(z,.05);
    c_bit1(i:i+przedzial)=nz;
end

frame = c_bit1;

end
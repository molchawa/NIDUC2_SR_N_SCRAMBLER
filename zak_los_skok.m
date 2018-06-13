
function frame = zak_los_skok (frame)

c_bit=frame; % ciag binarny
c_bit1=c_bit;
dl_c=length(c_bit); %dlugosc 
skok=floor(dl_c/10);
licz=1;
for i=1:skok:dl_c
    if licz<=10
        przedzial=randi([1 1*skok-1],1,1);
        z=c_bit(i:i+przedzial);
        nz=bsc(z,.05);
        c_bit1(i:i+przedzial)=nz;
    end
    licz = licz + 1;
end

frame = c_bit1;

end
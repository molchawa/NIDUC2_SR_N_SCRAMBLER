
function frame1 = zak_cykl (frame)

 c_bit=frame; % ciag binarny
    c_bit1=c_bit
    dl_c=length(c_bit); %dlugosc 
    skok=round(dl_c/10)
    
    licz=1;
    for i=1:dl_c %zamiana bitow
        if(licz==skok)
            if(c_bit(i)==0)
                c_bit1(i)=1;
            else
                c_bit1(i)=0;
            end
            licz=1;
        else
            licz=licz+1;
        end
    end
end
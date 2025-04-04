function [b,a] = calcHPFCoeffs(fc,fs,Q)
    wc    = 2*pi*fc/fs;
    alpha = sin(wc)/(2*Q);
    coswc = cos(wc);

    b = [ (1+coswc)/2,...
         -(1+coswc),...
          (1+coswc)/2];

    a = [1+alpha,...
         -2*coswc,...
         1-alpha];
end
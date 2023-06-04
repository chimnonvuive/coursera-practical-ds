    function [Ku,Tu] = UltimateGainPeriod(G)
[y,~] = step(feedback(G,1));
ssv = y(end);
if sign(ssv) == 1
    [gm,~,wcg] = margin(G);
    Ku = gm;
    Tu = 2*pi/wcg;
else
    [gm,~,wcg] = margin(-G);
    Ku = -gm;
    Tu = 2*pi/wcg;
end
end
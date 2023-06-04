function [Kc,tau1,tauD] = ZieglerNichols(G,pidtype)
   [Ku, Tu] = UltimateGainPeriod(G);
   if pidtype == "P"
       Kc = 0.5*Ku;
       tau1 = nan;
       tauD = nan;
   elseif pidtype == "PI"
       Kc = 0.45*Ko;
       tau1 = Tu/1.2;
       tauD = nan;
   elseif pidtype == "PID"
       Kc = 0.6*Ku;
       tau1 = Tu/2;
       tauD = Tu/8;
   end
end

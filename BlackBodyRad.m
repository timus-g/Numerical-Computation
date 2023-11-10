function [res] = BlackBodyRad(wl,temp)
c=299792458;
kb=1.3064*1e-23;
h=6.626*1e-34;
temp=temp+273.15;
res=8*h*pi./(c^2*wl.^5).*(1./(exp(h*c./(wl*kb*temp))-1));

c=299792458.0;
k=1.3064e-23;
h=6.626e-34;
sunT=(5000+273.15);
lambda=1e-7:1e-7:3e-6;
BT=zeros(1,length(lambda));
for l=1:length(lambda)
    BT(l)=8*h*pi/((c^2*lambda(l)^5)*(exp(h*c/(lambda(l)*k*sunT)-1)));
end
plot(lambda,BT,'b--','linewidth',2)
xlabel('Wavelength')
ylabel('Irradiance')
title('Blackbody Radiation')

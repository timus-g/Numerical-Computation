function Plot_BlackBody_Rad(wl,irrad)
plot(wl,irrad,'b--','lineWidth',2)
xlabel('Wavelength')
ylabel('Irradiance')
title('Blackbody radiation')
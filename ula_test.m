fc = 1e9;
array = phased.ULA('NumElements',2,'ElementSpacing',0.75);
azangles = -180:180;
response = phased.ArrayResponse('SensorArray',array);
resp = abs(response(fc,azangles));
plot(azangles,mag2db((resp/max(resp))))
grid on
title('Azimuth Cut at Zero Degrees Elevation')
xlabel('Azimuth Angle (degrees)')
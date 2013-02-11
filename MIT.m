#MIT.m
#calculates losses in pipeline according to MIT Equation suitable for crude oil
#due to legacy reasons, all units are in Imperial System
L = input("Input length of pipeline in miles: ");
Q = input("Input volumetric flow in barrels per hour: ");
ro = input("Density of Crude in lbm/cuft: ");
D = input ("Diameter of pipe in inches: ");
ni= input ("Kinematic viscosity of Crude in Saybolt Seconds Universal (SSU): ");
#Density of water in lbm/cuft (cubic feet)
row=62.3;
#calculating Reynolds number
Re=10.059*Q*ni/(D*(ni.**2-818.56));
#calculating coefficient 'f'
f=1/(4*(0.86859*log(Re/(1.964*log(Re)-3.8215))).**2);
pressure_loss=1.39212*f*Q.**2(ro/row)*L/D.**2
printf("Pressure loss in psid: %f", pressure_loss)
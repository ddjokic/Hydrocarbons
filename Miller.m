#!/usr/bin/env octave
#Miller.m
#calculates flow of light hydrocarbons through pipe 
#Miller Turbulent method used
p = input ("Pressure drop in psid in pipeline: ");
L = input("Input length of pipeline in miles: ");
ro = input("Density of Crude in lbm/cuft: ");
d = input ("Diameter of pipe in inches: ");
ni= input ("Kinematic viscosity of Crude in Saybolt Seconds Universal (SSU): ");
#Density of water in lbm/cuft (cubic feet)
row=62.3;
a=d**2.5*(p/L)/(5.9113*(ro/row).**0.5);
b=log10(d.**3*(ro/row)*(p/L)/(ni**2)+4.3);
Q=a*b;
printf("Volumetric flow in barrels/hour: %f",Q);
printf("\n")
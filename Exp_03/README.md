# Basics of Filters and their signal output, concept of bandwidth

Que 1. A low pass filter circuit consisting of a resistor of 4.7kohm in series with capacitor of 47nf is connected across a 10v sinusoidal supply. 
Calculate the output voltage (Vout) at a frequency of 100 hz to 10k hz.

$$ X_c = \frac{1}{2\pi f_c} $$
 Vout = Vin * Xc/√R^2 + Xc^2

cutoff frequency 
Fc = 1/(2*pi*Rc)

for this question the cutoff frequency comes out to be 

fc = 1/(2*pi*Rc) = 1/(2*3.14*47*10^-9)
fc = 720 Hz


R(s) = Vo(s)/Vi(s)

H(s) = (1/Sc)/(R+1/Sc)
for this question we get H(s) = 4526.93/(s+4526.93)


The values used for sine wave are 
Amplitude = 10
Bias = 0
Frequency = 2*pi*F
Phase = 0
Sample time = 0


observation table

Sr No. Vin(v) F(hz) Vout(v) Theory Vout(v) Practical    Vgain   Vgain(in db)
1       10      100         9.9             9.88        0.988       -0.104
2       10      200         9.63            9.6         0.96        -0.354
3       10      300         9.23            9.2         0.92        -0.724
4       10      400         8.74            8.75        0.875       -1.159
5       10      500         8.21            8.21        0.821       -1.713
6       10      600         7.68            7.7         0.77        -2.270
7       10      700         7.17            7.2         0.72        -2.853
8       10      800         6.69            6.68        0.668       -3.504
9       10      900         6.25            6.22        0.622       -4.124
10      10      1000        5.84            5.85        0.585       -4.656
11      10      2000        3.39            3.4         0.34        -9.370
12      10      5000        1.42            1.4         0.14        -17.077
13      10      10000       0.718           0.75        0.075       -22.498


Vgain(in db) = log10(Vout)/(Vin) 
             = 20log10(Vgain)


For semi log plot
x-axis Frequency
y-axis Vgain(in db)

![Alt Text](images/Exp_03_semi_log.jpg)

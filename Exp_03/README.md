# Basics of Filters and Their Signal Output: Concept of Bandwidth

## **Question 1**
A **low-pass filter** circuit consisting of a **4.7 kΩ resistor** in series with a **47 nF capacitor** is connected across a **10V sinusoidal supply**.

### **Objective**
Calculate the **output voltage (Vout)** at frequencies ranging from **100 Hz to 10 kHz**.

---

## **Key Equations**

### **Capacitive Reactance (Xc)**
The reactance of the capacitor is given by:

$$ X_c = \frac{1}{2\pi f C} $$

### **Output Voltage (Vout)**
The output voltage across the capacitor is:

$$ V_{out} = V_{in} \times \frac{X_c}{\sqrt{R^2 + X_c^2}} $$

where:
  - \( R = 4.7 \text{k\Omega} \) (resistor value)
  - \( C = 47 \text{nF} \) (capacitor value)
  - \( V_{in} = 10V \) (input voltage)
  - \( f \) is the frequency in Hz

---

## **Cutoff Frequency (Fc)**
The **cutoff frequency** for the low-pass filter is:

$$ f_c = \frac{1}{2\pi R C} $$

Substituting the given values:

$$ f_c = \frac{1}{2\pi (4.7 \times 10^3) (47 \times 10^{-9})} $$

$$ f_c \approx 720 \text{ Hz} $$

---

## **Transfer Function**
The standard **transfer function** for a low-pass RC filter is:

$$ H(s) = \frac{V_o(s)}{V_i(s)} $$

For this circuit:

$$ H(s) = \frac{1 / (sC)}{R + 1 / (sC)} $$

Simplifying:

$$ H(s) = \frac{4526.93}{s + 4526.93} $$

where \( s \) is the complex frequency variable.

---

## **Sine Wave Parameters**
The values used for the sine wave input are:
  - **Amplitude** = 10V  
  - **Bias** = 0V  
  - **Frequency** = \( 2\pi f \)  
  - **Phase** = 0°  
  - **Sample Time** = 0  

---

## **Observation Table**

| Sr No. |    Vin (V)     |    f (Hz)    |     Vout (V) Theory      |     Vout (V) Practical    |      Vgain      |   Vgain(in dB)   |
|--------|----------------|--------------|--------------------------|---------------------------|-----------------|------------------|
| 1      | 10             | 100          | 9.9                      | 9.88                      | 0.988           | -0.104           |
| 2      | 10             | 200          | 9.63                     | 9.6                       | 0.96            | -0.354           |
| 3      | 10             | 300          | 9.23                     | 9.2                       | 0.92            | -0.724           |
| 4      | 10             | 400          | 8.74                     | 8.75                      | 0.875           | -1.159           |
| 5      | 10             | 500          | 8.21                     | 8.21                      | 0.821           | -1.713           |
| 6      | 10             | 600          | 7.68                     | 7.7                       | 0.77            | -2.270           |
| 7      | 10             | 700          | 7.17                     | 7.2                       | 0.72            | -2.853           |
| 8      | 10             | 800          | 6.69                     | 6.68                      | 0.668           | -3.504           |
| 9      | 10             | 900          | 6.25                     | 6.22                      | 0.622           | -4.124           |
| 10     | 10             | 1000         | 5.84                     | 5.85                      | 0.585           | -4.656           |
| 11     | 10             | 2000         | 3.39                     | 3.4                       | 0.34            | -9.370           |
| 12     | 10             | 5000         | 1.42                     | 1.4                       | 0.14            | -17.077          |
| 13     | 10             | 10000        | 0.718                    | 0.75                      | 0.075           | -22.498          |

---

## **Conclusion**
- The **cutoff frequency** is **720 Hz**, meaning frequencies **below 720 Hz** pass through with minimal attenuation.
- Higher frequencies experience increasing attenuation, as reflected in the **Vout** and **gain values**.
- The **transfer function** confirms that the circuit behaves as a **first-order low-pass filter**.

---

## **Plot for Semi-Log Graph**
- **X-axis:** Frequency (Hz)
- **Y-axis:** Gain (dB)

![Semi-Log Plot](images/Exp_03_semi_log.jpg)
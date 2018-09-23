# Pressure-distribution-Over-an-airfoil

It is a sample matlab code to measeure the pressure distribution over a clark Y-14 (sample airfoil) at various angle of attack and different RPM.
Airfoil Specifications(Clark-Y14 wing specs):
Chord length - 9cm
span - 25 cm
pressure opening locations: 0, 7.5, 10, 20, 30, 40, 50, 60, 70 and 80% of chord on upper and bottom surfaces.
we will be using x/c and y/c in cartesian coordinate system. so put the values as
0,0.057527,0.062998,0.0839,0.09068,0.09117,0.085877,0.07576,0.06143,0.04388 for upper surface and0
-0.02865,-0.02938,-0.02967,-0.02631,-0.02263,-0.01896,-0.01529,-0.01162,-0.00794 for the lower surface. The leading edge of the airfoil at (0,0) or 0 station for pressure tap will give the total pressure at 0 angle of attack.

firstly, tabulate  x/c and y/c value with their respective delta(h) which is the height difference measured in manometer. the ratio between (pressure-free stream pressure) and free stream dynamic pressure gives the pressure coefficient at that station. (pressure- free stream pressure)=density of manometer liquid*g*delta(h) from Bernoulli's relation. Then, plot the graph between Cp vs x/c and Cp vs y/c in matlab. calculate the area between curves of Cp vs x/c for upper and lower durfaces. The result is the coefficient of lift at that angle of attack. similarly, calculate the area of Cp vs y/c for coefficient of drag.

/*Thetre is no any station in the trailing edge of airfoil. But a stagnation point is present there. so, we can consider proportional coefficient of pressure at the trailing edge to converge and intersect our graph. Linear extrapolation is completely inaccurate for mathematically obtaining that point. cubic extrapolation fluctuates and gives absurd solution. so quadratic extrapolation is the maximum appproximation od intersection point. But result shows the points are not close enough to trailing edge. hence it is convenient to assume a fixe value of Cp at trailing edge.*/ 




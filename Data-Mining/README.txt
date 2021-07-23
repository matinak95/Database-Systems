
Q1
________________________________________________________________________
Equation:

class =

     -0.1084 * CRIM +
      0.0458 * ZN +
      2.7187 * CHAS=1 +
    -17.376  * NOX +
      3.8016 * RM +
     -1.4927 * DIS +
      0.2996 * RAD +
     -0.0118 * TAX +
     -0.9465 * PTRATIO +
      0.0093 * B +
     -0.5226 * LSTAT +
     36.3411


Description of Results:

There are only 11 attributes + 1 intercept value in the linear regression equation. There are two possible reasons that not all of 13 attributes participate in this equation:

1) The remaining 2 attributes might have a VERY VERY LOW correlation with the output attribute, "class" causing their disappearance from the linear regression equation.

2) The remaining 2 attributes might be "derived attributes" from the other 11 ones, in other words they might be linear combinations of other 11 attributes so that it is not necessary to have them in the linear regression equation and the effect of them can also be achieved by changing the weights of the other 11 attributes.



Q2
________________________________________________________________________

Equation:

num_rings =
	sex=I * -0.8249 + 
	sex=M * 0.0577 + 
	length * -0.4583 + 
	diameter * 11.0751 + 
	height * 10.7615 + 
	whole_weight * 8.9754 + 
	shucked_weight * -19.7869 + 
	viscera_weight * -10.5818 + 
	shell_weight * 8.7418 + 
	3.8946


Q3
________________________________________________________________________

Equation:

num_rings =
	length * -11.933 +
	diameter * 25.766 +
	height * 20.358 +
	2.836

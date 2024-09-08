// C6.R
[BODY]
Name=body Mass=(0) Inertia=(0,0,0)
Pos=(0,0,0) Ori=(0,0,0)


[BODY]
Name=fl_spindle Mass=(13.2) Inertia=(0.05,0.0485,0.047)
Pos=( 0.79,0,-1.35) Ori=(0,0,0)

[BODY]
Name=fr_spindle Mass=(13.2) Inertia=(0.05,0.0485,0.047)
Pos=(-0.79,0,-1.35) Ori=(0,0,0)

[BODY]
Name=fl_wheel Mass=(26.83) Inertia=(1.096,0.87,0.87) // Rim+Disc+BBell+Bearings+tyre (8.2+6.8+1.4+0.5+9.93)
Pos=( 0.835,0,-1.35) Ori=(0,0,0)

[BODY]
Name=fr_wheel Mass=(26.83) Inertia=(1.096,0.87,0.87)
Pos=(-0.835,0,-1.35) Ori=(0,0,0)


[BODY]
Name=rl_spindle Mass=(14.2) Inertia=(0.05,0.0485,0.047)
Pos=( 0.8,0,1.35) Ori=(0,0,0)

[BODY]
Name=rr_spindle Mass=(14.2) Inertia=(0.05,0.0485,0.047)
Pos=(-0.8,0,1.35) Ori=(0,0,0)

[BODY]
Name=rl_wheel Mass=(29.615) Inertia=(1.603,1.089,1.089) // Rim 8.6+ Disc 5.7+ BBell 1.4+ Bearing 0.6+ Axle 1+ Outer CV Joint 0.8+ 11.52
Pos=( 0.835,0,1.35) Ori=(0,0,0)

[BODY]
Name=rr_wheel Mass=(29.615) Inertia=(1.603,1.089,1.089) // 1.2115+.325+.04+.01+.125-0.10862
Pos=(-0.835,0,1.35) Ori=(0,0,0)

[BODY]
Name=fuel_tank Mass=(0.4) Inertia=(0.1,0.1,0.1)
Pos=(0,0,0) Ori=(0,0,0)

[BODY]
Name=driver_head Mass=(6.6) Inertia=(0.047,0.036,0.039)
Pos=(0,0,0) Ori=(0,0,0)


/////////////////////////// Constraints ///////////////////////////////////////////////////////////

// Wheel and spindle connections
[JOINT&HINGE]
Posbody=fl_wheel Negbody=fl_spindle Pos=fl_wheel Axis=( 1,0,0)

[JOINT&HINGE]
Posbody=fr_wheel Negbody=fr_spindle Pos=fr_wheel Axis=(-1,0,0)

[JOINT&HINGE]
Posbody=rl_wheel Negbody=rl_spindle Pos=rl_wheel Axis=( 1,0,0)

[JOINT&HINGE]
Posbody=rr_wheel Negbody=rr_spindle Pos=rr_wheel Axis=(-1,0,0)


[BAR]
Name=fl_fore_lower Posbody=body Negbody=fl_spindle Pos=( 0.302,-0.17,-1.47) neg=( 0.773,-0.172,-1.354)

[BAR]
Name=fl_rear_lower Posbody=body Negbody=fl_spindle Pos=( 0.302,-0.17,-1.135) neg=( 0.773,-0.172,-1.354)

[BAR]
Name=fl_fore_upper Posbody=body Negbody=fl_spindle Pos=( 0.48,0.16,-1.43) neg=( 0.73,0.176,-1.319)

[BAR]
Name=fl_rear_upper Posbody=body Negbody=fl_spindle Pos=( 0.48,0.15,-1.16) neg=( 0.73,0.176,-1.319)

[BAR] // steering arm (must be named for identification)
Name=fl_steering Posbody=body Negbody=fl_spindle Pos=( 0.385,-0.068,-1.49) neg=( 0.763,-0.06,-1.5)


[BAR]
Name=fr_fore_lower Posbody=body Negbody=fr_spindle Pos=(-0.302,-0.17,-1.47) neg=(-0.773,-0.172,-1.354)

[BAR]
Name=fr_rear_lower Posbody=body Negbody=fr_spindle Pos=(-0.302,-0.17,-1.135) neg=(-0.773,-0.172,-1.354)

[BAR] // fore upper arm (used in steering lock calculation)
Name=fr_fore_upper Posbody=body Negbody=fr_spindle Pos=(-0.48,0.16,-1.43) neg=(-0.73,0.176,-1.319)

[BAR]
Name=fr_rear_upper Posbody=body Negbody=fr_spindle Pos=(-0.48,0.15,-1.16) neg=(-0.73,0.176,-1.319)

[BAR] // steering arm (must be named for identification)
Name=fr_steering Posbody=body Negbody=fr_spindle Pos=(-0.385,-0.068,-1.49) neg=(-0.763,-0.06,-1.5)



[BAR]
Name=rl_fore_lower Posbody=body Negbody=rl_spindle Pos=( 0.36,-0.148,1.25) neg=( 0.76,-0.1505,1.35)

[BAR]
Name=rl_rear_lower Posbody=body Negbody=rl_spindle Pos=( 0.36,-0.15,1.5) neg=( 0.76,-0.1505,1.35)

[BAR]
Name=rl_fore_upper Posbody=body Negbody=rl_spindle Pos=( 0.475,0.135,1.26) neg=( 0.71,0.1515,1.35)

[BAR]
Name=rl_rear_upper Posbody=body Negbody=rl_spindle Pos=( 0.475,0.136,1.5) neg=( 0.71,0.1515,1.35)

[BAR]
Name=rl_toelink Posbody=body Negbody=rl_spindle Pos=( 0.42,-0.0565,1.5) neg=( 0.75,-0.05,1.52)


[BAR]
Name=rr_fore_lower Posbody=body Negbody=rr_spindle Pos=(-0.36,-0.148,1.25) neg=(-0.76,-0.1505,1.35)

[BAR]
Name=rr_rear_lower Posbody=body Negbody=rr_spindle Pos=(-0.36,-0.15,1.5) neg=(-0.76,-0.1505,1.35)

[BAR]
Name=rr_fore_upper Posbody=body Negbody=rr_spindle Pos=(-0.475,0.135,1.26) neg=(-0.71,0.1515,1.35)

[BAR]
Name=rr_rear_upper Posbody=body Negbody=rr_spindle Pos=(-0.475,0.136,1.5) neg=(-0.71,0.1515,1.35)

[BAR]
Name=rr_toelink Posbody=body Negbody=rr_spindle Pos=(-0.42,-0.0565,1.5) neg=(-0.75,-0.05,1.52)

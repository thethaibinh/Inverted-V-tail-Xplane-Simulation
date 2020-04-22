## Inverted-V-tail-Xplane-Simulation
A Simulink-based control model for inverted V-tail fixed-wing flight simulation with X-Plane

[Project website](http://thaibinhnguyen.xyz/project-view/he-thong-dieu-khien-may-bay-khong-nguoi-lai/)

# 1. Overview
This project provide a collection of useful resources for beginners to understand control algorithms for an inverted V-tail fixed-wing.
The project has come with real-time UDP protocol for controlling aircraft model in X-Plane.

# 2. Getting started
  * Open and run (F5) "waypoints_tracking.slx" in Simulink.
  * The "waypoints_tracking.slx" model will call "autoTakeoff.slx" for the auto takeoff
  * Demonstration video at my website.
  * "setup_xplane.mdl" is for define coresponding actuators, sensors in X-Plane to retrive data and control.
  * "joystick.slx" is a connection for RC input.
  * "wp.m" contains mission waypoints.
  * "positionPlot.m" draw live trajectory.
# 3. Flight your own models and learn.
  * Refer [modelling instruction](https://developer.x-plane.com/manuals/planemaker/#The_Plane_Maker_Interface) from Laminar Research
  to build your own aircraft models. 
  * Try the [Penguin drone](https://forums.x-plane.org/index.php?/files/file/33625-tactical-drone-penguin-like/) if you like. 
  It's a inverted V-tail configuration and is the same UAV class with my model. Therefore, it's compatible with the control model.
  You might need to fine tune several PID parameters to make it flight.
  
  ![Penguin](https://forums.x-plane.org/screenshots/monthly_2016_07/Capture4.JPG.09472a5f25f85a6740248065b33446c8.JPG)
  ![ASE](https://github.com/thethaibinh/Inverted-V-tail-Xplane-Simulation/blob/master/Screenshot%20(87).png?raw=true)

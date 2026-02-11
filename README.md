# Control of a DC Motor Using Identification and State Feedback

This repository presents the modeling, identification, and real-time control of a DC motor using MATLAB/Simulink and laboratory hardware.

The project is structured in three main stages, progressing from parameter identification to real-time validation.

---

## 1. Motor Parameter Identification and Real Motor Modeling

In this stage, the parameters of the real DC motor are experimentally identified. In particular, the motor constant ke and the damping coefficient p are obtained from measured data.

Based on these parameters, a model of the real motor is built in Simulink, including:
- A motor block representing the identified dynamics
- Encoder blocks for position and velocity measurements
- Interface blocks for connection with the real laboratory motor

📁 Relevant files:
- Simulink models: [`motor_model/simulink`](models/Motor_1.slx)
- MATLAB scripts:
[`parameter_identification/scripts_matlab`](scripts/motor_identification.m)
[`parameter_identification/scripts_matlab`](scripts/motor_identification_data.mat)
[`parameter_identification/scripts_matlab`](scripts/motor_model.mlx)
- Images:
[Motor model](images/Motor_Simulink.jpg)
[Motor block](images/Motor_block.jpg)
[Encoders](images/Encoders.png)

---
## 2. Motor Modeling for Simulation

In this stage, the motor is modeled in order to perform realistic simulations prior to controller design.

The simulation model includes:
- A PWM signal model representing the motor actuation
- Encoder models for position and velocity measurement
- A dynamic model of the motor based on the identified parameters

This model allows the analysis of the system behavior under different input signals and operating conditions, and serves as the basis for subsequent control design and validation.

📁 Relevant files:
- Simulink simulation models:  
  [`simulation_models/simulink`](models/Motor_2.slx)

- Images:
[Motor block](images/Motor_block.jpg)
[Encoders](images/Encoders.png)

# Control and Identification of a DC Motor Using Simulink and Real-Time Hardware

This repository contains the development of a control-oriented model of a real DC motor, its parameter identification, and the final integration with the physical motor available in the laboratory.

The project was carried out in three main stages, progressing from modeling to real-time validation.

---

### 1. Modeling of the Real System
The first stage focused on modeling the real physical system in order to enable its connection with the laboratory motor.

This includes:
- Development of a mathematical model suitable for control design
- Implementation of the model in **Simulink**
- Validation of the model structure before hardware integration

📁 Relevant files:
- Simulink models: [`motor_model/simulink`](models/Motor_1.slx)
- MATLAB scripts:
[`parameter_identification/scripts_matlab`](scripts/motor_identification.m)
[`parameter_identification/scripts_matlab`](scripts/motor_identification_data.mat)
[`parameter_identification/scripts_matlab`](scripts/motor_model.mlx)
- Images:
[Encoders](images/Encoders.png)
[Motor block](images/Motor_block.jpg)
[Motor model](images/Motor_Simulink.jpg)

---

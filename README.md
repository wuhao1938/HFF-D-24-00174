# Trained neural network architecture search model for the particle thermal radiation in dense particulate systems

The trained model is re-written as the MATLAB script. 

Using MATLAB or GNU Octave, anyone can reproduce the results for the view factor between spheres under various conditions.

For 2-sphere case with radius 1.0, 

run following command in command windows:


F2([0 0 0 2 0 0])

First particle position is [0 0 0 ], Second one at [2 0 0].The output of X12 is:

0.0756

For 3-sphere case,

Command is:

F3([0	0	0	2.2582440	0	0	1.0461867	1.6547215	0])

First particle position is [0 0 0 ], Second one at [2.2582440	0	0], Third one at [1.0461867	1.6547215	0]. The output of X12 is:



For 7-sphere case, the command is

F7([0	0	0	4.1946259	0	0	1.9629610	0.012943962	0	3.0511227	-1.5759960	0.33549631	3.2163386	-0.0026803457	1.6833478	3.3776209	-0.053633872	-1.7794662	0.35533762	-1.3928945	-1.2893207])

The output of X12 is:

If you have any questions or comments, please do not hesitate to contact me (wuhao@ncepu.edu.cn).

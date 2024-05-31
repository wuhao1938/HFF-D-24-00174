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

 0.0542


For 7-sphere case, the command is

F7([0	0	0	2.5516078	0	0	1.2210166	1.4706079	0	1.2415756	-1.4307044	0.35524225	1.0896598	-0.56865382	-1.4294138	1.1566036	0.16443209	1.5673004	2.5055425	1.2713338	-1.5094852])

The output of X12 is:

0.0290

Our work is under review, more code of 2~12 sphere cases will be uploaded later.

If you have any questions or comments, please do not hesitate to contact me (wuhao@ncepu.edu.cn).

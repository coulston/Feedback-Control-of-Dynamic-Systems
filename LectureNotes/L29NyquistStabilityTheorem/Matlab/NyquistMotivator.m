% I'm starting to develop this script in Fall 2022 to better motivate the
% Nyquist stability theorem. I haven't rolled it out in class yet.

% My idea is for this to be in 2 parts: first, we illustrate the concept of
% a transfer function as a map from one set of axes (Re & Im of s) through
% G(s) to Re{G(s)} and Im{G(s)}. Then, we take a sample transfer function
% and look at the root locus, CL poles, and Nyquist plot for various gains. 

%% First Part
% Let's take a look at the magnitude and phase of a transfer function
% evaluated for three different sets of (complex) values of s:
%  Set 1: Finite s along the positive imaginary axis
%  Set 2: "Infinite" (very large) s in a half circle around the RHP
%  Set 3: Finite s along the negative imaginary axis
% We'll calculate the magnitude and angle for each case for three transfer
% functions.
% L_1(s) = 1/(s-2) (RHP pole)
% L_2(s) = (s-3)/1 (RHP zero)
% L_3(s) = L_1(s)*L_2(s) = (s-3)/(s-2) (both RHP zero and RHP pole)

% Mapping L_1(s)
% Set 1 (finite s along positive imag axis, a.k.a. Bode portion)
% Set 2 (half circle in RHP at large radius)
% Set 3 (complex conjugate of set 1)
% use numbered/lettered dots for the original values and the mapped values,
% discuss resulting encirclements

% Mapping L_2(s) and L_3(s)
% Same ideas as L_1, maybe with ungraded quizzes for students to work

% connect closed-loop poles with open-loop zeros mathematically, use the
% 1+L(s) shift to change to encirclements of -1

%% Second Part
% ls=zpk([2],[-3 -10 -4+j*2 -4-j*2],100)
% rlocus(ls) <-- show how one, then three poles of T(s) = L(s)/(1+L(s))
% will move into the RHP as K gets larger
% ts=feedback(ls,1) <-- show CL poles for small, med, & large K values,
% connect these to open-loop zeros (zeros of 1+L(s)) & connect to Z in
% Z=N+P
% nyquist(ls) <-- then re-create for med & large K values, show changes in
% the resulting N

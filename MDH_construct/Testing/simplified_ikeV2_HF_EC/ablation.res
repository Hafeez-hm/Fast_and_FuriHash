
########################################
Starting Simple ike Collision Ablation with LIB_SET=legacy
########################################

Simple ike with collision (col=1): running...

real	1m51.301s
user	1m50.027s
sys	0m1.345s
RESULT event(acceptB2(B,A,sA)) ==> event(initA2(A,sA)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT not event(SanityA(true,x)) is false.
RESULT not event(SanityA(false,x)) is false.
RESULT not event(SanityB(true,x)) is false.
RESULT not event(SanityB(false,x)) is false.
Completed legacy

########################################
Starting Simple ike Collision Ablation with LIB_SET=ablation_jaffar
########################################

Simple ike with collision (col=1): running...

real	0m2.571s
user	0m2.389s
sys	0m0.059s
RESULT event(acceptB2(B,A,sA)) ==> event(initA2(A,sA)) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT not event(SanityA(true,x)) is false.
RESULT not event(SanityA(false,x)) is false.
RESULT not event(SanityB(true,x)) is false.
RESULT not event(SanityB(false,x)) is false.
Completed ablation_jaffar

########################################
Starting Simple ike Collision Ablation with LIB_SET=ablation_infra
########################################

Simple ike with collision (col=1): running...

real	0m2.414s
user	0m2.262s
sys	0m0.040s
RESULT event(acceptB2(B,A,sA)) ==> event(initA2(A,sA)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT not event(SanityA(true,x)) is false.
RESULT not event(SanityA(false,x)) is false.
RESULT not event(SanityB(true,x)) is false.
RESULT not event(SanityB(false,x)) is false.
Completed ablation_infra

########################################
Starting Simple ike Collision Ablation with LIB_SET=current
########################################

Simple ike with collision (col=1): running...

real	0m4.672s
user	0m5.652s
sys	0m0.146s
RESULT event(acceptB2(B,A,sA)) ==> event(initA2(A,sA)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(true,x)) is false.
RESULT not event(SanityA(false,x)) is false.
RESULT not event(SanityB(true,x)) is false.
RESULT not event(SanityB(false,x)) is false.
Completed current

########################################
Generated Simple ike Ablation log files:
/root/MDH_construct/Testing/simplified_ikeV2_HF_EC/logs/ablation/ablation_infra/LOG_col.txt
/root/MDH_construct/Testing/simplified_ikeV2_HF_EC/logs/ablation/ablation_jaffar/LOG_col.txt
/root/MDH_construct/Testing/simplified_ikeV2_HF_EC/logs/ablation/current/LOG_col.txt
/root/MDH_construct/Testing/simplified_ikeV2_HF_EC/logs/ablation/legacy/LOG_col.txt


########################################
Starting Sigma Collision Ablation with LIB_SET=legacy
########################################

Sigma with collision (col=1): running...

real	0m7.075s
user	0m6.590s
sys	0m0.121s
RESULT not event(acceptB(B,A,x)) is false.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B,x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x)) ==> event(initB(B,A,x)) || event(Dishonest(A)) || event(Dishonest(B)) is false.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B',x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyA(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyB(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is false.
Completed legacy

########################################
Starting Sigma Collision Ablation with LIB_SET=ablation_jaffar
########################################

Sigma with collision (col=1): running...

real	0m4.140s
user	0m3.890s
sys	0m0.038s
RESULT not event(acceptB(B,A,x)) is false.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B,x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x)) ==> event(initB(B,A,x)) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B',x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyA(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is false.
Completed ablation_jaffar

########################################
Starting Sigma Collision Ablation with LIB_SET=ablation_infra
########################################

Sigma with collision (col=1): running...

real	0m5.609s
user	0m6.638s
sys	0m0.127s
RESULT not event(acceptB(B,A,x)) is false.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B,x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x)) ==> event(initB(B,A,x)) || event(Dishonest(A)) || event(Dishonest(B)) cannot be proved.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B',x)) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(sessionKeyA(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(sessionKeyB(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
Completed ablation_infra

########################################
Starting Sigma Collision Ablation with LIB_SET=current
########################################

Sigma with collision (col=1): running...

real	0m3.001s
user	0m2.823s
sys	0m0.028s
RESULT not event(acceptB(B,A,x)) is false.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B,x)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x)) ==> event(initB(B,A,x)) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x)) ==> event(initA(A,B',x)) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyA(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,x)) && attacker(x) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
Completed current

########################################
Generated Sigma Ablation log files:
/root/MDH_construct/Testing/sigma_HF_EC/logs/ablation/ablation_infra/LOG_col.txt
/root/MDH_construct/Testing/sigma_HF_EC/logs/ablation/ablation_jaffar/LOG_col.txt
/root/MDH_construct/Testing/sigma_HF_EC/logs/ablation/current/LOG_col.txt
/root/MDH_construct/Testing/sigma_HF_EC/logs/ablation/legacy/LOG_col.txt

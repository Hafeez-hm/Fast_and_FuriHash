
########################################
Starting Protosuite Collision Ablation with LIB_SET=legacy
########################################

[legacy][col] MACs.pv: running...
RESULT event(MacAccepted(x_4,m_1)) ==> event(MacSent(x_4,m')) && eq_hash(m_1,m') cannot be proved.

[legacy][col] WMF-auth.pv: running...
RESULT event(WmfTagAccepted(h_1)) ==> event(WmfTagSent(h')) && eq_hash(h_1,h') cannot be proved.

[legacy][col] Proba-pk.pv: running...
Timed out after 120s [TIMEOUT - State Explosion]
No RESULT lines. First diagnostic:
make: Entering directory '/root/MDH_construct'
Linear part: No equation.
Convergent part:
dec(enc(x,pk(y),z),y) = x
Completing equations...
Completed legacy

########################################
Starting Protosuite Collision Ablation with LIB_SET=ablation_jaffar
########################################

[ablation_jaffar][col] MACs.pv: running...
RESULT event(MacAccepted(x_4,m_1)) ==> event(MacSent(x_4,m')) && eq_hash(m_1,m') cannot be proved.

[ablation_jaffar][col] WMF-auth.pv: running...
RESULT event(WmfTagAccepted(h_1)) ==> event(WmfTagSent(h')) && eq_hash(h_1,h') is true.

[ablation_jaffar][col] Proba-pk.pv: running...
Timed out after 120s [TIMEOUT - State Explosion]
No RESULT lines. First diagnostic:
make: Entering directory '/root/MDH_construct'
Linear part: No equation.
Convergent part:
dec(enc(x,pk(y),z),y) = x
Completing equations...
Completed ablation_jaffar

########################################
Starting Protosuite Collision Ablation with LIB_SET=ablation_infra
########################################

[ablation_infra][col] MACs.pv: running...
RESULT event(MacAccepted(x_4,m_1)) ==> event(MacSent(x_4,m')) && eq_hash(m_1,m') is true.

[ablation_infra][col] WMF-auth.pv: running...
RESULT event(WmfTagAccepted(h_1)) ==> event(WmfTagSent(h')) && eq_hash(h_1,h') is true.

[ablation_infra][col] Proba-pk.pv: running...
RESULT event(CipherTagAccepted(x_2,h_1)) ==> event(CipherTagSent(x_2,h')) && eq_hash(h_1,h') is true.
Completed ablation_infra

########################################
Starting Protosuite Collision Ablation with LIB_SET=current
########################################

[current][col] MACs.pv: running...
RESULT event(MacAccepted(x_4,m_1)) ==> event(MacSent(x_4,m')) && eq_hash(m_1,m') is true.

[current][col] WMF-auth.pv: running...
RESULT event(WmfTagAccepted(h_1)) ==> event(WmfTagSent(h')) && eq_hash(h_1,h') is true.

[current][col] Proba-pk.pv: running...
RESULT event(CipherTagAccepted(x_2,h_1)) ==> event(CipherTagSent(x_2,h')) && eq_hash(h_1,h') is true.
Completed current

########################################
Generated Protosuite Ablation log files:
/root/MDH_construct/Testing/Protocol_Models_Adapted/logs/ablation/ablation_infra/MACs/LOG_col.txt
/root/MDH_construct/Testing/Protocol_Models_Adapted/logs/ablation/ablation_infra/Proba-pk/LOG_col.txt
/root/MDH_construct/Testing/Protocol_Models_Adapted/logs/ablation/ablation_infra/WMF-auth/LOG_col.txt
/root/MDH_construct/Testing/Protocol_Models_Adapted/logs/ablation/ablation_jaffar/MACs/LOG_col.txt
/root/MDH_construct/Testing/Protocol_Models_Adapted/logs/ablation/ablation_jaffar/Proba-pk/LOG_col.txt
/root/MDH_construct/Testing/Protocol_Models_Adapted/logs/ablation/ablation_jaffar/WMF-auth/LOG_col.txt
/root/MDH_construct/Testing/Protocol_Models_Adapted/logs/ablation/current/MACs/LOG_col.txt
/root/MDH_construct/Testing/Protocol_Models_Adapted/logs/ablation/current/Proba-pk/LOG_col.txt
/root/MDH_construct/Testing/Protocol_Models_Adapted/logs/ablation/current/WMF-auth/LOG_col.txt
/root/MDH_construct/Testing/Protocol_Models_Adapted/logs/ablation/legacy/MACs/LOG_col.txt
/root/MDH_construct/Testing/Protocol_Models_Adapted/logs/ablation/legacy/Proba-pk/LOG_col.txt
/root/MDH_construct/Testing/Protocol_Models_Adapted/logs/ablation/legacy/WMF-auth/LOG_col.txt

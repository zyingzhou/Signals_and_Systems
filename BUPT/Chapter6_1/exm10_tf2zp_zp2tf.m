% exm10_tf2zp_zp2tf.m
% 例10，系统表示方法示例
% 北京邮电大学，尹霄丽
% 2018年12月
[z p k]=tf2zp([1 0 0],[1 -1 0.24])
[B,A]=zp2tf(z,p,k)
[B,A]=eqtflength([1],[1 -1 0.24])
impz(B,A,11)

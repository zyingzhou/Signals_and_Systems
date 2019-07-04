% 例11，维纳趣事
% 北京邮电大学，尹霄丽
% 2018年12月
for n=10:30
    N1=power(n,3);
    if N1>=1e4
        break
    end
end
k=1;
for m=10:n-1
    N2=power(m,4);
    if N2>=1e5 & N2<=1e6
        age(k)=m;
        k=k+1
    end
end
power(age,3)
power(age,4)
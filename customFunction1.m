function pr = customFunction1(t,tau)
    p = 3; % 设置指数为 3
    fr = 0.25; % 设置频率为 2
    pr = (sin(pi*fr*(t+1/tau))).^p;
end

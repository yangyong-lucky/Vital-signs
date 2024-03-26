% 关闭所有图形窗口和清空工作区
close all;
clear all;

Ar=10;
fh = 1.3;
fr=0.25;
Ah = 0.5;
fs = 50;
n = 0:1000;
tau=0.05;
w0=2*pi*fh;

% 计算信号值1
pt1 = custom1Function(Ar, n, fs, fr,tau);
pt1 = pt1 - mean(pt1);
% 计算信号值2
pt2 = custom2Function(Ah, n, fs, fh,tau,w0);
pt2 = pt2 - mean(pt2);
pt=pt1+pt2;

% 绘制原始信号图形
figure;
subplot(2,1,1);
plot(n/fs, pt);
xlabel('Time');
ylabel('Function Value');
title('Custom Function Plot');

% 进行频域分析
N = length(pt); % 信号长度
frequencies = (-N/2:N/2-1) * (fs/N); % 计算频率轴

% 进行 Fourier 变换
ft = fftshift(fft(pt));

% 归一化处理
ft_normalized = abs(ft) / max(abs(ft));

% 找到频率轴上0到5Hz的索引
freq_index = find(frequencies >= 0 & frequencies <= 5);

% 仅保留0到5Hz范围内的频域信息
frequencies = frequencies(freq_index);
ft_normalized = ft_normalized(freq_index);

% 绘制频域波形
subplot(2,1,2);
plot(frequencies, ft_normalized);
xlabel('Frequency (Hz)');
ylabel('Normalized Amplitude');
title('Frequency Domain Plot (0-5Hz)');
signal = createSignal;
t = 0:10:(10000-10);

% Create the figure
f = figure('Color',[.9, .9 , 1]);

% First Subplot
axs(1) = subplot(2,2,1);
plot(t,signal,'DisplayName','raw')

% Second Subplot
axs(2) = subplot(2,2,2);
plot(t,smooth(signal,10),'r', 'DisplayName','filtered')
hold(axs(2),'on')
filtered = smooth(signal,20);
[~, maxIdx] = max(filtered);
trend = filtered - detrend(filtered, 1, maxIdx);
plot(t,trend,'g', 'DisplayName','Trend')

hold(axs(2),'off')

% Third Subplot
axs(3) = subplot(2,2,[3,4]);
plot(t(1:maxIdx), signal(1:maxIdx),'b','DisplayName','ascending')
hold(axs(3),'on')
plot(t(maxIdx+1:end), signal(maxIdx+1:end),'r','DisplayName','descending')
hold(axs(3),'off')

% Customize all the axes
titles = {'1^{st} Plot','2^{nd} Plot','3^{rd} Plot'};
for i = 1:length(axs)
    axs(i).XLabel.String = 'Time(ms)';
    axs(i).YLabel.String = 'Signal Amplitude';
    legend(axs(i),'location','best')
    title(axs(i), titles{i})
end
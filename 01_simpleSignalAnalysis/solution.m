a = createSignal;
t = 0:10:(10000-10);

% Create the figure
f = figure('Color',[.9, .9 , 1]);

% First Subplot
axs(1) = subplot(2,2,1);
plot(t,a,'DisplayName','raw')

% Second Subplot
axs(2) = subplot(2,2,2);
plot(t,smooth(a,20),'r', 'DisplayName','filtered')
hold(axs(2),'off')
plot(t,smooth(a,20),'r', 'DisplayName','filtered')


hold(axs(2),'off')

% Third Subplot
axs(3) = subplot(2,2,[3,4]);




for i = 1:length(axs)
    axs(i).XLabel.String = 'Time(ms)';
    axs(i).YLabel.String = 'Signal Amplitude';
    legend(axs(i))

end
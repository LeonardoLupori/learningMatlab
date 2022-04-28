function signal = createSignal()
% signal = createSignal()
% 
% Create a custom random signal with noise, a DC component and some trends

totLength = 1000;

% Generate a sinusoidal signal
x = linspace(0,50,totLength);
signal = sin(x);

% Add random noise
noise = randn([1, totLength]);
signal = signal + (noise*0.4);

% Add a trend
trend = [linspace(0,2,300), linspace(1.5,-0.2,600), linspace(-0.2,0,100)];
signal = signal + trend;

% Add a DC
signal = signal + 3;
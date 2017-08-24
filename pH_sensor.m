%% Arduino Group Project: Read Serial from an Arduino
% This code will collect data formatted as a string over the 
% light level for the course of that time using the connected Arduino
% Hardware.

% Revised by: Nathan Sauve and group
% Revised on: 6/7/17
% Description: Code for reading pH levels of solutions


%%
clc,clear all, close all

duration = input('Enter duration of run time (in seconds): ')
duration = duration*10;

%% Set up serial port and ensure it outputs data
% Change COM4 to the Port the Arduino is connected to
Port = 'COM4';         % Port the Arduino is connected to
delete(instrfindall);  % deletes any connected ports
a = serial(Port);     % connect to the arduino in order to read information 
fopen(a);              % opens the serial port
pause(1);          % pause() for 1 second to make sure a connection is made
out1 = instrfind('Port',Port) % see if any Ports are open
out = fscanf(a) ;       % read one time from the serial port

%% set up the animated figure
figure
h = animatedline;
ax = gca;
ax.YGrid = 'on';
ax.YLim = [0 14];       % the serial output range
xlabel('Time (seconds)');
ylabel('pH levels');
title('pH Sensor Readings');

%%
x=linspace(1,duration,duration);  % can change to change the number of data points 
startTime = datetime('now');
saved_data = [0 0];

%% collect serial data
try
for i=1:length(x);
   data = fscanf(a, '%s'); % reads the data from the arduino code
   data = str2num(data);
   saved_data(end+1) = data;
    t =  datetime('now') - startTime;  % updates the time
    addpoints(h,datenum(t),data)       % adds the data point to the figure
    % Update axes
    ax.XLim = datenum([0 t]);
    datetick('x','keeplimits')
    drawnow
end
end
%% close the serial port
fclose(a);
delete(a)
clear a;

%% Calculate the mean pH levels
size_of_saved_data = numel(saved_data);  % calculate the size of saved_data matrix
sum_of_saved_data = sum(saved_data(3:end));      % calculate the sum of saved data
pH_mean = sum_of_saved_data / size_of_saved_data  % calculate the mean pH levels 
% by finding mean of collected results

%% Initialize scope. 
%The port number may be 5556 on certain scopes.
scopeInterface = tcpip('192.168.88.140',5555);

scopeInterface.InputBufferSize = 9000;
scopeInterface.Timeout = 10;

fopen(scopeInterface);

%% test

%fwrite(scopeInterface,'*IDN?')

writeline(scopeInterface,"*IDN?")

%% Connect to instrument object, obj1.

% Stop data acquisition
fwrite(scopeInterface,':STOP')

%% Grab the data from channel 1
fwrite(scopeInterface, ':WAV:POIN:MODE NOR');
fwrite(scopeInterface,':WAV:DATA? CHAN1');
data = fread(scopeInterface,9000,'uint8');

%% Get the voltage scale
write(scopeInterface, ':CHAN1:SCAL?');
voltscale = str2double(fread(scopeInterface));
%% And the voltage offset
fwrite(scopeInterface,':CHAN1:OFFS?');
voltoffset = str2double(fread(scopeInterface));

%% Walk through the data, and map it to actual voltages
data = data * -1 + 255;
% Now, we know from experimentation that the scope display range is actually
% 30-229.  So shift by 130 - the voltage offset in counts, then scale to
% get the actual voltage.
data = (data - 130.0 - voltoffset/voltscale*25) / 25 * voltscale;

%% Get the timescale
fwrite(scopeInterface,':TIM:SCAL?')
timescale = str2double(fread(scopeInterface));

%% Get the timescale offset
fwrite(scopeInterface,':TIM:OFFS?');
timeoffset = str2double(fread(scopeInterface));

%% Start data acquisition again, and put the scope back in local mode
fwrite(scopeInterface,':RUN')
fwrite(scopeInterface,':KEY:FORC')
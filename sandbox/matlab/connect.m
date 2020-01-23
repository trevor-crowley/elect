%% Instrument Connection

% Find a tcpip object.
scopeInterface = instrfind('Type', 'tcpip', 'RemoteHost', '192.168.88.140', 'RemotePort', 5555, 'Tag', '');

% Create the tcpip object if it does not exist
% otherwise use the object that was found.
if isempty(scopeInterface)
    scopeInterface = tcpip('192.168.88.140', 5555);
else
    fclose(scopeInterface);
    scopeInterface = scopeInterface(1);
end

scopeInterface.InputBufferSize = 2048;

% Connect to instrument object, obj1.
fopen(scopeInterface);

%% Instrument Configuration and Control

% Communicating with instrument object, obj1.
data1 = query(scopeInterface, '*IDN?');

%% 

% Stop data acquisition
fwrite(scopeInterface,':STOP')
% Grab the data from channel 1
fwrite(scopeInterface, ':WAV:POIN:MODE NOR');
fwrite(scopeInterface,':WAV:DATA? CHAN1');
data = fread(scopeInterface,2048,'uint8');
%%

% Get the voltage scale
write(scopeInterface, ':CHAN1:SCAL?');
voltscale = str2double(fread(scopeInterface));
% And the voltage offset
fwrite(scopeInterface,':CHAN1:OFFS?');
voltoffset = str2double(fread(scopeInterface));
% Walk through the data, and map it to actual voltages
data = data * -1 + 255;
% Now, we know from experimentation that the scope display range is actually
% 30-229.  So shift by 130 - the voltage offset in counts, then scale to
% get the actual voltage.
data = (data - 130.0 - voltoffset/voltscale*25) / 25 * voltscale;
% Get the timescale
fwrite(scopeInterface,':TIM:SCAL?')
timescale = str2double(fread(scopeInterface));
% Get the timescale offset
fwrite(scopeInterface,':TIM:OFFS?');
timeoffset = str2double(fread(scopeInterface));
% Start data acquisition again, and put the scope back in local mode
fwrite(scopeInterface,':RUN')
fwrite(scopeInterface,':KEY:FORC')
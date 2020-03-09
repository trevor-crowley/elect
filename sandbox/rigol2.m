%% Instrument Connection

% Find a tcpip object.
obj1 = instrfind('Type', 'tcpip', 'RemoteHost', '192.168.88.140', 'RemotePort', 5555, 'Tag', '');

% Create the tcpip object if it does not exist
% otherwise use the object that was found.
if isempty(obj1)
    obj1 = tcpip('192.168.88.140', 5555);
else
    fclose(obj1);
    obj1 = obj1(1);
end

obj1.OutputBufferSize = 9000;
% Connect to instrument object, obj1.
fopen(obj1);

%% Instrument Configuration and Control

% Communicating with instrument object, obj1.
query(obj1, '*IDN?')

%% Disconnect and Clean Up

% Disconnect from instrument object, obj1.
fclose(obj1);

%% Instrument Configuration and Control

% Configure instrument object, obj1.
set(obj1, 'Name', 'TCPIP-192.168.88.140');
set(obj1, 'RemoteHost', '192.168.88.140');

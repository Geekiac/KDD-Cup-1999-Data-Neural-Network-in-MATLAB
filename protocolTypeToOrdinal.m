function result = protocolTypeToOrdinal( protocol_type )
%PROTOCOLTYPETOORDINAL Summary of this function goes here
%   Detailed explanation goes here
    if strcmp(protocol_type, 'icmp')
        result = 1;
    elseif strcmp(protocol_type, 'tcp')
        result = 2;
    elseif strcmp(protocol_type, 'udp')
        result = 3;
    else
        result = -1;
    end
end


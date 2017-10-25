function result = flagToOrdinal( flag )
%FLAGTOORDINAL Summary of this function goes here
%   Detailed explanation goes here
    if strcmp(flag, 'OTH')
        result = 1;
    elseif strcmp(flag, 'REJ')
        result = 2;
    elseif strcmp(flag, 'RSTO')
        result = 3;
    elseif strcmp(flag, 'RSTOS0')
        result = 4;
    elseif strcmp(flag, 'RSTR')
        result = 5;
    elseif strcmp(flag, 'S0')
        result = 6;
    elseif strcmp(flag, 'S1')
        result = 7;
    elseif strcmp(flag, 'S2')
        result = 8;
    elseif strcmp(flag, 'S3')
        result = 9;
    elseif strcmp(flag, 'SF')
        result = 10;
    elseif strcmp(flag, 'SH')
        result = 11;
    else
        result = -1;
    end
end


function value = resultToOrdinal( result )
% maps the result nominal value to an integer number.
    if strcmp(result, 'back.')
        value = 1;
    elseif strcmp(result, 'buffer_overflow.')
        value = 2;
    elseif strcmp(result, 'ftp_write.')
        value = 3;
    elseif strcmp(result, 'guess_passwd.')
        value = 4;
    elseif strcmp(result, 'imap.')
        value = 5;
    elseif strcmp(result, 'ipsweep.')
        value = 6;
    elseif strcmp(result, 'land.')
        value = 7;
    elseif strcmp(result, 'loadmodule.')
        value = 8;
    elseif strcmp(result, 'multihop.')
        value = 9;
    elseif strcmp(result, 'neptune.')
        value = 10;
    elseif strcmp(result, 'nmap.')
        value = 11;
    elseif strcmp(result, 'normal.')
        value = 12;
    elseif strcmp(result, 'perl.')
        value = 13;
    elseif strcmp(result, 'phf.')
        value = 14;
    elseif strcmp(result, 'pod.')
        value = 15;
    elseif strcmp(result, 'portsweep.')
        value = 16;
    elseif strcmp(result, 'rootkit.')
        value = 17;
    elseif strcmp(result, 'satan.')
        value = 18;
    elseif strcmp(result, 'smurf.')
        value = 19;
    elseif strcmp(result, 'spy.')
        value = 20;
    elseif strcmp(result, 'teardrop.')
        value = 21;
    elseif strcmp(result, 'warezclient.')
        value = 22;
    elseif strcmp(result, 'warezmaster.')
        value = 23;
    else
        value = -1;
    end
end


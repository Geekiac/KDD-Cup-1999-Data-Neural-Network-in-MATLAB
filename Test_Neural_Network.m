% load transformed 10 percent of kddcup 99 data (494021 rows)
load assignment2_data.mat net kddcup_array result_array

% transpose arrays for use with the neural network
x = kddcup_array'; % contains 41 dimensions
t = result_array'; % contains the corresponding classification

% remove original arrays - to free up memory
clear kddcup_array result_array

%load the neural network
load assignment2_data.mat net

% Test the Network
y = net(x); % NN generates classications from samples

% calculate Cross Entropy between generated and actual results
performance = perform(net,t,y);

% calulate the percentage error 
% i.e. the percentage of misclassified samples
tind = vec2ind(t);
yind = vec2ind(y);
percentErrors = sum(tind ~= yind)/numel(tind);

plotconfusion(t, y);
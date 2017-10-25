function net = GenerateKddCupNN(epochs, ...
                                    hiddenLayerSize, ...
                                    hiddenTransferFcn, ...
                                    outputTransferFcn, ...
                                    inputProcessFunctions, ...
                                    outputProcessFunctions, ...
                                    divideFcn, ...
                                    divideMode, ...
                                    trainRatio, ...
                                    valRatio, ...
                                    testRatio)
% Generates a patternnet using 
    
	% Creates a NN using Scaled conjugate gradient backpropagation
	% as the training function
    net = patternnet(hiddenLayerSize, 'trainscg');
    
	% loops through the hidden layers excluding the output layer 
	% and assigns the same transfer function to all.
	n = length(net.layers);
    for i = 1:n-1
        net.layers{i}.transferFcn = hiddenTransferFcn;
    end
    net.layers{n}.transferFcn = outputTransferFcn;

	% the process functions used include:
	% removeconstantrows, mapminmax, mapstd and processpca
    net.input.processFcns = inputProcessFunctions;
    net.output.processFcns = outputProcessFunctions;
    
	% used to create the random subsampling configuration
    net.divideFcn = divideFcn; 
    net.divideMode = divideMode;
    net.divideParam.trainRatio = trainRatio;
    net.divideParam.valRatio = valRatio;
    net.divideParam.testRatio = testRatio;
    
	% to allow for checking performance with the Cross-Entropy function
    net.performFcn = 'crossentropy';  
	
	% to allow for plotting a confusion matrix
    net.plotFcns = {'plotconfusion'}; 
    
	% the maximum number of epochs allowed
    net.trainParam.epochs = epochs;
end


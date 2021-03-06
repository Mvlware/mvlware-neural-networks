%% dataset: classification generation

% set random seed for reproduction
seed = 1;
rng(seed);

% check fold existence, make one if not exist
if ~exist('../dataset', 'dir')
    mkdir('../dataset')
end

% generate X randomly, 4-D double, the last dimension is the number of
% entries, we use 1x1x2 type to fit the imageInputLayer of the deep
% learning toolbox, which accepts inputs in HxWxC type, where H, W and C
% represents height, width and channel of the image, respectively. Here we
% put the feature dimension of the input data at the channel dimension.
%X = rand(10, 6, 1, 10000);
X =  [0 1 5 1 0 0 1 5 1 0 ...
      0 1 5 1 0 0 1 5 1 0 ...
      0 1 5 1 1 1 1 5 1 0 ...
      0 1 5 5 5 5 5 5 1 0 ...
      0 1 5 1 1 1 1 5 1 0 ...
      0 1 5 1 0 0 1 5 1 0 ]';

% apply criterion to produce Y
Y = reshape(mean(X, 'all') < 0.5, [], 1);
% convert to categorical type
Y = categorical(Y);

% save the dataset
save('../dataset/classification.mat', 'X', 'Y', 'seed');
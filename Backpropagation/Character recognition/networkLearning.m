P = alphabet;  % ����������� ���������� alphabet ��� ���. ����������
T = targets;  % ����������� ���������� targets ��� ���. ����������
    % ��������� � �������� ��������:
net.performFcn = 'sse'; % �������, ������������ ��� ������ ���������������� �������� ���� (������ ���, ����� ���������� train):
    % mae - ������� ���������� ������
    % mse - ������� ������������ ������
    % msereg - ������� ������������ ������ w/reg
    % sse - ��������� ������������ ������
net.trainParam.goal = 0.1; % ���������� ������������������ �����������  
net.trainParam.show = 20; % ������� ������ ����������� �� ����� 
net.trainParam.epochs = 5000; % ������������ ���������� ������ (����) ��������
net.trainParam.mc = 0.95; % ���������� ���������
[net,tr] = train(net,P,T); % ������� ���������� ���������� ��������� ����. ����������� �������� � ������� ���������� ��� LSTM ��������� ����� - trainNetwork
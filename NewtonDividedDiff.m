T1 = [1 5 8 12 15 19 22 26 29];
PM1 = [30 33 35 27 29 32 35 37 39];
Q1 = zeros(length(T1),length(T1));
T2 = [2 4 9 11 16 28 23 25 30];
PM2 = [36 35 30 28 34 32 36 37 40];
Q2 = zeros(length(T2),length(T2));
T3 = [6 13 20 27];
PM3 = [42 36 38 40];
Q3 = zeros(length(T3),length(T3));
T4 = [7 14 21 28];
PM4 = [32 34 36 35];
Q4 = zeros(length(T4),length(T4));

x = 10;

%newton1
for i = 1:length(T1)
    Q1(i,1) = PM1(i);
end
for j = 2:length(T1)
    for i = j:length(T1)
        Q1(i, j) = ((Q1(i, j-1) - Q1(i-1, j-1)) / (T1(i) - T1(i-(j-1))));
    end
end
newton1 = Q1(length(T1), length(T1));
for k = length(T1)-1: -1: 1
    newton1 = newton1 * (x - T1(k)) + Q1(k,k);
end
fprintf('PM of Station 1 at T = 10:');
disp(newton1);

%newton2
for i = 1:length(T2)
    Q2(i,1) = PM2(i);
end
for j = 2:length(T2)
    for i = j:length(T2)
        Q2(i, j) = ((Q2(i, j-1) - Q2(i-1, j-1)) / (T2(i) - T2(i-(j-1))));
    end
end
newton2 = Q2(length(T2), length(T2));
for k = length(T2)-1: -1: 1
    newton2 = newton2 * (x - T2(k)) + Q2(k,k);
end
fprintf('PM of Station 2 at T = 10:');
disp(newton2);

%newton3
for i = 1:length(T3)
    Q3(i,1) = PM3(i);
end
for j = 2:length(T3)
    for i = j:length(T3)
        Q3(i, j) = ((Q3(i, j-1) - Q3(i-1, j-1)) / (T3(i) - T3(i-(j-1))));
    end
end
newton3 = Q3(length(T3), length(T3));
for k = length(T3)-1: -1: 1
    newton3 = newton3 * (x - T3(k)) + Q3(k,k);
end
fprintf('PM of Station 3 at T = 10:');
disp(newton3);

%newton4
for i = 1:length(T4)
    Q4(i,1) = PM4(i);
end
for j = 2:length(T4)
    for i = j:length(T4)
        Q4(i, j) = ((Q4(i, j-1) - Q4(i-1, j-1)) / (T4(i) - T4(i-(j-1))));
    end
end
newton4 = Q4(length(T4), length(T4));
for k = length(T4)-1: -1: 1
    newton4 = newton4 * (x - T4(k)) + Q4(k,k);
end
fprintf('PM of Station 4 at T = 10:');
disp(newton4);

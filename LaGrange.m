T1 = [1 5 8 12 15 19 22 26 29];
PM1 = [30 33 35 27 29 32 35 37 39];

lagrange1 = 0;
for i = 1:length(T1)
   v = 1;
   for j = 1: length(PM1)
       if j ~= i
           L = poly(T1(j))/(T1(i)-T1(j));
           v = conv(v,L);
       end
       
   end
   pc = v*PM1(i);
   lagrange1 = lagrange1 + pc;
end
fprintf('PM of Station 1 at T = 10: ');
disp(polyval(lagrange1, 10));

T2 = [2 4 9 11 16 28 23 25 30];
PM2 = [36 35 30 28 34 32 36 37 40];

lagrange2 = 0;
for i = 1:length(T2)
   v = 1;
   for j = 1: length(PM2)
       if j ~= i
           L = poly(T2(j))/(T2(i)-T2(j));
           v = conv(v,L);
       end
       
   end
   pc = v*PM2(i);
   lagrange2 = lagrange2 + pc;
end
fprintf('PM of Station 2 at T = 10: ');
disp(polyval(lagrange2, 10));

T3 = [6 13 20 27];
PM3 = [42 36 38 40];

lagrange3 = 0;
for i = 1:length(T3)
   v = 1;
   for j = 1: length(PM3)
       if j ~= i
           L = poly(T3(j))/(T3(i)-T3(j));
           v = conv(v,L);
       end
       
   end
   pc = v*PM3(i);
   lagrange3 = lagrange3 + pc;
end
fprintf('PM of Station 3 at T = 10: ');
disp(polyval(lagrange3, 10));

T4 = [7 14 21 28];
PM4 = [32 34 36 35];

lagrange4 = 0;
for i = 1:length(T4)
   v = 1;
   for j = 1: length(PM4)
       if j ~= i
           L = poly(T4(j))/(T4(i)-T4(j));
           v = conv(v,L);
       end
       
   end
   pc = v*PM4(i);
   lagrange4 = lagrange4 + pc;
end
fprintf('PM of Station 4 at T = 10: ');
disp(polyval(lagrange4, 10));
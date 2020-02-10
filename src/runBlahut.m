function C = runBlahut()
C = zeros(5,5);
  for m = 10:10:50
      for n = 10:10:50
          disp(strcat('m = ', num2str(m), ', n = ', num2str(n)));
          P = binary_channel(m, n);
          P = P + ones(size(P))*0.00000001;
          [C(m/10,n/10), D] = blahut(P);
      end
  end
  disp('NOTICE: remember the m/j is the row and n/k is the column');
end

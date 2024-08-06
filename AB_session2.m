function AB_session2()
    % 1. تولید متغیر تصادفی 1x200
    randomVariable = rand(1, 200);
    
    % 2. پیدا کردن مقادیر کمتر از 0.5
    valuesBelowHalf = randomVariable(randomVariable < 0.5);
    
    % 3. ذخیره متغیر در حافظه
    save('valuesBelowHalf.mat', 'valuesBelowHalf');
    
    % 4. رسم نمودار خطی از مقادیر
    plot(valuesBelowHalf);
    title('Values below 0.5');
    xlabel('Index');
    ylabel('Value');
end

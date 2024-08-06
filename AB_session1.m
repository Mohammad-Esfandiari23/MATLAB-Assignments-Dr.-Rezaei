function [meanScore, standardError] = AB_session1()
    % Example inputs
    subjectCode = 'نمرات کلاس سایکوفیزیک آقای رضایت'; % subject code
    scores = [85, 92, 78, 88, 91]; % vector of 5 scores

    % Print the subject code
    fprintf('Working on subject %s...\n', subjectCode);
    
    % Sort the scores and remove the lowest one
    sortedScores = sort(scores);
    scoresToUse = sortedScores(2:end);
    
    % Calculate the mean
    meanScore = mean(scoresToUse);
    
    % Calculate the standard error of the mean using custom stderr function
    standardError = stderr(scoresToUse);
    
    % Display the results
    fprintf('Mean of top 4 scores: %.2f\n', meanScore);
    fprintf('Standard error of the mean: %.2f\n', standardError);
end

function se = stderr(x)
    se = std(x) / sqrt(length(x));
end

S = std(repCounts(:,1: sumoRep - 1));
u = mean(repCounts(:,sumoRep),'omitnan');
CI = ((1 - 0.95) * u);
t = tinv(1 - (1 - 0.95)/2, (sumoRep - 1));
n = (2^2 * t^2 * S^2)/CI^2;
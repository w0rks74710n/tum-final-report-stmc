function [] = sensitivityAnalysis(convergence)
  for numberOfZones=10:10:50
    for reductionCoefficient=.1:.1:.9
      for randomnessCoefficient=.1:.1:.5
        nl_generator(numberOfZones, reductionCoefficient, 
                     randomnessCoefficient, Counts_per_OD);
        [RMSN, Best_RMSN] = SPSA (convergence);
        save
      end
    end
  end 
end
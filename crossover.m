function [child1, child2] = crossover (perent1, perent2)

child1 = perent1;
child2 = perent2;
cp = round(length(perent1.genes)/2);

child1.genes(1:cp) = perent2.genes(1:cp);
child2.genes(1:cp) = perent1.genes(1:cp);
end

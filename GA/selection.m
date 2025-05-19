function [perent1, perent2] = selection(population)
fitness = zeros(1,length(population));
for i=1:length(population)
    fitness(i)=population(i).fitness;
end
[~,index] = max(fitness);
perent1 = population(index);
population(index)=[];
fitness(index)=[];
[~,index] = max(fitness);
perent2 = population(index);
end
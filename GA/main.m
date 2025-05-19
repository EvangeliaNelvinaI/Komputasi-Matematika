% Gen
target = 'Evangelia'
eva = length(target);
genes = create_genes(eva);

%fitnes
fitnes = calculate_fitness(genes,eva);

%populasi
population_size = 10;
population = create_population(target,population_size)
%selection
[perent1, perent2] = selection(population)
%crossover
[child1, child2] = crossover (perent1, perent2)
%mutation
mutation_rate = 0.5;
mutant1 = mutation(child1, mutation_rate)
mutant2 = mutation(child2, mutation_rate)

%regeneration
children = [mutant1 mutant2];
population = regeneration(children,population)
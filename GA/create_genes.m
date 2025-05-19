function genes = create_genes(eva)
random_number = randi ([32,126],1,eva);
genes = char(random_number);
end
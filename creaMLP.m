function [W V] = creaMLP(num_ent,num_neu)
    W = rand(num_neu,num_ent+1);
    V = rand(1,num_neu+1);
end
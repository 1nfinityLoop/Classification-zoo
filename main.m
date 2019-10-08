x = importdata('zoo.txt',',');
x(:,1)=[];

nb_output=7;
y=zeros(size(x,1),nb_output);#tableau pour le nombre de output
nb_couche_cache=18;
layer1 = zeros(1,nb_couche_cache); #tableau de la couche caché



 for i=1:size(y,1) #modifier le features en une valeur entiere en tableau de 1 et 0
    y(i,x(i,17))=1;
  end
x(:,17) = [];#enlever la colonne de y de la matrice des input

weight1= rand(size(x,2),nb_couche_cache); #generer aleatoirement le tableau des poids de la premiere couche
weight2 = rand(nb_couche_cache,nb_output); #generer aleatoirement le tableau des poifs de la 2eme couche
coste=[]

#entrainement
for k=1:55 #nombre iterration
  c =[];
for j=1:size(x,1)-15 #nombre dechantillon a parcourir 
  [layer1,output]= feedforward(x(j,:),weight1,weight2); #caclule du output 'hypothese' avec les poid en entrer
  [weight1,weight2]=backProbagation(x(j,:), layer1,weight1,weight2,y(j,:),output); #modifier les poids en fonctions du output trouvé
  c= [c; (y(j,:)-output).^2];
  
end
coste=[coste;sum(c)];
end
coste=coste/(size(x,1)*2)


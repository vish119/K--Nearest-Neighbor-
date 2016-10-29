X_train_file='F:\matlab\Assignment3Dataset\Human Activity Recognition\X_train.txt';
X_test_file='F:\matlab\Assignment3Dataset\Human Activity Recognition\X_test.txt';
Y_train_file='F:\matlab\Assignment3Dataset\Human Activity Recognition\Y_train.txt';
Y_test_file='F:\matlab\Assignment3Dataset\Human Activity Recognition\Y_test.txt';

delin=' ';
X_train=importdata(X_train_file,delin);
X_test=importdata(X_test_file,delin);
Y_train=importdata(Y_train_file,delin);
Y_test=importdata(Y_test_file,delin);
size(X_train)
size(Y_train)
KNN_model=fitcknn(X_train,Y_train,'NumNeighbors',7)
y_test_KNN=predict(KNN_model,X_test);

Correct_Predction_KNN=0;
for i=1:length(Y_test)
    if Y_test(i) == y_test_KNN(i)
        Correct_Predction_KNN= Correct_Predction_KNN+1;
    end
end
disp(Correct_Predction_KNN);
KNN_accuracy=(Correct_Predction_KNN/length(Y_test))*100;

Ouput = sprintf('Percentage of accuracy on test data using KNN algorithm is %f',KNN_accuracy);
disp(Ouput);

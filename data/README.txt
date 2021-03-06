==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - UniversitÓ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration 
and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. 
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers 
was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters 
and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). 
The sensor acceleration signal, which has gravitational and body motion components, was separated 
using a Butterworth low-pass filter into body acceleration and gravity. 
The gravitational force is assumed to have only low frequency components, 
therefore a filter with 0.3 Hz cutoff frequency was used. 
From each window, a vector of features was obtained by calculating variables 
from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.



- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.



- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.



The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 



- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.










========================================================== ================
Reconhecimento de atividade humana usando conjunto de dados de smartphones
VersŃo 1.0
========================================================== ================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Laboratˇrio de Sistemas Complexos NŃo Lineares
DITEN - UniversitÓ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Gŕnova, Itßlia.
activityrecognition@smartlab.ws
www.smartlab.ws
========================================================== ================

Os experimentos foram realizados com um grupo de 30 voluntßrios em uma faixa etßria de 19 a 48 anos.
Cada pessoa executou seis atividades (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
usando um smartphone (Samsung Galaxy S II) na cintura.
Usando seu aceler˘metro e giroscˇpio embutidos, capturamos a acelerašŃo linear 3-axial
e velocidade angular 3-axial a uma taxa constante de 50Hz.
Os experimentos foram gravados em vÝdeo para rotular os dados manualmente.
O conjunto de dados obtido foi dividido aleatoriamente em dois conjuntos, onde 70% dos voluntßrios
foi selecionado para gerar os dados de treinamento e 30% os dados de teste.

Os sinais do sensor (aceler˘metro e giroscˇpio) foram prÚ-processados ??pela aplicašŃo de filtros de ruÝdo
e, em seguida, amostrado em janelas deslizantes de largura fixa de 2,56 seg e sobreposišŃo de 50% (128 leituras / janela).
O sinal de acelerašŃo do sensor, que possui componentes gravitacionais e de movimento corporal, foi separado
usando um filtro passa-baixa Butterworth na acelerašŃo e gravidade do corpo.
A forša gravitacional Ú assumida como tendo apenas componentes de baixa frequŕncia,
portanto, um filtro com frequŕncia de corte de 0,3 Hz foi usado.
De cada janela, um vetor de recursos foi obtido calculando as varißveis
do domÝnio do tempo e da frequŕncia. Veja 'features_info.txt' para mais detalhes.

Para cada registro Ú fornecido:
============================================

- AcelerašŃo triaxial do aceler˘metro (acelerašŃo total) e a acelerašŃo corporal estimada.
- Velocidade angular triaxial do giroscˇpio.
- Um vetor de 561 recursos com varißveis ??de domÝnio de tempo e frequŕncia.
- Sua etiqueta de atividade.
- Um identificador do sujeito que realizou o experimento.

O conjunto de dados inclui os seguintes arquivos:
=================================================

- 'README.txt'

- 'features_info.txt': Mostra informaš§es sobre as varißveis ??usadas no vetor de caracterÝstica.

- 'features.txt': Lista de todos os recursos.

- 'activity_labels.txt': Vincula os rˇtulos da classe ao nome da atividade.



- 'train / X_train.txt': Conjunto de treinamento.

- 'train / y_train.txt': rˇtulos de treinamento.



- 'test / X_test.txt': Conjunto de teste.

- 'test / y_test.txt': Rˇtulos de teste.



Os arquivos a seguir estŃo disponÝveis para os dados de trem e teste. Suas descriš§es sŃo equivalentes.

- 'train / subject_train.txt': Cada linha identifica o sujeito que realizou a atividade para cada amostra de janela. Seu intervalo Ú de 1 a 30.



- 'train / Inertial Signals / total_acc_x_train.txt': O sinal de acelerašŃo do eixo X do aceler˘metro do smartphone em unidades de gravidade padrŃo 'g'. Cada linha mostra um vetor de 128 elementos. A mesma descrišŃo se aplica aos arquivos 'total_acc_x_train.txt' e 'total_acc_z_train.txt' para os eixos Y e Z.

- 'train / Inertial Signals / body_acc_x_train.txt': O sinal de acelerašŃo do corpo obtido subtraindo a gravidade da acelerašŃo total.

- 'train / Inertial Signals / body_gyro_x_train.txt': O vetor de velocidade angular medido pelo giroscˇpio para cada amostra de janela. As unidades sŃo radianos / segundo.

Notas:
======
- Os recursos sŃo normalizados e limitados em [-1,1].
- Cada vetor de caracterÝstica Ú uma linha no arquivo de texto.

Para obter mais informaš§es sobre este conjunto de dados, entre em contato com: activityrecognition@smartlab.ws

Licenša:
========
O uso deste conjunto de dados em publicaš§es deve ser reconhecido referenciando a seguinte publicašŃo [1]

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra e Jorge L. Reyes-Ortiz. Reconhecimento de atividade humana em smartphones usando uma mßquina de vetores de suporte compatÝvel com hardware multiclasse. Workshop Internacional de Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Espanha. Dezembro de 2012

Este conjunto de dados Ú distribuÝdo NO ESTADO EM QUE SE ENCONTRA e nenhuma responsabilidade implÝcita ou explÝcita pode ser enderešada aos autores ou suas instituiš§es por seu uso ou mau uso. Qualquer uso comercial Ú proibido.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. Novembro de 2012.
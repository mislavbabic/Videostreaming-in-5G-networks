clear; clc;
close all;

%NETFLIX STATIC
%Netlix-static Segment 1 means
Mean_NS_Seg_1 = [2.10, 2.38, 2.47, 3.38, 2.73, 2.55]';

%Netflix-static Segment 2 means
Mean_NS_Seg_2 = [15579.52, 17048.51, 18730.43, 10670.97, 13018.54, 15273.3]';

%Netflix-static Rasodjela_t means
Mean_NS_Ras_t = [42.46, 38.65, 40.25, 30.78, 32.4, 34.14]';

%Netflix-static Rasodjela_T means
Mean_NS_Ras_T = [1.411, 1.45, 1.28, 2.43, 2.18, 2.00]';

%NETFLIX DRIVING
Mean_ND_Seg_1 = [2.29, 3.68, 2.37, 4.3, 2.55, 2.83]';

Mean_ND_Seg_2 = [7432.01, 15718.73, 10051.85, 7612.68, 10082.44, 5358.79]';

Mean_ND_Ras_t = [42.2, 25.67, 46.75, 30.74, 37.47, 38.34]';

Mean_ND_Ras_T = [3.14, 2.00, 2.18, 2.37, 3.94, 6.84]';

%AMAZON PRIME STATIC
Mean_APS_Seg_1 = [6.08, 4.48, 5.60, 42.43, 8.84, 7.44]';

Mean_APS_Seg_2 = [4589.77, 4384.51, 4792.53, 782.03, 8081.38, 8195.56]';

Mean_APS_Ras_t = [1.66, 2.09, 1.67, 38.56, 1.21, 1.38]';

Mean_APS_Ras_T = [1.45, 1.71, 1.46, 1.91, 2.31, 2.5]';

%AMAZON PRIME DRIVING
Mean_APD_Seg_1 = [8.06, 9.59, 12.96, 8.66, 11.1, 21.04]';

Mean_APD_Seg_2 = [1341.58, 1311.41, 1125.65, 1151.16, 1127.7, 1662.14]';

Mean_APD_Ras_t = [2.39, 2.65, 2.09, 1.25, 1.46, 1.72]';

Mean_APD_Ras_T = [2.18, 2.27, 2.35, 1.94, 2.03, 2.24]';

%NETFLIX STATIC
fprintf("\nSEGMENT 1");
NS_1 = corr(Mean_NS_Seg_1, Mean_NS_Seg_2);
fprintf("\nSeg1->Seg2 = %f\n", NS_1);
NS_2 = corr(Mean_NS_Seg_1, Mean_NS_Ras_t);
fprintf("\nSeg1->Ras_t = %f\n", NS_2);
NS_3 = corr(Mean_NS_Seg_1, Mean_NS_Ras_T);
fprintf("\nSeg1->Ras_T = %f\n", NS_3);

fprintf("\nSEGMENT 2");
NS_4 = corr(Mean_NS_Seg_2, Mean_NS_Seg_1);
fprintf("\nSeg2->Seg1 = %f\n", NS_1);
NS_5 = corr(Mean_NS_Seg_2, Mean_NS_Ras_t);
fprintf("\nSeg2->Ras_t = %f\n", NS_2);
NS_6 = corr(Mean_NS_Seg_2, Mean_NS_Ras_T);
fprintf("\nSeg2->Ras_T = %f\n", NS_3);

fprintf("\nRASPODJELA t");
NS_7 = corr(Mean_NS_Ras_t, Mean_NS_Seg_1);
fprintf("\nRas_t->Seg1 = %f\n", NS_1);
NS_8 = corr(Mean_NS_Ras_t, Mean_NS_Seg_2);
fprintf("\nRas_t->Seg2 = %f\n", NS_2);
NS_9 = corr(Mean_NS_Ras_t, Mean_NS_Ras_T);
fprintf("\nRas_t->Ras_T = %f\n", NS_3);

fprintf("\nRASPODJELA T");
NS_10 = corr(Mean_NS_Ras_T, Mean_NS_Seg_1);
fprintf("\nRas_t->Seg1 = %f\n", NS_1);
NS_11 = corr(Mean_NS_Ras_T, Mean_NS_Seg_2);
fprintf("\nRas_t->Seg2 = %f\n", NS_2);
NS_12 = corr(Mean_NS_Ras_T, Mean_NS_Ras_t);
fprintf("\nRas_t->Ras_T = %f\n", NS_3);

%NETFLIX DRIVING
% fprintf("SEGMENT 1");
% ND_1 = corr(Mean_ND_Seg_1, Mean_ND_Seg_2);
% fprintf("\nSeg1->Seg2 = %f\n", ND_1);
% ND_2 = corr(Mean_ND_Seg_1, Mean_ND_Ras_t);
% fprintf("\nSeg1->Ras_t = %f\n", ND_2);
% ND_3 = corr(Mean_ND_Seg_1, Mean_ND_Ras_T);
% fprintf("\nSeg1->Ras_T = %f\n", ND_3);

% fprintf("SEGMENT 2");
% ND_4 = corr(Mean_ND_Seg_2, Mean_ND_Seg_1);
% fprintf("\nSeg1->Seg2 = %f\n", ND_4);
% ND_5 = corr(Mean_ND_Seg_2, Mean_ND_Ras_t);
% fprintf("\nSeg1->Ras_t = %f\n", ND_5);
% ND_6 = corr(Mean_ND_Seg_2, Mean_ND_Ras_T);
% fprintf("\nSeg1->Ras_T = %f\n", ND_6);

% fprintf("Raspodjela t");
% ND_7 = corr(Mean_ND_Ras_t, Mean_ND_Seg_1);
% fprintf("\nSeg1->Seg2 = %f\n", ND_7);
% ND_8 = corr(Mean_ND_Ras_t, Mean_ND_Seg_2);
% fprintf("\nSeg1->Ras_t = %f\n", ND_8);
% ND_9 = corr(Mean_ND_Ras_t, Mean_ND_Ras_T);
% fprintf("\nSeg1->Ras_T = %f\n", ND_9);

% fprintf("Raspodjela T");
% ND_10 = corr(Mean_ND_Ras_T, Mean_ND_Seg_1);
% fprintf("\nSeg1->Seg2 = %f\n", ND_10);
% ND_11 = corr(Mean_ND_Ras_T, Mean_ND_Seg_2);
% fprintf("\nSeg1->Ras_t = %f\n", ND_11);
% ND_12 = corr(Mean_ND_Ras_T, Mean_ND_Ras_t);
% fprintf("\nSeg1->Ras_T = %f\n", ND_12);

%AMAZON PRIME STATIC
% fprintf("SEGMENT 1");
% APS_1 = corr(Mean_APS_Seg_1, Mean_APS_Seg_2);
% fprintf("\nSeg1->Seg2 = %f\n", APS_1);
% APS_2 = corr(Mean_APS_Seg_1, Mean_APS_Ras_t);
% fprintf("\nSeg1->Ras_t = %f\n", APS_2);
% APS_3 = corr(Mean_APS_Seg_1, Mean_APS_Ras_T);
% fprintf("\nSeg1->Ras_T = %f\n", APS_3);

% fprintf("SEGMENT 2");
% APS_4 = corr(Mean_APS_Seg_2, Mean_APS_Seg_1);
% fprintf("\nSeg2->Seg1 = %f\n", APS_4);
% APS_5 = corr(Mean_APS_Seg_2, Mean_APS_Ras_t);
% fprintf("\nSeg2->Ras_t = %f\n", APS_5);
% APS_6 = corr(Mean_APS_Seg_2, Mean_APS_Ras_T);
% fprintf("\nSeg2->Ras_T = %f\n", APS_6);

% fprintf("Raspodjela t");
% APS_7 = corr(Mean_APS_Ras_t, Mean_APS_Seg_1);
% fprintf("\nRas_t->Seg1 = %f\n", APS_7);
% APS_8 = corr(Mean_APS_Ras_t, Mean_APS_Seg_2);
% fprintf("\nRas_t->Seg2 = %f\n", APS_8);
% APS_9 = corr(Mean_APS_Ras_t, Mean_APS_Ras_T);
% fprintf("\nRas_t->Ras_T = %f\n", APS_9);

% fprintf("Raspodjela T");
% APS_10 = corr(Mean_APS_Ras_T, Mean_APS_Seg_1);
% fprintf("\nRas_T->Seg1 = %f\n", APS_10);
% APS_11 = corr(Mean_APS_Ras_T, Mean_APS_Seg_2);
% fprintf("\nRas_T->Seg2 = %f\n", APS_11);
% APS_12 = corr(Mean_APS_Ras_T, Mean_APS_Ras_t);
% fprintf("\nRas_T->Ras_t = %f\n", APS_12);

%AMAZON PRIME DRIVING
% fprintf("SEGMENT 1");
% APD_1 = corr(Mean_APD_Seg_1, Mean_APD_Seg_2);
% fprintf("\nSeg1->Seg2 = %f\n", APD_1);
% APD_2 = corr(Mean_APD_Seg_1, Mean_APD_Ras_t);
% fprintf("\nSeg1->Ras_t = %f\n", APD_2);
% APD_3 = corr(Mean_APD_Seg_1, Mean_APD_Ras_T);
% fprintf("\nSeg1->Ras_T = %f\n", APD_3);

% fprintf("SEGMENT 2");
% APD_5 = corr(Mean_APD_Seg_2, Mean_APD_Seg_1);
% fprintf("\nSeg2->Seg1 = %f\n", APD_5);
% APD_6 = corr(Mean_APD_Seg_2, Mean_APD_Ras_t);
% fprintf("\nSeg2->Ras_t = %f\n", APD_6);
% APD_7 = corr(Mean_APD_Seg_2, Mean_APD_Ras_T);
% fprintf("\nSeg2->Ras_T = %f\n", APD_7);

% fprintf("Raspodjela t");
% APD_8 = corr(Mean_APD_Ras_t, Mean_APD_Seg_1);
% fprintf("\nRas_t->Seg1 = %f\n", APD_8);
% APD_9 = corr(Mean_APD_Ras_t, Mean_APD_Seg_2);
% fprintf("\nRas_t->Seg2 = %f\n", APD_9);
% APD_10 = corr(Mean_APD_Ras_t, Mean_APD_Ras_T);
% fprintf("\nRas_t->Ras_T = %f\n", APD_10);

% fprintf("Raspodjela T");
% APS_10 = corr(Mean_APD_Ras_T, Mean_APD_Seg_1);
% fprintf("\nRas_T->Seg1 = %f\n", APS_10);
% APS_11 = corr(Mean_APD_Ras_T, Mean_APD_Seg_2);
% fprintf("\nRas_T->Seg2 = %f\n", APS_11);
% APS_12 = corr(Mean_APD_Ras_T, Mean_APD_Ras_t);
% fprintf("\nRas_T->Ras_t = %f\n", APS_12);
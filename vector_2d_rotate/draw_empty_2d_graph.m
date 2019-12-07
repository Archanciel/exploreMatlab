% Script for testing the centeraxes.m function

clear
clf
clc

xlabel('x');
ylabel('y')
%thicklines(2);

set(gca,'ylim',[-10 10],'xlim',[-10 10],'xtick',-10:10,'ytick',-10:10)
opt.fontname = 'helvetica';
opt.fontsize = 8;

centeraxes(gca,opt);

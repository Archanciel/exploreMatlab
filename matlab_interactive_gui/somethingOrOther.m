
function somethingOrOther( )
    map=rand(100,100,21);
    figure(1);
    clf;
    i=1 %first layer. 
    hImage = imagesc(map(:,:,i));
    callback = @(src,evt) sliderCallback( src, hImage, map );
    hSlider = uicontrol( 'style','slider','position',[100 400 200 20],...
    'min',0,'max',10,'Callback', callback );

    
function sliderCallback( hSlider, hImage, map )
    idx = round( hSlider.Value );
    hImage.CData = map(:,:,idx);

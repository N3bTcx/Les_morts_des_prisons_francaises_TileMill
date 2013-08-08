/*
#Infos
- Map for http://vivresaprison.overblog.com/ 
- CSV from http://vivresaprison.overblog.com/
- Map by n3b : n3b (at) riseup dot net

#ToDo
- Working 'Mustache' for hover labels and attached to button with 'movetip' (http://www.mapbox.com/wax/movetip.html)
- Better background
- Style and textures
- SVG icons
- Color icon linked to number of deaths

Thanks a lot to Mapbox team : Dane Springmeyer, Tom MacWright, AJ Ashton, and all the others !
*/

@water: #e6e3e3;

Map { background-color: @water; }

#countries { 
  [SOVEREIGNT = 'France']
  ::polygon 
    {    
    polygon-fill: #fff; 
    line-width: 0.5;
    line-join: round;
    line-opacity: 0.7;
    line-comp-op: multiply;
    line-smooth: 12;
    polygon-opacity: 0.6;
    //polygon-comp-op:color-burn;
  } 
}

#MortCSV {   
  [zoom =  7]{marker-width:9;}
  [zoom >  7]{marker-width:15;}  
  ['NombreParPrison' = 1] {marker-fill:#838383;}
  ['NombreParPrison' = 2] {marker-fill:#525252;}
  ['NombreParPrison' >= 3]{marker-fill:#000000;}
  //marker-fill:#fd0000;
  marker-file:url(img/marker-24.svg);
  marker-line-width:1;
  marker-line-color:#FFFFFF;
  marker-allow-overlap:true;
  marker-transform:scale([NombreParPrison],[NombreParPrison]);
  ::MortCSV [zoom > 6]{  
  	[zoom <= 7]{text-allow-overlap: false;}
  	[zoom >  7]{text-allow-overlap: true;}  
    text-face-name:'Arial Regular';
    text-fill:#000000;
    text-name:"[LabelName]";
    text-size:13px;
    text-halo-fill: #FFFFFF;
    text-halo-radius: 1;
    text-placement: interior;
    text-dy: 7;
    text-wrap-width:10;
    text-placement-type: simple;
    text-placements: "N,SE,SW,S,W,NE,NW";
    text-allow-overlap: true;
    //text-min-padding: 4px;    
	}
   /*::MortCSV [zoom <= 6]{
    text-face-name:'Arial Regular';
    text-fill:#FFFFFF;
    text-name:"[NombreParPrison]";
    text-size:16px;
    text-halo-fill: #000000;
    text-halo-radius: 1;
    text-placement: point;
    text-dy: 10;
    text-wrap-width:0;
    text-placement-type: simple;
    text-placements: "N,SE,SW,S,W,NE,NW";
    text-allow-overlap: true;  
    text-comp-op:src-over;
	}*/
}

#texture  {
  polygon-pattern-file: url(img/breeze_block.png);
  polygon-pattern-comp-op: multiply;
  polygon-pattern-alignment: global;
  polygon-opacity:0.16;
}

/*
#wkt {
  line-width:2;
  //line-smooth: 12;
  line-color:#168;
}
*/
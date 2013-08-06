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
    line-opacity: 0.5;
    line-comp-op: multiply;
    line-smooth: 12;
    polygon-opacity: 0.6;
    //polygon-comp-op:color-burn;
  } 
}

#MortCSV {   
  marker-width:10;
  marker-fill:#555555;
  //marker-comp-op:color-burn;
  ::MortCSV {
    text-face-name:'Arial Regular';
    text-name:"[Prison]";
    text-size:12px;
    text-halo-fill: #FFFFFF;
    text-halo-radius: 1;
    text-placement: interior;
    //text-allow-overlap: true;
    text-dy: 7;
    //text-wrap-width:10;
    //text-min-padding: 4px;
    text-placement-type: simple;
    text-placements: "N,S,W,NE,NW";
	}
}

#texture  {
  polygon-pattern-file: url(img/breeze_block.png);
  polygon-pattern-comp-op: multiply;
  polygon-opacity:0.15;
}

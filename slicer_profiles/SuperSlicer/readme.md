This is a bundle of configurations for Superslicer - atm it contains a profile for the 
V-Core-3 300, with 400 and 500 profiles about to be added.  

This is based on the flow limitations of the E3D V6 hotend, as it's considered the "stock" 
configuration of a V-Core 3. It is easy to adjust for higher flow hotends by increasing the flow
limit in the "print profile" and the speed choices for the different features like infill, 
perimeter, first layer etc.  

To install:  

1.) Download the INI-file, plus the SVG- and STL-files that match your printer size.  
2.) In Superslicer, open the "File" menu and chose Import/Import Config Bundle.  
3.) Choose the INI-file.  
4.) Switch to the tab "Printer settings"  
5.) Make sure that the right profile (e.g. "V-Core 3 300") is selected  
6.) To the right of the profile name, find and press the button "Add a physical printer"  
7.) In the window, add the following data:  
      - give your printer a name, e.g. "V-Core-3",   
      - in "hostname", enter the IP-address or the network name.  
          "V-COREOS.LOCAL" will work in most cases.  
      - in "API-KEY", anything will work, like "abcd"  
8.) Optional: Now we give the bed a nicer outfit.  
    In the "printer settings" tab, find "bed shape" at the top and press "set"  
    Now you may press "load" under Texture and "Model" and load the SVG- and PNG-files  
    for your printer size.  
    
That's it! You just added a printer profile for your V-Core-3, some basic filament profiles for 
PLA, PETG and ABS, and a few print profiles. These are a starting point that works on a stock V-Core-3.
Depending on your hotend and the requirements of your print objects, you may want to adjust settings and 
also create new profiles.

Attribution: 
The graphics for the bed (PNG and SVG) were created by PwnCNC and published on Thingiverse under the 
Creative Commons Attribution license: https://www.thingiverse.com/thing:4861532/files


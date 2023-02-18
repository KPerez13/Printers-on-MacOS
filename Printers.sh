#!/bin/bash
sudo cp /System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/PrintCore.framework/Versions/A/Resources/GenericPrinter.ppd /Library/Printers/PPDs/Contents/Resources/  #copying PPD(PostScript Printer Description file) using sudo because we're copying it form the system library


lpadmin -p PRINTER_NAME -L "LOCATION" -E -v ipp://x.x.x.x  -P /Library/Printers/PPDs/Contents/Resources/GenericPrinter.ppd #-p flag for the name of the printer, -L flag for locatoin and -v for the IP address for the printer




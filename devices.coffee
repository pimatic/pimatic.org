module.exports = [
  {
    brand: 'Conrad'
    model: 'Nr. 640472'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 2'
    description: 'Socket switch 2000W'
    notes: 'Typically sold as a bundle (Nr. 640475) of three plugs and a Remote Control, <a href="http://www.produktinfo.conrad.com/datenblaetter/625000-649999/640472-an-01-ml-FUNKSCHALTSTECKDOSE_433MHZ_de_en_fr_nl.pdf" target="_blank" rel="nofollow">Datasheet</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'Brennenstuhl'
    model: 'RCS-N1000 Comfort'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 2'
    description: 'Socket switch'
    notes: ''
    protocol: '433 MHz'
    buy: [
      'https://www.amazon.de/dp/B001AX8QUM'
    ]
  }
  {
    brand: 'Chacon'
    model: 'EMW200'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 26'
    description: 'Socket switch'
    notes: 'EMW200RC Sochekt Switch and EMW200TC Remote Control'
    protocol: '433 MHz'
  }
  {
    brand: 'Comag'
    model: '9068'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 2'
    description: '4-pack Socket switch & RC'
    notes: 'housecode: dip-sw [ 1 2 3 4 5] = [value 16+8+4+2+1], unitCode: dip-sw [A B C D E] = [value 16+8+4+2+1]'
    protocol: '433 MHz'
  }
  {
    brand: 'DAYCOM'
    model: 'FSU-131'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 15'
    description: 'Wall switch'
    notes: 'Typically sold as a set of three switches in Germany, e.g. by Pollin'
    protocol: '433 MHz'
    buy: [
      'http://www.pollin.de/shop/dt/MzY5ODQ0OTk-/'
    ]
  }
  {
    brand: 'DEMA'
    model: '59009'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 6'
    description: '4-pack socket switch'
    notes: 'Address has to be set by dipswitch'
    protocol: '433 MHz'
  }
  {
    brand: 'ELRO/Home Easy'
    model: 'HE800'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Rawswitch'
    description: 'Socket switch'
    notes: 'Socket Switch 460W. Flat design. <a href="http://www.elro.eu/de/produkte/cat/home-automation/home-easy-next/sets2/schalterset" target="_blank" rel="nofollow">Product page</a>'
    protocol: '433 MHz'
    buy: [
      'https://www.amazon.de/dp/B00EUC1G3E'
    ]
  }
  {
    brand: 'ELRO/Home Easy'
    model: 'HE877'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 2'
    description: 'Socket switch'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'ELRO/Home Easy'
    model: 'AB440S / xx'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 4'
    description: 'Socket switch'
    notes: 'Address has to be set by dipswitch. Setting the first and the last switch to “on”, translates translates to 10001 (=17) and not 01110 (=14) as it was the case with pilight'
    protocol: '433 MHz'
    buy: [
      'https://www.amazon.de/dp/B005552I7S'
    ]
  }
  {
    brand: 'Heitech'
    model: 'Nr: 04002373'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 2'
    description: '3-pack Socket switch, 1 RC, 1000W'
    notes: '<a href="http://www.heitech-promotion.de/shop/elektro/funksteckdosen-zeitschaltuhren/funksteckdosen-set-4-teilig" target="_blank" rel="nofollow">Product Page</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'Impuls'
    model: ''
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 6'
    description: '3-pack Socket switch'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'Intertechno'
    model: 'IT-1500'
    plugin: 'pimatic-homeduino'
    type: 'switch'
    description: '3-pack socketswitch'
    recommended: true
    imageLink: 'https://www.amazon.de/gp/product/B0054IPASK/ref=as_li_tl?ie=UTF8&camp=1638&creative=6742&creativeASIN=B0054IPASK&linkCode=as2&tag=pimatic-21'
    image: 'https://ws-eu.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B0054IPASK&Format=_SL160_&ID=AsinImage&MarketPlace=DE&ServiceVersion=20070822&WS=1&tag=pimatic-21'
    buy: [
      'https://www.amazon.de/dp/B0054IPASK'
    ]
    protocol: '433 MHz'
  }
  {
    brand: 'Intertechno'
    model: 'ITL-230'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 4'
    description: 'Build-in switch (receiver)'
    notes: 'Not suitable for LEDs &amp; Energy Saving Lamps, <a href="http://intertechno.at/produkte/empfaenger/schalter/ITL-230.html" target="_blank" rel="nofollow">Info</a>. Although not advertised, can also be used as a dimmer.'
    protocol: '433 MHz'
    buy: [
      'https://www.amazon.de/dp/B00392SFG2'
    ]
  }
  {
    brand: 'Intertechno'
    model: 'ITL-1000'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'in-wall remote'
    notes: 'Has wheel codes which need to be <a href="https://github.com/pimatic/pimatic/issues/380" target="_blank" rel="nofollow">translated</a>'
    protocol: '433 MHz'
    buy: [
      'https://www.amazon.de/dp/B002S2PQ70'
    ]
  }
  {
    brand: 'Intertechno'
    model: 'ITL-1500'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'a socketswitch'
    notes: ''
    protocol: '433 MHz'
    buy: [
      'https://www.amazon.de/dp/B0056ZJU28'
    ]
  }
  {
    brand: 'Intertechno'
    model: 'ITS-2000'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'wall switch'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'Intertechno'
    model: 'YWT-8500'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'wall remote'
    notes: 'Has wheel codes which need to be <a href="https://github.com/pimatic/pimatic/issues/380" target="_blank" rel="nofollow">translated</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'AWST-8802'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: '2-channel wall remote'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'AWST-8800'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'Wall remote'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'AWMT-003'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'Build-in switch (sender)'
    notes: 'Use a traditional wall switch as wireless switch'
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'AWMR-300'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'Mini Built-in Switch'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'AKCT-510'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: '1-channel mini remote'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ACD-1000'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'Socket switch 1000w'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ACD-3500'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'Socket switch 3500w'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'APCR-2300'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'Power strip receiver'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'AGDR-3500'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'Splash proof outdoor Socket switch'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'AFR-060'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'Fitting switch'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ACM-1000'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'Build-in switch'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ACM-3500'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: '3-channel build-in switch'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'APA3-1500R'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: '3-pack switch'
    notes: 'Very cheap <a href="http://www.bcc.nl/klikaanklikuit-startpakket-apa3-1500r(72344)?fh_location=%2F%2Fcatalog01%2Fnl_nl%2F%24s%3Dklikaanklikuit%5Cu0020startpakket%5Cu0020apa3-1500r&amp;search=klikaanklikuit%20startpakket%20apa3-1500r" target="_blank" rel="nofollow">BUY</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'APA2-2300R'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: '2-pack switch'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ACDB-7000C'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'Doorbell'
    notes: 'Can only receive ‘on’ state'
    protocol: '433 MHz'
  }
  {
    brand: 'Pollin'
    model: 'PFS-3'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 2'
    description: 'Socket switch'
    notes: 'housecode: dip-sw [ 1 2 3 4 5] = [value 16+8+4+2+1] unitCode: dip-sw [A B C D E] = [value 16+8+4+2+1] <a href="http://forum.pimatic.org/topic/180/use-rf-switches-without-pilight/18#">INFO</a> <a href="http://www.pollin.de/shop/dt/NTAzOTQ0OTk-/Haustechnik/Funkschaltsysteme/Ersatz_Funksteckdose.html" target="_blank" rel="nofollow">BUY</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'MBO'
    model: 'Telecommander 01'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 20'
    description: 'Socket switch'
    notes: 'has four DIP-switches internally, factory setting is 0-0-0-0 (unitCode:0). retired product, but can be occasionally found on e-bay, MBO brand is part of Medion since 2004'
    protocol: '433 MHz'
  }
  {
    brand: 'Eurodomest'
    model: '972080'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 5'
    description: 'Socket switch'
    notes: 'Cheap switches from Action (dutch store) for 3 sockets for 10 euro'
    protocol: '433 MHz'
  }
  {
    brand: 'Mumbi'
    model: 'm-FS300'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 2'
    description: 'Socket switch'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'Power Remote / Steffen'
    model: '1204380'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 24'
    description: 'Socket switch & remote'
    notes: ''
    protocol: '433 MHz'
    buy: [
      'http://www.conrad.ch/ce/de/product/059712/Power-Remote-Funkset-1204380-1'
    ]
  }
  {
    brand: 'Lidl'
    model: '0655B'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 25'
    description: 'Socket switch'
    notes: 'Old make, no longer sold'
    protocol: '433 MHz'
  }
  {
    brand: 'oh!haus & Co.'
    model: 'OHBI, OHBE'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 28'
    description: 'Socket switch & remote'
    notes: '<a href="https://www.youtube.com/watch?v=LydduaDIDrE" target="_blank" rel="nofollow">Product Video</a> and <a href="http://www.pxsl.es/tienda/product_info.php?manufacturers_id=11&amp;products_id=193&amp;osCsid=s1jf1t53t20olbhqigim77n916" target="_blank" rel="nofollow">Shop</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'Toom'
    model: '1919396'
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Rolling1'
    description: 'Outdoor Socket'
    notes: 'From “Toom Baumarkt”, <a href="https://forum.pimatic.org/topic/2548/outdoor-switch-toom" target="_blank" rel="nofollow">see this thread for Infos</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'Etekcity Remote Plug'
    model: ''
    type: 'switch'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 8'
    description: 'Socket switch'
    notes: 'Sold by amazon in different sets'
    protocol: '433 MHz'
    buy: [
      'https://www.amazon.de/dp/B016I3U9H6'
    ]
  }
  {
    brand: 'KAKU / COCO'
    model: 'AFR-100'
    type: 'dimmer'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Dimmer 1'
    description: 'Fitting dimmer'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ACD-200'
    type: 'dimmer'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Dimmer 1'
    description: 'Socket dimmer'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ACM-LV24'
    type: 'dimmer'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Dimmer 1'
    description: 'Dimmer for 12-24V LED strips'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ACM-100'
    type: 'dimmer'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Dimmer 1'
    description: 'Build-in dimmer'
    notes: 'Multi dimmer'
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ACM-250'
    type: 'dimmer'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Dimmer 1'
    description: 'Build-in dimmer'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ACM-300'
    type: 'dimmer'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Dimmer 1'
    description: 'Build-in dimmer'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'AWMD-250'
    type: 'dimmer'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Dimmer 1'
    description: 'Build-in mini dimmer'
    notes: 'Multi dimmer'
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'AWMR-210'
    type: 'dimmer'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Dimmer 1'
    description: 'Build-in mini dimmer'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'AWMR-230'
    type: 'dimmer'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Dimmer 1'
    description: 'Build-in mini dimmer'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'KAKU AGDR-300'
    type: 'dimmer'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Dimmer 1'
    description: 'Splash proof outdoor Socket switch with integrated dimmer'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ACM-LV24'
    type: 'dimmer'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Dimmer 1'
    description: 'Mini 12-24 V LED dimmer'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'Intertechno'
    model: 'ITLR-300'
    type: 'dimmer'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Dimmer 1'
    description: 'Socket dimmer'
    notes: 'Suitable for Lamps from 40-300 Watts, <a href="http://www.intertechno.at/produkte/zwischenstecker/dimmer/ITLR-300.html" target="_blank" rel="nofollow">Product Description &amp; Manual</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'Intertechno'
    model: 'ITDM-250'
    type: 'dimmer'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Dimmer 1'
    description: 'Build-in Dimmer'
    notes: 'Suitable for Lamps (incl. LEDs) from 3-250 Watts, like ITL-250, but designed for installation behind wall switch, Tested with Raimond dimmable LED-Lamp 2-25 Watts'
    protocol: '433 MHz'
  }
  {
    brand: 'Intertechno'
    model: 'ITL-230'
    type: 'dimmer'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Dimmer 1'
    description: 'Build-in switch (receiver)'
    notes: 'Not suitable for LEDs &amp; Energy Saving Lamps, <a href="http://intertechno.at/produkte/empfaenger/schalter/ITL-230.html" target="_blank" rel="nofollow">Info</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'Intertechno'
    model: 'ITL-500'
    type: 'shutter'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'Roller shutter switch'
    notes: '<a href="http://intertechno.at/front/produkte/empfanger/jalousien/itl-500/" target="_blank" rel="nofollow">product page</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ASUN-650'
    type: 'shutter'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Switch 1'
    description: 'Roller shutter switch'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'Rohrmotor24 / Romotec'
    model: 'RMF-R1/UP'
    type: 'shutter'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Shutter 3'
    description: 'Roller shutter switch'
    notes: 'Wallbox, flush-mounted, deep flush socket req’d <a href="http://www.ebay.de/itm/Funkempfanger-nachrusten-f-Rolladen-Jalousie-Markisenmotoren-/171356816049?pt=LH_DefaultDomain_77&amp;hash=item27e5a982b1" target="_blank" rel="nofollow">Buy</a>. Keeps config after power-loss, external push-button'
    protocol: '433 MHz'
  }
  {
    brand: 'Romotec'
    model: 'RMF-RS1/UP'
    type: 'shutter'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Shutter 3'
    description: 'Roller shutter switch'
    notes: 'Surface Mount Box <a href="http://www.rohrmotor24.eu/RMF-Funkempfaenger-fuer-1-Motor_1" target="_blank" rel="nofollow">Info</a>'
    protocol: '433 MHz'
  }
  {
    brand: "Renkforce"
    model: "LM-101LD"
    type: "smokedetector"
    plugin: 'pimatic-homeduino'
    pluginInfo: "alarm1"
    description: "Wireless Smoke Detector"
    notes: "<a href=\"https://www.conrad.de/de/funk-rauchwarnmelder-vernetzbar-renkforce-rf101-batteriebetrieben-1274868.html\" target=\"_blank\" rel=\"nofollow\">Available at Conrad</a>"
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'AWST-6000'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'PIR 5'
    description: 'Movement sensor'
    notes: 'disable reset timer: “autoReset”: false'
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'APIR-2150'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'PIR 5'
    description: 'Outdoor movement sensor'
    notes: 'disable reset timer: “autoReset”: false'
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'AMST-606'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Contact 1'
    description: 'Door sensor'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ACDB-7000B'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'PIR 5'
    description: 'Doorbel sender'
    notes: 'Only sends ‘open’ (needs auto reset)'
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ACDB-7000A'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'PIR 5'
    description: 'Doorbel sender'
    notes: 'Only sends ‘open’ (needs auto reset)'
    protocol: '433 MHz'
  }
  {
    brand: 'KAKU / COCO'
    model: 'ABST-604'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'PIR 5'
    description: 'Twilight sensor'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'ELRO/Home Easy'
    model: 'HE-852'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Doorbell 1'
    description: 'Magnetic switch'
    notes: 'Use “HomeduinoRFSwitch” device type'
    protocol: '433 MHz'
  }
  {
    brand: 'ELRO/Home Easy'
    model: 'HE-863'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'switch 3'
    description: 'Light sensor'
    notes: '<a href="http://www.pollin.de/shop/dt/NTI3ODQ0OTk-/Haustechnik/Installationsmaterial/Schalter_Steckdosen/HOME_EASY_Aussenlichtsensor_HE863_schwarz.html" target="_blank" rel="nofollow">BUY</a>, <a href="http://www.elro.eu/uploads/products/manual/HE863_Manual.pdf" target="_blank" rel="nofollow">Manual</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'Inter-Union'
    model: '26520'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'PIR 3'
    description: 'Doorbell'
    notes: ''
    protocol: '433 MHz'
    buy: [
      'https://www.amazon.de/dp/B005903VNO'
    ]
  }
  {
    brand: 'KERUI'
    model: 'CS-D003'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Contact 2'
    description: 'Door/Window Sensor'
    notes: 'Based on EV1527 chipset. Available for ~6 Euros on <a href="http://de.aliexpress.com/item/wireless-intelligent-433-315MHZ-EV1527-Door-m…-alarm-systems/32325531812.html?adminSeq=220004829&amp;shopNumber=1078472" target="_blank" rel="nofollow">aliexpress</a> (batteries incl., watch out for 433MHz version). Works out of the box as contact2 sensor. Only sends ‘open’ signal, use autoReset in config if needed.'
    protocol: '433 MHz'
  }
  {
    brand: 'KERUI'
    model: 'KR-D026'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Contact 3'
    description: 'Door/Window Sensor'
    notes: 'Available for ~10 Euros on <a href="https://de.aliexpress.com/item/433-MHz-Wireless-Door-Windows-Sensors-for-KE…l?spm=2114.40010708.4.34.P86pNC&amp;detailNewVersion=&amp;categoryId=3008" target="_blank" rel="nofollow">aliexpress</a> (batteries incl.)'
    protocol: '433 MHz'
  }
  {
    brand: 'Lightinthebox'
    model: 'GS-IWDS07'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Contact 4'
    description: 'Door/Window Sensor'
    notes: 'Sends open and close signals, good range, powered with single aaa battery, blue signal led, two pieces of 3M tape included'
    protocol: '433 MHz'
  }
  {
    brand: 'SilverCrest'
    model: 'Z31370A'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Contact 3'
    description: 'Doorbell'
    notes: 'Version 12/2015. Detected via Pimatic 0.9 auto-discovery. <a href="http://www.lidl.de/de/silvercrest-funk-tuerklingel/p218600?searchTrackingQu…ingPage=1&amp;searchTrackingPageSize=36&amp;searchTrackingOrigPageSize=36" target="_blank" rel="nofollow">Sold at Lidl</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'Smarthome'
    model: 'WP515S'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Doorbell 3'
    description: 'Doorbell'
    notes: '<a href="http://smart-home.com.hk/docs/product_pdf/WP515S.pdf" target="_blank" rel="nofollow">http://smart-home.com.hk/docs/product_pdf/WP515S.pdf</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'Ranco / No Name'
    model: 'OSW-1-3 / OTW-1-3'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Pir 6'
    description: '1-3 channel push buttons'
    notes: 'Sold with 1-3 push buttons, requires type 27A battery, <a href="http://www.ebay.de/itm/Funk-Schalter-Lichtschalter-Funksender-Fernbedienung-Licht-Garage-Toreinfahrt-/111368004720" target="_blank" rel="nofollow">Buy</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'Logilink'
    model: 'WS0002'
    type: 'weather'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Weather 1'
    description: 'Measures temperature and humidity'
    notes: 'broadcasts every 30(!) seconds, weak sender'
    protocol: '433 MHz'
  }
  {
    brand: 'Auriol'
    model: 'IAN 91838 (Z31743A-TX)'
    type: 'weather'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Weather 7'
    description: 'Measures temperature'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'TFA'
    model: '30.3125'
    type: 'weather'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Weather 17'
    description: 'Measures temperature and humidity'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'TFA'
    model: '30.3200'
    type: 'weather'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Weather 3'
    description: 'Measures temperature and humidity'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'Xiron'
    model: 'Weather Station'
    type: 'weather'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Weather 11'
    description: 'Measures temperature and humidity'
    notes: ''
    protocol: '433 MHz'
  }
  {
    brand: 'Xiron'
    model: 'Weather Station 2'
    type: 'weather'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Weather 13'
    description: 'Measures temperature and humidity'
    notes: 'Apparently, a newer make or slighty different model of the weather sensor'
    protocol: '433 MHz'
  }
  {
    brand: 'Globaltronics'
    model: 'GT-WT-01'
    type: 'weather'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Weather 12'
    description: 'Measures temperature and humidity'
    notes: 'Sensor for the GT-WS-06s weather station. Has been solvd by Lidl, Aldi and Blokker. Manuals available at <a href="http://www.gt-support.de" target="_blank" rel="nofollow">http://www.gt-support.de</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'Sempre'
    model: 'GT-WT-02'
    type: 'weather'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Weather 6'
    description: 'Measures temperature'
    notes: 'Sensor for the GT-WS-08 and GT-WS-10 weather station. Has been solvd by Aldi. Manuals available at <a href="http://www.gt-support.de" target="_blank" rel="nofollow">http://www.gt-support.de</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'Mebus/Renkforce'
    model: 'E0190T'
    type: 'weather'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Weather 18'
    description: 'Measures temperature'
    notes: ''
    protocol: '433 MHz'
    buy: [
      'https://www.conrad.de/de/thermometer-renkforce-e0109t-1380331.html'
    ]
  }
  {
    brand: 'Landmann BBQ Thermometer'
    model: 'selection - 13625'
    type: 'weather'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Weather 19'
    description: 'Measures temperature'
    notes: '<a href="http://www.landmann.de/landmann/de/zubehoer/grillen_und_zubereiten/produktinformationen/225123/funkthermometer-" target="_blank" rel="nofollow">Product Info</a>'
    protocol: '433 MHz'
  }
  {
    brand: 'EQ-3/ELV'
    model: 'MAX! 99017'
    type: 'heating'
    protocol: ' 868,35 MHz'
    plugin: ['pimatic-max', 'pimatic-maxcul']
    description: 'Radiator thermostat'
    notes: 'Control your radiator'
    recommended: true
    imageLink: 'https://www.amazon.de/gp/product/B004W1PSNC/ref=as_li_tl?ie=UTF8&camp=1638&creative=6742&creativeASIN=B004W1PSNC&linkCode=as2&tag=pimatic-21'
    image: 'https://ws-eu.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B004W1PSNC&Format=_SL110_&ID=AsinImage&MarketPlace=DE&ServiceVersion=20070822&WS=1&tag=pimatic-21'
    buy: [
      'https://www.amazon.de/dp/B004W1PSNC'
    ]
  }
  {
    brand: 'EQ-3/ELV'
    model: 'MAX! 99107'
    type: 'heating'
    protocol: ' 868,35 MHz'
    plugin: ['pimatic-max', 'pimatic-maxcul']
    description: 'Thermostat wall remote'
    notes: 'Wireless wall remote to control radiators or switches in pimatic'
    recommended: true
    buy: [
      'https://www.amazon.de/dp/B00AG8PSGC'
    ]
  }
  {
    brand: 'EQ-3/ELV'
    model: 'MAX! 105936'
    type: 'heating'
    protocol: ' 868,35 MHz'
    plugin: ['pimatic-max', 'pimatic-maxcul']
    description: 'Radiator thermostat Plus Version'
    notes: 'Control your radiator'
    recommended: true
    imageLink: 'https://www.amazon.de/gp/product/B00B6ZY23E/ref=as_li_tl?ie=UTF8&camp=1638&creative=6742&creativeASIN=B00B6ZY23E&linkCode=as2&tag=pimatic-21'
    image: 'https://ws-eu.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B00B6ZY23E&Format=_SL110_&ID=AsinImage&MarketPlace=DE&ServiceVersion=20070822&WS=1&tag=pimatic-21'
    buy: [
      'https://www.amazon.de/dp/B00B6ZY23E'
    ]
  }
  {
    brand: 'amazon'
    model: 'Dash Button'
    type: 'switch'
    protocol: ' wifi'
    plugin: ['pimatic-amazing-dash-button', 'pimatic-dash-button']
    description: 'Wifi Button'
    recommended: true
    imageLink: 'https://www.amazon.de/gp/product/B01I297GPW/ref=as_li_tl?ie=UTF8&camp=1638&creative=6742&creativeASIN=B01I297GPW&linkCode=as2&tag=pimatic-21'
    image: 'https://ws-eu.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B01I297GPW&Format=_SL110_&ID=AsinImage&MarketPlace=DE&ServiceVersion=20070822&WS=1&tag=pimatic-21'
    buy: [
      'https://www.amazon.de/gp/product/B01I297GPW'
    ]
  }
  {
    brand: 'AVM'
    model: 'FRITZ!DECT 200'
    type: 'switch'
    protocol: ' DECT'
    plugin: ['pimatic-fritz']
    description: 'Fritz!DECT 200 outlet'
    recommended: true
    imageLink: 'https://www.amazon.de/gp/product/B00AQ9E77M/ref=as_li_tl?ie=UTF8&camp=1638&creative=6742&creativeASIN=B00AQ9E77M&linkCode=as2&tag=pimatic-21'
    image: 'https://ws-eu.amazon-adsystem.com/widgets/q?_encoding=UTF8&ASIN=B00AQ9E77M&Format=_SL110_&ID=AsinImage&MarketPlace=DE&ServiceVersion=20070822&WS=1&tag=pimatic-21'
    buy: [
      'https://www.amazon.de/gp/product/B00AQ9E77M'
    ]
  }
  {
    brand: 'Edimax'
    model: 'SP-2101W'
    type: 'switch'
    protocol: ' wifi'
    plugin: ['pimatic-edimax']
    description: 'Edimax Wi-Fi Smart Plug with Energy Management (SP-2101W)'
    recommended: true
    imageLink: 'https://www.amazon.de/Equip-Funksteckdosen-Wireless-Strommesser-SP-2101W/dp/B00N4OBJAO/ref=sr_1_1?ie=UTF8&qid=1484569871&sr=8-1&keywords=SP-2101&tag=pimatic-21'
    image: 'https://images-na.ssl-images-amazon.com/images/I/71tPlg8xhOL._SY679_.jpg'
    buy: [
      'https://www.amazon.de/gp/product/B00N4OBJAO'
    ]
  }
  {
    brand: 'Edimax'
    model: 'SP-1101W'
    type: 'switch'
    protocol: ' wifi'
    plugin: ['pimatic-edimax']
    description: 'Edimax Wi-Fi Smart Plug (SP-1101W)'
    recommended: true
    imageLink: 'https://www.amazon.de/Edimax-SP-1101W-Smart-Intelligente-Steuerung/dp/B00H3NSY8W/ref=sr_1_1?ie=UTF8&qid=1484570044&sr=8-1&keywords=SP-1101'
    image: 'https://images-na.ssl-images-amazon.com/images/I/71tPlg8xhOL._SY679_.jpg'
    buy: [
      'https://www.amazon.de/gp/product/B00H3NSY8W'
    ]
  }
  {
    brand: 'Elro'
    model: 'DB286A'
    type: 'sensor'
    plugin: 'pimatic-homeduino'
    pluginInfo: 'Pir 3'
    description: 'Doorbell with 16 tunes'
    recommended: false
    notes: 'Device is autodiscovered as Inter-Union (pir)'
    protocol: '433 MHz'
    imagelink: 'https://www.amazon.de/gp/product/B005DDYL1I'
    image: 'https://images-eu.ssl-images-amazon.com/images/I/415C-DvTHVL._SL110_.jpg'
    buy: [
      'https://www.amazon.de/gp/product/B005DDYL1I'
    ]
  }
]

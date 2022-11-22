// Null = [ this ] execVM "SparkAdditionals\Spark_DisablePanels.sqf";
Private _Target = _this select 0;
Private _AllPanels = [ "MineDetectorDisplayComponent", "MinimapDisplayComponent", "CrewDisplayComponent", "TransportFeedDisplayComponent", "SensorsDisplayComponent", "SlingLoadDisplayComponent" ];
{ _Target enableInfoPanelComponent [ "left", _x, false ]; nil; } count _AllPanels;
{ _Target enableInfoPanelComponent [ "right", _x, false ]; nil; } count _AllPanels;
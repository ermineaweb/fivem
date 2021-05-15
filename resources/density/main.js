const config = {
    pedFrequency = 0.0,
    trafficFrequency = 0.0,
};

SetPedDensityMultiplierThisFrame(config.pedFrequency);
SetScenarioPedDensityMultiplierThisFrame(config.pedFrequency, config.pedFrequency);
SetRandomVehicleDensityMultiplierThisFrame(config.trafficFrequency) ;
SetParkedVehicleDensityMultiplierThisFrame(config.trafficFrequency) ;
SetVehicleDensityMultiplierThisFrame(config.trafficFrequency) ;
       


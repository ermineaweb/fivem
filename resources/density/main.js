const pedFrequency = 1.0;
const trafficFrequency = 1.0;

setTick(async () => {
  SetPedDensityMultiplierThisFrame(pedFrequency);
  SetScenarioPedDensityMultiplierThisFrame(pedFrequency, pedFrequency);
  SetRandomVehicleDensityMultiplierThisFrame(trafficFrequency);
  SetParkedVehicleDensityMultiplierThisFrame(trafficFrequency);
  SetVehicleDensityMultiplierThisFrame(trafficFrequency);
});

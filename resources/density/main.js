const pedFrequency = 0.1;
const trafficFrequency = 0.1;

setTick(async () => {
  SetPedDensityMultiplierThisFrame(pedFrequency);
  SetScenarioPedDensityMultiplierThisFrame(pedFrequency, pedFrequency);
  SetRandomVehicleDensityMultiplierThisFrame(trafficFrequency);
  SetParkedVehicleDensityMultiplierThisFrame(trafficFrequency);
  SetVehicleDensityMultiplierThisFrame(trafficFrequency);
});

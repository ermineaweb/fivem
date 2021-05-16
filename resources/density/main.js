const pedFrequency = 0.3;
const trafficFrequency = 0.3;

setTick(async () => {
  SetPedDensityMultiplierThisFrame(pedFrequency);
  SetScenarioPedDensityMultiplierThisFrame(pedFrequency, pedFrequency);
  SetRandomVehicleDensityMultiplierThisFrame(trafficFrequency);
  SetParkedVehicleDensityMultiplierThisFrame(trafficFrequency);
  SetVehicleDensityMultiplierThisFrame(trafficFrequency);
});

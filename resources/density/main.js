const pedFrequency = 0.2;
const trafficFrequency = 1.2;

setTick(async () => {
  SetPedDensityMultiplierThisFrame(pedFrequency);
  SetScenarioPedDensityMultiplierThisFrame(pedFrequency, pedFrequency);
  SetRandomVehicleDensityMultiplierThisFrame(trafficFrequency);
  SetParkedVehicleDensityMultiplierThisFrame(trafficFrequency);
  SetVehicleDensityMultiplierThisFrame(trafficFrequency);
});

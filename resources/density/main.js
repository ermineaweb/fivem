const pedFrequency = 0.0;
const trafficFrequency = 0.0;

setImmediate(() => {
  SetPedDensityMultiplierThisFrame(pedFrequency);
  SetScenarioPedDensityMultiplierThisFrame(pedFrequency, pedFrequency);
  SetRandomVehicleDensityMultiplierThisFrame(trafficFrequency);
  SetParkedVehicleDensityMultiplierThisFrame(trafficFrequency);
  SetVehicleDensityMultiplierThisFrame(trafficFrequency);
});

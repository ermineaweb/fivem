const pedFrequency = 0.0;
const trafficFrequency = 0.0;

setTick(async () => {
  SetPedDensityMultiplierThisFrame(pedFrequency);
//   SetScenarioPedDensityMultiplierThisFrame(pedFrequency, pedFrequency);
  SetRandomVehicleDensityMultiplierThisFrame(trafficFrequency);
  SetParkedVehicleDensityMultiplierThisFrame(trafficFrequency);
  SetVehicleDensityMultiplierThisFrame(trafficFrequency);
});

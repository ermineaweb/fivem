const pedFrequency = 2.0;
const trafficFrequency = 2.0;

setTick(async () => {
  SetPedDensityMultiplierThisFrame(pedFrequency);
//   SetScenarioPedDensityMultiplierThisFrame(pedFrequency, pedFrequency);
  SetRandomVehicleDensityMultiplierThisFrame(trafficFrequency);
  SetParkedVehicleDensityMultiplierThisFrame(trafficFrequency);
  SetVehicleDensityMultiplierThisFrame(trafficFrequency);
});

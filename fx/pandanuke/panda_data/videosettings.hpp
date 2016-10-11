class CfgVideoOptions 
{
class Particles
{
class High;
class Low;
class Normal;
class Ultra: High
{
highQualityShader = 1;
numFullSizeParticles = 60;
particlesHardLimit = 19000;
particlesSoftLimit = 18000;
smokeGenMaxDist = 800;
smokeGenMinDist = 200;
smokeIntervalCoef = 4;
smokeSizeCoef = 2;
smokeZoomCoef = 1.42857;
text = "Ultra";
};
class UltraPanda: High
{
highQualityShader = 1;
numFullSizeParticles = 60;
particlesHardLimit = 30000;
particlesSoftLimit = 20000;
smokeGenMaxDist = 2000;
smokeGenMinDist = 200;
smokeIntervalCoef = 4;
smokeSizeCoef = 2;
smokeZoomCoef = 1.42857;
text = "PandaSettings";
};
};

};

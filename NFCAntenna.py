from __future__ import division
import pcbnew
import FootprintWizardBase

class AntennaWizard(FootprintWizardBase.FootprintWizard):
    
    def GetName(self):
        return "AntennaWizard"
    
    def GetDescription(self):
        return "NFC Antenna wizard used to draw NFC coil."

    def GetValue(self):
        return "SimpleBox_{w}x{h}mm".format(
            w = self.parameters["Shape"]["width"],
            h = self.parameters["Shape"]["height"])
    
    def GenerateParameterList(self):
        self.AddParam("Shape", "width", self.uMM, 3.75)
        self.AddParam("Shape", "height", self.uMM, 4.95)

        self.AddParam("PageB", "param3", self.uPercent, 33.05, min_value=20)
    
    def CheckParameters(self):
        h = self.parameters["Shape"]["height"]

        self.CheckParam("Shape", "width", min_value=h/2)

AntennaWizard().register()

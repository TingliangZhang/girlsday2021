from __future__ import division
import pcbnew
import FootprintWizardBase

class AntennaWizard(FootprintWizardBase.FootprintWizard):
    
    def GetName(self):
        return "AntennaWizard"
    
    def GetDescription(self):
        return "NFC Antenna wizard used to draw NFC coil."
    
    
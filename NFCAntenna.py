# By Tina
from __future__ import division
import pcbnew
import FootprintWizardBase

class AntennaWizard(FootprintWizardBase.FootprintWizard):
    
    def GetName(self):
        return "AntennaWizard"
    
    def GetDescription(self):
        return "NFC Antenna wizard used to draw NFC coil. By Tingliang Zhang"

    def GetValue(self):
        return "NFC-Antenna_{n}_{a}x{b}_{w}x{s}mm".format(
            n = self.parameters["Geometry"]["turns"],
            a = self.parameters["Geometry"]["length"]/1000000,
            b = self.parameters["Geometry"]["width"]/1000000,
            w = self.parameters["Conductor"]["linewidth"]/1000000,
            s = self.parameters["Conductor"]["spacing"]/1000000)
    
    def GenerateParameterList(self):
        self.AddParam("Geometry", "turns", self.uInteger, 6, min_value=1)
        self.AddParam("Geometry", "length", self.uMM, 79.24)
        self.AddParam("Geometry", "width", self.uMM, 47.62)

        self.AddParam("Conductor", "linewidth", self.uMM, 0.6)
        self.AddParam("Conductor", "spacing", self.uMM, 0.6)
        self.AddParam("Conductor", "Thickness", self.uFloat, 35)

        self.AddParam("Substrate", "SubstrateThickness", self.uMM, 1)
        self.AddParam("Substrate", "Permittivity ", self.uFloat, 4.6)

    
    def CheckParameters(self):
        # check that the package is large enough
        square = pcbnew.ToMM(2 * self.parameters["Geometry"]["turns"] * (self.parameters["Conductor"]["linewidth"] + self.parameters["Conductor"]["linewidth"]))

        self.CheckParam('Geometry','width',min_value=square,info="Package width is too small (< {w}mm)".format(w=square))
        self.CheckParam('Geometry','length',min_value=square,info="Package length is too small (< {l}mm".format(l=square))
    
    def BuildThisFootprint(self):
        # n = self.parameters["Geometry"]["turns"]
        # a = self.parameters["Geometry"]["length"]
        # b = self.parameters["Geometry"]["width"]
        # w = self.parameters["Conductor"]["linewidth"]
        # s = self.parameters["Conductor"]["spacing"]
        geometry = self.parameters["Geometry"]
        n = geometry["turns"]
        a = geometry["length"]
        b = geometry["width"]
        conductor = self.parameters["Conductor"]
        w = conductor["linewidth"]
        s = conductor["spacing"]

        # Draw Line on F.Cu layer
        self.draw.SetLayer(pcbnew.F_Cu)
        self.draw.SetLineThickness( w )

        row = 4*n+1
        edge = [0]*row
        for i in range(len(edge)):
            edge[i] = [0,0]
        # np.zeros((dimension, 2), dtype=int)
        #  edge = [[0 for col in range(2)] for row in range(dimension)]
        # edge = [[0] * 2] * dimension

        # First loop is unique
        edge[0:5] = [
            [ -(a-w)/2 , (b-w)/2 ],
            [ (a-w)/2 , (b-w)/2 ],
            [ (a-w)/2 , -(b-w)/2 ],
            [ -(a-w)/2 , -(b-w)/2 ],
            [ -(a-w)/2 , (b-w)/2-s-w ]
               ]

        for i in range(2,n+1):
            k = i-1
            edge[4*k]   = [ -(a-w)/2+(k-1)*(s+w) , (b-w)/2-k*(s+w) ]
            edge[4*k+1] = [ (a-w)/2-k*(s+w) , (b-w)/2-k*(s+w) ]
            edge[4*k+2] = [ (a-w)/2-k*(s+w) , -(b-w)/2+k*(s+w) ]
            edge[4*k+3] = [ -(a-w)/2+k*(s+w) , -(b-w)/2+k*(s+w) ]
        
        edge[4*n] = [ -(a-w)/2+(n-1)*(s+w) , (b-w)/2-n*(s+w) ]


        # Draw edges
        self.draw.Polyline(edge)

AntennaWizard().register()

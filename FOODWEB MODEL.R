library(LIM)

# Read data and create the LIM structure with the equations, variables, ..
LIMRigaSpring <- Setup(file = "RigaSpring.input") 

# Create the flow matrix and plot it
rigaSpring <- Flowmatrix(LIMRigaSpring)
plotweb(rigaSpring, main = "Gulf of Riga planktonic food web, spring",
        sub = "mgC/m3/day")

# Create and plot ranges of flows and of variables        
Plotranges(LIMRigaSpring, lab.cex = 0.7,
           main = "Gulf of Riga planktonic food web, spring, Flowranges")
Plotranges(LIMRigaSpring, type = "V", lab.cex = 0.7,
           main = "Gulf of Riga planktonic food web, spring, Variable ranges")

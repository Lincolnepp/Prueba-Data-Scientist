PROBABILIDAD = function(PA,PB,PACyBC){
  
  PAC = 1-PA
  PBC = 1-PB
  
  PACoBC = PAC + PBC - PACyBC
  
  PAyB = 1 - PACoBC
  
  if (PB != 0) {
    PAdadoB = PAyB/PB
    print( paste0(" PART 1 : ¿Cuál es la probabilidad de que un correo lleve adjunto si es SPAM? es: ",round(PAdadoB,4)," y en porcentaje es ",round(PAdadoB,4)*100,"%"))
  }
  else{
    print("PB = 0, no hay intersección")
  }
  
  
  
  if (PBC != 0) {
    PACdadoBC = PACyBC/PBC
    print( paste0(" PART 2 : ¿Cuál es la probabilidad de que un correo no tenga adjuntos si no es SPAM? es: ",round(PACdadoBC,4)," y en porcentaje es ",round(PACdadoBC,4)*100,"%"))
  }else{
    print("PBC = 0, no hay intersección")
  }
  
}

PROBABILIDAD(PA = 0.5,PB = 0.65,PACyBC = 0.15)


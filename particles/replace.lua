function replaceModel() 
  
  txd = engineLoadTXD("487.txd", 487 )
  engineImportTXD(txd, 487)
  dff = engineLoadDFF("487.dff", 487 )
  engineReplaceModel(dff, 487)


  txd = engineLoadTXD("422.txd")
  engineImportTXD(txd, 422)
  dff = engineLoadDFF("422.dff", 422)
  engineReplaceModel(dff, 422)

  txd = engineLoadTXD("579.txd")
  engineImportTXD(txd, 579)
  dff = engineLoadDFF("579.dff", 579)
  engineReplaceModel(dff, 579)

  txd = engineLoadTXD("470.txd")
  engineImportTXD(txd, 470)
  dff = engineLoadDFF("470.dff", 470)
  engineReplaceModel(dff, 470)

  txd = engineLoadTXD("497.txd")
  engineImportTXD(txd, 497)
  dff = engineLoadDFF("497.dff", 497)
  engineReplaceModel(dff, 497)
  
  txd = engineLoadTXD("468.txd")
  engineImportTXD(txd, 468)
  dff = engineLoadDFF("468.dff", 468)
  engineReplaceModel(dff, 468)

  txd = engineLoadTXD("433.txd")
  engineImportTXD(txd, 433)
  dff = engineLoadDFF("433.dff", 433)
  engineReplaceModel(dff, 433)

  txd = engineLoadTXD("473.txd")
  engineImportTXD(txd, 473)
  dff = engineLoadDFF("473.dff", 473)
  engineReplaceModel(dff, 473)

  txd = engineLoadTXD("509.txd")
  engineImportTXD(txd, 509)
  dff = engineLoadDFF("509.dff", 509)
  engineReplaceModel(dff, 509)

  txd = engineLoadTXD("463.txd")
  engineImportTXD(txd, 463)
  dff = engineLoadDFF("463.dff", 463)
  engineReplaceModel(dff, 463)
  
  txd = engineLoadTXD("490.txd")
  engineImportTXD(txd, 490)
  dff = engineLoadDFF("490.dff", 490)
  engineReplaceModel(dff, 490)

  txd = engineLoadTXD("531.txd")
  engineImportTXD(txd, 531)
  dff = engineLoadDFF("531.dff", 531)
  engineReplaceModel(dff, 531)

  txd = engineLoadTXD("437.txd")
  engineImportTXD(txd, 437)
  dff = engineLoadDFF("437.dff", 437)
  engineReplaceModel(dff, 437)
  
  txd = engineLoadTXD("471.txd")
  engineImportTXD(txd, 471)
  dff = engineLoadDFF("471.dff", 471)
  engineReplaceModel(dff, 471)

  
end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), replaceModel)
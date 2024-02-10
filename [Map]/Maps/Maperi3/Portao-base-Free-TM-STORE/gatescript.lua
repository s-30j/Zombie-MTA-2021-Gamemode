function createTheGate ()
 
         myGate1 = createObject ( 10184, 949.70001220703,-1383.5 ,13 , 0, 0, 270 )

 
      end
 
      addEventHandler ( "onResourceStart", getResourceRootElement ( getThisResource () ), createTheGate )
 
 
 
 
 
 function openMyGate ( )
 moveObject ( myGate1, 2500, 949.70001220703,-1383.5, 9.6000003814697 )
 end
 addCommandHandler("TM-STORE",openMyGate)
 
 
 function movingMyGateBack ()
 moveObject ( myGate1, 2500, 949.70001220703,-1383.5 ,13 )
 end
 addCommandHandler("STORE-TM",movingMyGateBack)
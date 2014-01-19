import themidibus.*;

String[] outputs;
String[] inputs;
String[] attachedOutputs;
String[] attachedInputs;
MidiBus midiBus;

void setup () {
  midiBus = new MidiBus(this);
  
  midiBus.addOutput(3);
 
  outputs = midiBus.availableOutputs();
  inputs = midiBus.availableInputs();
  attachedOutputs = midiBus.attachedOutputs();
  attachedInputs = midiBus.attachedInputs();
  
  
  
  println("available outputs:");
  for (String s : outputs)
    println(s);
  
  println();
  println("available inputs:");
  for (String s : outputs)
    println(s);
    
  println();
  println("attached outputs");
  for (String s : attachedOutputs)
    println(s);
 
  println();
  println("attached inputs");
  for (String s : attachedInputs)
    println(s); 
}


void stop () {
  midiBus.close();
  super.stop();
}

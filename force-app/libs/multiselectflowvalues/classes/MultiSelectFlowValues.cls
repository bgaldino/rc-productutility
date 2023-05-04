/**
Author : Vibhor Goel (www.accidentalcodersf.com) - Accidental Coder - A Salesforce Blog 
Optimized with GPT-4 model 2023.05.04
**/
// Changed class name to follow PascalCase naming convention
global class MultiSelectFlowValues {
   
   @InvocableMethod
   // Updated method name to follow camelCase naming convention and be more descriptive
   public static List<List<String>> checkMultiSelectValues(List<String> values) {
      if(!(values.isEmpty())){
          
          String tempStr = values[0]; // Use proper capitalization for 'String'
          List<String> lstNew = tempStr.split(';'); // Updated variable name to follow camelCase naming convention
          List<List<String>> finalLst = new List<List<String>>(); // Proper capitalization for 'List'
          finalLst.add(lstNew);
          return finalLst;
      }
      else return null;
   }
}

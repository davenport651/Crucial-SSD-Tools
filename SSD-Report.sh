#!/bin/bash

#This is a simple draft for reference. Copy/paste the desired commands from this file.
exit 0

echo "Samsung SSD ="
sudo msecli -L -J | jq '.drives.[] | {Name: .deviceName, Model: .modelNumber, Serial: .serialNumber, FW: .firmwareVersion, PowerOnHRS: .smartData[] | select(.attributeID == "9") | .attributeRawData, "Samsung %Remain": .smartData[] | select(.attributeID == "177") | .attributeRawData}'

echo "Micron ="
sudo msecli -L -J | jq '.drives[] | {Name: .deviceName, Model: .modelNumber, Serial: .serialNumber, FW: .firmwareVersion, PowerOnHRS: .smartData[] | select(.attributeID == "9") | .attributeRawData, (.smartData[] | select(.attributeID == "202") | .attributeDescription): .smartData[] | select(.attributeID == "202") | .attributeRawData, "Micron Pass/Fail":.deviceStatus}'

echo "Intel ="

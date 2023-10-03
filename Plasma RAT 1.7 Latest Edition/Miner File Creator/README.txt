The miner files in the RAT and HTTP bot are simply reversed bytes of packed miner executables. The CPU miner is poolers CPU miner, and the GPU miner is Ufasoft. 

You can use "File Encrypter Reverse Bytes" to create your own miner files.

To pack miner executables (to merge DLLs with the .exe), use BoxedApp Packer.

There is a trick to packing Ufasoft and similar miners. Re-name the .cl files to .dll, add them to the project, then after adding them to BoxedApp packer, change the .dll to .cl. I have no idea why this works, I just know it works.

Let me know if you have any questions. 
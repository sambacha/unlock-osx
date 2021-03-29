## Kernal Root

[https://blog.obdev.at/how-kernel-prelininkg-works-on-macos-catalina/](https://blog.obdev.at/how-kernel-prelininkg-works-on-macos-catalina/)


Every time the directory `/Library/Extensions/ ` is touched, the kextd daemon starts kextcache to build a new kernel.

However, the boot procedure does not use this new kernel. It uses the kernel at ` /System/Library/PrelinkedKernels/prelinkedkernel`, 
which is on the read-only system volume. The kernel must be somehow copied to the read-only volume.

#### Kernal Extenstion

[https://github.com/jwise/HoRNDIS](https://github.com/jwise/HoRNDIS)

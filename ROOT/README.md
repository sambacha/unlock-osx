## Kernal Root

[https://blog.obdev.at/how-kernel-prelininkg-works-on-macos-catalina/](https://blog.obdev.at/how-kernel-prelininkg-works-on-macos-catalina/)


Every time the directory `/Library/Extensions/ ` is touched, the kextd daemon starts kextcache to build a new kernel.

However, the boot procedure does not use this new kernel. It uses the kernel at ` /System/Library/PrelinkedKernels/prelinkedkernel`, 
which is on the read-only system volume. The kernel must be somehow copied to the read-only volume.


But the original problem still exists: The final destination is a read-only volume and `SIP` disallows remounting it in read/write mode. So when should the system run `shove_kernels`?

The best time is immediately before system shutdown. When you reboot or shut down your machine, launchd stops all processes. 
Then it remounts the system volume in read/write mode.
This is possible because launchd has the entitlement `com.apple.private.apfs.mount-root-writeable-at-shutdown`. Then it runs `/var/install/shove_kernels` to copy the new kernel.


#### Kernal Extenstion

[https://github.com/jwise/HoRNDIS](https://github.com/jwise/HoRNDIS)

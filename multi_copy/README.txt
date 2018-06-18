Copying from one directory to multiple directories can be accomplished with a simple loop:

for i in {001..003}
do
cp top/step5_assembly.psf ${i}
done

To copy from multiple directories into a single directory, however, requires a pipe and 
the use of the xargs command:

for i in {001..003}
do
echo top/step5_assembly.psf struc/last_frame_0.crd inp/* | xargs -n 1 cp -t test
done

Note: this xargs line needs to be slightly modified on the MacOS. For whatever reason, the 
-t flag is not made available, so you need to find a way to get xargs to feed cp the source
first, before the target.

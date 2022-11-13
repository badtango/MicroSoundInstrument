"/Users/williamrailton/Desktop/MicroSoundInstrument/Code/GUI.scd”.loadPaths;

// Above will load up the GUI in the middle of the screen. 
// I apologise but you will have to change the file paths to the appropriate directories in the following files.


// The loadPath half way down the page in the file "Interface.scd”.
// All buffers and ATS buffers in the file "SynthsTasks&Functions.scd”.
// And obviously the above loadPath.


// The GUI itself does not trigger anything without the keys, its there for aesthetic purposes only (so you can see what your doing with the keys on the screen).

// The GUI (and the patch itself) will not work unless you are keying the numbers and letters into this window.

// This patch has been built for both live environments and algorithmic purposes as a sample based manipulator. for example the numbers 6 and 7, and the letters Q, W, E, R, T, Y, U, and I, will have a different outcome each time they are triggered, where as the number 5 and the letter P are fully automated functions.

// All samples created by Will Railton.

// Below will turn off the key functions.

Document.current.keyDownAction_(nil);


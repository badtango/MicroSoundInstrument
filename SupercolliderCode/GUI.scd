// My GUI

(
var doc, txt;
doc = Document.current;
doc.keyDownAction_({arg doc, key, modifiers, num;
	var mykey;
	mykey= num;
   if(mykey == 49, // is the number '1' BufferOveride Sample 1 (mouse control)
	{ ~bo1.value; ~a1.states_([["1", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a1.value = 1; ~a2.value = 0; ~a3.value = 0; ~a4.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a7.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a0.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a15.value = 0; 
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0;
	              ~a20.value = 0; }); 
   if(mykey == 50, // is the number '2' BufferOveride Sample 2 (mouse control)
	{ ~bo2.value; ~a2.states_([["2", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a2.value = 1; ~a1.value = 0; ~a3.value = 0; ~a4.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a7.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a0.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a15.value = 0; 
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 51, // is the number '3' BufferOveride Sample 3 (mouse control)
	{ ~bo3.value; ~a3.states_([["3", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a3.value = 1; ~a2.value = 0; ~a1.value = 0; ~a4.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a7.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a0.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a15.value = 0; 
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 52, // is the number '4' BufferOveride Sample 4 (mouse control)
	{ ~bo4.value; ~a4.states_([["4", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a4.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a7.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a0.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a15.value = 0; 
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 53, // is the number '5' Glitch Option 1
	{ ~gl1.value; ~a5.states_([["5", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a5.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a4.value = 0; ~a6.value = 0; ~a7.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a0.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a15.value = 0; 
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 54, // is the number '6' Glitch Option 2
	{ ~gl2.value; ~a6.states_([["6", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a6.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a4.value = 0; ~a7.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a0.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a15.value = 0; 
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 55, // is the number '7' Glitch Option 3
	{ ~gl3.value; ~a7.states_([["7", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a7.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a0.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a15.value = 0; 
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 56, // is the number '8' TapeStop 1
	{ ~ts1.value; ~a8.states_([["8", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a8.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a7.value = 0; 
	              ~a9.value = 0; ~a0.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a15.value = 0; 
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 57, // is the number '9' TapeStop 2
	{ ~ts2.value; ~a9.states_([["9", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a9.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a8.value = 0; 
	              ~a7.value = 0; ~a0.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a15.value = 0; 
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 48, // is the number '0' TapeStop 3
	{ ~ts3.value; ~a0.states_([["0", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a0.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a7.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a15.value = 0; 
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 113, // is the letter 'q' MicroSound Division // 1/2
	{ ~ms1.value; ~a10.states_([["Q", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a10.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a7.value = 0; ~a0.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a15.value = 0;
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 119, // is the letter 'w' MicroSound Division // 1/4 
	{ ~ms2.value; ~a11.states_([["W", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a11.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a7.value = 0; ~a10.value = 0; ~a0.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a15.value = 0;
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 101, // is the letter 'e' MicroSound Division // 1/8 
	{ ~ms3.value; ~a12.states_([["E", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a12.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a7.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a0.value = 0; ~a13.value = 0; ~a14.value = 0; ~a15.value = 0;
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 114, // is the letter 'r' MicroSound Division // 1/16 
	{ ~ms4.value; ~a13.states_([["R", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a13.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a7.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a0.value = 0; ~a14.value = 0; ~a15.value = 0;
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 116, // is the letter 't' MicroSound Division // 1/32 
	{ ~ms5.value; ~a14.states_([["T", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a14.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a7.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a0.value = 0; ~a15.value = 0;
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 121, // is the letter 'y' MicroSound Division // 1/64
	{ ~ms6.value; ~a15.states_([["Y", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a15.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a7.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a0.value = 0;
	              ~a16.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });	
   if(mykey == 117, // is the letter 'u' Analysis Transformation
	{ ~atplay.value; ~a16.states_([["U", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a16.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a7.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a0.value = 0;
	              ~a15.value = 0; ~a17.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });	
   if(mykey == 105, // is the letter 'i' Hi-Pass filter modulation 
	{ ~hi1.value; ~a17.states_([["I", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a17.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a7.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a0.value = 0;
	              ~a16.value = 0; ~a15.value = 0; ~a18.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 111, // is the letter 'o' TGrain (mouse control)
	{ ~mg1.value; ~a18.states_([["O", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a18.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a7.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a0.value = 0;
	              ~a16.value = 0; ~a17.value = 0; ~a15.value = 0; ~a19.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 112, // is the letter 'P' Randomize all
	{ ~master2.value; ~a19.states_([["P", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a19.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a7.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a0.value = 0;
	              ~a16.value = 0; ~a17.value = 0; ~a15.value = 0; ~a18.value = 0; 
	              ~a20.value = 0; });
   if(mykey == 45, // is '_' Stop
	{ ~stoprandom.value; ~a20.states_([["_", Color.black, Color.white], 
	                          ["ON!", Color.black, Color.red]]); 
	              ~a20.value = 1; ~a2.value = 0; ~a1.value = 0; ~a3.value = 0; 
	              ~a5.value = 0; ~a6.value = 0; ~a4.value = 0; ~a8.value = 0; 
	              ~a9.value = 0; ~a7.value = 0; ~a10.value = 0; ~a11.value = 0; 
	              ~a12.value = 0; ~a13.value = 0; ~a14.value = 0; ~a0.value = 0;
	              ~a16.value = 0; ~a17.value = 0; ~a15.value = 0; ~a18.value = 0; 
	              ~a19.value = 0; ~a20.value = 0; });
});

"/Users/williamrailton/Desktop/MicroSoundInstrument/Code/SynthsTasks&Functions.scd”.loadPaths;

~gui = ({ var u, z, v, w, x, y, a1, a2, a3, a4, a5, a6, a7, b9, c0,  
              a8, a9, a0, as, b1, b2, b3, b4, b5, b6, b7, b8, b0;
			
	w = Window.new("Alg", Rect(350, 800, 610, 450));	
	w.view.background_(Color.white);
		w.drawHook = {
			Pen.translate(100, 200);
			10.do{
				// set the Color
				Pen.color = Color.red(rrand(0.0, 1), rrand(0.0, 0.5));
				Pen.addArc((100.rand)@(100.rand), rrand(10, 100), 2pi.rand, pi);
				Pen.perform([\stroke, \fill].choose);
			}
		};	
	v = HLayoutView(w,Rect(10,5,1000,50)); 
	
	x = HLayoutView(w,Rect(36,59,1000,50)); 
	
	y = HLayoutView(w,Rect(10,112,1000,50)); 

	z = VLayoutView(w,Rect(10,125,1000,50));  
	
	u = VLayoutView(w,Rect(300,125,1000,50));    

a1 = StaticText(z, Rect(10, 10, 200, 20));
a1.string = "1 = BufferOveride Sample 1 (mouse control)";

a2 = StaticText(z, Rect(10, 10, 200, 20));
a2.string = "2 = BufferOveride Sample 2 (mouse control)";

a3 = StaticText(z, Rect(10, 10, 200, 20));
a3.string = "3 = BufferOveride Sample 3 (mouse control)";

a4 = StaticText(z, Rect(10, 10, 200, 20));
a4.string = "4 = BufferOveride Sample 4 (mouse control)";

a5 = StaticText(z, Rect(10, 10, 200, 20));
a5.string = "5 = Randomized Glitch";

a6 = StaticText(z, Rect(10, 10, 200, 20));
a6.string = "6 = Controlled Glitch 1";

a7 = StaticText(z, Rect(10, 10, 200, 20));
a7.string = "7 = Controlled Glitch 2";

a8 = StaticText(z, Rect(10, 10, 200, 20));
a8.string = "8 = Tape-Stop 1";

a9 = StaticText(z, Rect(10, 10, 200, 20));
a9.string = "9 = Tape-Stop 2";

a0 = StaticText(z, Rect(10, 10, 200, 20));
a0.string = "0 = Tape-Stop 3";

as = StaticText(z, Rect(10, 10, 200, 20));
as.string = "_ = Stop";

c0 = StaticText(z, Rect(10, 10, 200, 40));
c0.string = "If the Randomise All function has been triggered you must press the stop key before using any of the other 
functions again.";

b1 = StaticText(u, Rect(10, 10, 200, 20));
b1.string = "Q = MicroSound (bbcut Division 1/2)";

b2 = StaticText(u, Rect(10, 10, 200, 20));
b2.string = "W = MicroSound (bbcut Division 1/4)";

b3 = StaticText(u, Rect(10, 10, 200, 20));
b3.string = "E = MicroSound (bbcut Division 1/8)";

b4 = StaticText(u, Rect(10, 10, 200, 20));
b4.string = "R = MicroSound (bbcut Division 1/16)";

b5 = StaticText(u, Rect(10, 10, 200, 20));
b5.string = "T = MicroSound (bbcut Division 1/32)";

b6 = StaticText(u, Rect(10, 10, 200, 20));
b6.string = "Y = MicroSound (bbcut Division 1/64)";

b7 = StaticText(u, Rect(10, 10, 200, 20));
b7.string = "U = Analysis Transformation";

b8 = StaticText(u, Rect(10, 10, 200, 20));
b8.string = "I = Hi-Pass Filter modulation";

b9 = StaticText(u, Rect(10, 10, 200, 20));
b9.string = "O = Time Grains (mouse control with BPF modulation)";

b0 = StaticText(u, Rect(10, 10, 200, 20));
b0.string = "P = Randomise All";
								
	~a1=Button(v, Rect(10,10,50,60))
			.states_([["1", Color.black, Color.white],["ON!", Color.black, Color.red]]);
	
	~a2=Button(v, Rect(10,10,50,60))
			.states_([["2", Color.black, Color.white],["ON!", Color.black, Color.red]]);
	
	~a3=Button(v, Rect(10,10,50,60))
			.states_([["3", Color.black, Color.white],["ON!", Color.black, Color.red]]);
			
	~a4=Button(v, Rect(10,10,50,60))
			.states_([["4", Color.black, Color.white],["ON!", Color.black, Color.red]]);

	~a5=Button(v, Rect(10,10,50,60))
			.states_([["5", Color.black, Color.white],["ON!", Color.black, Color.red]]);
	
	~a6=Button(v, Rect(10,10,50,60))
			.states_([["6", Color.black, Color.white],["ON!", Color.black, Color.red]]);
	
	~a7=Button(v, Rect(10,10,50,60))
			.states_([["7", Color.black, Color.white],["ON!", Color.black, Color.red]]);

	~a8=Button(v, Rect(10,10,50,60))
			.states_([["8", Color.black, Color.white],["ON!", Color.black, Color.red]]);
			
	~a9=Button(v, Rect(10,10,50,60))
			.states_([["9", Color.black, Color.white],["ON!", Color.black, Color.red]]);
			
	~a0=Button(v, Rect(10,10,50,60))
			.states_([["0", Color.black, Color.white],["ON!", Color.black, Color.red]]);
			
	~a10=Button(x, Rect(10,10,50,60))
			.states_([["Q", Color.black, Color.white],["ON!", Color.black, Color.red]]);

	~a11=Button(x, Rect(10,10,50,60))
			.states_([["W", Color.black, Color.white],["ON!", Color.black, Color.red]]);				

	~a12=Button(x, Rect(10,10,50,60))
			.states_([["E", Color.black, Color.white],["ON!", Color.black, Color.red]]);

	~a13=Button(x, Rect(10,10,50,60))
			.states_([["R", Color.black, Color.white],["ON!", Color.black, Color.red]]);

	~a14=Button(x, Rect(10,10,50,60))
			.states_([["T", Color.black, Color.white],["ON!", Color.black, Color.red]]);

	~a15=Button(x, Rect(10,10,50,60))
			.states_([["Y", Color.black, Color.white],["ON!", Color.black, Color.red]]);
			
	~a16=Button(x, Rect(10,10,50,60))
			.states_([["U", Color.black, Color.white],["ON!", Color.black, Color.red]]);

	~a17=Button(x, Rect(10,10,50,60))
			.states_([["I", Color.black, Color.white],["ON!", Color.black, Color.red]]);
			
	~a18=Button(x, Rect(10,10,50,60))
			.states_([["O", Color.black, Color.white],["ON!", Color.black, Color.red]]);
			
	~a19=Button(x, Rect(10,10,50,60))
			.states_([["P", Color.black, Color.white],["ON!", Color.black, Color.red]]);
			
	~a20=Button(v, Rect(10,10,50,60))
			.states_([["_", Color.black, Color.white],["ON!", Color.black, Color.red]]);

	w.front;
});
~gui.value;
)



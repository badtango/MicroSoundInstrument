(
a = Buffer.read(s,"/Users/williamrailton/Desktop/MicroSoundInstrument/BufferSamples/120myloop1.wav", bufnum: 0);
b = Buffer.read(s,"/Users/williamrailton/Desktop/MicroSoundInstrument/BufferSamples/120myloop2.wav", bufnum: 1);
c = Buffer.read(s,"/Users/williamrailton/Desktop/MicroSoundInstrument/BufferSamples/120myloop3.wav", bufnum: 2);
d = Buffer.read(s,"/Users/williamrailton/Desktop/MicroSoundInstrument/BufferSamples/120myloop4.wav", bufnum: 3);
s.sendMsg(\b_allocRead, 10, "/Users/williamrailton/Desktop/MicroSoundInstrument/BufferSamples/120myloopmono.wav");
m = AtsFile.new("/Users/williamrailton/Desktop/MicroSoundInstrument/BufferSamples/myloop1.ats").load(4);
n = AtsFile.new("/Users/williamrailton/Desktop/MicroSoundInstrument/BufferSamples/myloop2.ats").load(5);
u = AtsFile.new("/Users/williamrailton/Desktop/MicroSoundInstrument/BufferSamples/myloop3.ats").load(6);
z = AtsFile.new("/Users/williamrailton/Desktop/MicroSoundInstrument/BufferSamples/myloop4.ats").load(7);

~ats = ({ arg grr, fm, rate, mul = 0.7;
e = ({ Pan2.ar(AtsSynth.ar(grr.bufnum, grr.numPartials, 0, 1, 
		filePointer: LFSaw.kr(grr.sndDur.reciprocal, 1, rate, 0.5), 
		freqMul: fm, freqAdd: 50.0, mul: mul), 0, 0.7)
	}).play;
});
                     
~grainyfunc = ({
o = ({ arg b = 10, dur, mouse, bufmouse, pos;
       var out = 0;             
                       
                       dur = 12 / MouseY.kr(8,120,1);
                     mouse = Impulse.kr(MouseY.kr(8,120,1));
                  bufmouse = MouseX.kr(0, BufDur.kr(b)) + TRand.kr(0, 0.01, mouse);	                        
                       out = BPF.ar(TGrains.ar(2, mouse, b, bufmouse, bufmouse, dur, 0, 0.5), 
                             SinOsc.kr(MouseY.kr(mouse, 350, 4), 7, 3600, 4000), 0.3);
	                          Out.ar(0, out);
}).play;
});

~bufyo1 = ({ arg bufnum1 = 1; 
q = SynthDef("Buffoveride", { var out, my, mx, woo; 
                                	  	 
	                 my =  MouseY.kr(1, 20, 0);
                     mx = Impulse.kr(MouseX.kr(0, 80, 0));
	                 out = PlayBuf.ar(1, bufnum1, my, BufRateScale.kr(bufnum1), 
	                       trigger: mx, loop: 1.0);
	                 woo = Pan2.ar(out, 0, 0.11);      
	                       Out.ar(0, woo)}).play;
});                          

x = SynthDef("hellsyeah", { arg dur, bufnum = 0, sp = 0, rate, pany; 
                         var out = 0, env4, play;

                            env4 = EnvGen.kr(Env.perc(0.01, dur, 0.7, 300), 1.0, doneAction: 2);
                            play = env4 * ( PlayBuf.ar(1, bufnum, BufRateScale.kr(bufnum) 
                                        * rate, startPos: sp, loop: 1.0 ));	
                             out = Pan2.ar(play, 0, 0.4);           
                                   Out.ar(0, out);

}).play; 
s.sendSynthDef("hellsyeah");

SynthDef("hellsyeahtstop", { arg dur, bufnum = 0, sp = 0, rate = 1, pany; 
                         var out = 0, env4, play;
                            rate = LFNoise2.kr(XLine.kr(1, 20, 60), 2);
                            env4 = EnvGen.kr(Env.perc(0.01, dur, 0.7, 300), 1.0, doneAction: 2);
                            play = env4 * ( PlayBuf.ar(1, bufnum, BufRateScale.kr(bufnum) 
                                        * rate, startPos: sp, loop: 1.0 ));	
                             out = Pan2.ar(play, 0, 0.4);           
                                   Out.ar(0, out);

}).writeDefFile; 
s.sendSynthDef("hellsyeahtstop");

~buffy = ({ arg filtmod = 0, rate = 1, bufnum = 0;
w = SynthDef("hipass", { arg dur, sp = 0; 
                         var out = 0, env4, play, hpf;

                            env4 = EnvGen.kr(Env.perc(0.001, 2048, 0.7, 300), 1.0, doneAction: 2);
                            play = env4 * ( PlayBuf.ar(1, bufnum, BufRateScale.kr(bufnum) 
                                        * rate, startPos: sp, loop: 1.0 ));	
                             out = Pan2.ar(play, 0, 0.45);           
                             hpf = HPF.ar(out, FSinOsc.kr(filtmod, 0, 3600, 4000), 2);       
                                   Out.ar(0, hpf);

}).play; 
});

TempoClock.default.tempo = 120/60;

~efunc = ({ arg divide, env, bamby, rate = 0.5;
v = Task({ arg myBuf, sampleDur;
	
        loop {
		 4.do { var beatDur, randBeat, beatDurFrames, beatNum;
		    beatNum = bamby;
		    randBeat = rand(beatNum);
           myBuf = [a, b, c, d].choose;
           sampleDur = (myBuf.numFrames/myBuf.sampleRate);
			("Total number of frames: " + myBuf.numFrames);
			("Sample rate: " + myBuf.sampleRate);
			("Duration of sample: " + sampleDur);
			beatDur = sampleDur/beatNum;
			("Duration of beat: " + beatDur + " secs");
			beatDurFrames = myBuf.numFrames/beatNum;
			("Duration of beat: " + beatDurFrames + " frames");
			("Beat chosen: " + randBeat);		

			s.sendMsg("/s_new", \hellsyeah, s.nextNodeID, 1, 0, 
			\bufnum, myBuf.bufnum, 
			\sp, (beatDurFrames * randBeat),
			\rate, rate,
			\dur, env, beatDur
			);
		(divide).wait;
		}; 
	}; 
}).play; 
}); 

~efunc2 = ({ arg ratey1 = 0, divide, env, bamby;
r = Task({ arg myBuf, sampleDur;
	
        loop {
		 4.do { var beatDur, randBeat, beatDurFrames, beatNum;
		            beatNum = bamby; 
		            randBeat = rand(beatNum);
                   myBuf = [a, b, c, d].choose;
                   sampleDur = (myBuf.numFrames/myBuf.sampleRate);
                   beatDur = sampleDur/beatNum;
                   beatDurFrames = myBuf.numFrames/beatNum;		

			s.sendMsg("/s_new", \hellsyeahtstop, s.nextNodeID, 1, 0, 
			\bufnum, myBuf.bufnum, 
			\sp, (beatDurFrames * randBeat),
			\rate, ratey1,
			\dur, env, beatDur
			);
		(divide).wait;
		}; 
	}; 
}).play; 
}); 

~efunc3 = ({ arg ratey2 = 0, env2, bamby2;
t = Task({ arg myBuf, sampleDur;
	
        loop {
		 4.do { var beatDur, randBeat, beatDurFrames, beatNum;
		            beatNum = bamby2; 
		            randBeat = rand(beatNum);
                   myBuf = [a, b, c, d].choose;
                   sampleDur = (myBuf.numFrames/myBuf.sampleRate);
                   beatDur = sampleDur/beatNum;
                   beatDurFrames = myBuf.numFrames/beatNum;		

			s.sendMsg("/s_new", \hellsyeah, s.nextNodeID, 1, 0, 
			\bufnum, myBuf.bufnum, 
			\sp, (beatDurFrames * randBeat),
			\rate, [9.0.rand, 100.rand, 5000.rand, 0.2.rand, 100.rand].choose - 
			[9.0.rand, 100.rand, 5000.rand, 0.2.rand, 100.rand].choose,
			\dur, 0.2.rand, beatDur
			);
[0.0625, 0.25, 0.5, 0.125, 0.25, 0.5, 0.5, 0.25, 0.5, 0.125, 0.25, 0.5, 0.5].choose.wait;
		}; 
	}; 
}).play; 
}); 

~at1 = ({ arg grr, fm, rate;
e.free; w.free; q.free; t.stop; r.stop; v.stop; o.free; ~ats.value(grr, fm, rate);
});

~plz = ({ arg div, env, nb, rate;
e.free; w.free; q.free; t.stop; r.stop; v.stop; o.free; ~efunc.value(div, env, nb, rate);
});

~mouse = ({
e.free; w.free; q.free; t.stop; r.stop; v.stop; o.free; ~grainyfunc.value;
});

~tapestop = ({ arg rate1 = 0, div, env, bamby;
e.free; w.free; q.free; t.stop; r.stop; v.stop; o.free; ~efunc2.value(rate1, div, env, bamby);
});

~glitch = ({ 
e.free; w.free; q.free; t.stop; r.stop; v.stop; o.free; ~efunc3.value(0, 4, 2);
});

~bufferoveride = ({ arg bufnum;
e.free; w.free; q.free; t.stop; r.stop; v.stop; o.free; ~bufyo1.value(bufnum);
});

~hipass = ({ arg fr, rate, bufnum;
e.free; w.free; q.free; t.stop; r.stop; v.stop; o.free; ~buffy.value(fr, rate, bufnum);
});

~atplay = ({ e.free; w.free; q.free; t.stop; r.stop; v.stop; o.free; ~at1.value; });

~glitch1 = ({ ~plz.value([0.0625, 0.25, 0.5, 0.125].choose, 
              0.15.rand, [2, 32].choose,
              [9.0.rand, 100.rand, 5000.rand, 0.2.rand, 100.rand].choose - 
              [9.0.rand, 0.2.rand, 100.rand].choose);
});

~glitch2 = ({ ~plz.value([0.0625, 0.25, 0.5, 0.125].choose, 
              0.15.rand, [2, 32].choose,
              [9.0.rand, 100.rand, 5000.rand, 0.2.rand, 100.rand].choose - 
              [9.0.rand, 100.rand, 5000.rand, 0.2.rand, 100.rand].choose);
});

~at1 = ({ ~ats.value([m, n, u, z].choose, 1.5.rand, [0.5, 1, -1, -0.5].choose); });
~bo1 = ({ ~bufferoveride.value(0); });
~bo2 = ({ ~bufferoveride.value(1); });
~bo3 = ({ ~bufferoveride.value(2); });
~bo4 = ({ ~bufferoveride.value(3); });
~mg1 = ({ ~mouse.value; });
~gl1 = ({ ~glitch.value; });
~gl2 = ({ ~glitch1.value; });
~gl3 = ({ ~glitch2.value; });
~ts1 = ({ ~tapestop.value(0, 4, 2, 4); });
~ts2 = ({ ~tapestop.value(1, 2, 2, 4); });
~ts3 = ({ ~tapestop.value(1, 4, 4, 16); });
~hi1 = ({ ~hipass.value([0.125, 0.25, 0.5, 1, 2, 4, 8, 16, 32].choose, [1, 1, 0.5, -1, -0.5, 2].choose, [0, 1, 2, 3].choose); });
~ms1 = ({ ~plz.value(4, [1.1, 2, 2].choose, 4, [1, 1, -1, 0.5, 2, -2].choose); });
~ms2 = ({ ~plz.value(2, [0.65, 0.9, 0.9].choose, 8, [1, 1, -1, 0.5, 2, -2].choose); });
~ms3 = ({ ~plz.value(1, [0.45, 0.45, 0.23].choose, 16, [1, 1, -1, 0.5, 2, -2].choose); });
~ms4 = ({ ~plz.value(0.5, [0.23, 0.23, 0.23.rand].choose, 16, [1, 1, -1, 0.5, 2].choose); });
~ms5 = ({ ~plz.value(0.25, 0.110, [16, 32, 32, 64].choose, [1, 1, -1, 0.5, 2].choose); });
~ms6 = ({ ~plz.value(0.125, 0.05.rand, 32, [1, 0.5, 2].choose); });

~master2 = ({ arg val6 = 0; 
              var t, myModes;
~master2Task = Task({
                ~sCount = 0; 
	                    loop({

[~hi1, ~hi1, ~gl1, ~gl1, ~gl2, ~gl3, ~ts1, ~ts2, ~ts3, ~atplay, ~atplay,
 ~ms2, ~ms3, ~ms4, ~ms5, ~ms6, ~ms1, ~ms2, ~ms3, ~ms4, ~ms5, ~ms6].choose.value(0);

	~sCount = ~sCount + 1;	
	~sCount;
	[1, 2, 4, 8, 2, 4, 8].choose.wait;	                 
	}); 
	}).play; 
});

~stoprandom = ({
~master2Task.stop;
t.stop;
r.stop;
v.stop;
w.free;
q.free;
e.free;
o.free;
});
)

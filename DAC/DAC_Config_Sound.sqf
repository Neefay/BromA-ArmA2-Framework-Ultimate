//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.0 - 2010    //
//--------------------------//
//    DAC_Config_Sound      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

if(isNil "DAC_Radio_Settings") then {DAC_Radio_Settings = [1500,[0,0],5,2,objNull]};

DAC_SayArrayE  	= 	[
						/* reach waypoint */	[100,"r01","r02","r03","r04","r05","r06","r07","r08","r09","r01_0","r01_1","r01_2","r01_3","r01_4","r01_5","r01_6","r01_7","r01_8","n5","n6","n7","n8","n9","n10","n11","n12","n13","n14"],
						/* detect enemys  */	[100,"r11","r12","r13","r14","r15","r16","n21","n22","n23","n24","n25","n26","n27","n28","n29","n30","n31","n32","n33","n34","n35","n36","n37","n38"],
						/* attack enemys  */	[100,"r21","r22","r23","r24","r25","r26","r27","r28","r29","r21_0","r21_1","n66","n67","n68","n69","n70","n71","n72","n73","n74","n75","n76","n77","n78","n79","n80","n81","n82","n83","n84","n85","n86","n87","n88"],
						/* call for help  */	[100,"r31","r32","r33","r34","r35","r36","r37","r38","r39","r31_0","r31_1","r31_2","r31_3","r31_4","r31_5","r31_6","n91","n92","n93","n94","n95","n96","n97","n98","n99","n100"],
						/* lost contact   */	[100,"r41","r42","r43","r44","r45","n103","n104","n105","n106","n107","n108","n109","n110","n111"],
						/* call for arti  */	[100,"r51","r52","r53","r54","r55","r56","n113","n114","n115","n116"],
						/* help positiv   */	[100,"r61","r62","r63","r64","r65","r66","r67","n119"]
					];

DAC_SayArrayW  	= 	[
						/* reach waypoint */	[100,"u11","u12","u13","u14","u15","u16","u17","u18","u19","u11_0","u11_1","u11_2","n1","n2","n3","n4"],
						/* detect enemys  */	[100,"u21","u22","u23","u24","u25","u26","n15","n16","n17","n18","n19","n20","n21"],
						/* attack enemys  */	[100,"u31","u32","u33","u34","u35","u36","u37","u38","u39","u31_0","u31_1","u31_2","n39","n40","n41","n42","n43","n44","n45","n46","n47","n48","n49","n50","n51","n52","n53","n54","n55","n56","n57","n58","n59","n60","n61","n62","n63","n64","n65"],
						/* call for help  */	[100,"u41","u42","u43","u44","u45","u46","u47","u48","u49","u41_0","u41_1","u41_2","u41_3","u41_4","n89","n90"],
						/* lost contact   */	[100,"u51","u52","n101","n102"],
						/* call for arti  */	[100,"u61","u62","u63","u64","u65","n112"],
						/* help positiv   */	[100,"u71","u72","u73","u74","u75","u76","u77","u78","u79","n117","n118"]
					];

DAC_SayArrayD  	= 		/* soldier die    */	[100,"d01","d02","d03","d04","d05","d06","d07","d08","d09","d10","d11","d12","d13","d14","d15","d16","d17","d18","d19","d20","d21","d22","d23","d24","d25","d26","d27","d28","d29","d30","d31","d32","d33","d34","d35","d36","d37","d38","d39","d40","d41","d42","d43","d44","d45","d46","d47","d48","d49","d50"];

DAC_RadioArrayE	= 	[	
						//     Please PM me to get an example mission with radio sounds (you get then a new DAC_Sound.pbo)
					];

DAC_RadioArrayW	= 	[	
						//     Please PM me to get an example mission with radio sounds (you get then a new DAC_Sound.pbo)
					];
//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
//
//   fxc /T vs_5_0 /Fc tempArray.asm /Fo tempArray.o tempArray
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// POSITION                 0   xyzw        0     NONE  float       
// TEXCOORD                 0   x           1     NONE    int   x   
// TEXCOORD                 1   x           2     NONE    int   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue Format   Used
// -------------------- ----- ------ -------- -------- ------ ------
// SV_Position              0   xyzw        0      POS  float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_input v1.x
dcl_input v2.x
dcl_output_siv o0.xyzw, position
dcl_temps 1
dcl_indexableTemp x0[2], 4
dcl_indexableTemp x1[2], 4
mov x0[0].x, l(0)
mov x0[1].x, l(0)
mov x1[0].x, l(0)
mov x1[1].x, l(0)
mov r0.x, v1.x
mov x0[r0.x + 0].x, l(1.000000)
iadd r0.x, v1.x, l(1)
mov x0[r0.x + 0].x, l(0)
mov r0.x, v2.x
mov x1[r0.x + 0].x, l(1.000000)
iadd r0.x, v2.x, l(2)
mov x1[r0.x + 0].x, l(0)
and r0.x, v1.x, l(1)
mov r0.x, x0[r0.x + 0].x
and r0.z, v2.x, l(1)
mov r0.y, x1[r0.z + 0].x
mov o0.xyzw, r0.xxyy
ret 
// Approximately 18 instruction slots used
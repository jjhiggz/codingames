// I won this competition!!! so I figured that I would save my code
// the challenge included minimizing the amount of code, thats why it looks hideous
const N=parseInt(readline()).toString(4).split('');
let v={0:'GA',1:'BU',2:'ZO',3:'MEU'}
console.log(N.reduce((a,n)=>a+v[+n],''));

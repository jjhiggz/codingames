S.split('').forEach(p => {
  if(p === '('){
      allStrings.push(p)
  } else {
      if(allStrings.includes('(')){
          let leftIndex = allStrings.findIndex(char => char === '(')
          allStrings[leftIndex] = false
      } else {
          allStrings.push('Roses are red, violets are blue, I left a message here, and Its for you')
      }
  }
})

console.log(
  allStrings
  .filter((element) => element !== false)
  .length===
)
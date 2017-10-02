function revealBioSegment(target){
  $(target).parent().parent().next().show()
  changeBioButton(target)
}

function hideBioSegment(target){
  $(target).parent().parent().next().hide()
  changeBioButton(target)
}

function changeBioButton(target){
  if($(target).text() === 'add'){
    $(target).text('replay')
  }
  else{
    $(target).text('add')
  }
}

$(document).ready( () =>{
  $('.bio-button').on('click', (event) =>{
    if($(event.target).text() === 'add'){
      revealBioSegment(event.target)
    }
    else{
      hideBioSegment(event.target)
    }
  })
})

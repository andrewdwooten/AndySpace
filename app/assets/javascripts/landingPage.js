
function addBriefBio(){
  $('#landing-column').removeClass('offset-s4')
  $('.landing-panel').show()
}
$(document).ready( () =>{
  $('#landing-card-button').on('click', (event) =>{
    addBriefBio()
  })
})

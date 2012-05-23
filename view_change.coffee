###
'View Change' jQuery/jQuery UI/CoffeeScript Extension
by Brett Jurgens

See it in action @ brettjurgens.com

Source available on github, check the README there
###

# changeView will slide the 'current' element to the left or right and
# slide the 'view' (the new view) element to the opposite direction
changeView = (view) ->
  jQuery ->
    current = $('.current').attr('id')
    currentNum = $('.current').attr('number')
    viewNum = $('#' + view).attr('number')
    viewNum = parseInt viewNum
    window.location.hash = view
    if current isnt view
      if currentNum > viewNum
        d1 = 'right'
        d2 = 'left'
      else
        d1 = 'left'
        d2 = 'right'
      $('.current').hide('slide', {direction: d1}, 1000, ->
          $('#' + view).show('slide', {direction: d2}, 1000, ->
            onChange(view, viewNum) # read below
          )
        )

# onChange is the code to do after sliding it, not necessary for all
# cases. Below is an example that I use it to update nav elements and 
# to fade elements in, for aesthetic reasons. Change it to your liking. 
onChange = (view, viewNum) ->
  jQuery ->
    console.log viewNum
    $('.nav').hide()
    $('.view').hide()
    $('.homearrow').hide()
    $('.currentfnav').addClass('fnav').removeClass('currentfnav')
    $('#' + view.substr(0,1) + 'nav').addClass('currentfnav')
    $('.current').removeClass('current')
    $('#' + view + 'nav').fadeIn() if viewNum isnt 1
    $('.homearrow').fadeIn() if viewNum is 1
    $('.view').fadeIn() if viewNum is 3
    $('#' + view).addClass('current');

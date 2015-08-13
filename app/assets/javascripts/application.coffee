# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
# about supported directives.
#
#= require jquery
#= require jquery.turbolinks
#= require jquery_ujs
#  ALL REQUIRES BELOW THIS LINE
#
#= require masonry/jquery.masonry
#= require materialize-sprockets
#
#  NO REQUIRES BELOW
#= require_tree .
#= require turbolinks

$(document).on 'ready page:change', ->
  $('#pins').imagesLoaded ->
    $('#pins').masonry
      itemSelector: '.box'
      isFitWidth: true
  $('.dropdown-button').dropdown hover: false
  $('.modal-trigger').leanModal(
    dismissible: true
  )

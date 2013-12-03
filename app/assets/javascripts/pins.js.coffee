# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
	$('.chosen-select').chosen
		width: '200px'

	success = (data)->
		$("#publications_id").append("<option value='#{data.id}' selected='selected'>#{data.name}</option>")
		$("#publications_id").trigger("chosen:updated")

	$(".custom_publication input").keypress (e)->
		if e.keyCode == 13
			e.preventDefault()
			name = $(this).val()
			$.ajax({
			  type: "POST",
			  url: "/publications",
			  data: {publication: {name: name}},
			  success: success,
			  dataType: "json"
			});

$(document).ready(ready)
$(document).on("page:load", ready)


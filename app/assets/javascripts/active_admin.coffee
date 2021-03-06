#= require active_admin/base

#= require autosize
#= require redactor
#= require imperavi/bufferbuttons

#= require_self


$(window).on 'load.tools.redactor', -> $('textarea.h-js--redactor').redactor
  lang: 'ru'
  minHeight: 128
  maxHeight: 640
  structure: yes
  formatting: ['p', 'blockquote', 'pre', 'h4', 'h5']
  buttons: [
    'html'
    'formatting'
    'bold', 'italic', 'underline', 'deleted'
    'alignment'
    'outdent', 'indent'
    'unorderedlist', 'orderedlist'
    'link'
  ]
  plugins: [
    'bufferbuttons'
    'fullscreen'
  ]

$ ->
  $('#utils > a').html '&hellip;'
  
  autosize document.querySelectorAll 'textarea.h-js--autosize'

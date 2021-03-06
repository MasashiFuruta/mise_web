// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require turbolinks
//= require toastr
//= require_tree .

var headerHeight = 60;

// リンククリックで目的のIDまでスクロール
// http://web-wizardry.net/jquery/jquery_scroll_page_link/
$(function(){
  $('a[href^="#"]').click(function() {
    var speed = 300;
    var href = $(this).attr("href");
    var target = $(href == "#" || href == "" ? 'html' : href);
    var position = target.offset().top - headerHeight;
    $('body,html').animate({scrollTop:position}, speed, 'swing');
    return false;
  });
});

function BackToNew() {
  document.getElementById('new_contact').action = '/contact';
}

function goToThanks() {
  document.getElementById('new_contact').action = '/contact/thanks';
}
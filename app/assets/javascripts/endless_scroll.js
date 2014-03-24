

var currentPage = 1;
var intervalID = -1000;

function checkScroll() {
  //ONLY Works in rails right now
  //collection.fetch({ data: $.param({ page: 1}) }); maybe will help
  if (nearBottomOfPage() && currentPage<10) {
    currentPage++;
  console.log("endless request "+ currentPage);


    // Call the layout function.

    pins.fetch({
      data: $.param({ page: currentPage}),
      remove: false,
      success: function () {

      }
     })



  // $('#tiles li').wookmark({
  //   // Prepare layout options.
  //   align: 'center',
  //   // Prepare layout options.
  //   autoResize: true, // This will auto-update the layout when the browser window is resized.
  //   container: $('#main'), // Optional, used for some extra CSS styling
  //   offset: 5, // Optional, the distance between grid items
  //   outerOffset: 10, // Optional, the distance to the containers border
  //   itemWidth: 310 // Optional, the width of a grid item
  // });

  }
}

function nearBottomOfPage() {
  return scrollDistanceFromBottom() < 50;
}

function scrollDistanceFromBottom(argument) {
  return pageHeight() - (window.pageYOffset + self.innerHeight);
}

function pageHeight() {
  return Math.max(document.body.scrollHeight, document.body.offsetHeight);
}

$('document').ready(function(){
	intervalID = setInterval(checkScroll, 250);
})













































//
//
//
//
//
//
//
//
//
// var currentPage = 1;
// var intervalID = -1000;
//
// function checkScroll() {
//   //ONLY Works in rails right now
//   //collection.fetch({ data: $.param({ page: 1}) }); maybe will help
//   if (nearBottomOfPage()) {
//     currentPage++;
//   console.log("endless request "+ currentPage);
//
//     jQuery.ajax('?page=' + currentPage, {asynchronous:true, evalScripts:true, method:'get', success: function(data, textStatus, jqXHR) {
//     $('#tiles').append($(data).find('#tiles').html());
//     if(typeof jQuery(data).find('#tiles').html() == 'undefined' || jQuery(data).find('#tiles').html().trim().length == 0){
//       clearInterval(intervalID);
//     }
//
//     // Call the layout function.
//
//
//   },});
//
//   // $('#tiles li').wookmark({
//   //   // Prepare layout options.
//   //   align: 'center',
//   //   // Prepare layout options.
//   //   autoResize: true, // This will auto-update the layout when the browser window is resized.
//   //   container: $('#main'), // Optional, used for some extra CSS styling
//   //   offset: 5, // Optional, the distance between grid items
//   //   outerOffset: 10, // Optional, the distance to the containers border
//   //   itemWidth: 310 // Optional, the width of a grid item
//   // });
//
//   }
// }
//
// function nearBottomOfPage() {
//   return scrollDistanceFromBottom() < 50;
// }
//
// function scrollDistanceFromBottom(argument) {
//   return pageHeight() - (window.pageYOffset + self.innerHeight);
// }
//
// function pageHeight() {
//   return Math.max(document.body.scrollHeight, document.body.offsetHeight);
// }
//
// $('document').ready(function(){
//   intervalID = setInterval(checkScroll, 250);
// })
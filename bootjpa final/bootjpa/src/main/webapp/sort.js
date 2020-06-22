var options = {
valueNames: ['title', 'price', 'author', 'category', 'rating', 'isbn', 'keywords', 'date']
};
var userList = new List('users', options)

function resetList(){
	userList.search();
	userList.filter();
	userList.update();
	$('.filter').prop('checked', false);
	$('.search').val('');
};
  
function updateList(){
  var values_category = $("input[name=category]:checked").val();
	console.log(values_category);

	userList.filter(function (item) {
		var categoryFilter = false;
		
		if(values_category == "all")
		{ 
			categoryFilter = true;
		} else {
			categoryFilter = item.values().category == values_category;
			
		}
		
		return categoryFilter
	});
	userList.update();
}
                               
$(function(){
  //updateList();
  $("input[name=category]").change(updateList);
	
	userList.on('updated', function (list) {
		if (list.matchingItems.length > 0) {
			$('.no-result').hide()
		} else {
			$('.no-result').show()
		}
	});
});
var options = {
  valueNames: [ 'id', 'name', 'score', 'comment']
};

// Init list
var commentList = new List('comments', options);

var idField = $('#id-field'),
    nameField = $('#name-field'),
	scoreField = $('#score-field'),
	commentField = $('#comment-field'),
    addBtn = $('#add-btn'),
    editBtn = $('#edit-btn').hide(),
    removeBtns = $('.remove-item-btn'),
    editBtns = $('.edit-item-btn');

// Sets callbacks to the buttons in the list
refreshCallbacks();

addBtn.click(function() {
  commentList.add({
    id: Math.floor(Math.random()*110000),
    name: nameField.val(),
	score: scoreField.val(),
	comment: commentField.val()
  });
  clearFields();
  refreshCallbacks();
});

editBtn.click(function() {
  var item = commentList.get('id', idField.val())[0];
  item.values({
    id:idField.val(),
    name: nameField.val(),
	score: scoreField.val(),
	comment: commentField.val()
  });
  clearFields();
  editBtn.hide();
  addBtn.show();
});

function refreshCallbacks() {
  // Needed to add new buttons to jQuery-extended object
  removeBtns = $(removeBtns.selector);
  editBtns = $(editBtns.selector);
  
  removeBtns.click(function() {
    var itemId = $(this).closest('tr').find('.id').text();
    commentList.remove('id', itemId);
  });
  
  editBtns.click(function() {
    var itemId = $(this).closest('tr').find('.id').text();
    var itemValues = commentList.get('id', itemId)[0].values();
    idField.val(itemValues.id);
    nameField.val(itemValues.name);
	scoreField.val(itemValues.score);
	commentField.val(itemValues.comment);
    
    editBtn.show();
    addBtn.hide();
  });
}

function clearFields() {
  nameField.val('');
  scoreField.val('');
  commentField.val('');
}

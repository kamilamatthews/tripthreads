//Put in heading for survey
$(document).on('ready page:load', function() {
  //Climate
  var destination, climate;
  var looks = {};
  $('#destination_name').blur(function() {
    destination = $('#destination_name').val();
    console.log(destination);
    $('#insert-destination').append(destination);
  });

  var climate;
  $('.climate_value').click(function(event) {
    $('#climate').val(event.target.id);
  });

  var purposes = [];
  $('.purpose-value').click(function(event) {
    var purposeId = event.target.id;
  });
  $('destination_purpose_other').blur(function() {
    if (this.val === 'Other') {
      $('other-purpose').slide('slow');
    }
    $('other-purpose').blur(function() {
      //Add others field to submitted data.
    });
  });

  //Brands
  $('#brands-next').click(function() {
    $('#no_looks_header').append(destination);
  });

  //No of looks
  var numberOfOutfitsNeeded;
  var lookLoopIdx = 0; //Starts at 1
  $('.outfit_count').change(function(event) {
    numberOfOutfitsNeeded = 0;
    $('input:checkbox.outfit_count').each(function() {
      this.checked ? numberOfOutfitsNeeded += parseInt($(this).val()) : console.log("");
    });
    $('a[id="looks-count-next"]').attr('href','#look-basics-'+lookLoopIdx);
    console.log('numberOfOutfitsNeeded', numberOfOutfitsNeeded);
  });

  // ------------- Start Loop through looks --------------//

  //Look basics
  ///If arrive from number of looks
  $('#looks-count-next').click(function() {
    $('#look-index').append(parseInt(lookLoopIdx)+1);
    $('#looks-basic-next').attr('href', '#look-items-'+lookLoopIdx);
  });
  ///If arrive from previous...
  //

  //Look items
  $('#looks-basic-next').click(function() {
    //Save into hidden field
    //
    $('#look-items-next').attr('href', '#jeans-types-'+lookLoopIdx);
  });

  //Jeans Types
  ///If arrive from look items
  $('#look-items-next').click(function() {
    $('#jeans-types-next').attr('href', '#shoes-types-'+lookLoopIdx);
  });

  //Shoes Types
  $('#jeans-types-next').click(function() {
    if (lookLoopIdx === 0) {
      $('#shoes-types-next').attr('href', '#jewelry-color');
      $('#jewelry-color-next').attr('href', '#jewelry-pieces-'+lookLoopIdx);
    }
    else {
      $('#shoes-types-next').attr('href', '#jewelry-pieces-'+lookLoopIdx);
    }
    if (lookLoopIdx < numberOfOutfitsNeeded) {
      $('#jewelry-pieces-next').attr('href', '#look-basics-'+(parseInt(lookLoopIdx)+1));
      lookLoopIdx += 1;
    }
    else {
      $('#jewelry-pieces-next').attr('href', '#piercings');
    }
  });

  //Jewelry Color

  //Jewelry Pieces


  // ------------- End Loop through looks --------------//
  //reloop procedure....

  //piercings


  //additional info


  //get to know you

});

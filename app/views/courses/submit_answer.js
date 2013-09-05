$('#result').html("<%= j render :partial => 'courses/submit_answer', :locals => {:answer => @answer} %>");
$('#next').html("<%= j render :partial => 'courses/revise_continue', :locals => {:course => @answer.question.course} %>");

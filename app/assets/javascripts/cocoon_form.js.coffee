$ ->
  day_count = 1
  $('.nested-form')
    .on 'cocoon:before-insert', (e, task_to_be_added) ->
      console.log(e)
      task_to_be_added.fadeIn('slow')
    .on 'cocoon:after-insert', (e, added_task) ->
      day_count += 1
      $('.day_form').last().val(day_count)
      console.log('after insert')
      added_task.css("background","red")
    .on 'cocoon:before-remove', (e, task_to_be_removed) ->
      console.log(task_to_be_removed)
      task_to_be_removed.fadeOut('slow')
    .on 'cocoon:after-remove', (e, removed_task) ->
      console.log('after remove')
      
<div id="comments_list">
    {if $comments|count > 0}
        <h3>{__('Comments', 'Comments of polled people')}</h3>
        {foreach $comments as $comment}
            <div class="comment">
                {if $admin && !$expired}
                    <button type="submit" name="delete_comment" value="{$comment->id|html}" class="btn btn-link" title="{__('Comments', 'Remove the comment')}"><span class="glyphicon glyphicon-remove text-danger"></span><span class="sr-only">{__('Generic', 'Remove')}</span></button>
                {/if}
                <span class="comment_date">{$comment->date|date_format:$date_format['txt_datetime_short']}</span>
                <b>{$comment->name|html}</b>&nbsp;
                <span>{$comment->comment|escape|nl2br}</span>
            </div>
        {/foreach}
    {/if}
    <div id="comments_alerts"></div>
</div>
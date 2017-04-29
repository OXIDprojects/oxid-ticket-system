<form action="[{ $oViewConf->getSelfActionLink() }]" name="ticket_new" method="post">
    [{ $oViewConf->getHiddenSid() }]
    [{ $oViewConf->getNavFormParams() }]
    <input type="hidden" name="fnc" value="newTicket">
    <input type="hidden" name="cl" value="cc_account_tickets">
    <div class="form-group">
        <label>[{ oxmultilang ident="CC_TICKETSYSTEM_SUBJECT" }]</label>
        <input type="text" name="ticketsubject" class="form-control">
    </div>
    <div class="form-group">
        <label>[{ oxmultilang ident="CC_TICKETSYSTEM_MESSAGE" }]</label>
        <textarea name="tickettext" rows="10" class="form-control"></textarea>
    </div>
    <button type="submit" class="btn btn-info btn-block btn-md submitButton">[{oxmultilang ident="CC_TICKETSYSTEM_SEND"}]</button>
    <p>&nbsp;</p>
    <a class="btn btn-info btn-md btn-block readMore" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=cc_account_tickets" }]" rel="nofollow">[{ oxmultilang ident="BACK_TO_OVERVIEW" }]</a>
 </form>
 <p>&nbsp;</p>
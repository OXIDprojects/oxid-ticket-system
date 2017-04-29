<form action="[{ $oViewConf->getSelfActionLink() }]" name="ticket_update" method="post" id="update" style="display: none;">
    [{ $oViewConf->getHiddenSid() }]
    [{ $oViewConf->getNavFormParams() }]
    <input type="hidden" name="fnc" value="updateTicket">
    <input type="hidden" name="cl" value="cc_account_tickets">
    <input type="hidden" name="tid" value="[{$oView->getTicketOxid()}]">
    <div class="form-group">
        <label>[{ oxmultilang ident="CC_TICKETSYSTEM_MESSAGE" }]</label>
        <textarea class="form-control" name="tickettext" rows="6" style="width:100%"></textarea>
    </div>
    <button type="submit" class="btn btn-info btn-md btn-block submitButton">[{oxmultilang ident="CC_TICKETSYSTEM_SEND"}]</button>
</form>
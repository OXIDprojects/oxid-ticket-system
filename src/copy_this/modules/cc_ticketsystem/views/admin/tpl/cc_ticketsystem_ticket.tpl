<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<div class=container" style="max-width:1000px;">
    [{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign box="list"}]

    <h1>[{oxmultilang ident="CC_TICKETSYSTEM_TICKET"}]: [{$oView->getTicketSubject()}]</h1>

    [{foreach from=$oView->getTicketTexts() item=text}]
      <table cellspacing="0" cellpadding="0" class="table table-bordered table-striped table-hover">
        <tr>
          <td style="width:80%;"><strong><img src="[{$text.image}]"> [{$text.author}]</strong></td>
          <td style="width:20%;">[{$text.timestamp|date_format:"%d.%m.%Y, %H:%M"}]</td>
        </tr>
        <tr>
          <td colspan=2>[{$text.text}]</td>
        </tr>
      </table>
    [{/foreach}]

    [{if $oView->getTicketState() != 3}]
        <form action="[{ $oViewConf->getSelfLink() }]" name="ticket_update" method="post">
            [{ $oViewConf->getHiddenSid() }]
            <input type="hidden" name="fnc" value="updateTicket">
            <input type="hidden" name="cl" value="cc_ticketsystem_tickets">
            <input type="hidden" name="oxid" value="[{$oView->getTicketOxid()}]">
            <div class="form-group">
              <label>[{ oxmultilang ident="CC_TICKETSYSTEM_MESSAGE" }]</label>
              <textarea name="tickettext" class="form-control" rows="6"></textarea>
            </div>
            <button type="submit" class="btn btn-info btn-block btn-sm submitButton">[{ oxmultilang ident="CC_TICKETSYSTEM_SEND" }]</button>
        </form>
    [{/if}]
    <p><br>
        <a class="btn btn-warning btn-block btn-sm submitButton" href="[{$oViewConf->getSelfLink()}]cl=cc_ticketsystem_tickets">[{ oxmultilang ident="GENERAL_LIST_PREV" }]</a>
    </p>
</div>
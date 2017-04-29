<div class=container" style="max-width:1000px;">
    <table cellspacing="0" cellpadding="0" class="table table-bordered table-striped table-hover">
        <tr>
          <th style="width:70%;">Ticket</th>
          <th style="width:25%;">Update</th>
          <th style="width:5%;"></th>
        </tr>
        [{foreach from=$aTickets key=ticketid item=ticket}]
            <tr>
              <td class="clickable-row" style="cursor:pointer;" data-href='[{$oViewConf->getSelfLink()}]cl=cc_ticketsystem_tickets&ticket=[{$ticketid}]'><a href="[{$oViewConf->getSelfLink()}]cl=cc_ticketsystem_tickets&ticket=[{$ticketid}]">[{$ticket.subject}]</a></td>
              <td class="clickable-row" style="cursor:pointer;" data-href='[{$oViewConf->getSelfLink()}]cl=cc_ticketsystem_tickets&ticket=[{$ticketid}]'>[{$ticket.updated|date_format:"%d.%m.%Y, %H:%M"}]</td>
              <td>
                <a href="[{$oViewConf->getSelfLink()}]cl=cc_ticketsystem_tickets&ticket=[{$ticketid}]&fnc=[{$action}]">
                  <img src="[{$oViewConf->getBaseDir()}]modules/cc_ticketsystem/out/img/[{$action}].png" title="[{oxmultilang ident="CC_TICKETSYSTEM_"|cat:$action}]">
                </a>
              </td>
            </tr>
        [{/foreach}]
    </table>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>
jQuery(document).ready(function($) {
    $(".clickable-row").click(function() {
        window.location = $(this).data("href");
    });
});
</script>
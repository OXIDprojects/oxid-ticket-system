[{capture append="oxidBlock_content"}]
    <h1 class="page-header pageHead">[{ oxmultilang ident="CC_TICKETSYSTEM_MY_TICKETS" }]</h1>
    <table class="table table-bordered table-striped table-hover" cellspacing="0" cellpadding="0">
        <tr>
            <th style="width:60%;">Ticket</th>
            <th style="width:20%;">Status</th>
            <th style="width:20%;">Update</th>
        </tr>
        [{foreach from=$oView->getTicketList() item=ticket}]
            <tr class="clickable-row" style="cursor:pointer" data-href='[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=cc_account_tickets" params="ticket="|cat:$ticket.ticketid}]'>
                <td><a class="readMore" href="[{oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=cc_account_tickets" params="ticket="|cat:$ticket.ticketid}]" rel="nofollow">[{$ticket.subject}]</a></td>
                <td>[{oxmultilang ident=$ticket.state}]</td>
                <td>[{$ticket.updated|date_format:"%d.%m.%Y, %H:%M"}]</td>
            </tr>
        [{/foreach}]
    </table>
    <a class="btn btn-info btn-md btn-block readMore" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=cc_account_tickets" params="ticket=new"}]" rel="nofollow">[{ oxmultilang ident="CC_TICKETSYSTEM_NEW_TICKET" }]</a>
    <p>&nbsp;</p>

    [{capture assign=rowscript}]
    jQuery(document).ready(function($) {
        $(".clickable-row").click(function() {
            window.location = $(this).data("href");
        });
    });
    [{/capture}]
    [{oxscript add=$rowscript}]
    
[{/capture}]
[{capture append="oxidBlock_sidebar"}]
    [{include file="page/account/inc/account_menu.tpl" active_link="cc_account_tickets"}]
[{/capture}]
[{include file="layout/page.tpl" sidebar="Left"}]
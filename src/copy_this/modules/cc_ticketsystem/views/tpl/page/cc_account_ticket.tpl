[{capture append="oxidBlock_content"}]
    <h1 class="page-header pageHead">[{ oxmultilang ident="CC_TICKETSYSTEM_MY_TICKETS" }]: [{$oView->getTicketSubject()}]</h1>
    [{foreach from=$oView->getTicketTexts() item=text}]
        <table class="table table-bordered table-striped" cellspacing="0" cellpadding="0">
            <tr>
                <td style="width:50%;"><strong><img src="[{$text.image}]"> [{$text.author}]</strong></td>
                <td style="width:50%;">[{$text.timestamp|date_format:"%d.%m.%Y, %H:%M"}]</td>
            </tr>
            <tr>
                <td colspan=2 style="padding: 5px;">[{$text.text}]</td>
            </tr>
        </table>
    [{/foreach}]
    [{if $oView->getTicketState() != 3}]
        <div class="btn btn-info btn-block btn-md" onclick="this.style.display = 'none'; update.style.display = 'block';">[{ oxmultilang ident="CC_TICKETSYSTEM_ADD_MESSAGE" }]</div>
        [{include file="cc_form_update.tpl"}]
        <p>&nbsp;</p>
    [{/if}]
    <a class="btn btn-info btn-md btn-block readMore" href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=cc_account_tickets" }]" rel="nofollow">[{ oxmultilang ident="BACK_TO_OVERVIEW" }]</a>
[{/capture}]

[{capture append="oxidBlock_sidebar"}]
    [{include file="page/account/inc/account_menu.tpl" active_link="cc_account_tickets"}]
[{/capture}]
[{include file="layout/page.tpl" sidebar="Left"}]
[{$smarty.block.parent}]
<li class="[{if $oViewConf->getActiveTheme()|strpos:"flow" !== false }]list-group-item[{else}]li_ticket[{/if}][{if $active_link == "cc_account_tickets"}] active[{/if}]">
    <a href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=cc_account_tickets" }]" rel="nofollow">[{ oxmultilang ident="CC_TICKETSYSTEM_MY_TICKETS" }]</a>
</li>
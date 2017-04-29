[{$smarty.block.parent}]
[{if $oViewConf->getActiveTheme()|strpos:"flow" !== false }]
    [{assign var="itsFlow" value=true}]
    <div class="panel panel-default">
        <div class="panel-heading">
            <a href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=cc_account_tickets" }]" rel="nofollow">[{ oxmultilang ident="CC_TICKETSYSTEM_MY_TICKETS" }]</a>
            <a href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=cc_account_tickets" }]" class="btn btn-default btn-xs pull-right">
                <i class="fa fa-arrow-right"></i>
            </a>
        </div>
        <div class="panel-body">
[{/if}]
<dl>
  [{if !$itsFlow}]<dt><a href="[{ oxgetseourl ident=$oViewConf->getSelfLink()|cat:"cl=cc_account_tickets" }]" rel="nofollow">[{ oxmultilang ident="CC_TICKETSYSTEM_MY_TICKETS" }]</a></dt>[{/if}]
  <dd>[{ oxmultilang ident="CC_TICKETSYSTEM_MY_TICKETS_DESC" }]</dd>
</dl>
[{if $itsFlow}]
        </div>
    </div>
[{/if}]
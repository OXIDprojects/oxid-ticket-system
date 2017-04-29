<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

[{include file="headitem.tpl" title="GENERAL_ADMIN_TITLE"|oxmultilangassign box="list"}]

<h1>[{oxmultilang ident="CC_TICKETSYSTEM_TICKETS"}]</h1>

<h2>[{oxmultilang ident="CC_TICKETSYSTEM_OPEN"}]</h2>

<strong>[{oxmultilang ident="CC_TICKETSYSTEM_SUPPORT_NEEDED"}]</strong>
<br>
[{include file="cc_ticketsystem_table.tpl" aTickets=$oView->getAdminTickets() action='LOCK'}]

<strong>[{oxmultilang ident="CC_TICKETSYSTEM_CUSTOMER_RESPONSE"}]</strong>
<br>
[{include file="cc_ticketsystem_table.tpl" aTickets=$oView->getUserTickets() action='LOCK'}]

<h2>[{oxmultilang ident="CC_TICKETSYSTEM_CLOSED"}]</h2>
[{include file="cc_ticketsystem_table.tpl" aTickets=$oView->getClosedTickets() action='UNLOCK'}]
[{if ($info)}]
    <br><div class="[{$info.class}]">[{oxmultilang ident=$info.message}]</div><br>
[{/if}]
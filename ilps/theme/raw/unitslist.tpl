{auto_escape on}
{foreach from=$units.data item=unit}
    <tr class="{cycle values='r0,r1'}">
        <td class="c1">{$unit->title}</td>
        <td class="c2">{$unit->status}</td>
        <td class="c3">{$unit->targetcompletion}</td>
        <td class="c4">{$unit->datecompleted}</td>
        <td class="c5 right">{$unit->points}</td>
        <td class="c6 buttonscell"><a href="{$WWWROOT}artefact/ilps/edit/unit.php?id={$unit->unit}" title="{str tag=edit}"><img src="{theme_url filename='images/edit.gif'}" alt="{str tag=edit}"></a>
            <a href="{$WWWROOT}artefact/ilps/delete/unit.php?id={$unit->unit}" title="{str tag=delete}"><img src="{theme_url filename='images/icon_close.gif'}" alt="{str tag=delete}"></a></td>
    </tr>
{/foreach}
<tr></tr>
<tr class="summarypoints">
    <th colspan="4" class="right">{str tag='totalpoints' section='artefact.ilps'}</th><td class="right totalpoints">{$summarypoints.grandtotalpoints}</td><td></td>
</tr>
<tr><td></td></tr><tr><td></td></tr>
<tr class="feedbackpoints">
    <th colspan="4" class="right">{str tag='acquiredpoints' section='artefact.ilps'}</th><td class="right aquiredpoints">{$summarypoints.aquiredpoints}</td><td></td>
</tr>
<tr class="feedbackpoints">
    <th colspan="4" class="right">{str tag='remainingpoints' section='artefact.ilps'}</th><td class="right remainingpoints">{$summarypoints.remainingpoints}</td><td></td>
</tr>

{/auto_escape}
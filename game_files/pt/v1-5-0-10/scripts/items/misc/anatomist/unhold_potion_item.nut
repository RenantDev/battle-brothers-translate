this.unhold_potion_item <- this.inherit("scripts/items/misc/anatomist/anatomist_potion_item", {
	m = {},
	function create()
	{
		this.anatomist_potion_item.create();
		this.m.ID = "misc.unhold_potion";
		this.m.Name = "Poção tesoura de idiota";
		this.m.Description = "Ignore o nome, esta poção concederá quase imortalidade a quem quer que beba!Isso é certo, assim como o temido unhold, a sorte de consumir isso terá suas feridas próximas momentos após a abertura!Pegue!Rapidamente!Não pense, agir!";
		this.m.IconLarge = "";
		this.m.Icon = "consumables/potion_32.png";
		this.m.Value = 0;
	}

	function getTooltip()
	{
		local result = [
			{
				id = 1,
				type = "title",
				text = this.getName()
			},
			{
				id = 2,
				type = "description",
				text = this.getDescription()
			}
		];
		result.push({
			id = 66,
			type = "text",
			text = this.getValueString()
		});

		if (this.getIconLarge() != null)
		{
			result.push({
				id = 3,
				type = "image",
				image = this.getIconLarge(),
				isLarge = true
			});
		}
		else
		{
			result.push({
				id = 3,
				type = "image",
				image = this.getIcon()
			});
		}

		result.push({
			id = 11,
			type = "text",
			icon = "ui/icons/health.png",
			text = "Regenerate [color=" + this.Const.UI.Color.PositiveValue + "]10[/color] hitpoints each turn"
		});
		result.push({
			id = 65,
			type = "text",
			text = "Right-click or drag onto the currently selected character in order to drink. This item will be consumed in the process."
		});
		result.push({
			id = 65,
			type = "hint",
			icon = "ui/tooltips/warning.png",
			text = "Mutates the body, causing sickness"
		});
		return result;
	}

	function playInventorySound( _eventType )
	{
		this.Sound.play("sounds/bottle_01.wav", this.Const.Sound.Volume.Inventory);
	}

	function onUse( _actor, _item = null )
	{
		_actor.getSkills().add(this.new("scripts/skills/effects/unhold_potion_effect"));
		return this.anatomist_potion_item.onUse(_actor, _item);
	}

});


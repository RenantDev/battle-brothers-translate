this.nachzehrer_potion_item <- this.inherit("scripts/items/misc/anatomist/anatomist_potion_item", {
	m = {},
	function create()
	{
		this.anatomist_potion_item.create();
		this.m.ID = "misc.nachzehrer_potion";
		this.m.Name = "Poção de carne de tricô";
		this.m.Description = "Se se divorciar o horror do ato de sua utilidade, há poucos fenômenos mais maravilhosos da natureza do que a capacidade de Nachzehrer de recuperar comendo a carne dos mortos.Não mais!Agora o próprio homem pode assumir essas qualidades, e sem cometer crimes de consciência, para arrancar!";
		this.m.IconLarge = "";
		this.m.Icon = "consumables/potion_36.png";
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
			icon = "ui/icons/days_wounded.png",
			text = "Reduces the time it takes to heal from any injury by one day, down to a mininum of one day"
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
		_actor.getSkills().add(this.new("scripts/skills/effects/nachzehrer_potion_effect"));
		return this.anatomist_potion_item.onUse(_actor, _item);
	}

});


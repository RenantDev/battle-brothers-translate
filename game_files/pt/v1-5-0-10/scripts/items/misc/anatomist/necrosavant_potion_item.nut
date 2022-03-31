this.necrosavant_potion_item <- this.inherit("scripts/items/misc/anatomist/anatomist_potion_item", {
	m = {},
	function create()
	{
		this.anatomist_potion_item.create();
		this.m.ID = "misc.necrosavant_potion";
		this.m.Name = "Poção do Nightstalker";
		this.m.Description = "Quem bebe esta poção incrível, produzida com a cinza de um necrosavante, se encontrará em posse dos poderes de cura milagrosos das criaturas mortos-vivos!Não concede a vida útil prolongada associada às abominações, no entanto - exatamente o oposto, de fato.Isso pode ser considerado um recurso deve que o Imbiber seja um pouco confortável bebendo sangue.";
		this.m.IconLarge = "";
		this.m.Icon = "consumables/potion_20.png";
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
			icon = "ui/icons/special.png",
			text = "Heal [color=" + this.Const.UI.Color.PositiveValue + "]25%[/color] of hitpoint damage inflicted on adjacent enemies that have blood"
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
		_actor.getSkills().add(this.new("scripts/skills/effects/necrosavant_potion_effect"));
		return this.anatomist_potion_item.onUse(_actor, _item);
	}

});


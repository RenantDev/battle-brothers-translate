this.geist_potion_item <- this.inherit("scripts/items/misc/anatomist/anatomist_potion_item", {
	m = {},
	function create()
	{
		this.anatomist_potion_item.create();
		this.m.ID = "misc.geist_potion";
		this.m.Name = "Bebida do Deadman";
		this.m.Description = "Este projecto, sintetizado dos remanescentes ectoplasmáticos fracos de um \ 'slime \' geist, altera o corpo de quem quer que imbabe para assumir um aspecto fantasmagórico semelhante.Quaisquer armas empunhadas por tal guerreiro certamente ganharão parte da capacidade da criatura de contornar a armadura!Alucinações auditivas são um efeito colateral esperado de consumir o projecto e provavelmente cessarão depois de um tempo.Espero, de qualquer maneira.";
		this.m.IconLarge = "";
		this.m.Icon = "consumables/potion_24.png";
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
			text = "An additional [color=" + this.Const.UI.Color.PositiveValue + "]5%[/color] of damage ignores armor when using melee weapons"
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
		_actor.getSkills().add(this.new("scripts/skills/effects/geist_potion_effect"));
		return this.anatomist_potion_item.onUse(_actor, _item);
	}

});


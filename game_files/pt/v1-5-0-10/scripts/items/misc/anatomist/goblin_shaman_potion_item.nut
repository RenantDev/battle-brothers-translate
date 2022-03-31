this.goblin_shaman_potion_item <- this.inherit("scripts/items/misc/anatomist/anatomist_potion_item", {
	m = {},
	function create()
	{
		this.anatomist_potion_item.create();
		this.m.ID = "misc.goblin_shaman_potion";
		this.m.Name = "Poção de Greasejar.";
		this.m.Description = "Enquanto a frase \ 'escorregadio como um goblin \' não é bem pego no vernáculo comum, qualquer um que tenha lutado contra o greenskins odioso sabe a sua verdade.Com esta incrível poção, no entanto, qualquer um pode assumir este aspecto repugnante!";
		this.m.IconLarge = "";
		this.m.Icon = "consumables/potion_12.png";
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
			text = "Always successfully able to escape from ensnarement, such as from nets or roots"
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
		_actor.getSkills().add(this.new("scripts/skills/effects/goblin_shaman_potion_effect"));
		return this.anatomist_potion_item.onUse(_actor, _item);
	}

});


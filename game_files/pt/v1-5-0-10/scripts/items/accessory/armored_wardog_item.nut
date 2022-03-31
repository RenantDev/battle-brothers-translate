this.armored_wardog_item <- this.inherit("scripts/items/accessory/wardog_item", {
	m = {},
	function create()
	{
		this.wardog_item.create();
		this.m.ID = "accessory.armored_wardog";
		this.m.Description = "Um cão forte e leal criado para a guerra.Pode ser desencadeado em batalha pelo scouting, rastreando ou correndo inimigos de roteamento.Este usa um revestimento de couro para proteção contra feridas de corte.";
		this.m.SlotType = this.Const.ItemSlot.Accessory;
		this.m.IsDroppedAsLoot = true;
		this.m.ShowOnCharacter = false;
		this.m.ArmorScript = "scripts/items/armor/special/wardog_armor";
		this.m.Value = 400;
	}

	function setEntity( _e )
	{
		this.m.Entity = _e;

		if (this.m.Entity != null)
		{
			this.m.Icon = "tools/dog_01_leash_70x70.png";
		}
		else
		{
			this.m.Icon = "tools/dog_01_0" + this.m.Variant + "_armor_01_70x70.png";
		}
	}

});


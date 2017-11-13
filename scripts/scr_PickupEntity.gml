///scr_PickupEntity(entityPickingUp, entityBeingPickedUp)

entityPickingUp = argument0;
entityBeingPickedUp = argument1;

entityBeingPickedUp.attachedTo = entityPickingUp.id;
entityPickingUp.entityAttached = entityBeingPickedUp;
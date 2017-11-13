///scr_ThrowAttachedEntity(entityThrowing, thrownEntity, thrownEntityVx, thrownEntityVy)

entityThrowing = argument0;
thrownEntity = argument1;
thrownEntityVx = argument2;
thrownEntityVy = argument3;

// Throws the entity with a vx/vy speed, and detaches it
thrownEntity.attachedTo = noone;
thrownEntity.vx = thrownEntityVx;
thrownEntity.vy = thrownEntityVy;

// The holding entity is no longer holding anything
entityThrowing.entityAttached = noone;

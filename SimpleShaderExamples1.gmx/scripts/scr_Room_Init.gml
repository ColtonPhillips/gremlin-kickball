// Define a border that's outside of the room's visible area for setting up room barriers

//Temp vars
var borderSize, vertBorderFixture, horizBorderFixture, leftBorder, rightBorder, topBorder, bottomBorder;
borderSize = 10;

//SET UP THE PHYSICS WORLD
physics_world_create(0.1);                      //Pixel to meters scale
physics_world_update_iterations(20);            //iterations per step
physics_world_update_speed(60);                 //Update speed
physics_world_gravity(0, 0);                    //No gravity

//CREATE RIGID BODY ROOM BORDERS
horizBorderFixture = physics_fixture_create();                                      //Create fixtures
vertBorderFixture = physics_fixture_create();

physics_fixture_set_box_shape(horizBorderFixture, room_width / 2, borderSize / 2);  //Set fixture shapes
physics_fixture_set_box_shape(vertBorderFixture, borderSize / 2, room_height / 2);

//CREATE BORDER INSTANCES
leftBorder = instance_create(-borderSize / 2, room_height / 2, obj_Borders);
rightBorder = instance_create(room_width + (borderSize / 2), room_height / 2, obj_Borders);
topBorder = instance_create(room_width / 2, -borderSize / 2, obj_Borders);
bottomBorder = instance_create(room_width / 2, room_height + (borderSize / 2), obj_Borders);

//BIND FIXTURES TO BORDER INSTANCES
physics_fixture_bind(vertBorderFixture, leftBorder);
physics_fixture_bind(vertBorderFixture, rightBorder);
physics_fixture_bind(horizBorderFixture, topBorder);
physics_fixture_bind(horizBorderFixture, bottomBorder);

//CLEAN UP!
physics_fixture_delete(vertBorderFixture);
physics_fixture_delete(horizBorderFixture);

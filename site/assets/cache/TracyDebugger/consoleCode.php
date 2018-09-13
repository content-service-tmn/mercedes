<?php  if(!defined("PROCESSWIRE")) die("no direct access"); $page = $pages->get(1); 
$id = "0753425814";
$properties = [];
$car = $pages->get("template=layout_car, car_id={$id}");

foreach($car->parent()->modifications as $mod){
    if ($mod->class_id == $car->car_modification_id){
        foreach($mod->fields as $field){
            $properties[$field->name] = $mod[$field->name];
        }
    }
}

var_dump($properties);

foreach($car->fields as $field){
     $properties[$field->name] = $car->get($field->name);
}

var_dump($properties);
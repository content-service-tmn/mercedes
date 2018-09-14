<?php  if(!defined("PROCESSWIRE")) die("no direct access"); $page = $pages->get(1); 
function getComplectation($str, $pages) {
    $table = [];
    foreach ($pages->get("template=layout_equipment")->equipments as $line){
        $table[$line->code] = $line->name;
    }
    var_dump($table);
    $result = [];
    $str = str_replace(" ", "", $str);
    foreach (explode(",", $str) as $code){
        $result[$code] = $table[$code];
    }
    return $result;
}

var_dump(getComplectation("03B,08U,09U,14U,15U,165,16U,17U,1B1,218,235,258,26U,270,274", $pages));
<?php namespace Processwire;

$content = file_get_contents("classes.txt");

$parents = [];

array_push($parents, $pages->get("id=1"));

$rows = explode("\n", $content);

foreach ($rows as $i => $line) {
    $vals = explode(" ", $line);
//    if ($i > 0 && strlen(explode(" ", $rows[$i - 1])[0]) >= strlen($vals[0])) {
//        array_pop($parents);
//    }

    while (strlen($vals[0]) != count($parents)){
        array_pop($parents);
    }

    $parent = array_pop($parents);

    $p = new Page(); // create new page object
    $p->template = 'home'; // set template
    $p->parent = $parent;
    bd($vals[1], $parent->name);
    $p->name = $vals[1] . $i; // give it a name used in the url for the page
    $p->title = $vals[1]; // set page title (not neccessary but recommended)

// added by Ryan: save page in preparation for adding files (#1)

    $p->save();

    array_push($parents, $parent);
    array_push($parents, $p);

}


/*<?php namespace Processwire;

foreach (["car_id"=>"Идентификатор", "car_year"=>"Год выпуска", "car_cabin"=>"Салон", "car_color"=>"Цвет", "car_accessories"=>"Комплектация", "car_photos"=>"Фотографии",
             "car_price"=>"Цена", "car_special_proposal"=>"Специальное предложение"] as $item => $label){
    $field = new Field();
    $field->name = $item;
    $field->type = "Text";
    $field->label = $label;
    $fields->save($field);
}


?>*/
?>
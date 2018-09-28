<?php namespace ProcessWire;

//require('spreadsheet-reader/php-excel-reader/excel_reader2.php');

//require('spreadsheet-reader/SpreadsheetReader.php');

function notify($name, $text, $result)
{
    $notify = isset($notify) ? $notify : array();
    $notify[$name]["text"] = $text;
    $notify[$name]["result"] = $result;
    return $notify;
}

function phoneLink($phone)
{
    $phone = str_replace(array('+', '-', '(', ')', ' '), '', $phone);
    if (substr($phone, 0, 1) == '7') {
        $phone = '8' . substr($phone, 1);
    }
    return $phone;
}

function rusdate($param, $time)
{
    if (intval($time) == 0) {
        $time = time();
    }

    // F - Полное наименование месяца
    if (strpos($param, 'F') !== false) {
        $arrRus = array("Января", "Февраля", "Марта", "Апреля", "Мая", "Июня", "Июля", "Августа", "Сентября", "Октября", "Ноября", "Декабря");
        $arrReplace[] = $arrRus[date('n', $time) - 1];
        $arrParam[] = 'F';
    }
    // M - Сокращенное наименование месяца, 3 символа
    if (strpos($param, 'M') !== false) {
        $arrRus = array("Янв", "Фев", "Мар", "Апр", "Май", "Июн", "Июл", "Авг", "Сен", "Окт", "Ноя", "Дек");
        $arrReplace[] = $arrRus[date('w', $time)];
        $arrParam[] = 'M';
    }
    // l - Полное наименование дня недели
    if (strpos($param, 'l') !== false) {
        $arrRus = array("Воскресенье", "Понедельник", "Вторник", "Среда", "Четверг", "Пятница", "Суббота");
        $arrReplace[] = $arrRus[date('w', $time)];
        $arrParam[] = 'l';
    }
    // D - Сокращенное наименование дня недели, 2 символа
    if (strpos($param, 'D') !== false) {
        $arrRus = array("Вс", "Пн", "Вт", "Ср", "Чт", "Пт", "Сб");
        $arrReplace[] = $arrRus[date('w', $time)];
        $arrParam[] = 'D';
    }
    return date(str_replace($arrParam, $arrReplace, $param), $time);
}


function getComplectation($str, $pages)
{
    $table = [];
    foreach ($pages->get("template=layout_equipment")->equipments as $line) {
        $table[$line->code] = $line->name;
    }
    var_dump($table);
    $result = [];
    $str = str_replace(" ", "", $str);
    foreach (explode(",", $str) as $code) {
        $result[$code] = $table[$code];
    }
    return $result;
}

function getLowestPrice($ct)
{
    $min = 9999999999999;
    foreach ($ct->children("template=layout_car") as $pge) {
        if ($pge->car_price != "" && $pge->car_price < $min) {
            $min = $pge->car_price;
        }
    }
    if ($min != 9999999999999) {
        return $min;
    } else {
        return 0;
    }
}

function getEquipments($page)
{
    if ($page->template != "layout_car") {
        return [];
    }

    $dictionary = [];
    $current = $page->parent("template=layout_class");
    foreach ($current->class_equipments as $equipment) {
        $dictionary[$equipment->code] = $equipment->name;
    }

    $additional = explode(",", str_replace(" ", "", $page->car_equipments));
    $base = explode(",", str_replace(" ", "", $page->car_modification->modification_equipments));

    $result = ["additional" => [], "base" => []];

    foreach ($additional as $item) {
        if (isset($dictionary[$item])) {
            $result["additional"] = [$item => $dictionary[$item]];
        }
    }

    foreach ($base as $item) {
        if (isset($dictionary[$item])) {
            $result["base"] = [$item => $dictionary[$item]];
        }
    }

    return $result;
}

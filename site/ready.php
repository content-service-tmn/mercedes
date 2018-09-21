<?php namespace Processwire;

//require ($config->paths->templates . "common/PhpSpreadsheet/src/PhpSpreadsheet/IOFactory.php");

$wire->addHookAfter('InputfieldPage::getSelectablePages', function($event) {
  if($event->object->name == 'type_modifications') {
    $selector = "template=repeater_class_modifications";
    $event->return = $event->pages->find($selector);
  }
});

$wire->addHookAfter('Page::getMarkup', function (HookEvent $event) {
    $page = $event->object; // Each page that appears in the Page Reference field
    if ($page->template != "layout_class") return;
    $name = "";
    while ($page->name != "catalog" && $page->parent() != null) {
         $name = $page->title . " " . $name;
         $page = $page->parent();
    }
    $event->return = $name;
});


$this->pages->addHookAfter('save', function($event) {

    $page = $event->arguments[0];
    if ($page->template == "layout_import") {
//        require_once $config->paths->templates . "common/xls-reader/excel_reader2.php";
//        $data = new \Spreadsheet_Excel_Reader($page->import_accessories->first()->filename);
//        bd($data->dump(true,true));
        ///Applications/MAMP/htdocs/mercedes/site/templates/common/PhpSpreadsheet/src/PhpSpreadsheet/Reader/Xls.php
//        $spreadsheet = new Spreadsheet($page->import_accessories->first()->filename);
        $spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load($page->import_accessories->first()->filename);
        bd($spreadsheet);

    }
});

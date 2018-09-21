<?php namespace Processwire;

require ($config->paths->root . "vendor/autoload.php");

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
    if ($page->template == "layout_equipment") {
        $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xls();
        $reader->setReadDataOnly(true);
        $spreadsheet = $reader->load($page->equipment_file->first()->filename);
        $sheetData = $spreadsheet->getActiveSheet()->toArray();
        $equipment = $page->equipments;

        //deleting old
        $page->of(false);
        foreach ($equipment as $item){
            $equipment->remove($item);
        }
        $page->save('equipments');

        //adding new
        foreach ($sheetData as $array) {
            $page->of(false);
            $new = $equipment->makeBlankItem();
            $new->code = $array[0];
            $new->name = $array[1];
            $equipment->add($new);
            $page->save('equipments');
        }
    }
});
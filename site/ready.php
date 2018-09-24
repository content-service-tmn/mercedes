<?php namespace Processwire;

require ($config->paths->root . "vendor/autoload.php");

// Хук для создания title и name страницы автомобиля
$wire->addHookBefore('Pages::saveReady', function($event) {
	$page = $event->arguments('page');
	if($page->template == 'layout_car') {
		if(!$page->id) {
			$page->name = 'untitled';
      $page->title = 'Новый автомобиль';
		} else {
			$page->name = $page->car_id;
      $page->title = '№ ' . $page->car_id .' / '.
                     'Mercedes-Benz ' . $page->car_modification->modification_name;
		}
	};
});

// Хук для поля выбора страниц
$wire->addHookAfter('InputfieldPage::getSelectablePages', function($event) {

  // Проверяем чтоб поле было выбором модификации
  if($event->object->name == 'type_modifications' || $event->object->name == "car_modification") {

    // Получаем страницу, которую редактируем
    $page = $event->object->hasPage;

    // Получаем родителя с классом автомобиля
    $parent = $page->parent("template=layout_class");

    // Возвращаем список модификации класса
    $result = $parent->get("class_modifications");

    // // Если добавление автомобиля
    // if($event->object->name == "car_modification") {
		//
    //   // Если по дереву есть подкатегория с системным заголовком,
    //   // который содержит AMG, то показываем только AMG модификации
    //   if(!$page->parent("title*=amg")->id) {
    //     $result->filter("modification_name!*=amg");
    //   }
		//
    //   // Если подкатегории нет - исключаем AMG
    //   else {
    //     $result->filter("modification_name*=amg");
    //   }
    // }

    // Возаращаем результат
    $event->return = $result;
  }

  // Проверяем чтоб поле было выбором цвета
  if($event->object->name == 'car_color') {

    // Получаем страницу, которую редактируем
    $page = $event->object->hasPage;

    // Получаем родителя с классом автомобиля
    $parent = $page->parent("template=layout_class");

    // Возвращаем список цветов класса
    $event->return = $parent->get("class_colors");
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
    if ($page->template == "layout_equipment") {
        $reader = new \PhpOffice\PhpSpreadsheet\Reader\Xls();
        $reader->setReadDataOnly(true);
        $spreadsheet = $reader->load($page->equipment_file->first()->filename);
        bd($spreadsheet->getSheetNames());
        $sheetData = $spreadsheet->getActiveSheet()->toArray();
        bd($spreadsheet->getActiveSheet()->getTitle());

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

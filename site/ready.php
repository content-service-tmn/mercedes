<?php namespace Processwire;
$wire->addHookAfter('Page::getMarkup', function (HookEvent $event) {
    $page = $event->object; // Each page that appears in the Page Reference field

    if ($page->parent()->home_show_title == "Все модели") {
        bd($page);
    }
//    if ($key !== 'product-uses-custom-title') return;
//    $parent = $this->pages->get("template=repeater_address, house=$page");
    $event->return = "ЗДАРОВА"; //$parent->address_name . ", " . $page->house_num;
});

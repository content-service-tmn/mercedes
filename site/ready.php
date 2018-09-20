<?php namespace Processwire;
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

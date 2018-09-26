<?php namespace ProcessWire;
  $id = $input->get->id;
  $data = $page;
  $p = $pages->get("name={$id}");
  $m = $p->car_modification;
  $e = $p->parent("template=layout_class")->class_equipments;
?>

<div class="pdf_title">
  <h2>Персональное предложение</h2>
  <?php if(count($p->car_photos)) : ?>
    <img src="<?= $p->car_photos->first()->url; ?>" />
  <?php endif; ?>
  <h1>«Мерседес-Бенц» <?= $m->modification_name; ?></h1>
</div>

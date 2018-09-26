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

<pagebreak />

<div class="pdf_greeting">
  <?= $data->pdf_greeting; ?>
</div>

<pagebreak />

<div class="pdf_about">
  <p>Предлагаем Вам ознакомиться с комплектацией, возможными условиями
  приобретения и техническими характеристиками интересующего Вас
  автомобиля «Мерседес-Бенц» A 200.</p>
  <p>Вся информация, предоставленная в данном предложении, основана на
  действующем прайс-листе на дату настоящего предложения. Данное предложение
  является индивидуальным и не может быть передано третьим лицам.</p>
</div>

<?php if(count($p->car_photos) > 1) : ?>
  <div class="pdf_images">
    <table cellspacing="0" cellpadding="0" border="0" width="100%">
      <tr>
        <td><img src="<?= $p->car_photos->eq(0)->size(800,'')->url; ?>" /></td>
        <td><img src="<?= $p->car_photos->eq(1)->size(800,'')->url; ?>" /></td>
      </tr>
      <tr>
        <td><img src="<?= $p->car_photos->eq(2)->size(800,'')->url; ?>" /></td>
        <td><img src="<?= $p->car_photos->eq(3)->size(800,'')->url; ?>" /></td>
      </tr>
    </table>
    <p>
      <small>Приведенная иллюстрация может незначительно отличаться по цвету, внешнему виду и комплектации от выбранного автомобиля.</small>
    </p>
  </div>
  <pagebreak />
<?php endif; ?>

<div class="pdf_modification">
  <h2>Технические характеристики</h2>
  <table cellspacing="0" cellpadding="0" border="0" width="100%">
    <tr>
      <td>Номер заказа:</td>
      <td><?= $p->car_id; ?></td>
    </tr>
    <tr>
      <td>Автомобиль:</td>
      <td>Mercedes-Benz <?= $m->modification_name; ?></td>
    </tr>
    <tr>
      <td>Цвет:</td>
      <td><?= $p->car_color->color_name; ?></td>
    </tr>
    <tr>
      <td>Год выпуска:</td>
      <td><?= $p->car_year; ?></td>
    </tr>
    <tr>
      <td>Мощность:</td>
      <td><?= $m->modification_power; ?> л.с.</td>
    </tr>
    <tr>
      <td>Тип топлива:</td>
      <td><?= $m->modification_fuel; ?> л.с.</td>
    </tr>
    <tr>
      <td>Салон:</td>
      <td><?= $p->car_interior; ?></td>
    </tr>
    <tr>
      <td>Привод:</td>
      <td><?= $m->modification_gear; ?></td>
    </tr>
    <tr>
      <td>Трансмиссия:</td>
      <td><?= $m->modification_transmission; ?></td>
    </tr>
    <tr>
      <td>Расположение и количество цилиндров:</td>
      <td class="pdf_modification__value"><?= $m->modification_cylinders; ?></td>
    </tr>
    <tr>
      <td class="pdf_modification__name">Расход топлива смешанный:</td>
      <td class="pdf_modification__value"><?= $m->modification_consumption; ?></td>
    </tr>
    <tr>
      <td class="pdf_modification__name">Номинальная мощность:</td>
      <td class="pdf_modification__value"><?= $m->modification_power_rated; ?></td>
    </tr>
    <tr>
      <td class="pdf_modification__name">Рабочий объем:</td>
      <td class="pdf_modification__value"><?= $m->modification_amount; ?> см<sup>3</sup></td>
    </tr>
  </table>
</div>

<div class="pdf_equipments">
  <h2>Комплектация</h2>
  <table class="pdf_equipments__table" cellspacing="0" cellpadding="0" border="0" width="100%">
    <?php foreach (getEquipments($p) as $key => $value) : ?>
      <tr>
        <td class="pdf_equipments__code"><?= $key; ?></td>
        <td class="pdf_equipments__value"><?= $value; ?></td>
      </tr>
    <?php endforeach; ?>
  </table>
</div>

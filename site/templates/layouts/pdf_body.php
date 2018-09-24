<?php namespace ProcessWire;
  $id = $input->get->id;
  $p = $pages->get("name={$id}");
  $m = $p->car_modification;
  $e = $p->parent("template=layout_class")->class_equipments;
?>
<div class="pdf_title">
  <h2 class="pdf_title__heading">Персональное предложение</h2>
  <h1 class="pdf_title__car">Mercedes-Benz <?= $m->modification_name; ?></h1>
  <?php if(count($p->car_photos)) : ?>
    <img class="pdf_title__image" src="<?= $p->car_photos->first()->url; ?>" />
  <?php endif; ?>
</div>

<pagebreak />

<div class="pdf_greeting">
  <h1 class="pdf_greeting__heading">Уважаемый Клиент!</h1>
  <p>Искренне благодарим Вас за интерес к автомобилям марки
  «Мерседес-Бенц» и за обращение в наш дилерский центр.</p>
  <p>Мы будем очень рады Вашему выбору автомобиля марки «Мерседес-Бенц»
  и нашему сотрудничеству. ООО «Астерион» является дочерней компанией
  автоконцерна «Даймлер АГ» и существует уже более 8 лет.
  Сегодня ООО «Астерион» - абсолютный лидер в премиум сегменте.</p>
  <p>В салоне розничных продаж ООО «Астерион» Вы сможете получить
  широкий спектр высококачественных услуг. Наша профессиональная команда
  сделает всё возможное, чтобы приобретение автомобиля стало для Вас
  максимально комфортным и приятным. На втором этаже нашего центра
  находится кафе, в котором Вы сможете насладиться самым
  вкусным кофе.</p>
  <p>Посетив нас, Вы сможете протестировать большой пул демонстрационных
  автомобилей. У нас Вы сможете осуществить тест-драйв самых актуальных
  новинок марки «Мерседес-Бенц». Просим заранее сообщить о своём
  желании пройти тест-драйв по телефону 8 (3452) 50-05-28.</p>
  <p>Представители «Мерседес-Бенц Банк» и «Мерседес-Бенц
  Финансовые услуги» помогут подобрать Вам самую привлекательную
  программу кредитования, лизинга и страхования, а в нашем шоуруме Вы
  сможете выбрать как эксклюзивные аксессуары, так и оригинальные
  запасные части «МерседесБенц».</p>
</div>
<div class="pdf_greeting__footer">
  <p class="pdf_greeting__regards">С уважением,</p>
  <p class="pdf_greeting__name">Артем Бровко</p>
  <p class="pdf_greeting__position">Директор по продажам</p>
</div>

<pagebreak />

<div class="pdf_about">
  <p>Предлагаем Вам ознакомиться с комплектацией, возможными условиями
  приобретения и техническими характеристиками интересующего Вас
  автомобиля «Мерседес-Бенц» A 200.</p>
  <p>Вся информация, предоставленная в данном предложении, основана на
  действующем прайс-листе на дату настоящего предложения. Данное предложение
  является индивидуальным и не может быть передано третьим лицам.</p>
  <?php if(count($p->car_photos)) : ?>
  <table class="pdf_images__table" cellspacing="0" cellpadding="0" border="0" width="100%">
    <tr>
      <td><img src="<?= $p->car_photos->eq(0)->size(800,'')->url; ?>" /></td>
      <td><img src="<?= $p->car_photos->eq(1)->size(800,'')->url; ?>" /></td>
    </tr>
    <tr>
      <td><img src="<?= $p->car_photos->eq(2)->size(800,'')->url; ?>" /></td>
      <td><img src="<?= $p->car_photos->eq(3)->size(800,'')->url; ?>" /></td>
    </tr>
  </table>
  <p><small>Приведенная иллюстрация может незначительно отличаться по цвету, внешнему виду и комплектации от выбранного
автомобиля.</small></p>
  <?php endif; ?>
</div>

<pagebreak />

<div class="pdf_modification">
  <h2 class="pdf_modification__heading">Технические характеристики</h2>
  <table class="pdf_modification__table" cellspacing="0" cellpadding="0" border="0" width="100%">
    <tr>
      <td class="pdf_modification__name">Номер заказа:</td>
      <td class="pdf_modification__value"><?= $p->car_id; ?></td>
    </tr>
    <tr>
      <td class="pdf_modification__name">Автомобиль:</td>
      <td class="pdf_modification__value">Mercedes-Benz <?= $m->modification_name; ?></td>
    </tr>
    <tr>
      <td class="pdf_modification__name">Цвет:</td>
      <td class="pdf_modification__value"><?= $p->car_color->color_name; ?></td>
    </tr>
    <tr>
      <td class="pdf_modification__name">Год выпуска:</td>
      <td class="pdf_modification__value"><?= $p->car_year; ?></td>
    </tr>
    <tr>
      <td class="pdf_modification__name">Мощность:</td>
      <td class="pdf_modification__value"><?= $m->modification_power; ?> л.с.</td>
    </tr>
    <tr>
      <td class="pdf_modification__name">Тип топлива:</td>
      <td class="pdf_modification__value"><?= $m->modification_fuel; ?> л.с.</td>
    </tr>
    <tr>
      <td class="pdf_modification__name">Салон:</td>
      <td class="pdf_modification__value"><?= $p->car_interior; ?></td>
    </tr>
    <tr>
      <td class="pdf_modification__name">Привод:</td>
      <td class="pdf_modification__value"><?= $m->modification_gear; ?></td>
    </tr>
    <tr>
      <td class="pdf_modification__name">Трансмиссия:</td>
      <td class="pdf_modification__value"><?= $m->modification_transmission; ?></td>
    </tr>
    <tr>
      <td class="pdf_modification__name">Расположение и количество цилиндров:</td>
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
  <h2 class="pdf_equipments__heading">Комплектация</h2>
  <table class="pdf_equipments__table" cellspacing="0" cellpadding="0" border="0" width="100%">
    <?php foreach ($e as $i) : ?>
      <tr>
        <td class="pdf_equipments__code"><?= $i->code; ?></td>
        <td class="pdf_equipments__value"><?= $i->name; ?></td>
      </tr>
    <?php endforeach; ?>
  </table>
</div>



<style>
  .pdf_title {
    text-align: center;
  }
  .pdf_title__heading {
    display: block;
    font-weight: normal;
    padding-top: 90px;
    margin-bottom: 15px;
  }
  .pdf_title__car {
    font-weight: normal;
    margin-bottom: 30px;
  }
  .pdf_greeting {
    padding: 0 90px;
  }
  .pdf_greeting__heading {
    font-weight: normal;
    margin-bottom: 30px;
  }
  .pdf_greeting__footer {
    padding: 0 90px;
    margin: 30px 0 10px;
  }
  .pdf_greeting__name {
    margin: 0;
  }
  .pdf_greeting__position {
    margin: 0;
  }
  .pdf_images__table {
    margin-left: -60px;
  }
  .pdf_images__table td {
    width: 50%;
    box-sizing: border-box;
    padding: 60px 0 0 60px;
  }
  .pdf_modification__heading {
    font-weight: normal;
    margin-bottom: 30px;
  }
  .pdf_modification__table {
    font-size: 12px;
  }
  .pdf_modification__table tr:nth-child(odd) {
    background-color: #f8f8f8;
  }
  .pdf_modification__table td {
    width: 50%;
    box-sizing: border-box;
    padding: 6px 6px;
  }
  .pdf_equipments__heading {
    font-weight: normal;
    margin-top: 30px;
    margin-bottom: 30px;
  }
  .pdf_equipments__table {
    font-size: 12px;
  }
  .pdf_equipments__table tr:nth-child(odd) {
    background-color: #f8f8f8;
  }
  .pdf_equipments__table td {
    box-sizing: border-box;
    padding: 6px 6px;
  }
  .pdf_equipments__code {
    width: 20%;
  }
  .pdf_equipments__name {
    width: 80%;
  }
  .pdf_top {
    margin-top: 15px;
    text-align: right;
  }
  .pdf_top p {
    margin: 0;
  }
</style>

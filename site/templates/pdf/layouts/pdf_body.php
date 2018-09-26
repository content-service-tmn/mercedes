<?php namespace ProcessWire;
  $id = $input->get->id;
  $data = $page;
  $p = $pages->get("name={$id}");
  $m = $p->car_modification;
  $e = $p->parent("template=layout_class")->class_equipments;
  $o = getEquipments($p);
?>

<div class="pdf_greeting">
  <?= $data->pdf_greeting; ?>
  <img class="pdf_greeting__sign" src="<?= $config->paths->templates . 'pdf/img/sign.png'; ?>" />
</div>

<pagebreak />

<div class="pdf_about">
  <p>Предлагаем Вам ознакомиться с комплектацией, возможными условиями
  приобретения и техническими характеристиками интересующего Вас
  автомобиля «Мерседес-Бенц» <?= $m->modification_name; ?>.</p>
  <p>Вся информация, предоставленная в данном предложении, основана на
  действующем прайс-листе на дату настоящего предложения. Данное предложение
  является индивидуальным и не может быть передано третьим лицам.</p>
</div>

<?php if(count($p->car_photos) > 1) : ?>
  <div class="pdf_images">
    <table style="margin: -30px 0 0 -30px;" cellspacing="0" cellpadding="0" border="0" width="100%">
      <tr>
        <td style="padding: 30px 0 0 30px;"><img src="<?= $p->car_photos->eq(0)->size(800,'')->url; ?>" /></td>
        <td style="padding: 30px 0 0 30px;"><img src="<?= $p->car_photos->eq(1)->size(800,'')->url; ?>" /></td>
      </tr>
      <tr>
        <td style="padding: 30px 0 0 30px;"><img src="<?= $p->car_photos->eq(2)->size(800,'')->url; ?>" /></td>
        <td style="padding: 30px 0 0 30px;"><img src="<?= $p->car_photos->eq(3)->size(800,'')->url; ?>" /></td>
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
  <table class="striped is_odd" cellspacing="0" cellpadding="0" border="0" width="100%">
    <tr>
      <td width="50%">Автомобиль «Мерседес-Бенц»:</td>
      <td width="50%"><?= $m->modification_name; ?></td>
    </tr>
    <tr>
      <td width="50%">Внешний номер заказа:</td>
      <td width="50%"><?= $p->car_id; ?></td>
    </tr>
    <tr>
      <td width="50%">Цвет:</td>
      <td width="50%"><?= $p->car_color->color_name; ?></td>
    </tr>
    <tr>
      <td width="50%">Год выпуска:</td>
      <td width="50%"><?= $p->car_year; ?></td>
    </tr>
    <tr>
      <td width="50%">Мощность:</td>
      <td width="50%"><?= $m->modification_power; ?> л.с.</td>
    </tr>
    <tr>
      <td width="50%">Тип топлива:</td>
      <td width="50%"><?= $m->modification_fuel; ?> л.с.</td>
    </tr>
    <tr>
      <td width="50%">Салон:</td>
      <td width="50%"><?= $p->car_interior; ?></td>
    </tr>
    <tr>
      <td width="50%">Привод:</td>
      <td width="50%"><?= $m->modification_gear; ?></td>
    </tr>
    <tr>
      <td width="50%">Трансмиссия:</td>
      <td width="50%"><?= $m->modification_transmission; ?></td>
    </tr>
    <tr>
      <td width="50%">Расположение и количество цилиндров:</td>
      <td width="50%"><?= $m->modification_cylinders; ?></td>
    </tr>
    <tr>
      <td width="50%">Расход топлива смешанный:</td>
      <td width="50%"><?= $m->modification_consumption; ?></td>
    </tr>
    <tr>
      <td width="50%">Номинальная мощность:</td>
      <td width="50%"><?= $m->modification_power_rated; ?></td>
    </tr>
    <tr>
      <td width="50%">Рабочий объем:</td>
      <td width="50%"><?= $m->modification_amount; ?> см<sup>3</sup></td>
    </tr>
  </table>
</div>

<div class="pdf_equipments">
  <h2>Комплектация</h2>
  <table class="striped is_even" cellspacing="0" cellpadding="0" border="0" width="100%">
    <tr>
      <th>Код опции</th>
      <th>Базовая комплектация</th>
    </tr>
    <?php foreach ($o['base'] as $key => $value) : ?>
      <tr>
        <td width="20%"><?= $key; ?></td>
        <td width="80%"><?= $value; ?></td>
      </tr>
    <?php endforeach; ?>
  </table>
</div>

<div class="pdf_equipments">
  <h2>Дополнительное оборудование</h2>
  <table class="striped is_even" cellspacing="0" cellpadding="0" border="0" width="100%">
    <tr>
      <th>Код опции</th>
      <th>Дополнительное оборудование</th>
    </tr>
    <?php foreach ($o['additional'] as $key => $value) : ?>
      <tr>
        <td width="20%"><?= $key; ?></td>
        <td width="80%"><?= $value; ?></td>
      </tr>
    <?php endforeach; ?>
  </table>
</div>

<div class="pdf_prices">
  <table class="bordered" cellspacing="0" cellpadding="0" border="0" width="100%">
    <tr>
      <td width="70%">Общая стоимость автомобиля, руб. (вкл. НДС):</td>
      <td width="30%" style="text-align: right;"><?= $p->car_price; ?></td>
    </tr>
    <?php if($p->car_price_special) : ?>
    <tr>
      <td width="70%">Специальное предложение, руб. (вкл. НДС)*:</td>
      <td width="30%" style="text-align: right;"><?= $p->car_price_special; ?></td>
    </tr>
    <tr>
      <td width="70%">Ваша выгода:</td>
      <td width="30%" style="text-align: right;"><?= $p->car_price - $p->car_price_special; ?></td>
    </tr>
    <?php endif; ?>
  </table>
  <?php if(!$p->car_inStock) : ?>
  <table cellspacing="0" cellpadding="0" border="0" width="100%" style="margin-top: 30px;">
    <tr>
      <td width="50%">Ориентировочная дата поставки:</td>
      <td width="50%" style="text-align: right;"><?= date("d.m.Y", strtotime($p->car_deliveryDate)); ?></td>
    </tr>
    <?php if($p->car_price_special) : ?>
    <tr>
      <td width="50%">Данное предложение действительно до:</td>
      <?php
        $now = time();
        $month = date("n", $now);
        $year = date("Y", $now);
        $days = cal_days_in_month(CAL_GREGORIAN, $month, $year);
      ?>
      <td width="50%" style="text-align: right;"><?= $days . date(".m.Y", $now); ?></td>
    </tr>
    <?php endif; ?>
  </table>
  <?php endif; ?>
</div>

<?php if($p->car_credit_name) : ?>
<div class="pdf_prices">
  <p><strong>Кредитное предложение **</strong></p>
  <table class="bordered" cellspacing="0" cellpadding="0" border="0" width="100%">
    <tr>
      <td width="50%">Программа кредитования:</td>
      <td width="50%" style="text-align: right;"><?= $p->car_credit_name; ?></td>
    </tr>
    <tr>
      <td width="50%">Срок кредита, в мес.:</td>
      <td width="50%" style="text-align: right;"><?= $p->car_credit_time; ?></td>
    </tr>
    <tr>
      <td width="50%">Первоначальный взнос, руб. (вкл. НДС):</td>
      <td width="50%" style="text-align: right;"><?= $p->car_credit_deposit; ?></td>
    </tr>
    <tr>
      <td width="50%">Ежемесячный платеж, руб. (вкл. НДС):</td>
      <td width="50%" style="text-align: right;"><?= $p->car_credit_pay; ?></td>
    </tr>
    <tr>
      <td width="50%">Ставка по кредиту, в %:</td>
      <td width="50%" style="text-align: right;"><?= $p->car_credit_rate; ?>%</td>
    </tr>
  </table>
</div>
<?php endif; ?>

<div class="pdf_notice">
  <p>До подписания договора купли-продажи дилер вправе изменить комплектацию и стоимость указанного автомобиля в одностороннем порядке. По всем вопросам Вы можете обращаться к Вашему продавцу - консультанту по телефону или по указанному адресу электронной почты. Всегда рады работать для Вас!</p>
</div>

<pagebreak />

<div class="pdf_services">
  <h2>Дополнительные услуги</h2>
  <table class="services" cellspacing="0" cellpadding="0" border="0" width="100%" style="vertical-align: top;">
    <tr>
      <td>
        <img width="160px" height="auto" src="<?= $config->paths->templates . 'pdf/img/s1.jpg'; ?>" />
      </td>
      <td style="text-align: left; padding-left: 30px; box-sizing: border-box;">
        <h4>Страхование</h4><br />
        <p style="font-size: 14px;">В нашем автосалоне работают квалифицированные специалисты, которые подберут для Вас наиболее оптимальный тариф. Мы работаем только с крупными и надежными страховыми компаниями, предлагающими VIP условия для всех наших клиентов.</p>
        <p style="font-size: 14px;">Менеджер по страхованию и кредитованию:</p>
        <p style="font-size: 14px;">Шарганова Ксения, Неупокоева Анна</p>
        <p style="font-size: 14px;">finance@mb-asterion.ru</p>
        <p style="font-size: 14px;">+7 3452 500 528</p>
      </td>
    </tr>
    <tr>
      <td>
        <img width="160px" height="auto" src="<?= $config->paths->templates . 'pdf/img/s2.jpg'; ?>" />
      </td>
      <td style="text-align: left; padding-left: 30px; box-sizing: border-box;">
        <h4>Кредит</h4><br />
        <p style="font-size: 14px;">Мы предлагаем приобрести этот автомобиль на выгодных условиях кредитования в ООО «Мерседес-Бенц Банк Рус» или в других банках – наших надежных партнерах. Если Вы заинтересовались данной услугой, сообщите об этом Вашему персональному продавцу-консультанту, и для вас будет проведён расчёт основных условий кредитования, который мы предоставим или вышлем Вам по электронной почте.</p>
        <p style="font-size: 14px;">Менеджер по страхованию и кредитованию:</p>
        <p style="font-size: 14px;">Шарганова Ксения, Неупокоева Анна</p>
        <p style="font-size: 14px;">finance@mb-asterion.ru</p>
        <p style="font-size: 14px;">+7 3452 500 528</p>
      </td>
    </tr>
    <tr>
      <td>
        <img width="160px" height="auto" src="<?= $config->paths->templates . 'pdf/img/s3.jpg'; ?>" />
      </td>
      <td style="text-align: left; padding-left: 30px; box-sizing: border-box;">
        <h4>Лизинг</h4><br />
        <p style="font-size: 14px;">При покупке аватомобиля на юридическое лицо у нас действует специальное предложение для Вас от Mercedes-Benz Financial Service Rus. Авансовый платеж от 10% срок лизинга от 12 до 60 месяцев. А также есть предложения от других крупных лизинговых компаний. Если Вы заинтересовались, просим Вас сообщить нам об этом и мы подготовим для Вас всю информацию.</p>
      </td>
    </tr>
    <tr>
      <td>
        <img width="160px" height="auto" src="<?= $config->paths->templates . 'pdf/img/s4.jpg'; ?>" />
      </td>
      <td style="text-align: left; padding-left: 30px; box-sizing: border-box;">
        <h4>Сервисный Сертификат</h4><br />
        <p style="font-size: 14px;">В нашем автосалоне Вы всегда можете воспользоваться специальными условиями сервисного контракта. Приобрести «Сервисный Сертификат» можно у наших администраторов:</p>
        <p style="font-size: 14px;">reg@mb-asterion.ru</p>
        <p style="font-size: 14px;">+7 3452 500 528</p>
      </td>
    </tr>
    <tr>
      <td>
        <img width="160px" height="auto" src="<?= $config->paths->templates . 'pdf/img/s5.jpg'; ?>" />
      </td>
      <td style="text-align: left; padding-left: 30px; box-sizing: border-box;">
        <h4>Сервисный Сертификат</h4><br />
        <p style="font-size: 14px;">В нашем автосалоне Вы всегда сможете приобрести аксессуары из самой последней коллекции «Мерседес-Бенц».</p>
        <p style="font-size: 14px;">Менеджер по запасным частям и аксессуарам:</p>
        <p style="font-size: 14px;">Никулин Илья, Иванов Александр</p>
        <p style="font-size: 14px;">parts@mb-asterion.ru</p>
      </td>
    </tr>
  </table>
</div>

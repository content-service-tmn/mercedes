<?php namespace ProcessWire;
      require_once($config->paths->root . 'vendor/autoload.php'); ?>

<html>
  <head>

  </head>
  <body>
    <?php
    $p = $pages->get("name=0852420045");
    $m = $p->car_modification;
    $mpdf = new \Mpdf\Mpdf([
    	'margin_top' => 50,
    	'margin_left' => 15,
    	'margin_right' => 15,
    	'margin_bottom' => 40
    ]);
    // Define the Header/Footer before writing anything so they appear on the first page
    $mpdf->SetHTMLHeader('
    <div style="text-align: center;">
      <img src="https://www.mercedes-benz.ru/passengercars/_jcr_content/logo.noscale.cloudsvg.imageLogo.20180312094632.svg" />
    </div>
    <div class="top">
      <p>ООО «Астерион»</p>
      <p><small>официальный дилер</small></p>
      <p><small>г.Тюмень, {DATE j.m.Y}</small></p>
    </div>');
    $mpdf->SetHTMLFooter('
    <table width="100%">
      <tr>
          <td width="60%">
            <p><small>Mercedes-Benz – Зарегистрированная торговая марка концерна «Даймлер АГ», Штутгарт, ФРГ</small></p>
          </td>
          <td width="40%" style="text-align: right;">
            <p>ООО «Астерион»</p>
            <p>г. Тюмень, ул. Беляева, 35</p>
            <p>Тел: 8 (3452) 50-05-28</p>
            <p>www.mercedes-asterion.ru</p>
          </td>
      </tr>
    </table>');
    $mpdf->WriteHTML("
      <div class=\"title\">
        <h2 class=\"title__heading\">Персональное предложение</h2>
        <h1 class=\"title__car\">Mercedes-Benz {$m->modification_name}</h1>
        <img class=\"title__image\" src=\"{$p->car_photos->first()->url}\" />
      </div>

      <pagebreak />

      <div class=\"greeting\">
        <h1 class=\"greeting__heading\">Уважаемый Клиент!</h1>
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
      <div class=\"greeting__footer\">
        <p class=\"greeting__regards\">С уважением,</p>
        <p class=\"greeting__name\">Артем Бровко</p>
        <p class=\"greeting__position\">Директор по продажам</p>
      </div>

      <pagebreak />

      <div class=\"about\">
        <p>Предлагаем Вам ознакомиться с комплектацией, возможными условиями
        приобретения и техническими характеристиками интересующего Вас
        автомобиля «Мерседес-Бенц» A 200. Вся информация, предоставленная
        в данном предложении, основана на действующем прайс-листе на дату настоящего
        предложения. Данное предложение является индивидуальным и не может быть
        передано третьим лицам.</p>
        <div class=\"about__images\">

        </div>
      </div>

      <p>Номер заказа: {$p->car_id}</p>
      <p>Автомобиль: Mercedes-Benz {$m->modification_name}</p>
      <p>Цвет: {$p->car_color->color_name}</p>
      <p>Год выпуска: {$p->car_year}</p>
      <p>Мощность: {$m->modification_power} л.с.</p>
      <p>Тип топлива: {$m->modification_fuel}</p>
      <p>Салон: {$p->car_interior}</p>
      <p>Привод: {$m->modification_gear}</p>
      <p>Трансмиссия: {$m->modification_transmission}</p>
      <p>Расположение и количество цилиндров: {$m->modification_cylinders}</p>
      <p>Расход топлива смешанный: {$m->modification_consumption}</p>
      <p>Номинальная мощность: {$m->modification_power_rated}</p>
      <p>Рабочий объем: {$m->modification_amount} см<sup>3</sup></p>
      <style>
        .title {
          text-align: center;
        }
        .title__heading {
          display: block;
          font-weight: normal;
          padding-top: 90px;
          margin-bottom: 15px;
        }
        .title__car {
          font-weight: normal;
          margin-bottom: 30px;
        }
        .greeting {
          padding: 0 90px;
        }
        .greeting__heading {
          font-weight: normal;
          margin-bottom: 30px;
        }
        .greeting__footer {
          padding: 0 90px;
          margin: 30px 0 10px;
        }
        .greeting__name {
          margin: 0;
        }
        .greeting__position {
          margin: 0;
        }
        .top {
          margin-top: 15px;
          text-align: right;
        }
        .top p {
          margin: 0;
        }
      </style>
    ");
    $mpdf->Output();
    ?>
  </body>
</html>

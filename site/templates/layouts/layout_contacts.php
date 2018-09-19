<?php namespace Processwire?>
<div class="site-wrapper">

  <header class="header js-header">
    <div class="container">

      <div class="header__inner">

        <div class="header__top">
          <div class="header__logo">
            <a href="/"><img src="<?= $config->urls->templates . 'assets/img/logo.svg' ?>" alt=""></a>
          </div>

          <div class="header__right">
            <div class="header__dealer">
              <div class="header__dealer-text">
                Официальный дилер в Тюмени <span class="-nowrap">«<?=$pages->get("template=layout_contacts")->contacts_company_name?>»</span></div>
              <div class="header__dealer-phone">
                <a href="tel:<?=phoneLink($pages->get("template=layout_contacts")->contacts_phone)?>"><?=$pages->get("template=layout_contacts")->contacts_phone?></a>
              </div>
            </div>
            <div class="header__button">
              <a href="#feedback_modal" data-code="consultation"
                 data-text="Перезвоним Вам в ближайшее время и ответим на все интересующие вопросы"
                 class="btn btn--blue js-open-modal">Заказать консультацию</a>
            </div>
            <div class="cd-nav__trigger"><span class="cd-nav__trigger-icon"></span></div>
          </div>

        </div>

        <div class="header__nav nav-class js-navigation-desktop">
            <?php include($config->paths->templates . "common/_navigation.php"); ?>
        </div>

        <div class="header__mobile cd-nav">
          <div class="cd-nav__inner">
            <div class="cd-nav__dealer">
              <a href="https://sales.mercedes-orenburg.ru/contact/">Официальный дилер в Тюмени <span class="-nowrap">«<?=$pages->get("template=layout_contacts")->contacts_company_name?>»</span></a>
            </div>
            <div class="cd-nav__phone">
              <a href="tel:<?=phoneLink($pages->get("template=layout_contacts")->contacts_phone)?>"><?=$pages->get("template=layout_contacts")->contacts_phone?></a>
            </div>
            <div class="cd-nav__button">
              <a href="#feedback_modal" data-code="consultation"
                 data-text="Перезвоним Вам в ближайшее время и ответим на все интересующие вопросы"
                 class="btn btn--blue js-open-modal">Заказать консультацию</a>
            </div>
            <div class="cd-nav__navigation js-navigation-mobile js-accordion"></div>
          </div>
        </div>

        <div class="header-fixed">
          <div class="container">
            <div class="header-fixed__inner">
              <div class="header-fixed__nav nav-class js-header-fixed-nav"></div>
              <div class="header-fixed__button">
                <a href="#feedback_modal" data-code="consultation"
                   data-text="Перезвоним Вам в ближайшее время и ответим на все интересующие вопросы"
                   class="btn btn--blue btn--blue-sm js-open-modal">Заказать консультацию</a>
              </div>
            </div>
          </div>
        </div>

      </div>
    </div>
  </header>
  <main class="site-content">

    <section class="subheader-mobile">
      <div class="container">
        <div class="subheader-mobile__dealer-text">Официальный дилер в Оренбурге <span
                  class="-nowrap">«<?=$pages->get("template=layout_contacts")->contacts_company_name?>»</span>
        </div>
        <div class="subheader-mobile__dealer-phone">
          <a href="tel:<?=phoneLink($pages->get("template=layout_contacts")->contacts_phone)?>"><?=$pages->get("template=layout_contacts")->contacts_phone?></a>
        </div>
        <div class="subheader-mobile__button">
          <a href="#feedback_modal" data-code="consultation"
             data-text="Перезвоним Вам в ближайшее время и ответим на все интересующие вопросы"
             class="btn btn--blue js-open-modal">Заказать консультацию</a>
        </div>
      </div>
    </section>

    <section class="contacts-promo" style="background-image: url(<?=$page->contacts_header_image->size(1920, 0, [])->url?>), -webkit-gradient(linear, left top, left bottom, from(#5d6069), to(#2e2f33));">
      <div class="contacts-promo__about">
        <div class="container">
          <div class="title-40">О нас</div>
          <p>
            <span class="contacts-promo__title-20">«<?=$pages->get("template=layout_contacts")->contacts_company_name?>»</span> – официальный дилер «Мерседес-Бенц»
            в Оренбурге и Оренбургской области, является частью
            автомобильной группы «Каскад-Авто». В своей многолетней истории компания сочетает
            высочайшие
            стандарты обслуживания
            клиентов в премиальном сегменте автомобильного рынка, индивидуальный подход к каждому клиенту,
            традиции и умение
            воплощать самые смелые и нестандартные шаги в обслуживании покупателей.

            «Каскад-Авто» - абсолютный лидер по продажам премиум-сегмента в Оренбургской области с первого года своей
            деятельности.</p>

          <p class="contacts-promo__title-20">Основными направлениями деятельности компании «Каскад-Авто» являются:</p>
          <ul>
            <li>продажа автомобилей «Мерседес-Бенц»;</li>
            <li>гарантийное, послегарантийное обслуживание и ремонт;</li>
            <li>продажа оригинальных запасных частей «Мерседес-Бенц» и аксессуаров.</li>
          </ul>

          <p>«Каскад-Авто» предлагает своим клиентам частным лицам и организациям оптимальные условия покупки
            легковых и грузопассажирских автомобилей, услуги по страхованию и высококачественному гарантийному и
            постгарантийному обслуживанию. Среди клиентов компании «Каскад-Авто» крупнейшие компании
            Оренбургской области.</p>
          <p>Приглашаем Вас посетить автоцентр «Каскад-Авто» по адресу: 460507, Оренбург, п. Пригородный, 12.350 км.
            шоссе Оренбург-Орск. Всю интересующую
            информацию возможно получить также по телефону <span class="-nowrap">+7 (3532) 910-102</span> и на
            сайте sales.mercedes-orenburg.ru</p>

        </div>
      </div>
    </section>
    <section class="contacts-managers" id="a-managers">
      <div class="container">
          <?php foreach ($page->contacts_teams as $team): ?>
            <div class="title-40"><?=$team->contacts_team_title?></div>
            <div class="managers row row-15">
                <?php foreach($team->contacts_team as $tm): ?>
              <div class="managers__item xl-33 lg-50 sm-100">
                <div class="managers__foto">
                  <img src="<?=$tm->contacts_teammate_photo->size(110, 110, [])->url?>"
                       srcset="<?=$tm->contacts_teammate_photo->size(220, 220, [])->url?> 1.5x"
                       alt="<?=$tm->contacts_teammate_name?>">
                </div>
                <div class="managers__text">
                  <p>
                    <b><?=$tm->contacts_teammate_name?></b>
                  </p>
                  <p><?=$tm->contacts_teammate_position?></p>
                  <p>Телефон:
                    <a href="tel:<?=phoneLink($tm->contacts_teammate_phone)?>"><?=$tm->contacts_teammate_phone?></a></p>
                  <p>Email:
                    <a href="mailto:<?=$tm->contacts_teammate_mail?>" target="_blank"><?=$tm->contacts_teammate_mail?></a>
                  </p>
                </div>
              </div>
              <?php endforeach; ?>
            </div>
          <?php endforeach; ?>
      </div>
    </section>
    <section class="custom-contacts">
      <div class="container">
        <h2 class="custom-contacts__heading">Контакты</h2>
        <div class="custom-contacts__grid">
          <div class="custom-contacts__cell">
            <div class="custom-contacts__item"
                 style="background-image:url(<?= $config->urls->templates . 'assets/img/01.svg' ?>)">
              <p>пр. Победы, 71</p>
              <p>456620 Копейск</p>
            </div>
          </div>
          <div class="custom-contacts__cell">
            <div class="custom-contacts__item"
                 style="background-image:url(<?= $config->urls->templates . 'assets/img/01.svg' ?>)">
              <p>НОВЫЕ АВТОМОБИЛИ: <a href="">+7 (351) 2-555-666</a></p>
              <p>СЕРВИС: +7 (351) <a href="">2-555-666</a></p>
              <p>ЗАПЧАСТИ: +7 (351) <a href="">2-555-666</a></p>
              <p>EMAIL: <a href="">UAH@UAH.UU.RU</a></p>
            </div>
          </div>
          <div class="custom-contacts__cell">
            <div class="custom-contacts__item"
                 style="background-image:url(<?= $config->urls->templates . 'assets/img/01.svg' ?>)">
              <p> Новые автомобили: <a href="">+7 (351) 2-555-666</a></p>
              <p>Сервис: <a href="">+7 (351) 2-555-666</a></p>
            </div>
          </div>
        </div>
        <div class="custom-contacts__socials">
          <a href="" class="custom-contacts__social custom-contacts__social_vk"></a>
          <a href="" class="custom-contacts__social custom-contacts__social_fb"></a>
          <a href="" class="custom-contacts__social custom-contacts__social_yt"></a>
          <a href="" class="custom-contacts__social custom-contacts__social_gg"></a>
        </div>
      </div>
    </section>
    <section class="custom-map__wrapper">
      <section class="custom-map" id="map">
      </section>
      <a href="" target="_blank" class="custom-map__link"></a>
    </section>

  </main>


</div>

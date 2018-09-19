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
                Официальный дилер в Оренбурге <span class="-nowrap">«Каскад-Авто»</span></div>
              <div class="header__dealer-phone">
                <a href="tel:+73532910102">+7 (3532) 910-102</a>
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
          <ul>
              <?php $i = 0;
              foreach ($pages->find("parent=catalog") as $category): if ($i < 8): ?>
                <li>
                  <a href="<?= $pages->find("template=layout_class, parent={$category->id}")->first()->url ?>"><?= $category->title ?></a>
                  <ul>
                      <?php foreach ($pages->find("parent={$category->id}") as $pge): ?>
                        <li><a href="<?= $pge->url ?>"><?= $pge->title ?></a></li>
                      <?php endforeach; ?>
                  </ul>
                </li>
                  <?php $i++; endif; endforeach; ?>
            <li>
              <a href="">Другое</a>
              <ul>
                  <?php $i = 0;
                  foreach ($pages->find("parent=catalog") as $category): if ($i >= 8): ?>
                    <li>
                      <a href="<?= $pages->find("template=layout_class, parent={$category->id}")->first()->url ?>"><?= $category->title ?></a>
                    </li>
                  <?php endif;
                      $i++; endforeach; ?>
                <li><a href="" class="is-parent">Коммерческий транспорт</a></li>
                <li><a href="" class="is-parent">Сервисное обслуживание</a></li>
                <li><a href="" class="is-parent">Оригинальные запасные части и аксессуары</a></li>
                <li><a href="" class="is-parent">Mercedes Benz Financial</a></li>
                <li><a href="" class="is-parent">Преимущества для покупателей из других регионов</a></li>
              </ul>
            </li>

          </ul>
        </div>

        <div class="header__mobile cd-nav">
          <div class="cd-nav__inner">
            <div class="cd-nav__dealer">
              <a href="https://sales.mercedes-orenburg.ru/contact/">Официальный дилер в Оренбурге <span class="-nowrap">«Каскад-Авто»</span></a>
            </div>
            <div class="cd-nav__phone">
              <a href="tel:+73532910102">+7 (3532) 910-102</a>
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
                  class="-nowrap">«Каскад-Авто»</span>
        </div>
        <div class="subheader-mobile__dealer-phone">
          <a href="tel:+73532910102">+7 (3532) 910-102</a>
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
            <span class="contacts-promo__title-20">«Каскад-Авто»</span> – официальный дилер «Мерседес-Бенц»
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

  <footer class="footer">
    <div class="container">
      <div class="footer__inner">

        <div class="footer__buttons">
          <a href="#feedback_modal" data-code="best_offer"
             data-text="Специально для Вас мы готовы сделать особое предложение!" class="btn btn--blue js-open-modal">Получить
            лучшее предложение</a>
          <a href="#feedback_modal" data-code="consultation"
             data-text="Перезвоним Вам в ближайшее время и ответим на все интересующие вопросы"
             class="btn btn--blue js-open-modal">Заказать консультацию</a>
        </div>

        <div class="footer__title title-40 xl-30 sm-100">Контакты</div>
        <div class="footer__nav xl-70 sm-100">
          <ul>
            <li>
              <a href="https://sales.mercedes-orenburg.ru/contact/">О нас</a>
            </li>
            <li>
              <a href="https://sales.mercedes-orenburg.ru/contact/#a-contacts">Контакты</a>
            </li>
            <li>
              <a href="https://sales.mercedes-orenburg.ru/contact/#a-contacts">Схема проезда</a>
            </li>
            <li>
              <a href="https://sales.mercedes-orenburg.ru/contact/#a-managers">Ваши менеджеры</a>
            </li>
          </ul>
        </div>
        <div class="footer__contacts xl-85 sm-100">
          <div class="footer__contacts-title">ООО «Каскад
            -
            Авто»</div>
          <div class="footer__contacts-item">
            <div class="footer__contacts-mini-title">Фактический адрес:</div>
            <div>460507,
              Оренбург, п. Пригородный,
              12.350
              км. шоссе Оренбург
              -
              Орск</div>
          </div>
          <div class="footer__contacts-item">
            <div class="footer__contacts-mini-title">Телефон:</div>
            <div>
              <a href="tel:+73532910102">+7 (3532) 910-102</a>
            </div>
          </div>
          <div class="footer__contacts-item">
            <div class="footer__contacts-mini-title">E - mail
              :</div>
            <div><a href="mailto:mercedes@kaskad-auto.ru" target="_blank">mercedes@kaskad-auto.ru</a></div>
          </div>
        </div>
        <div class="footer__soc xl-15 sm-100">
          <a href="https://www.facebook.com/MercedesOrb/" class="footer__soc-btn" target="_blank">
            <svg class="icon icon-fb">
              <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-fb"></use>
            </svg>
          </a>
          <a href="https://www.instagram.com/mercedesoren/" class="footer__soc-btn" target="_blank">
            <svg class="icon icon-inst">
              <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-inst"></use>
            </svg>
          </a>
        </div>
      </div>
    </div>

  </footer>

  <noindex>

    <svg style="position: absolute; top: 0; left: 0; width: 0; height: 0;">
      <linearGradient id="linear-gradient" x1="50%" y1="0%" x2="50%" y2="100%">
        <stop offset="0%" stop-color="#c1a374"></stop>
        <stop offset="100%" stop-color="#4d4132"></stop>
      </linearGradient>
    </svg>

    <div class="hide">

      <div id="success_modal" class="modal-success modal-feedback modal-template" data-back="" data-close="1">
        <div class="modal-success__icon">
          <svg class="icon icon-success">
            <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-success"></use>
          </svg>
        </div>
        <div class="modal-success__title">Спасибо
          !</div>
        <div class="modal-success__subtitle">
          Ваша заявка отправлена. <br> В ближайшее время мы с Вами свяжемся!
        </div>
        <button type="button" class="modal-success__btn btn btn--blue js-modal-close" on="">ОК</button>
      </div>

      <div id="feedback_modal" class="modal-feedback modal-template">

        <div class="modal-feedback__head--desktop">
          <div class="title-24 tac" id="popup-title-desktop">Индивидуальные условия на покупку нового автомобиля
            для Вас. Перезвоним Вам и ответим на все вопросы.
          </div>
        </div>
        <div class="modal-feedback__head--mobile">
          <div class="title-24 tac" id="popup-title-mobile">Получите индивидуальное предложение</div>
          <div class="tac mb-20">Вы можете связаться с нами по
            телефону
            <div><a href="tel:+73532910102" class="-color-blue">+7 (3532) 910-102</a></div>
            или оставить заявку, заполнив форму. <br> Наш менеджер свяжется с вами.
          </div>

        </div>

        <form id="form-modal" class="js-enter CKiForm">

          <input type="hidden" name="code">
          <input type="hidden" name="order_id">

          <input type="hidden" name="page" value="Контакты - «Мерседес-Бенц» в Оренбурге"
                 data-page="Контакты - «Мерседес-Бенц» в Оренбурге">

          <div class="modal-feedback__narrow form form--blue">
            <div class="form__input-wrapper js-label-fly">
              <input type="text" data-callkeeper="person" class="form__input-text" id="form-modal-name" name="name">
              <label class="form__label-fly" for="form-modal-name">Ваше имя</label>
            </div>
            <div class="form__input-wrapper js-label-fly">
              <input type="tel" data-callkeeper="tel" class="form__input-text" id="form-modal-phone" name="phone">
              <label class="form__label-fly" for="form-modal-phone">Ваш номер телефона</label>
            </div>
            <div class="form__input-wrapper">
              <input type="checkbox" class="form__checkbox-input" id="form-modal-confirm" name="confirm" checked=""
                     onchange="confirmRequest('#form-modal')">
              <label class="form__checkbox-label form__checkbox-label--small" for="form-modal-confirm">
                Я согласен на обработку персональных данных. <a target="_blank"
                                                                href="https://sales.mercedes-orenburg.ru/politic/"
                                                                class="link-hover-border -color-blue -nowrap">
                  С Политикой защиты данных </a>
                ООО «Каскад-Авто»
                ознакомлен.
              </label>
            </div>
            <button type="button" class="btn btn--blue CKFormTrigger" onclick="sendRequest('#form-modal')">Отправить
            </button>
          </div>
        </form>

      </div>

    </div>


    <div class="bottom-plank">
      <a href="tel:+73532910102" class="bottom-plank__phone-icon">
        <svg class="icon icon-success">
          <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-telephone"></use>
        </svg>
      </a>
      <a href="#feedback_modal" class="btn btn--white js-open-modal">Заказать звонок</a>
      <a href="tel:+73532910102" class="btn btn--white bottom-plank__phone-btn">
        <svg class="icon icon-success">
          <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-telephone"></use>
        </svg>
        <span>Позвонить</span>
      </a>
      <div class="bottom-plank__btn-on-top js-btn-on-top">
        <svg class="icon icon-success">
          <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
        </svg>
      </div>
    </div>


    <div class="btn-on-top js-btn-on-top ">
      <svg class="icon icon-success">
        <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
      </svg>
    </div>

  </noindex>

</div>

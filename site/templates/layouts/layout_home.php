<?php namespace Processwire; ?>
<div class="site-wrapper">
  <header class="header js-header header--home">
    <div class="container">
      <div class="header__inner">
        <div class="header__top">
          <div class="header__logo">
            <img src="<?= $config->urls->templates . 'assets/img/logo.svg' ?>" alt="">
          </div>
          <div class="header__right">
            <div class="header__dealer">
              <div class="header__dealer-text">
                Официальный дилер в Тюмени <span
                        class="-nowrap">«<?= $pages->get("template=layout_contacts")->contacts_company_name ?>»</span>
              </div>
              <div class="header__dealer-phone">
                <a href="tel:<?= phoneLink($pages->get("template=layout_contacts")->contacts_phone) ?>"><?= $pages->get("template=layout_contacts")->contacts_phone ?></a>
              </div>
            </div>
            <div class="header__button">
              <a href="#feedback_modal" data-code="consultation"
                 data-text="Перезвоним Вам в ближайшее время и ответим на все интересующие вопросы"
                 class="btn btn--blue js-open-modal">Заказать консультацию</a>
            </div>
            <div class="cd-nav__trigger">
              <span class="cd-nav__trigger-icon"></span>
            </div>
          </div>
        </div>
        <div class="header__nav nav-class js-navigation-desktop">
          <?php include($config->paths->templates . "common/_navigation.php"); ?>
        </div>

        <div class="header__mobile cd-nav">
          <div class="cd-nav__inner">
            <div class="cd-nav__dealer">
              <a href="contacts/">Официальный дилер в Тюмени <span
                        class="-nowrap">«<?= $pages->get("template=layout_contacts")->contacts_company_name ?>
                  »</span></a>
            </div>
            <div class="cd-nav__phone">
              <a href="tel:<?= phoneLink($pages->get("template=layout_contacts")->contacts_phone) ?>"><?= $pages->get("template=layout_contacts")->contacts_phone ?></a>
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
              <div class="header-fixed__nav nav-class js-header-fixed-nav">

              </div>
              <div class="header-fixed__button">
                <a href="#feedback_modal" data-code="consultation"
                   data-text="Перезвоним Вам в ближайшее время и ответим на все интересующие вопросы"
                   class="btn btn--blue btn--blue-sm custom-btn js-open-modal">Заказать консультацию</a>
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
        <div class="subheader-mobile__dealer-text">Официальный дилер в Тюмени
          <span class="-nowrap">«<?= $pages->get("template=layout_contacts")->contacts_company_name ?>»</span>
        </div>
        <div class="subheader-mobile__dealer-phone">
          <a href="tel:<?= phoneLink($pages->get("template=layout_contacts")->contacts_phone) ?>"><?= $pages->get("template=layout_contacts")->contacts_phone ?></a>
        </div>
        <div class="subheader-mobile__button">
          <a href="#feedback_modal" data-code="consultation"
             data-text="Перезвоним Вам в ближайшее время и ответим на все интересующие вопросы"
             class="btn btn--blue js-open-modal">Заказать консультацию</a>
        </div>
      </div>
    </section>

    <section class="home-promo">
      <div class="home-promo__slider owl-carousel js-home-promo">

          <?php foreach ($page->home_promos as $promo): ?>
            <div class="home-promo__slide home-promo__slide--type1">

              <picture>
                <source srcset="<?= $promo->home_promo_image->size(600, 670, [])->url ?>"
                        data-srcset="<?= $promo->home_promo_image->size(600, 670, [])->url ?>, <?= $promo->home_promo_image->size(1200, 1340, [])->url ?> 1.5x"
                        media="(max-width: 540px)">
                <source srcset="<?= $promo->home_promo_image->size(900, 560, [])->url ?>"
                        data-srcset="<?= $promo->home_promo_image->size(900, 560, [])->url ?>, <?= $promo->home_promo_image->size(1800, 1120, [])->url ?> 1.5x"
                        media="(max-width: 900px)">
                <img src="<?= $promo->home_promo_image->size(1920, 912, [])->url ?>"
                     data-srcset="<?= $promo->home_promo_image->size(3840, 1824, [])->url ?> 1.5x"
                     alt="Mercedes-Benz">
              </picture>

              <div class="home-promo__slide-inner">
                <div class="container">
                  <div class="home-promo__slide-title"><?= $promo->home_promo_title ?></div>
                  <div class="home-promo__slide-subtitle"><?= $promo->home_promo_subtitle ?></div>
                  <?php if($promo->home_promo_link->url != ""):?>
                    <a href="<?=$promo->home_promo_link->url?>" class="btn btn--blue home-promo__btn">Подробнее</a>
                  <?php endif; ?>
                </div>
              </div>
            </div>
          <?php endforeach; ?>

      </div>

      <div class="home-promo__nav">
        <div class="container">
          <div class="home-promo__nav-title">Выберите интересующую вас модель</div>
          <div class="header__nav nav-class js-navigation-promo"></div>
          <div class="header__nav nav-class">

          </div>
        </div>
      </div>

    </section>
    <section class="custom-nav__wrapper">
      <div class="container">
        <div class="header__nav nav-class custom-nav">
          <ul>
            <li><a href="#benefits" class="is-parent js-smooth-scroll">Обслуживание</a></li>
            <li><a href="" class="is-parent">Запчасти и аксессуары</a></li>
            <li><a href="#benefits-foreign" class="is-parent js-smooth-scroll">Преимущества для покупателей из
                регионов</a></li>
            <li><a href="" class="is-parent">Mercedes Benz Financial</a></li>
          </ul>
        </div>
      </div>
    </section>
    <section class="home-main">
      <div class="container">

        <h1 class="title-40">Специальные цены на новые автомобили</h1>

        <div class="custom-switcher">
            <?php foreach ($page->home_categories as $category): ?>
              <div class="custom-switcher__link"><?= $category->home_categories_name ?></div>
            <?php endforeach; ?>
        </div>
        <div class="home-filter js-hf" data-min="0" data-max="15899722">

          <div class="home-filter__tabs js-hf__tabs">
            <div class="home-filter__tab js-hf__tab">
              <svg class="icon icon-convertible">
                <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-convertible"></use>
              </svg>
              <span>Тип автомобиля</span>
            </div>
            <div class="home-filter__tab js-hf__tab">
              <svg class="icon icon-rub">
                <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-rub"></use>
              </svg>
              <span>Цена</span>
            </div>
          </div>

          <div class="home-filter__body js-hf__body">

            <form id="home-filter">

              <input type="hidden" name="amg" value="0">

              <div class="home-filter__body-inner home-filter__type-car js-hf__tabs-content">

                <div class="home-filter__body-title">Тип автомобиля</div>
                <div class="custom-switcher__container">
                    <?php foreach ($page->home_categories as $category) : ?>
                      <div class="custom-switcher__tab">
                        <div class="filter-cars">
                            <?php foreach ($category->categories_type as $type): ?>
                              <div class="filter-cars__item">
                                <input type="checkbox" class="filter-cars__input"
                                       data-category="<?= $type->categories_type_icon->value ?>"
                                       id="<?= $type->categories_type_icon->title.$category->id ?>" name="types[]"
                                       value="<?= $type->categories_type_icon->value ?>">
                                <label class="filter-cars__label" for="<?= $type->categories_type_icon->title.$category->id ?>">
                                                   <span class="filter-cars__item-icon">
                                                       <svg class="icon icon-<?= $type->categories_type_icon->value ?>">
                                                          <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-<?= $type->categories_type_icon->value ?>"></use>
                                                       </svg>
                                                   </span>
                                  <span class="filter-cars__item-title"><?= $type->categories_type_icon->title ?></span>
                                </label>
                              </div>
                            <?php endforeach; ?>
                        </div>
                      </div>
                    <?php endforeach; ?>
                </div>

                <div class="home-filter__body-close">
                  <a href="javascript:void(0);" class="status-close js-filter-remove-types">
                    <i>
                      <svg class="icon icon-close-mini">
                        <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-close-mini"></use>
                      </svg>
                    </i>Сбросить фильтр
                  </a>
                </div>

              </div>

              <div class="home-filter__body-inner home-filter__type-price js-hf__tabs-content">

                <input type="hidden" name="price[min]" value="0">
                <input type="hidden" name="price[max]" value="15899722">

                <div class="home-filter__body-title">Цена</div>

                <div class="home-filter__slider">
                  <div class="range-slider">
                    <div class="range-slider__slider">
                      <input type="text" id="range-price">
                    </div>
                    <div class="range-slider__text" id="range-price-info"></div>
                  </div>
                </div>

                <div class="home-filter__body-close">
                  <a href="javascript:void(0);" class="status-close js-filter-remove-price">
                    <i>
                      <svg class="icon icon-close-mini">
                        <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-close-mini"></use>
                      </svg>
                    </i>
                    Сбросить фильтр
                  </a>
                </div>
              </div>

              <div class="home-filter__body-exit js-hf__close">
                <svg class="icon icon-close">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-close"></use>
                </svg>
              </div>

            </form>

          </div>
        </div>
        <div class="custom-switcher__container">
            <?php foreach ($page->home_categories as $category): ?>
              <div class="custom-switcher__tab">
                <div class="home-products">
                    <?php foreach ($category->categories_type as $type): $i=0; foreach($type->categories_types as $ct): ?>
                      <a href="<?=$ct->url?>" class="home-product <?php if ($i == 0) echo 'home-product--first' ?>" data-category="<?=$type->categories_type_icon->value?>" data-price="<?=getLowestPrice($ct)?>">
                          <?php if ($i == 0): ?>
                            <div class="home-product__category"><?= $type->categories_type_name ?></div>
                          <?php endif; ?>
                        <div class="home-product__image">
                          <img src="<?=(isset($ct->type_preview))?$ct->type_preview->url:$config->urls->templates . "assets/img/product-not-available_reverse.jpg"?>"
                               alt="<?=(($ct->parent()->class_name!="")?$ct->parent()->class_name:$ct->parent()->title) . " " . $ct->type_name?>">
                        </div>
                        <div class="home-product__info">
                          <div class="home-product__name"><?=(($ct->parent()->class_name!="")?$ct->parent()->class_name:$ct->parent()->title) . " " . $ct->type_name?></div>
                          <div class="home-product__price"><?php $prc = getLowestPrice($ct);
                              echo ($prc != 0) ? "от <span>{$prc}</span> ₽" : "По запросу" ?></div>
                          <div class="home-product__in-stock"><?= $pages->find("template=layout_car, parent={$ct->id}")->count() ?>
                            шт. в наличии
                          </div>
                          <div class="home-product__button">
                            <svg class="icon icon-arrow-round">
                              <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                            </svg>
                          </div>
                        </div>
                      </a>
                    <?php $i++; endforeach; endforeach; ?>
                </div>
              </div>
            <?php endforeach; ?>
        </div>

        <div class="form-type1 form form--black">

          <div class="title-40">Получите индивидуальное предложение</div>

          <form id="form-individual-offer" data-caption="Получите индивидуальное предложение" class="CKiForm">

            <input type="hidden" name="code" value="individual_offer">

            <div class="form-type1__inner row">

              <div class="form-type1__text xl-50 lg-100">
                Специально для Вас мы готовы улучшить любое предложение!
                Вы можете связаться с нами по телефону
                <a href="tel:<?= phoneLink($pages->get("template=layout_contacts")->contacts_phone) ?>"
                   class="form-type1__phone"><?= $pages->get("template=layout_contacts")->contacts_phone ?></a>
                или оставить заявку, заполнив форму. Наш менеджер свяжется с Вами.
              </div>

              <div class="form-type1__form xl-50 lg-100">
                <div class="form-type1__form-item">
                  <div class="form__input-wrapper js-label-fly">
                    <input type="text" data-callkeeper="person" class="form__input-text" id="form-individual-offer-name"
                           name="name">
                    <label class="form__label-fly" for="form-individual-offer-name">Ваше имя</label>
                  </div>
                </div>
                <div class="form-type1__form-item">
                  <div class="form__input-wrapper js-label-fly">
                    <input type="tel" data-callkeeper="tel" class="form__input-text" id="form-individual-offer-phone"
                           name="phone">
                    <label class="form__label-fly" for="form-individual-offer-phone">Ваш номер телефона</label>
                  </div>
                </div>
                <div class="form-type1__form-item">
                  <div class="form__input-wrapper">
                    <input type="checkbox" class="form__checkbox-input" id="form-individual-offer-confirm"
                           name="confirm" checked="" onchange="confirmRequest('#form-individual-offer')">
                    <label class="form__checkbox-label form__checkbox-label--small" for="form-individual-offer-confirm">
                      Я согласен на обработку персональных данных.
                      <a href="/privacy" target="_blank"
                         class="link-hover-border -color-blue -nowrap">С Политикой защиты данных </a>
                      ООО «<?= $pages->get("template=layout_contacts")->contacts_company_name ?>»
                      ознакомлен.
                    </label>
                  </div>
                </div>
                <div class="form-type1__form-item">
                  <button type="button" class="btn btn--blue CKFormTrigger"
                          onclick="sendRequest('#form-individual-offer')">Получить предложение
                  </button>
                </div>
              </div>

            </div>

          </form>

        </div>

      </div>
    </section>


  </main>


</div>

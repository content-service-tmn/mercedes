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
            <div class="cd-nav__trigger">
              <span class="cd-nav__trigger-icon"></span>
            </div>
          </div>
        </div>
        <div class="header__nav nav-class js-navigation-desktop">
          <ul>
              <?php foreach ($pages->find("parent=catalog") as $category): ?>
                <li>
                  <a href="<?= $pages->find("template=layout_class, parent={$category->id}")->first()->url ?>"><?= $category->title ?></a>
                  <ul>
                      <?php foreach ($pages->find("parent={$category->id}") as $pge): ?>
                        <li><a href="<?= $pge->url ?>"><?= $pge->title ?></a></li>
                      <?php endforeach; ?>
                      <li><a href="" class="is-parent">Коммерческий транспорт</a></li>
                  </ul>
                </li>
              <?php endforeach; ?>
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
              <div class="header-fixed__nav nav-class js-header-fixed-nav">
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
                      <li><a href="#benefits" class="is-parent js-smooth-scroll">Сервисное обслуживание</a></li>
                      <li><a href="" class="is-parent">Оригинальные запасные части и аксессуары</a></li>
                      <li><a href="" class="is-parent">Mercedes Benz Financial</a></li>
                      <li><a href="#benefits-foreign" class="is-parent js-smooth-scroll">Преимущества для покупателей из других регионов</a></li>
                    </ul>
                  </li>

                </ul>
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
        <div class="subheader-mobile__dealer-text">Официальный дилер в Оренбурге
          <span class="-nowrap">«Каскад-Авто»</span>
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

    <section class="home-promo">
      <div class="home-promo__slider owl-carousel js-home-promo">


        <div class="home-promo__slide home-promo__slide--type1">

          <picture>
            <source srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/data/15160175055349145-600x670_crop.jpg"
                    data-srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/data/15160175055349145-600x670_crop.jpg, https://sales.mercedes-orenburg.ru/image/cache/catalog/data/15160175055349145-1200x1340_crop.jpg 1.5x"
                    media="(max-width: 540px)">
            <source srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/data/15160175027284347-900x560_crop.jpg"
                    data-srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/data/15160175027284347-900x560_crop.jpg, https://sales.mercedes-orenburg.ru/image/cache/catalog/data/15160175027284347-1800x1120_crop.jpg 1.5x"
                    media="(max-width: 900px)">
            <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/data/15160174998798049-1920x912_crop.jpg"
                 data-srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/data/15160174998798049-3840x1824_crop.jpg 1.5x"
                 alt="Mercedes-Benz">
          </picture>

          <div class="home-promo__slide-inner">
            <div class="container">
              <div class="home-promo__slide-title">Автомобили «Мерседес
                -
                Бенц»</div>
              <div class="home-promo__slide-subtitle">Особые условия на приобретение автомобилей «Мерседес
                -
                Бенц» от официального дилера.</div>
              <a href="" class="btn btn--blue home-promo__btn">Подробнее</a>
            </div>
          </div>
        </div>


      </div>

      <div class="home-promo__nav">
        <div class="container">
          <div class="home-promo__nav-title">Выберите интересующую вас модель</div>
          <div class="header__nav nav-class js-navigation-promo"></div>
          <div class="header__nav nav-class custom-nav">
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
                </ul>
              </li>
              <li><a href="" class="is-parent">Коммерческий транспорт</a></li>


            </ul>
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
            <li><a href="" class="is-parent">Mercedes Benz Financial</a></li>
            <li><a href="#benefits-foreign" class="is-parent js-smooth-scroll">Преимущества для покупателей из регионов</a></li>
          </ul>
        </div>
      </div>
    </section>
    <section class="home-main">
      <div class="container">

        <h1 class="title-40">Специальные цены на новые автомобили</h1>

        <div class="home-main__top">

          <div class="tabs-models">
            <div class="tabs-models__tab is-active" data-checked="0">
              <a href="javascript:void(0);">Все модели</a>
            </div>
            <div class="tabs-models__tab" data-checked="1">
              <a href="javascript:void(0);">Модели AMG</a>
            </div>
          </div>

          <div></div>
          <div class="">
            <a href="javascript:void(0);" class="status-close js-filter-remove-all">
              <i>
                <svg class="icon icon-close-mini">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-close-mini"></use>
                </svg>
              </i> Отменить все фильтры
            </a>
          </div>

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

                <div class="filter-cars">
                    <?php $used = [];
                    foreach ($page->home_show_categories as $category): ?>
                        <?php
                        foreach ($category->home_show_category as $ctg): ?>
                            <?php foreach ($ctg->home_show_link as $link): if (!in_array($link->title, $used)): ?>
                            <div class="filter-cars__item">
                              <input type="checkbox" class="filter-cars__input" id="<?= $link->title ?>" name="types[]"
                                     value="<?= $link->title ?>">
                              <label class="filter-cars__label" for="<?= $link->title ?>">
                                             <span class="filter-cars__item-icon">
                                                 <svg class="icon icon-sedan">
                                                    <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-sedan"></use>
                                                 </svg>
                                             </span>
                                <span class="filter-cars__item-title"><?= $link->title ?></span>
                              </label>
                            </div>
                                <?php $used[] = $link->title; endif; endforeach; ?>
                        <?php endforeach; ?>
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

        <div class="home-products">

            <?php foreach ($page->home_show_categories as $category): ?>
                <?php
                foreach ($category->home_show_category as $ctg): ?>
                    <?php $i = 0;
                    foreach ($ctg->home_show_link as $link): ?>
                      <a href="<?= $link->url ?>"
                         data-category="<?= $link->title ?>" <?php if ($category->home_show_isAmg) echo "data-amg=\"1\"" ?>
                         data-price="<?= getLowestPrice($link->id, $pages) ?>"
                         class="home-product <?php if ($i == 0) echo 'home-product--first' ?>">
                          <?php
                          if ($i == 0): ?>
                            <div class="home-product__category"><?= ($category->home_show_isAmg) ? $ctg->home_show_title . " AMG" : $ctg->home_show_title ?></div>
                          <?php endif; ?>
                        <div class="home-product__image">
                          <img src="<?= $pages->get("id=" . $link->id)->class_preview->first()->url ?>"
                               alt="<?= $link->title ?>">
                        </div>
                        <div class="home-product__info">
                          <div class="home-product__name"><?= $link->parent()->title . " " . $link->title ?></div>
                          <div class="home-product__price"><?php $prc = getLowestPrice($link->id, $pages);
                              echo ($prc != 0) ? "от <span>{$prc}</span> ₽" : "По запросу" ?></div>
                          <div class="home-product__in-stock"><?= $pages->find("template=layout_car, parent={$link->id}")->count() ?>
                            шт. в наличии
                          </div>
                          <div class="home-product__button">
                            <svg class="icon icon-arrow-round">
                              <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                            </svg>
                          </div>
                        </div>
                      </a>
                        <?php $i++; endforeach; ?>
                <?php endforeach; ?>
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
                <a href="tel:+73532910102" class="form-type1__phone">+7 (3532) 910-102</a>
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
                      <a href="https://sales.mercedes-orenburg.ru/politic/" target="_blank"
                         class="link-hover-border -color-blue -nowrap">С Политикой защиты данных </a>
                      ООО «Каскад-Авто»
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

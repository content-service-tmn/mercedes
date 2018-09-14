<?php namespace Processwire; ?>
<div class="site-wrapper">
  <header class="header js-header header--home">
    <div class="container">
      <div class="header__inner">
        <div class="header__top">
          <div class="header__logo">
            <img src="https://sales.mercedes-orenburg.ru/static/build/img/logo/logo.svg" alt="">
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
                  <a href="<?= $category->url ?>"><?= $category->title ?></a>
                  <ul>
                      <?php foreach ($pages->find("parent={$category->id}") as $pge): ?>
                        <li><a href="<?= $pge->url ?>"><?= $pge->title ?></a></li>
                      <?php endforeach; ?>
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
            </div>
          </div>
        </div>


      </div>

      <div class="home-promo__nav">
        <div class="container">
          <div class="home-promo__nav-title">Выберите интересующую вас модель</div>
          <div class="header__nav nav-class js-navigation-promo"></div>
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
                    <?php $used = []; foreach ($page->home_show_categories as $category): ?>
                        <?php
                        foreach ($category->home_show_category as $ctg): ?>
                            <?php foreach ($ctg->home_show_link as $link): if(!in_array($link->title, $used)): ?>
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
                      <a href="<?= $link->url ?>" data-category="<?= $link->title ?>" <?php if ($category->home_show_isAmg) echo "data-amg=\"true\""?>
                         data-price="<?= getLowestPrice($link->id, $pages) ?>"
                         class="home-product <?php if ($i == 0) echo 'home-product--first' ?>">
                          <?php bd($pages->get("id=" . $link->id)->class_preview->first()->url);
                          if ($i == 0): ?>
                            <div class="home-product__category"><?= ($category->home_show_isAmg)?$ctg->home_show_title . " AMG":$ctg->home_show_title  ?></div>
                          <?php endif; ?>
                        <div class="home-product__image">
                          <img src="<?= $pages->get("id=" . $link->id)->class_preview->first()->url ?>"
                               alt="<?= $link->title ?>">
                        </div>
                        <div class="home-product__info">
                          <div class="home-product__name"><?= $link->parent()->title . " " . $link->title ?></div>
                          <div class="home-product__price"><?php $prc = getLowestPrice($link->id, $pages);
                              echo ($prc != 0) ? "от <span>{$prc}</span> ₽" : "По запросу" ?></div>
                          <div class="home-product__in-stock"><?=$pages->find("template=layout_car, parent={$link->id}")->count()?>
                            шт. в наличии</div>
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


          <!-- <a href="https://sales.mercedes-orenburg.ru/cla-coupe/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0007-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0007-544x306_resize.png  1.5x"
                   alt="CLA купе">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">CLA
                купе</div>
              <div class="home-product__price">По запросу</div>
              <div class="home-product__in-stock">
                Нет в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/cls-coupe/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0009-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0009-544x306_resize.png  1.5x"
                   alt="CLS купе">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">CLS
                купе</div>
              <div class="home-product__price">от <span>5 341 725</span> ₽</div>
              <div class="home-product__in-stock">
                3
                шт. в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/e-coupe/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0011-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0011-544x306_resize.png  1.5x"
                   alt="E-Класс купе">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">E -
                Класс купе</div>
              <div class="home-product__price">от <span>3 907 204</span> ₽</div>
              <div class="home-product__in-stock">
                3
                шт. в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/glc-coupe/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0018-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0018-544x306_resize.png  1.5x"
                   alt="GLC купе">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">GLC
                купе</div>
              <div class="home-product__price">от <span>3 645 979</span> ₽</div>
              <div class="home-product__in-stock">
                5
                шт. в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/gle-coupe/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0020-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0020-544x306_resize.png  1.5x"
                   alt="GLE купе">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">GLE
                купе</div>
              <div class="home-product__price">от <span>5 396 860</span> ₽</div>
              <div class="home-product__in-stock">
                23
                шт. в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/s-coupe/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0023-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0023-544x306_resize.png  1.5x"
                   alt="S-Класс купе">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">S -
                Класс купе</div>
              <div class="home-product__price">от <span>9 011 605</span> ₽</div>
              <div class="home-product__in-stock">
                3
                шт. в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/amg-gt-coupe/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0029-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0029-544x306_resize.png  1.5x"
                   alt="AMG GT купе">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">AMG
                GT
                купе</div>
              <div class="home-product__price">По запросу</div>
              <div class="home-product__in-stock">
                Нет в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/g-suv/" class="home-product home-product--first">
            <div class="home-product__category">Внедорожники</div>
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0015-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0015-544x306_resize.png 1.5x"
                   alt="G-Класс внедорожник">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">G -
                Класс внедорожник</div>
              <div class="home-product__price">от <span>15 899 722</span> ₽</div>
              <div class="home-product__in-stock">
                1
                шт. в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/gla-suv/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0016-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0016-544x306_resize.png  1.5x"
                   alt="GLA внедорожник">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">GLA
                внедорожник</div>
              <div class="home-product__price">от <span>2 246 964</span> ₽</div>
              <div class="home-product__in-stock">
                4
                шт. в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/glc-suv/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0017-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0017-544x306_resize.png  1.5x"
                   alt="GLC внедорожник">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">GLC
                внедорожник</div>
              <div class="home-product__price">от <span>3 059 842</span> ₽</div>
              <div class="home-product__in-stock">
                10
                шт. в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/gle-suv/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0019-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0019-544x306_resize.png  1.5x"
                   alt="GLE внедорожник">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">GLE
                внедорожник</div>
              <div class="home-product__price">от <span>4 218 353</span> ₽</div>
              <div class="home-product__in-stock">
                7
                шт. в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/gls-suv/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0021-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0021-544x306_resize.png  1.5x"
                   alt="GLS внедорожник">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">GLS
                внедорожник</div>
              <div class="home-product__price">от <span>5 630 295</span> ₽</div>
              <div class="home-product__in-stock">
                38
                шт. в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/c-wagon/" class="home-product home-product--first">
            <div class="home-product__category">Универсалы</div>
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0003-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0003-544x306_resize.png 1.5x"
                   alt="C-Класс универсал">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">C -
                Класс универсал</div>
              <div class="home-product__price">По запросу</div>
              <div class="home-product__in-stock">
                Нет в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/e-wagon/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0014-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0014-544x306_resize.png  1.5x"
                   alt="E-Класс универсал">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">E -
                Класс универсал</div>
              <div class="home-product__price">По запросу</div>
              <div class="home-product__in-stock">
                Нет в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/e-all-terrain/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0013-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0013-544x306_resize.png  1.5x"
                   alt="E-Класс All-Terrain">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">E -
                Класс
                All - Terrain</div>
              <div class="home-product__price">По запросу</div>
              <div class="home-product__in-stock">
                Нет в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/a-hatchback/" class="home-product home-product--first">
            <div class="home-product__category">Хэтчбеки</div>
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0001-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0001-544x306_resize.png 1.5x"
                   alt="A-Класс хэтчбек">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">A -
                Класс хэтчбек</div>
              <div class="home-product__price">от <span>1 984 384</span> ₽</div>
              <div class="home-product__in-stock">
                1
                шт. в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/b-hatchback/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0002-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0002-544x306_resize.png  1.5x"
                   alt="B-Класс хэтчбек">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">B -
                Класс хэтчбек</div>
              <div class="home-product__price">По запросу</div>
              <div class="home-product__in-stock">
                Нет в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/c-cabriolet/" class="home-product home-product--first">
            <div class="home-product__category">Кабриолеты</div>
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0006-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0006-544x306_resize.png 1.5x"
                   alt="C-Класс кабриолет">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">C -
                Класс кабриолет</div>
              <div class="home-product__price">По запросу</div>
              <div class="home-product__in-stock">
                Нет в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/e-cabriolet/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0012-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0012-544x306_resize.png  1.5x"
                   alt="E-Класс кабриолет">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">E -
                Класс кабриолет</div>
              <div class="home-product__price">По запросу</div>
              <div class="home-product__in-stock">
                Нет в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/s-cabriolet/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0024-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0024-544x306_resize.png  1.5x"
                   alt="S-Класс кабриолет">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">S -
                Класс кабриолет</div>
              <div class="home-product__price">По запросу</div>
              <div class="home-product__in-stock">
                Нет в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/sl-roadster/" class="home-product home-product--first">
            <div class="home-product__category">Родстеры</div>
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0026-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0026-544x306_resize.png 1.5x"
                   alt="SL родстер">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">SL
                родстер</div>
              <div class="home-product__price">По запросу</div>
              <div class="home-product__in-stock">
                Нет в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/slc-roadster/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0027-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0027-544x306_resize.png  1.5x"
                   alt="SLC родстер">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">SLC
                родстер</div>
              <div class="home-product__price">По запросу</div>
              <div class="home-product__in-stock">
                Нет в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/amg-gt-roadster/" class="home-product">
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0030-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0030-544x306_resize.png  1.5x"
                   alt="AMG GT родстер">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">AMG
                GT
                родстер</div>
              <div class="home-product__price">По запросу</div>
              <div class="home-product__in-stock">
                Нет в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/cla-shooting-brake/" class="home-product home-product--first">
            <div class="home-product__category">Shooting
              Brake</div>
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0008-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0008-544x306_resize.png 1.5x"
                   alt="CLA Shooting Brake">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">CLA
                Shooting
                Brake</div>
              <div class="home-product__price">По запросу</div>
              <div class="home-product__in-stock">
                Нет в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/v-minivan/" class="home-product home-product--first">
            <div class="home-product__category">Минивэны</div>
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0028-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0028-544x306_resize.png 1.5x"
                   alt="V-Класс минивэн">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">V -
                Класс минивэн</div>
              <div class="home-product__price">По запросу</div>
              <div class="home-product__in-stock">
                Нет в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>

          <a href="https://sales.mercedes-orenburg.ru/x-pickup/" class="home-product home-product--first">
            <div class="home-product__category">Пикапы</div>
            <div class="home-product__image">
              <img src="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0033-272x153_resize.png"
                   srcset="https://sales.mercedes-orenburg.ru/image/cache/catalog/models_ico/0033-544x306_resize.png 1.5x"
                   alt="X-Класс пикап">
            </div>
            <div class="home-product__info">
              <div class="home-product__name">X -
                Класс пикап</div>
              <div class="home-product__price">от <span>3 591 149</span> ₽</div>
              <div class="home-product__in-stock">
                4
                шт. в наличии                                        </div>
              <div class="home-product__button">
                <svg class="icon icon-arrow-round">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-arrow-round"></use>
                </svg>
              </div>
            </div>
          </a>-->

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

    <section class="lp-credit">
      <div class="container">

        <div class="title-40">Кредитные и лизинговые программы</div>
        <a href="javascript:void(0);" class="expand-btn">Развернуть</a>

        <div class="expand-box">
          <div class="row row-15">
            <div class="xl-50 md-100">
              <div class="lp-credit__title">Сниженные ставки по кредиту
                -
                от
                6, 3 %</div>
              <ul>
                <li>Возможность получения дополнительной скидки от производителя;</li>
                <li>Включение лизинговых платежей в себестоимость продукции и применение ускоренной амортизации
                  предмета лизинга;
                </li>
                <li>Низкий авансовый платеж - от 10% от стоимости транспортного средства.</li>
              </ul>
            </div>
            <div class="xl-50 md-100">
              <div class="lp-credit__title">Лизинг</div>

              <ul>
                <li>Оптимальные сроки кредитования: от 1 года до 5 лет;</li>
                <li>Минимальный срок рассмотрения заявки: 1 рабочий день;</li>
                <li>Принцип «Одного окна»: предоставление документов для рассмотрения кредита,
                  а также подписание кредитной документации осуществляется в
                  «Каскад-Авто».
                </li>
              </ul>
            </div>
          </div>
          <div class="lp-credit__button">
            <a href="#feedback_modal" data-code="credit_and_leasing"
               data-text="Получите индивидуальную консультацию нашего финансового специалиста"
               class="btn btn--blue js-open-modal">Узнать подробности</a>
          </div>
        </div>
      </div>
    </section>


    <section class="lp-tradein">
      <div class="container">

        <div class="title-40">Трейд
          -
          ин</div>
        <a href="javascript:void(0);" class="expand-btn">Развернуть</a>

        <div class="expand-box">
          <div class="lp-tradein__subtitle">
            У Вас есть возможность приобрести автомобиль с дополнительной выгодой.
            Trade - In -
            один из способов оплаты понравившегося Вам «Мерседес
            -
            Бенц».
          </div>

          <ul class="lp-tradein__list">
            <li class="xl-30 md-33 sm-100">
              <i>
                <svg class="icon icon-trade-car">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-trade-car"></use>
                </svg>
              </i>
              <span>Вы просто сдаете нам Ваш существующий автомобиль.</span>
            </li>
            <li class="xl-30 md-33 sm-100">
              <i>
                <svg class="icon icon-trade-money">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-trade-money"></use>
                </svg>
              </i>
              <span>При необходимости доплачиваете разницу в цене.</span>
            </li>
            <li class="xl-30 md-33 sm-100">
              <i>
                <svg class="icon icon-trade-finger">
                  <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-trade-finger"></use>
                </svg>
              </i>
              <span>Уезжаете на новом автомобиле или на понравившемся Вам автомобиле с пробегом.</span>
            </li>
          </ul>

          <form id="form-trade_in" class="CKiForm">

            <input type="hidden" name="code" value="trade_in">


            <div class="tradein-form form mb-20">
              <div class="tradein-form__inner">
                <div class="tradein-form__item xl-25 sm-100">
                  <div class="js-select-wrap select select--type2">
                    <select class="js-select" name="brand">
                      <option value="Не выбрана">Марка</option>
                      <option value="Lada">Lada</option>
                      <option value="Audi">Audi</option>
                      <option value="BMW">BMW</option>
                      <option value="Chery">Chery</option>
                      <option value="Cadillac">Cadillac</option>
                      <option value="Chevrolet">Chevrolet</option>
                      <option value="Chrysler">Chrysler</option>
                      <option value="Citroen">Citroen</option>
                      <option value="Daewoo">Daewoo</option>
                      <option value="Datsun">Datsun</option>
                      <option value="Dodge">Dodge</option>
                      <option value="Fiat">Fiat</option>
                      <option value="Ford">Ford</option>
                      <option value="Geely">Geely</option>
                      <option value="Great Wall">Great Wall</option>
                      <option value="Honda">Honda</option>
                      <option value="Hyundai">Hyundai</option>
                      <option value="Infiniti">Infiniti</option>
                      <option value="Jaguar">Jaguar</option>
                      <option value="Jeep">Jeep</option>
                      <option value="Kia">Kia</option>
                      <option value="Land Rover">Land Rover</option>
                      <option value="Lexus">Lexus</option>
                      <option value="Lifan">Lifan</option>
                      <option value="Mazda">Mazda</option>
                      <option value="Mercedes-Benz">Mercedes-Benz</option>
                      <option value="Mitsubishi">Mitsubishi</option>
                      <option value="Nissan">Nissan</option>
                      <option value="Opel">Opel</option>
                      <option value="Peugeot">Peugeot</option>
                      <option value="Porsche">Porsche</option>
                      <option value="Renault">Renault</option>
                      <option value="Skoda">Skoda</option>
                      <option value="SsangYong">SsangYong</option>
                      <option value="Subaru">Subaru</option>
                      <option value="Suzuki">Suzuki</option>
                      <option value="Toyota">Toyota</option>
                      <option value="Volkswagen">Volkswagen</option>
                      <option value="Volvo">Volvo</option>
                      <option value="ГАЗ">ГАЗ</option>
                      <option value="ЗАЗ">ЗАЗ</option>
                      <option value="УАЗ">УАЗ</option>
                      <option value="Haval&nbsp;">Haval&nbsp;</option>
                      <option value="MINI">MINI</option>
                      <option value="Ravon">Ravon</option>
                      <option value="Changan">Changan</option>
                      <option value="Smart">Smart</option>
                      <option value="DongFeng">DongFeng</option>
                      <option value="Genesis">Genesis</option>
                      <option value="FAW">FAW</option>
                      <option value="Brilliance">Brilliance</option>
                      <option value="Alfa Romeo">Alfa Romeo</option>
                      <option value="Acura">Acura</option>
                    </select>
                  </div>
                </div>

                <div class="tradein-form__item xl-25 sm-100">
                  <div class="js-select-wrap select select--type2">
                    <select class="js-select" name="model">
                      <option value="Не выбрана">Модель</option>
                    </select>
                  </div>
                </div>

                <div class="tradein-form__item xl-20 sm-100">
                  <div class="js-select-wrap select select--type2">
                    <select class="js-select" name="year">
                      <option value="Не выбран">Год</option>
                    </select>
                  </div>
                </div>

                <div class="tradein-form__item xl-30 sm-100">
                  <input type="tel" data-callkeeper="tel" class="form__input-text" name="phone" placeholder="Телефон">
                </div>
              </div>
              <div class="tradein-form__button">
                <button type="button" class="btn btn--blue CKFormTrigger" onclick="sendRequest('#form-trade_in')">
                  Оценить
                </button>
              </div>
            </div>
            <div class="tradein-form form__input-wrapper">
              <input class="form__checkbox-input" type="checkbox" id="form-tradein-confirm" name="confirm" checked=""
                     onchange="confirmRequest('#form-trade_in')">
              <label class="form__checkbox-label form__checkbox-label--small" for="form-tradein-confirm">
                Я согласен на обработку персональных данных.
                <a href="https://sales.mercedes-orenburg.ru/politic/" target="_blank"
                   class="link-hover-border -color-gold -nowrap">С Политикой защиты данных </a>
                ООО «Каскад-Авто»
                ознакомлен.
              </label>
            </div>

          </form>
        </div>

      </div>
    </section>

    <section class="lp-testdrive">

      <div class="lp-testdrive__left-img">
        <img src="https://sales.mercedes-orenburg.ru/static/build/img/bg/testdrive.png" alt="Запись на тест-драйв">
      </div>

      <div class="lp-testdrive__right">

        <div class="title-40">Запись на тест
          -
          драйв</div>
        <a href="javascript:void(0);" class="expand-btn">Развернуть</a>

        <div class="expand-box">
          <form id="form-test-drive" class="CKiForm">

            <input type="hidden" name="code" value="test_drive">


            <div class="lp-testdrive__form form form--gold">

              <div class="form__input-wrapper js-label-fly">
                <input type="text" data-callkeeper="person" class="form__input-text" id="form-test-drive-name"
                       name="name">
                <label class="form__label-fly" for="form-test-drive-name">Ваше имя</label>
              </div>
              <div class="form__input-wrapper js-label-fly">
                <input type="tel" data-callkeeper="tel" class="form__input-text" id="form-test-drive-phone"
                       name="phone">
                <label class="form__label-fly" for="form-test-drive-phone">Ваш номер телефона</label>
              </div>

              <div class="form__input-wrapper js-label-fly">
                <div class="js-select-wrap select select--type3">

                  <select class="js-select" name="model">
                    <option value="Не выбрана">Модель</option>
                    <option value="A-Класс хэтчбек">A-Класс хэтчбек</option>
                    <option value="C-Класс седан">C-Класс седан</option>
                    <option value="C-Класс купе">C-Класс купе</option>
                    <option value="CLS купе">CLS купе</option>
                    <option value="E-Класс седан">E-Класс седан</option>
                    <option value="E-Класс купе">E-Класс купе</option>
                    <option value="G-Класс внедорожник">G-Класс внедорожник</option>
                    <option value="GLA внедорожник">GLA внедорожник</option>
                    <option value="GLC внедорожник">GLC внедорожник</option>
                    <option value="GLC купе">GLC купе</option>
                    <option value="GLE внедорожник">GLE внедорожник</option>
                    <option value="GLE купе">GLE купе</option>
                    <option value="GLS внедорожник">GLS внедорожник</option>
                    <option value="S-Класс седан">S-Класс седан</option>
                    <option value="S-Класс купе">S-Класс купе</option>
                    <option value="S-Класс Maybach">S-Класс Maybach</option>
                    <option value="X-Класс пикап">X-Класс пикап</option>
                  </select>
                </div>
              </div>

              <div class="form__input-wrapper">
                <input class="form__checkbox-input" type="checkbox" id="form-test-drive-confirm" name="confirm"
                       checked="" onchange="confirmRequest('#form-test-drive')">
                <label class="form__checkbox-label form__checkbox-label--small" for="form-test-drive-confirm">
                  Я согласен на обработку персональных данных.
                  <a href="https://sales.mercedes-orenburg.ru/politic/" target="_blank"
                     class="link-hover-border -color-gold -nowrap">С Политикой защиты данных </a>
                  ООО «Каскад-Авто»
                  ознакомлен.
                </label>
              </div>

              <button type="button" class="btn btn--blue CKFormTrigger" onclick="sendRequest('#form-test-drive')">
                Записаться
              </button>
            </div>
          </form>
        </div>

      </div>
    </section>

    <section class="lp-premser">
      <div class="container">
        <div class="title-40">Искусство премиального сервиса</div>
        <div class="lp-premser__group row row-15">
          <div class="lp-premser__item xl-50">
            <div class="premser">
              <div class="premser__top">
                <div class="premser__image">
                  <img src="https://sales.mercedes-orenburg.ru/static/build/img/service/premser1_2x.jpg"
                       srcset="https://sales.mercedes-orenburg.ru/static/build/img/service/premser1_2x.jpg 1.5x"
                       alt="Бутик аксессуаров">
                </div>
                <div class="premser__title">Бутик аксессуаров</div>
                <div class="premser__square">
                  <i></i>
                  <i></i>
                  <i></i>
                  <i></i>
                </div>
              </div>
              <div class="premser__text">
                Прямо в дилерском центре Вы можете выбрать премиальные аксессуары для жизни в стиле
                «Мерседес
                -
                Бенц».
              </div>
            </div>
          </div>
          <div class="lp-premser__item xl-50">
            <div class="premser">
              <div class="premser__top">
                <div class="premser__image">
                  <img src="https://sales.mercedes-orenburg.ru/static/build/img/service/premser2_2x.jpg"
                       srcset="https://sales.mercedes-orenburg.ru/static/build/img/service/premser2_2x.jpg 1.5x"
                       alt="«Мерседес-Бенц» S-Lounge">
                </div>
                <div class="premser__title">«Мерседес
                  -
                  Бенц»
                  S - Lounge</div>
                <div class="premser__square">
                  <i></i>
                  <i></i>
                  <i></i>
                  <i></i>
                </div>
              </div>
              <div class="premser__text">
                Вместе с автомобилем семейства
                S -
                Класса мы предлагаем Вам
                не только эксклюзивный продукт, но и ощущение исключительного
                комфорта и удобства. Став участником программы
                S - Lounge,
                Вы откроете
                для себя мир уникальных привилегий и премиального сервиса,
                который позволит Вам в полной мере насладиться философией современной
                роскоши от «Мерседес
                -
                Бенц».
              </div>
            </div>
          </div>
          <div class="lp-premser__item xl-50">
            <div class="premser">
              <div class="premser__top">
                <div class="premser__image">
                  <img src="https://sales.mercedes-orenburg.ru/static/build/img/service/premser3_2x.jpg"
                       srcset="https://sales.mercedes-orenburg.ru/static/build/img/service/premser3_2x.jpg 1.5x"
                       alt="Сертифицированный персонал">
                </div>
                <div class="premser__title">Сертифицированный персонал</div>
                <div class="premser__square">
                  <i></i>
                  <i></i>
                  <i></i>
                  <i></i>
                </div>
              </div>
              <div class="premser__text">
                Квалификация наших сотрудников подтверждена официальными сертификатами «Мерседес
                -
                Бенц»
                и многолетним успешным опытом работы.
              </div>
            </div>
          </div>
          <div class="lp-premser__item xl-50">
            <div class="premser">
              <div class="premser__top">
                <div class="premser__image">
                  <img src="https://sales.mercedes-orenburg.ru/static/build/img/service/premser4_2x.jpg"
                       srcset="https://sales.mercedes-orenburg.ru/static/build/img/service/premser4_2x.jpg 1.5x"
                       alt="Зона отдыха и кафе">
                </div>
                <div class="premser__title">Зона отдыха и кафе</div>
                <div class="premser__square">
                  <i></i>
                  <i></i>
                  <i></i>
                  <i></i>
                </div>
              </div>
              <div class="premser__text">
                В дилерском центре «Каскад
                -
                Авто» работает зона отдыха и
                кафе где
                Вы в комфортной обстановке сможете отдохнуть.
              </div>
            </div>
          </div>
        </div>
        <div class="title-40">Преимущества сервиса</div>
        <div class="lp-premser__bottom">
          <div class="lp-premser__bot-left-нет xl-70 lg-100">
            <ul class="lp-premser__list row row-15">
              <li class="xl-33">
                <i>
                  <svg class="icon icon-premser1">
                    <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-premser1"></use>
                  </svg>
                </i>
                <span>Онлайн-запись <br>на сервис 24 часа</span>
              </li>
              <li class="xl-33">
                <i>
                  <svg class="icon icon-premser2">
                    <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-premser2"></use>
                  </svg>
                </i>
                <span>Персональный консультант</span>
              </li>
              <li class="xl-33">
                <i>
                  <svg class="icon icon-premser3">
                    <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-premser3"></use>
                  </svg>
                </i>
                <span>Обслуживание без ожидания и очередей</span>
              </li>
              <li class="xl-33">
                <i>
                  <svg class="icon icon-premser4">
                    <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-premser4"></use>
                  </svg>
                </i>
                <span>Нормо-час от 1 100 руб для постгарантийных автомобилей и от 2400 руб. для автомобилей на гарантии</span>
              </li>
              <li class="xl-33">
                <i>
                  <svg class="icon icon-premser6">
                    <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-premser6"></use>
                  </svg>
                </i>
                <span>Программа «Мерседес-Бенц» Service Привилегия 3+ </span>
              </li>
              <li class="xl-33">
                <i>
                  <svg class="icon icon-premser7">
                    <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-premser7"></use>
                  </svg>
                </i>
                <span>Возможность отслеживать статус ремонта</span>
              </li>
            </ul>
          </div>
          <div class="lp-premser__bot-btn xl-30 lg-100">
            <a href="#feedback_modal" data-code="service"
               data-text="Получите индивидуальную консультацию нашего сервисного специалиста"
               class="btn btn--blue js-open-modal">Записаться на сервис</a>
          </div>
        </div>
      </div>
    </section>

    <section class="s-final-order">
      <div class="form-type3 form form--gold">
        <div class="form-type3__wrapper">
          <div class="form-type3__inner">

            <form id="form-issues" class="CKiForm">

              <input type="hidden" name="code" value="issues">


              <div class="title-40">У Вас есть вопросы
                        ?</div>
              <div class="form-type3__subtitle">Оставьте заявку, и менеджер Вам перезвонит</div>
              <div class="form-type3__narrow">
                <div class="form__input-wrapper js-label-fly">
                  <input type="text" data-callkeeper="person" class="form__input-text" id="form-issues-name"
                         name="name">
                  <label class="form__label-fly">Ваше имя</label>
                </div>
                <div class="form__input-wrapper js-label-fly">
                  <input type="tel" data-callkeeper="tel" class="form__input-text" id="form-issues-phone" name="phone">
                  <label class="form__label-fly">Ваш номер телефона</label>
                </div>
                <div class="form__input-wrapper">
                  <input type="checkbox" class="form__checkbox-input" id="form-issues-confirm" name="confirm" checked=""
                         onchange="confirmRequest('#form-issues')">
                  <label class="form__checkbox-label form__checkbox-label--small" for="form-issues-confirm">
                    Я согласен на обработку персональных данных.
                    <a href="https://sales.mercedes-orenburg.ru/politic/" target="_blank"
                       class="link-hover-border -color-gold -nowrap">С Политикой защиты данных </a>
                    ООО «Каскад-Авто»
                    ознакомлен.
                  </label>
                </div>
              </div>
              <button type="button" class="btn btn--blue-bd CKFormTrigger" onclick="sendRequest('#form-issues')">
                Заказать
                консультацию
              </button>
            </form>

          </div>
        </div>
      </div>
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

          <input type="hidden" name="page"
                 value="Mercedes-Benz - продажа новых автомобилей Mercedes-Benz в автоцентре Каскад-авто Mercedes в городе Оренбург"
                 data-page="Mercedes-Benz - продажа новых автомобилей Mercedes-Benz в автоцентре Каскад-авто Mercedes в городе Оренбург">

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
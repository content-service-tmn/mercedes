<?php namespace Processwire; ?>
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
            <div class="cd-nav__trigger"><span class="cd-nav__trigger-icon"></span></div>
          </div>
        </div>
        <div class="header__nav nav-class js-navigation-desktop">
          <?php include($config->paths->templates . "common/_navigation.php"); ?>
        </div>
        <div class="header__mobile cd-nav">
          <div class="cd-nav__inner">
            <div class="cd-nav__dealer">
              <a href="/contacts">Официальный дилер в Тюмени <span
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
                  <?php include($config->paths->templates . "common/_navigation.php"); ?>
              </div>
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
    <section class="product-promo">
      <div class="product-gallery product-gallery--promo">
        <div class="product-gallery__images owl-carousel">
            <?php foreach ($page->type_photos as $img): ?>
              <div class="product-gallery__image">
                <picture>
                  <source srcset="<?= $img->size(760, 320, [])->url ?>"
                          data-srcset="<?= $img->size(760, 320, [])->url ?>, <?= $img->size(760, 320, [])->url ?> 1.5x"
                          media="(max-width: 767px)">
                  <img src="<?= $img->url ?>"
                       data-srcset="<?= $img->url ?>"
                       alt="<?= $page->parent()->title . " " . $page->title ?>">
                </picture>
              </div>
            <?php endforeach; ?>
        </div>
        <div class="product-gallery__bottom">
          <div class="container">
            <h1 class="product-gallery__title">«Мерседес-Бенц» <?php $string = $page->title; $current = $page; while ($current->parent()->template != "layout_class"){$string = $current->parent()->title . " " . $string; $current = $current->parent();} echo $current->parent()->title . " ". $string; ?></h1>
            <div class="product-gallery__thumbs owl-carousel">
                <?php $i = 0;
                foreach ($page->type_photos as $img): ?>
                  <div class="product-gallery__thumb <?php if ($i == 0) echo 'is-active' ?> ">
                    <picture>
                      <source srcset="<?= $img->size(760, 320, [])->url ?>, <?= $img->size(110, 46, [])->url ?>, <?= $img->size(760, 320, [])->url ?>, <?= $img->size(220, 92, [])->url ?> 1.5x"
                              media="(max-width: 767px)">
                      <img src="<?= $img->size(760, 320, [])->url ?>, <?= $img->size(184, 77, [])->url ?>"
                           srcset="<?= $img->size(760, 320, [])->url ?>, <?= $img->size(368, 154, [])->url ?> 1.5x"
                           alt="<?= $page->parent()->title . " " . $page->title ?>">
                    </picture>
                  </div>
                    <?php $i++; endforeach ?>
            </div>
            <ul class="product-gallery__variants">
                <?php if (1): ?>
                    <?php foreach ($pages->find("template=layout_type|layout_type_amg, parent={$page->parent()->id}") as $child): ?>
                    <li <?php if ($child->id == $page->id): ?>class="is-active"<?php endif; ?>>
                      <a href="<?= $child->url ?>"><?= $child->title ?></a>
                    </li>
                    <?php endforeach; ?>
                <?php else: ?>
                    <?php foreach ($pages->find("template=layout_class, parent={$page->id}") as $child): ?>
                    <li <?php if ($child->id == $page->id): ?>class="is-active"<?php endif; ?>>
                      <a href="<?= $child->url ?>"><?= $child->title ?></a>
                    </li>
                    <?php endforeach; ?>
                <?php endif; ?>
            </ul>
          </div>
        </div>
      </div>
    </section>
    <section class="product-filters" data-min="15899722" data-max="15899722">
      <div class="container form">
        <form id="list-filter">
          <input type="hidden" name="model_id" value="15">
          <input type="hidden" name="amg" value="0">
          <div class="product-filters__inner row row-15">
            <!-- МОДЕЛЬ ДВИГАТЕЛЯ -->
            <div class="product-filters__item xl-50 md-100">
              <div class="product-filters__item-title">Модель:</div>
              <div class="product-filters__item-content">
                <div class="js-select-wrap select select--type1">
                  <select class="js-select" name="engine">
                    <option value="0">Все</option>
                      <?php foreach ($page->type_modifications as $modif): ?>
                        <option value="<?= $modif->modification_name ?>"><?= $modif->modification_name ?></option>
                      <?php endforeach; ?>
                  </select>
                </div>
              </div>
            </div>
            <!-- ЦВЕТ -->
            <div class="product-filters__item xl-50 md-100">
              <div class="product-filters__item-title">Цвет:</div>
              <div class="product-filters__item-content">
                  <?php
                  foreach ($page->parent("template=layout_class")->class_colors as $color): ?>
                    <div class="input-color">
                      <input type="checkbox" class="input-color__input" id="color-<?= $color->color_value ?>"
                             name="colors[]" value="<?= $color->color_value ?>">
                      <label class="input-color__label" for="color-<?= $color->color_value ?>"
                             style="background-color: <?= $color->color_value ?>">
                        <span class="input-color__label-title"><?= $color->color_name ?></span>
                      </label>
                    </div>
                  <?php endforeach; ?>
              </div>
            </div>
            <div class="product-filters__item xl-50 md-100">
              <div class="product-filters__item-title">Статус:</div>
              <div class="product-filters__item-content">
                <div class="product-filters__radio">
                  <input type="checkbox" class="form__checkbox-input" id="stock_status_yes" name="stock_status[yes]">
                  <label class="form__checkbox-label" for="stock_status_yes">В наличии</label>
                </div>
                <div class="product-filters__radio">
                  <input type="checkbox" class="form__checkbox-input" id="stock_status_no" name="stock_status[no]">
                  <label class="form__checkbox-label" for="stock_status_no">Скоро в продаже</label>
                </div>
              </div>
            </div>
            <!-- СТОИМОСТЬ -->
            <div class="product-filters__item product-filters__item--prices xl-50 md-100">
              <input type="hidden" name="price[min]" value="15899722">
              <input type="hidden" name="price[max]" value="15899722">
              <div class="product-filters__item-title">Стоимость:</div>
              <div class="product-filters__item-content product-filters__prices-wrap">
                <div class="range-slider">
                  <div class="range-slider__slider">
                    <input type="text" id="range-price">
                  </div>
                  <div class="range-slider__text" id="range-price-info"></div>
                </div>
              </div>
            </div>
            <div class="product-filters__close">
              <a href="javascript:void(0);" class="status-close js-filter-remove">
                <i>
                  <svg class="icon icon-close-mini">
                    <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-close-mini"></use>
                  </svg>
                </i>
                Отменить все фильтры
              </a>
            </div>
          </div>
        </form>
      </div>
    </section>
    <section class="s-product-main">
      <div class="container">
        <div id="list-content">
            <?php $count = $pages->find("template=layout_car, parent={$page->id}")->count(); ?>
          <div class="s-product-in-stock <?php if ($count == 0) echo "js-hidden"; ?>">
            <div class="s-product-in-stock__title">
              <span class="s-product-in-stock__big-title">Автомобили в продаже</span>
              <span class="s-product-in-stock__mini-title">Предложений по запросу: <?= $count ?></span>
            </div>
            <div class="s-product-in-stock__head">
              <div class="s-product-in-stock__head-item1">Модель</div>
              <div class="s-product-in-stock__head-item2">Описание</div>
              <div class="s-product-in-stock__head-item3">Цена</div>
            </div>


            <div>

                <?php foreach ($pages->find("template=layout_car, parent={$page->id}") as $car): ?>
                  <div class="product" <?php if (!$car->car_inStock) echo "data-not-available=\"1\""; else echo "data-not-available=\"0\"";
                  echo "data-color=\"{$car->car_color->color_value}\"";
                  echo "data-price=\"" . (($car->car_price != "")?$car->car_price:0) . "\"";
                  echo "data-model=\"{$car->car_modification->modification_name}\""
                  ?>>
                    <div class="product__name--m">
                      <p><?="Mercedes-Benz " . $car->car_modification->modification_name?></p>
                    </div>
                    <div class="product__image is-loaded">
                           <span href="javascript:void(0)" onclick="getModelInfo('<?= $car->car_id ?>', '<?= $car->url ?>');">

                              <img src="<?=  ($car->car_photos->count() > 0)?$car->car_photos->first()->url : $config->urls->templates . "assets/img/product-not-available.jpg" ?>"
                                   srcset="<?= ($car->car_photos->count() > 0)?$car->car_photos->first()->url : $config->urls->templates . "assets/img/product-not-available.jpg"?> 1.5x" alt="">

                             <div class="brazzers" style="opacity: 0;">
                                                    <div class="brazzers__thumbs">
                                                    </div>
                                                      <div class="brazzers__images">
                                                                                           <?php foreach ($car->car_photos as $photo): ?>
                                                                                             <img data-src="<?= $photo->size(225, 140, [])->url ?>"
                                                                                                  data-srcset="<?= $photo->size(250, 280, [])->url ?> 1.5x"
                                                                                                  alt="<?= $car->title ?>"
                                                                                                  src="<?= $photo->size(225, 140, [])->url ?>"
                                                                                                  srcset="<?= $photo->size(450, 280, [])->url ?> 1.5x"
                                                                                                  style="opacity: 0;">
                                                                                           <?php endforeach; ?>

                                                                                                            </div>
                             </div>

                           </span>
                    </div>
                    <a href="javascript:void(0);" class="product__info" onclick="getModelInfo('<?= $car->car_id ?>', '<?= $car->url ?>');">
                      <div class="product__info-item product__info-item1">
                        <div class="product__name">
                          <p><?="Mercedes-Benz " . $car->car_modification->modification_name?></p>
                        </div>
                        <div class="product__color-year">
                          <p><?= $car->car_color->color_name ?></p>
                        </div>
                        <div class="product__equipment">Комплектация</div>
                      </div>
                      <div class="product__info-item product__info-item2">
                        <p><b>Цвет:</b> <?= $car->car_color->color_name ?></p>
                        <p><b>Год выпуска: </b><?= $car->car_year ?></p>
                        <p><b>Мощность: </b><?= $car->car_modification->modification_power ?> л.с.</p>
                        <p><b>Тип топлива: </b> <?= $car->car_modification->modification_fuel ?></p>
                        <p><b>Салон: </b> <?= $car->car_interior ?></p>
                        <p><b>Привод: </b> <?= $car->car_modification->modification_gear ?></p>
                      </div>
                      <div class="product__info-item product__info-item3">
                        <p>
                          <span class=""><span><?= $car->car_price ?></span> ₽</span>
                        </p>
                        <p>
                          Специальное предложение:
                        </p>
                        <p>
                          <span class="price-new"><span><?= $car->car_price_special ?></span> ₽</span>
                        </p>
                      </div>
                    </a>
                    <div class="product__buttons">
                      <a href="#feedback_modal" data-code="best_price" data-order="<?= $car->car_id ?>"
                         data-info="<?= $car->car_title ?>"
                         data-text="Специально для Вас мы готовы сделать особое предложение!"
                         class="btn btn--blue js-open-modal">Хочу дешевле</a>
                      <a href="#feedback_modal" data-code="credit" data-order="<?= $car->car_id ?>"
                         data-info="<?= $car->car_title ?>"
                         data-text="Специально для Вас мы готовы рассчитать кредит на особых условиях"
                         class="btn btn--blue js-open-modal">Рассчитать кредит</a>
                      <a href="#feedback_modal" data-code="test-drive" data-order="<?= $car->car_id ?>"
                         data-info="<?= $car->car_title ?>"
                         data-text="Специально для Вас мы готовы рассчитать кредит на особых условиях"
                         class="btn btn--blue js-open-modal">Тест-драйв</a>
                    </div>
                  </div>
                <?php endforeach; ?>

            </div>


          </div>
          <div class="s-product-not-available <?php if ($count > 0) echo "js-hidden"; ?>">

            <div class="title-40 tac">К сожалению, выбранной модели нет в наличии</div>

            <div class="mb-20 tac">
              <img src="<?= $config->urls->templates . 'assets/img/product-not-available.jpg' ?>"
                   alt="К сожалению, выбранной модели нет в наличии">
            </div>

            <div class="mb-20 tac">
              Оставьте заявку и наш менеджер подберет или закажет для Вас подходящий автомобиль.
            </div>

            <form id="form-not-available" class="CKiForm">

              <input type="hidden" name="code" value="not_available">

              <input type="hidden" name="page" value="SL родстер">

              <div class="row row-15 s-product-not-available__form form">

                <div class="xl-33 sm-100">
                  <div class="form__input-wrapper js-label-fly">
                    <input type="text" data-callkeeper="person" class="form__input-text"
                           id="form-not-available-name" name="name">
                    <label class="form__label-fly" for="form-not-available-name">Ваше имя</label>
                  </div>
                </div>
                <div class="xl-33 sm-100">
                  <div class="form__input-wrapper js-label-fly">
                    <input type="tel" data-callkeeper="tel" class="form__input-text" id="form-not-available-phone"
                           name="phone">
                    <label class="form__label-fly" for="form-not-available-phone">Ваш номер
                      телефона</label>
                  </div>
                </div>
                <div class="form__input-wrapper">
                  <input type="checkbox" class="form__checkbox-input" id="form-not-available-confirm" name="confirm"
                         checked="" onchange="confirmRequest('#form-not-available')">
                  <label class="form__checkbox-label form__checkbox-label--small" for="form-not-available-confirm">
                    Я согласен на обработку персональных данных. <br>
                    <a target="_blank" href="/privacy"
                       class="link-hover-border -color-blue -nowrap">
                      С Политикой защиты данных </a>
                    ООО «<?= $pages->get("template=layout_contacts")->contacts_company_name ?>»
                    ознакомлен.
                  </label>
                </div>
                <div class="xl-33 sm-100">
                  <button type="button" class="btn btn--blue CKFormTrigger"
                          onclick="sendRequest('#form-not-available')">Получить предложение
                  </button>
                </div>
              </div>
            </form>

          </div>
        </div>
        <div class="form-type1 form form--black">
          <div class="title-40">Получите индивидуальное предложение</div>
          <form id="form-individual-offer" data-caption="Получите индивидуальное предложение" class="CKiForm">
            <input type="hidden" name="code" value="individual_offer">
            <input type="hidden" name="page" value="«Мерседес-Бенц» <?= $page->parent()->title . " " . $page->title ?>">
            <div class="form-type1__inner row">
              <div class="form-type1__text xl-50 lg-100">Если вас заинтересовало данное предложение, Вы можете
                связаться с нами по телефону
                <a href="tel:<?= phoneLink($pages->get("template=layout_contacts")->contacts_phone) ?>"
                   class="form-type1__phone"><?= $pages->get("template=layout_contacts")->contacts_phone ?></a> или
                оставить заявку, заполнив
                форму. Наш
                менеджер свяжется с вами.
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
                    <label class="form__label-fly" for="form-individual-offer-phone">Ваш номер
                      телефона</label>
                  </div>
                </div>
                <div class="form-type1__form-item">
                  <div class="form__input-wrapper">
                    <input type="checkbox" class="form__checkbox-input" id="form-individual-offer-confirm"
                           name="confirm" checked="" onchange="confirmRequest('#form-individual-offer')">
                    <label class="form__checkbox-label form__checkbox-label--small" for="form-individual-offer-confirm">
                      Я согласен на обработку персональных данных.
                      <a href="/privacy" target="_blank"
                         class="link-hover-border -color-blue -nowrap">С Политикой защиты
                        данных </a>
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
    <section class="prd-specifications">
      <div class="container">
        <div class="prd-specifications__title title-40">Двигатели и технические характеристики

        </div>
        <div class="specifications-table">
            <?php $count = $page->type_modifications->count();
            foreach ($page->type_modifications as $i => $modif): if ($i < 2): ?>
              <div class="specifications-table__item row row-15">
                <div class="xl-30 xs-100">
                  <div class="mb-20">
                    <div class="specifications-table__title"><?= $modif->modification_name ?></div>
                    <div>Тип топлива <?= $modif->modification_fuel ?></div>
                  </div>
                  <div class="mb-20">
                    <div class="specifications-table__desc">Мощность</div>
                    <div class="specifications-table__title"><?= $modif->modification_power ?> л.с.</div>
                  </div>
                </div>
                <div class="xl-40 xs-100">
                  <div class="mb-20">
                    <div class="specifications-table__desc">Номинальная мощность</div>
                    <div class="specifications-table__title"><?= $modif->modification_power_rated ?></div>
                  </div>
                  <div class="mb-20">
                    <div class="specifications-table__desc">Рабочий объем</div>
                    <div class="specifications-table__title"><?= $modif->modification_amount ?> см<sup>3</sup></div>
                  </div>
                </div>
                <div class="xl-30 xs-100">
                  <div class="mb-20">
                    <div class="specifications-table__desc">Расположение и количество цилиндров</div>
                    <div class="specifications-table__title"><?= $modif->modification_cylinders ?></div>
                  </div>
                  <div class="mb-20">
                    <div class="specifications-table__desc">Расход топлива смешанный</div>
                    <div class="specifications-table__title"><?= $modif->modification_consumption ?></div>
                  </div>
                </div>
              </div>
            <?php endif; endforeach; ?>
            <?php if ($count > 2): ?>
              <a href="#" class="expand-btn">Развернуть</a>
              <div class="expand-box">
                  <?php foreach ($page->type_modifications as $i => $modif): if ($i >= 2): ?>
                    <div class="specifications-table__item row row-15">
                      <div class="xl-30 xs-100">
                        <div class="mb-20">
                          <div class="specifications-table__title"><?= $modif->class_name ?></div>
                          <div>Тип топлива <?= $modif->modification_fuel ?></div>
                        </div>
                        <div class="mb-20">
                          <div class="specifications-table__desc">Мощность</div>
                          <div class="specifications-table__title"><?= $modif->modification_power ?> л.с.</div>
                        </div>
                      </div>
                      <div class="xl-40 xs-100">
                        <div class="mb-20">
                          <div class="specifications-table__desc">Номинальная мощность</div>
                          <div class="specifications-table__title"><?= $modif->modification_power_rated ?></div>
                        </div>
                        <div class="mb-20">
                          <div class="specifications-table__desc">Рабочий объем</div>
                          <div class="specifications-table__title"><?= $modif->modification_amount ?></div>
                        </div>
                      </div>
                      <div class="xl-30 xs-100">
                        <div class="mb-20">
                          <div class="specifications-table__desc">Расположение и количество цилиндров</div>
                          <div class="specifications-table__title"><?= $modif->modification_cylinders ?></div>
                        </div>
                        <div class="mb-20">
                          <div class="specifications-table__desc">Расход топлива смешанный</div>
                          <div class="specifications-table__title"><?= $modif->modification_consumption ?></div>
                        </div>
                      </div>
                    </div>
                  <?php endif; endforeach; ?>
              </div>
            <?php endif; ?>
        </div>
      </div>
    </section>
  </main>

</div>

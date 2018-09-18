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
                <?php foreach ($pages->find("parent=catalog") as $category): ?>
                  <li>
                    <a href="<?= $pages->find("template=layout_class, parent={$category->id}")->first()->url ?>"><?= $category->title ?></a>
                    <ul>
                        <?php foreach ($pages->find("parent={$category->id}") as $pge): ?>
                          <li><a href="<?= $pge->url ?>"><?= $pge->title ?></a></li>
                        <?php endforeach; ?>
                    </ul>
                  </li>
                <?php endforeach; ?>
              <li><a href="" class="is-parent">Коммерческий транспорт</a></li>
              <li><a href="" class="is-parent">Сервисное обслуживание</a></li>
              <li><a href="" class="is-parent">Оригинальные запасные части и аксессуары</a></li>
              <li><a href="" class="is-parent">Mercedes Benz Financial</a></li>
              <li><a href="" class="is-parent">Преимущества для покупателей из других регионов</a></li>
            </ul>
          </div>
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
            <?php foreach ($page->benefitsWithPic as $benifit): ?>
              <div class="lp-premser__item xl-50">
                <div class="premser">
                  <div class="premser__top">
                    <div class="premser__image">
                      <img src="<?= $benifit->benefit_image->url ?>"
                           alt="Бутик аксессуаров">
                    </div>
                    <div class="premser__title"><?= $benifit->benefit_title ?></div>
                    <div class="premser__square">
                      <i></i>
                      <i></i>
                      <i></i>
                      <i></i>
                    </div>
                  </div>
                  <div class="premser__text"><?= $benifit->benefit_description ?></div>
                </div>
              </div>
            <?php endforeach; ?>
        </div>
        <div class="title-40">Преимущества сервиса</div>
        <div class="lp-premser__bottom">
          <div class="lp-premser__bot-left-нет xl-70 lg-100">
            <ul class="lp-premser__list row row-15">
                <?php $i=1; foreach ($page->benefits as $benefit): ?>
                  <li class="xl-33">
                    <i>
                      <svg class="icon icon-premser<?=$i?>">
                        <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-premser<?=$i?>"></use>
                      </svg>
                    </i>
                    <span><?=$benefit->benefit_description?></span>
                  </li>
                <?php $i++; if ($i==5) $i++; endforeach; ?>
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
    <section class="lp-premser">
      <div class="container">
        <div class="title-40">Преимущества для покупателей из других городов</div>
        <div class="lp-premser__bottom">
          <div class="lp-premser__bot-left-нет xl-70 lg-100">
            <ul class="lp-premser__list row row-15">
              <li class="xl-33">
                <i>
                  <svg class="icon icon-premser1">
                    <use xlink:href="<?= $config->urls->templates . 'assets/img/benefits.svg' ?>#1"></use>
                  </svg>
                </i>
                <span>Онлайн-запись <br>на сервис 24 часа</span>
              </li>
              <li class="xl-33">
                <i>
                  <svg class="icon icon-premser2">
                    <use xlink:href="<?= $config->urls->templates . 'assets/img/benefits.svg' ?>#2"></use>
                  </svg>
                </i>
                <span>Персональный консультант</span>
              </li>
              <li class="xl-33">
                <i>
                  <svg class="icon icon-premser3">
                    <use xlink:href="<?= $config->urls->templates . 'assets/img/benefits.svg' ?>#3"></use>
                  </svg>
                </i>
                <span>Обслуживание без ожидания и очередей</span>
              </li>
            </ul>
          </div>
          <div class="lp-premser__bot-btn xl-30 lg-100">
            <a href="#feedback_modal" data-code="service"
               data-text="Получите индивидуальную консультацию нашего сервисного специалиста"
               class="btn btn--blue js-open-modal">Узнать подробности</a>
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

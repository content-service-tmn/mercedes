<?php namespace Processwire; ?>
<?php
bd($page->path);
?>
<?php $info = getCarInfo($pages, $_REQUEST["order_id"]);
$codes = []/*getAccessories($pages)*/
; ?>

<div id="product_modal" class="product-modal modal-template">

  <div class="product-modal__head"><?= $info["title"] ?></div>

  <div class="product-gallery product-gallery--modal">


    <div class="product-gallery__images owl-carousel">
        <?php foreach ($info["car_photos"] as $photo): ?>
          <div class="product-gallery__image">
            <picture>
              <img src="<?= $photo->url ?>">
            </picture>
          </div>
        <?php endforeach; ?>
    </div>

    <div class="product-gallery__modal-bottom">
      <div class="product-gallery__thumbs">
          <?php foreach ($info["car_photos"] as $i => $photo): ?>
            <div class="product-gallery__thumb <?php if ($i == 0) echo 'is-active' ?>">
              <picture>
                <img src="<?= $photo->url ?>">
              </picture>
            </div>
          <?php endforeach; ?>
      </div>
    </div>


  </div>

  <div class="product-modal__content">
    <div class="product-modal__box1">

      <div class="product-modal__title"><?= $info["title"] ?></div>

      <div class="product-modal__price">Данный автомобиль: <b><span><?= $info["car_price"] ?></span> ₽</b></div>
      <div class="product-modal__spec-price">Специальное предложение:
        <b><span><?= $info["car_special_proposal"] ?></span> ₽</b></div>
      <!--<div class="product-modal__credit-title">
        <span>В кредит:</span>
      </div>
      <div class="product-modal__credit-info">
        <p>Первоначальный взнос от <span>1 068 345</span> ₽</p>
        <p>Ежемесячный платеж от <span>80 644</span> ₽</p>
      </div>-->

      <div class="product-modal__title-18">Описание</div>
      <ul class="product-modal__desc-table">
          <?php foreach ($info as $key => $value): if ($value != null): ?>
            <li>
              <span><?= $key ?></span>
              <span><?= $value ?></span>
            </li>
          <?php endif; endforeach; ?>
      </ul>
    </div>

    <div class="product-modal__box2">
      <div class="form-type2 form">
        <div class="form-type2__head custom-form-head">Получить лучшее предложение</div>
        <div class="form-type2__body">
          <form id="form-best-offer" class="CKiForm">

            <input type="hidden" name="code" value="best_offer">
            <input type="hidden" name="order_id" value="<?= $info["car_id"] ?>">
            <input type="hidden" name="page" value="<?= $info["title"] ?>">

            <div class="form__input-wrapper js-label-fly">
              <input type="text" type="text" data-callkeeper="person" class="form__input-text" id="form-best-offer-name"
                     name="name">
              <label class="form__label-fly">Ваше имя</label>
            </div>
            <div class="form__input-wrapper js-label-fly">
              <input type="tel" type="text" data-callkeeper="tel" class="form__input-text" id="form-best-offer-phone"
                     name="phone">
              <label class="form__label-fly">Ваш номер телефона</label>
            </div>
            <div class="form__input-wrapper">
              <input class="form__checkbox-input" type="checkbox" id="form-best-offer-confirm" name="confirm" checked
                     onchange="confirmRequest('#form-best-offer')">
              <label class="form__checkbox-label form__checkbox-label--small" for="form-best-offer-confirm">Я согласен
                на обработку персональных данных.
                <a href="https://sales.mercedes-orenburg.ru/politic/" target="_blank"
                   class="link-hover-border -color-blue -nowrap">С Политикой защиты данных </a>
                ООО «<?=$pages->get("template=layout_contacts")->contacts_company_name?>»
                ознакомлен.
              </label>
            </div>
            <button type="button" class="btn btn--blue CKFormTrigger"
                    onclick="sendRequest('#form-best-offer', '<?= $info["car_id"] ?>')">Отправить
            </button>
          </form>
        </div>
      </div>


      <div class="product-modal__credit-title">
        <span>В кредит:</span>
      </div>
      <div class="product-modal__credit-info">
        <p>Первоначальный взнос от <span>1 068 345</span> ₽</p>
        <p>Ежемесячный платеж от <span>80 644</span> ₽</p>
      </div>
      <div class="product-modal__button custom-button-margin">
        <a href="#feedback_modal"
           data-code="credit"
           data-back="<?= $info["car_id"] ?>"
           data-order="<?= $info["car_id"] ?>"
           data-info="<?= $info["title"] ?>t"
           data-text="Получите индивидуальную консультацию нашего финансового специалиста"
           class="btn btn--blue js-open-modal">Купить в кредит</a>
      </div>
      <div class="product-modal__button">
        <a href="#feedback_modal"
           data-code="credit"
           data-back="0852407636"
           data-order="0852407636"
           data-info="CLS 350 d 4MATIC Sport"
           data-text="Получите индивидуальную консультацию нашего финансового специалиста"
           class="btn btn--blue js-open-modal">Купить в трейд-ин</a>
      </div>
      <div class="form-type2 form">
        <div class="form-type2__head">Контакты автосалона</div>
        <div class="form-type2__body">
          <p>
            <b><?=$pages->get("template=layout_contacts")->contacts_address?></b>
          </p>
          <p>
            <b>Время работы дилерского центра:</b>
            <br>
            <b>пн-сб</b> с 9-00 до 19-30
            <br>
            <b>вс</b> с 10-00 до 19-30 </p>
          <p>
            <b>Телефон:</b>
            <br>
            <a href="tel:<?=phoneLink($pages->get("template=layout_contacts")->contacts_phone)?>"><?=$pages->get("template=layout_contacts")->contacts_phone?></a>
          </p>
        </div>
      </div>
    </div>

  <div class="product-modal__box3">
    <div class="product-modal__title-18">Комплектация</div>

    <div class="product-modal__print">
      <a class="-color-blue link-with-border"
         href="https://sales.mercedes-orenburg.ru/index.php?route=car/model/printInfo&amp;order_id=<?= $info["car_id"] ?>"
         target="_blank">
        <b>Распечатать</b>
      </a>
    </div>

    <ul class="product-modal__char-table">
        <?php foreach (explode(",", $info["car_accessories"]) as $cde): if (isset($codes[$cde])): ?>
          <li>
            <span><?= $cde ?></span>
            <span><?= $codes[$cde] ?></span>
          </li>
        <?php endif; endforeach; ?>
    </ul>

    <div class="product-modal__footer">

      <div class="xl-60 sm-100 product-modal__footer-left">
        <div class="product-modal__price">Данный автомобиль: <b><span><?= $info["car_price"] ?></span> ₽</b></div>
        <div class="product-modal__price">Ваше преимущество: <b><span><?= $info["car_price"] ?></span> ₽</b></div>
        <div class="product-modal__spec-price">Специальное предложение:
          <b><span><?= $info["car_special_proposal"] ?></span> ₽</b></div>
      </div>


      <div class="xl-40 sm-100 product-modal__footer-right">
        <div class="mb-10">
          <a href="#feedback_modal"
             data-code="equipment"
             data-back="<?= $info["car_id"] ?>"
             data-order="<?= $info["car_id"] ?>"
             data-text="Индивидуальные условия на покупку нового автомобиля для Вас. Перезвоним Вам и ответим на все вопросы."
             class="-color-blue link-with-border js-open-modal">
            <b>Отправить на email</b>
          </a>
        </div>
        <div class="mb-10">
          <a href="#feedback_modal"
             data-code="equipment"
             data-back="<?= $info["car_id"] ?>"
             data-order="<?= $info["car_id"] ?>"
             data-text="Индивидуальные условия на покупку нового автомобиля для Вас. Перезвоним Вам и ответим на все вопросы."
             class="-color-blue link-with-border js-open-modal">
            <b>Подобрать свою комплектацию</b>
          </a>
        </div>
        <div class="mb-10">
          <a href="https://sales.mercedes-orenburg.ru/index.php?route=car/model/printInfo&amp;order_id=<?= $info["car_id"] ?>"
             class="-color-blue link-with-border" target="_blank">
            <b>Распечатать</b>
          </a>
        </div>
      </div>
      <div class="xl-90 md-90 sm-100 product-modal__footer-buttons">
        <a href="#feedback_modal"
           data-code="best_price"
           data-back="<?= $info["car_id"] ?>"
           data-order="<?= $info["car_id"] ?>"
           data-info="<?= $info["title"] ?>"
           data-text="Специально для Вас мы готовы сделать особое предложение!"
           class="btn btn--blue js-open-modal">Хочу дешевле</a>
        <a href="#feedback_modal"
           data-code="best_price"
           data-back="<?= $info["car_id"] ?>"
           data-order="<?= $info["car_id"] ?>"
           data-info="<?= $info["title"] ?>"
           data-text="Получите индивидуальную консультацию нашего финансового специалиста"
           class="btn btn--blue js-open-modal">Купить в кредит</a>
         <a href="#feedback_modal"
            data-code="best_price"
            data-back="<?= $info["car_id"] ?>"
            data-order="<?= $info["car_id"] ?>"
            data-info="<?= $info["title"] ?>"
            data-text="Специально для Вас мы готовы сделать особое предложение!"
            class="btn btn--blue js-open-modal">С пробегом</a>
      </div>
    </div>
  </div>

</div>


<div class="product-modal__bottom-form">
  <div class="form-type3 form">
    <div class="form-type3__wrapper">
      <div class="form-type3__inner">
        <div class="title-40">У Вас есть вопросы
                  ?</div>
        <div class="form-type3__subtitle">Оставьте заявку, и менеджер Вам перезвонит</div>

        <form id="form-issues-modal" class="CKiForm">

          <input type="hidden" name="code" value="issues">
          <input type="hidden" name="order_id" value="<?= $info["car_id"] ?>">
          <input type="hidden" name="page" value="<?= $info["title"] ?>">

          <div class="form-type3__narrow">
            <div class="form__input-wrapper js-label-fly">
              <input type="text" data-callkeeper="person" class="form__input-text" id="form-issues-modal-name"
                     name="name">
              <label class="form__label-fly" for="form-issues-modal-name">Ваше имя</label>
            </div>
            <div class="form__input-wrapper js-label-fly">
              <input type="tel" data-callkeeper="tel" class="form__input-text" id="form-issues-modal-phone"
                     name="phone">
              <label class="form__label-fly" for="form-issues-modal-phone">Ваш номер телефона</label>
            </div>
            <div class="form__input-wrapper">
              <input type="checkbox" class="form__checkbox-input" id="form-issues-modal-confirm" name="confirm"
                     checked onchange="confirmRequest('#form-issues-modal')">
              <label class="form__checkbox-label form__checkbox-label--small" for="form-issues-modal-confirm">
                Я согласен на обработку персональных данных.
                <a href="https://sales.mercedes-orenburg.ru/politic/" target="_blank"
                   class="link-hover-border -color-blue -nowrap">С Политикой защиты данных </a>
                ООО «<?=$pages->get("template=layout_contacts")->contacts_company_name?>»
                ознакомлен.
              </label>
            </div>
          </div>

          <button type="button" class="btn btn--blue CKFormTrigger"
                  onclick="sendRequest('#form-issues-modal', '<?= $info["car_id"] ?>')">Заказать консультацию
          </button>

        </form>
      </div>
    </div>
  </div>
</div>

<script>

    var pp_gallery = $(".mfp-wrap .product-gallery__images");
    var pp_thumbs = $(".mfp-wrap .product-gallery__thumbs");

    pp_gallery.owlCarousel({
        margin: 0,
        lazyLoad: true,
        nav: true,
        dots: true,
        items: 1,
        navText: [,]
    });

    if (parseInt(pp_thumbs.find('.product-gallery__thumb').length) > 6) {
        pp_thumbs.addClass('owl-carousel').owlCarousel({
            margin: 20,
            nav: true,
            navText: [,],
            dots: false,
            items: 6,
            responsive: {
                0: {
                    margin: 6
                },
                768: {
                    margin: 20
                }
            }
        });
    }

    //НАВИГАЦИЯ К СЛАЙДЕРУ
    // от навигации к изображениям
    pp_thumbs.find('.product-gallery__thumb').on('click', function (event) {
        var index;
        // ПРОВЕРЯЕМ ЯВЛЯЕТСЯ ЛИ НАВИГАЦИЯ OWL КАРУСЕЛЬЮ
        if ($(this).parent().hasClass("owl-item")) {
            index = $(this).parent().index();
        }
        else {
            index = $(this).index();
        }
        pp_gallery.trigger('to.owl.carousel', index);
        pp_thumbs.find('.product-gallery__thumb').removeClass('is-active');
        $(this).addClass('is-active');
    });

    // от изображений к навигации
    pp_gallery.on('changed.owl.carousel', function (e) {

        pp_thumbs.find('.product-gallery__thumb').removeClass('is-active');
        pp_thumbs.find('.product-gallery__thumb').eq(e.item.index).addClass('is-active');

        if (pp_thumbs.is('.owl-carousel')) {
            var arr = [], min_arr, max_arr;

            $('.active > .product-gallery__thumb').each(function () {
                arr.push($(this).parent().index())
            });

            min_arr = arr[0];
            max_arr = arr[3];

            if (e.item.index > max_arr) {
                pp_thumbs.find('.product-gallery__thumb').trigger('next.owl.carousel');
            }
            if (e.item.index < min_arr) {
                pp_thumbs.find('.product-gallery__thumb').trigger('prev.owl.carousel');
            }
        }
    });
</script>


</div>

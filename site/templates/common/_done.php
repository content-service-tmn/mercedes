<?php namespace Processwire;
if (!isset($templateRender)) {
    return;
} ?>

<?php if ($config->ajax): ?>
    <?= $templateRender; ?>
<?php else:
    $contacts_page = $pages->get("template=layout_contacts");
    ?>


  <!DOCTYPE html>
  <html lang="ru">
  <head>
      <?php include_once($config->paths->templates . "common/_head.php"); ?>
  </head>

  <body class="no-touch" data-route="<?= $page->template->name; ?>">


  <?= $templateRender; ?>

  <?php if ($page->template == "layout_home" || $page->template == "layout_class"): ?>
    <section class="lp-credit">
      <div class="container">

        <div class="title-40">Кредитные и лизинговые программы</div>
        <a href="javascript:void(0);" class="expand-btn">Развернуть</a>

        <div class="expand-box">
          <div class="row row-15">
              <?php foreach ($pages->get(1)->credit_and_leasing as $cal): ?>
                <div class="xl-50 md-100">
                  <div class="lp-credit__title"><?= $cal->credit_and_leasing_title ?></div>
                  <ul>
                      <?php foreach ($cal->credit_and_leasing_content as $row): ?>
                        <li><?= $row->point ?></li>
                      <?php endforeach; ?>
                  </ul>
                </div>
              <?php endforeach; ?>
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
              <div class="tradein-form__inner xl-70 sm-100">
                <div class="tradein-form__item">
                  <input type="tel" data-callkeeper="tel" class="form__input-text" name="phone" placeholder="Телефон">
                </div>
              </div>
              <div class="tradein-form__button xl-30 sm-100">
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
                <a href="/privacy" target="_blank"
                   class="link-hover-border -color-gold -nowrap">С Политикой защиты данных </a>
                ООО «<?= $contacts_page->contacts_company_name ?>»
                ознакомлен.
              </label>
            </div>
          </form>
        </div>
      </div>
    </section>

    <section class="lp-testdrive">

      <div class="lp-testdrive__left-img">
        <img src="<?= $config->urls->templates . 'assets/img/testdrive.png' ?>" alt="Запись на тест-драйв">
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
                  <a href="/privacy" target="_blank"
                     class="link-hover-border -color-gold -nowrap">С Политикой защиты данных </a>
                  ООО «<?= $contacts_page->contacts_company_name ?>»
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
            <?php foreach ($pages->get("id=1")->benefitsWithPic as $benifit): ?>
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
        <div id="benefits" class="title-40 anchor">Преимущества сервиса</div>
        <div class="lp-premser__bottom">
          <div class="lp-premser__bot-left-нет xl-70 lg-100">
            <ul class="lp-premser__list row row-15">
                <?php $i = 1;
                foreach ($pages->get("id=1")->benefits as $benefit): ?>
                  <li class="xl-33">
                    <i>
                      <svg class="icon icon-premser<?= $i >= 5 ? $i + 1 : $i ?>">
                        <use xlink:href="<?= $config->urls->templates . 'assets/img/spr.svg' ?>#<?= $i ?>"></use>
                      </svg>
                    </i>
                    <span><?= $benefit->benefit_description ?></span>
                  </li>
                    <?php $i++; endforeach; ?>
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
    <section id="benefits-foreign" class="lp-premser">
      <div class="container">
        <div class="title-40">Преимущества для покупателей из других городов</div>
        <div class="lp-premser__bottom">
          <div class="lp-premser__bot-left-нет xl-70 lg-100">
            <ul class="lp-premser__list row row-15">
                <?php foreach ($pages->get(1)->foreigners_benefits as $i => $benefit): ?>
                  <li class="xl-33">
                    <i>
                      <svg class="icon icon-premser<?= $i + 1 ?>">
                        <use xlink:href="<?= $config->urls->templates . 'assets/img/benefits.svg' ?>#<?= $i + 1 ?>"></use>
                      </svg>
                    </i>
                    <span><?= $benefit->foreigners_benefit ?></span>
                  </li>
                <?php endforeach; ?>
            </ul>
          </div>
          <div class="lp-premser__bot-btn xl-30 lg-100">
            <a href="#feedback_modal" data-code="foreigners"
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
                    <a href="/privacy" target="_blank"
                       class="link-hover-border -color-gold -nowrap">С Политикой защиты данных </a>
                    ООО «<?= $contacts_page->contacts_company_name ?>»
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
  <?php endif; ?>
  <section class="custom-contacts">
    <div class="container">
      <h2 class="custom-contacts__heading">Контакты</h2>
      <div class="custom-contacts__grid">
        <div class="custom-contacts__cell">
          <div class="custom-contacts__item"
        style="background-image:url(<?= $config->urls->templates . 'assets/img/placeholder.svg' ?>)">
              <?= $pages->get("template=layout_contacts")->contacts_address ?>
          </div>
        </div>
        <div class="custom-contacts__cell">
          <div class="custom-contacts__item"
               style="background-image:url(<?= $config->urls->templates . 'assets/img/smartphone.svg' ?>)">
            <p>Новые автомобили: <a
                      href="<?= phoneLink($contacts_page->contacts_phone) ?>"><?= $contacts_page->contacts_phone ?></a>
            </p>
              <?php if ($contacts_page->contacts_service_phone != ""): ?>
                <p>Сервис: <a
                          href="<?= phoneLink($contacts_page->contacts_service_phone) ?>"><?= $contacts_page->contacts_service_phone ?></a>
                </p>
              <?php endif; ?>
              <?php if ($contacts_page->contacts_gear_phone != ""): ?>
                <p>Запчасти: <a
                          href="<?= phoneLink($contacts_page->contacts_gear_phone) ?>"><?= $contacts_page->contacts_gear_phone ?></a>
                </p>
              <?php endif; ?>
            <p>Email: <a href="mailto:<?= $contacts_page->contacts_email ?>"
                         target="_blank"><?= $contacts_page->contacts_email ?></a></p>
          </div>
        </div>
        <div class="custom-contacts__cell">
          <div class="custom-contacts__item"
               style="background-image:url(<?= $config->urls->templates . 'assets/img/clock.svg' ?>)">
              <?php foreach ($contacts_page->contacts_working_hours as $row): ?>
                <b><?= $row->days ?></b> <?= $row->hours ?>
                <br>
              <?php endforeach; ?>

          </div>
        </div>
      </div>
      <div class="custom-contacts__socials">
          <?php if ($contacts_page->contacts_vk != ""): ?>
            <a href="<?=$contacts_page->contacts_vk?>" class="custom-contacts__social custom-contacts__social_vk"></a>
          <?php endif; ?>
          <?php if ($contacts_page->contacts_facebook != ""): ?>
            <a href="<?=$contacts_page->contacts_facebook?>" class="custom-contacts__social custom-contacts__social_fb"></a>
          <?php endif; ?>
          <?php if ($contacts_page->contacts_youtube != ""): ?>
            <a href="<?=$contacts_page->contacts_youtube?>" class="custom-contacts__social custom-contacts__social_yt"></a>
          <?php endif; ?>
          <?php if ($contacts_page->contacts_google != ""): ?>
            <a href="<?=$contacts_page->contacts_google?>" class="custom-contacts__social custom-contacts__social_gg"></a>
          <?php endif; ?>

      </div>
    </div>
  </section>
  <section class="custom-map__wrapper">
    <section class="custom-map" id="map">
    </section>
    <a href="" target="_blank" class="custom-map__link"></a>
  </section>
  <section class="footer">
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
                <a href="/contacts/">О нас</a>
              </li>
              <li>
                <a href="/contacts/#a-contacts">Контакты</a>
              </li>
              <li>
                <a href="/contacts/#a-contacts">Схема проезда</a>
              </li>
              <li>
                <a href="/contacts/#a-managers">Ваши менеджеры</a>
              </li>
            </ul>
          </div>
          <div class="footer__contacts xl-85 sm-100">
            <div class="footer__contacts-title">ООО «<?=$contacts_page->contacts_company_name?>»</div>
            <div class="footer__contacts-item">
              <div class="footer__contacts-mini-title">Фактический адрес:</div>
              <div><?= $contacts_page->contacts_address ?></div>
            </div>
            <div class="footer__contacts-item">
              <div class="footer__contacts-mini-title">Телефон:</div>
              <div>
                <a href="tel:<?= phoneLink($contacts_page->contacts_phone) ?>"><?= $contacts_page->contacts_phone ?></a>
              </div>
            </div>
            <div class="footer__contacts-item">
              <div class="footer__contacts-mini-title">E - mail
                :</div>
              <div><a href="mailto:<?= $contacts_page->contacts_email ?>"
                      target="_blank"><?= $contacts_page->contacts_email ?></a></div>
            </div>
          </div>
          <div class="footer__soc xl-15 sm-100">
            <a href="<?=$contacts_page->contacts_facebook?>" class="footer__soc-btn" target="_blank">
              <svg class="icon icon-fb">
                <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-fb"></use>
              </svg>
            </a>
            <a href="<?=$contacts_page->contacts_instagram?>" class="footer__soc-btn" target="_blank">
              <svg class="icon icon-inst">
                <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-inst"></use>
              </svg>
            </a>
          </div>
        </div>
      </div>
    </footer>
  </section>

  <noindex>
    <svg style="position: absolute; top: 0; left: 0; width: 0; height: 0;">
      <linearGradient id="linear-gradient" x1="50%" y1="0%" x2="50%" y2="100%">
        <stop offset="0%" stop-color="#9caab5"></stop>
        <stop offset="100%" stop-color="#2e2f31"></stop>
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
          <div class="tac mb-20">
            Вы можете связаться с нами по
            телефону
            <div><a href="tel:<?= phoneLink($contacts_page->contacts_phone) ?>"
                    class="-color-blue"><?= ($contacts_page->contacts_phone) ?></a></div>
            или оставить заявку, заполнив форму. <br> Наш менеджер свяжется с вами.
          </div>
        </div>
        <form id="form-modal" class="js-enter CKiForm">
          <input type="hidden" name="code">
          <input type="hidden" name="order_id">
          <input type="hidden" name="page">
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
                                                                href="/privacy"
                                                                class="link-hover-border -color-blue -nowrap">
                  С Политикой защиты данных </a>
                ООО «<?= $contacts_page->contacts_company_name ?>»
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
      <a href="tel:<?= phoneLink($contacts_page->contacts_phone) ?>"
         class="bottom-plank__phone-icon">
        <svg class="icon icon-success">
          <use xlink:href="<?= $config->urls->templates . 'assets/img/sprite.svg' ?>#icon-telephone"></use>
        </svg>
      </a>
      <a href="#feedback_modal" class="btn btn--white js-open-modal">Заказать звонок</a>
      <a href="tel:<?= phoneLink($contacts_page->contacts_phone) ?>"
         class="btn btn--white bottom-plank__phone-btn">
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

  <script src="<?= $config->urls->templates . 'assets/js/script.js' ?>"></script>
  <script src="<?= $config->urls->templates . 'assets/js/template.js' ?>"></script>
  <script type="text/javascript">
      function initMap() {
          var coordinates = {lat: 57.1419482, lng: 65.5986856},
              options = {
                  zoom: 16,
                  disableDefaultUI: true,
                  center: coordinates,
                  draggable: !("ontouchend" in document)
              };
          var map = new google.maps.Map(document.getElementById('map'), options);
          $.getJSON('<?= $config->urls->templates . 'assets/json/google-map.json'?>', function (data) {
              map.setOptions({styles: data});
          });
          new google.maps.Marker({map: map, position: coordinates});
      }
  </script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDz-fa3z3jDQhfL6rwyNt3DEJ3XHbyoUHk&callback=initMap"
          async></script>
  </body>

  </html>

<?php endif; ?>

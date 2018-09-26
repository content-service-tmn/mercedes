<?php
namespace Processwire;
if ($config->ajax) {
    function getValue($code){
        $ruCodes = ["credit_and_leasing" => "Кредит и лизинг", "service" => "Сервис", "best_offer" => "Лучшее предложение",
            "consultation" => "Консультация", "credit" => "Кредит", "trade_in" => "Трейд ин", "test-drive" => "Тест драйв",
            "individual" => "Индивидуальное предложение", "best_price" => "Лучшая цена", "test_drive" => "Тест драйв",
            "issues" => "Задать вопрос", "foreigners"=>"Покупатель из другого города", "individual_offer" => "Индивидуальное предложение"];
        if (isset($ruCodes[$code])){
            return $ruCodes[$code];
        } else {
            return $code;
        }
    }
    bd($_REQUEST);
    $keys = ["code" => "Запрос на", "phone" => "Телефон", "page" => "Страница", "name" => "Имя", "order_id" => "Номер заказа", "model" => "Модель автомобиля"];
    $m = $mail->new();
    $m->to($page->ajax_email_for_callback);
    $m->from('bot@contentservice.agency')
        ->fromName("Mercedes Site")
        ->subject('Обращение с сайта');
    $messageBody = "Новая заявка с сайта: \r\n";
    if (isset($_REQUEST["confirm"]) && $_REQUEST["confirm"] == "on") {

        $messageBody = "";

        foreach ($_REQUEST as $key => $data) {
            if (!isset($keys[$key]) || $data=="") {
                continue;
            }
            $messageBody .= "{$keys[$key]}: " . getValue($data) . "\r\n";
        }

        $m->body($messageBody);
        if ($m->send() != 0) {
            echo "{\"status\":\"success\"}";
        } else {
            echo "{\"status\":\"error\"}";
        }
    } else {
        echo "{\"status\":\"error\"}";
    }
} else {
    $session->redirect("/");
}



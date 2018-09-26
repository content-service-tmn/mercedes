<?php namespace ProcessWire;
      require_once($config->paths->root . 'vendor/autoload.php'); ?>

<html>
  <head>
    <?php include_once($config->paths->templates . "common/_head.php"); ?>
  </head>
  <body>
    <?php

    $template = new TemplateFile($config->paths->templates . "pdf/layouts/pdf_header.php");
    $pdf_header = $template->render();

    $template = new TemplateFile($config->paths->templates . "pdf/layouts/pdf_footer.php");
    $pdf_footer = $template->render();

    $template = new TemplateFile($config->paths->templates . "pdf/layouts/pdf_body.php");
    $pdf_body = $template->render();

    $defaultConfig = (new \Mpdf\Config\ConfigVariables())->getDefaults();
    $fontDirs = $defaultConfig['fontDir'];

    $defaultFontConfig = (new \Mpdf\Config\FontVariables())->getDefaults();
    $fontData = $defaultFontConfig['fontdata'];

    $mpdf = new \Mpdf\Mpdf([
    	'margin_top' => 50,
    	'margin_left' => 15,
    	'margin_right' => 15,
    	'margin_bottom' => 40,
      'fontDir' => array_merge($fontDirs, [
        __DIR__ . '/assets/fonts',
      ]),
      'fontdata' => $fontData + [
        'corporate-a' => [
          'R' => 'subset-CorporateACon-Reg.ttf',
        ],
        'corporate-s' => [
          'R' => 'subset-CorporateS-Regular.ttf',
        ]
      ],
      'default_font' => 'corporate-s'
    ]);

    $mpdf->SetHTMLHeader($pdf_header);
    $mpdf->SetHTMLFooter($pdf_footer);

    $stylesheet = file_get_contents('pdf/style.css');
    $mpdf->WriteHTML($stylesheet, 1);

    $mpdf->WriteHTML($pdf_body);
    $mpdf->Output();
    ?>
  </body>
</html>

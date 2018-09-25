<?php namespace ProcessWire;
      require_once($config->paths->root . 'vendor/autoload.php'); ?>

<html>
  <head>

  </head>
  <body>
    <?php

    $template = new TemplateFile($config->paths->templates . "layouts/pdf_header.php");
    $template->set('site', $site);
    $pdf_header = $template->render();

    $template = new TemplateFile($config->paths->templates . "layouts/pdf_footer.php");
    $template->set('site', $site);
    $pdf_footer = $template->render();

    $template = new TemplateFile($config->paths->templates . "layouts/pdf_body.php");
    $template->set('site', $site);
    $pdf_body = $template->render();


    $mpdf = new \Mpdf\Mpdf([
    	'margin_top' => 50,
    	'margin_left' => 15,
    	'margin_right' => 15,
    	'margin_bottom' => 40
    ]);
    // Define the Header/Footer before writing anything so they appear on the first page
      $mpdf->SetHTMLHeader($pdf_header);
      $mpdf->SetHTMLFooter($pdf_footer);
      $mpdf->WriteHTML($pdf_body);
      $mpdf->Output();
    ?>
  </body>
</html>

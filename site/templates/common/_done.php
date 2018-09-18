<?php namespace Processwire; ?>

<?php if ($config->ajax): ?>
    <?= $templateRender; ?>
<?php else: ?>


<!DOCTYPE html>
<html lang="ru">
<head>
  <?php include_once($config->paths->templates . "common/_head.php"); ?>
</head>

<body class="no-touch" data-route="<?= $page->template->name; ?>">



<?= $templateRender; ?>

<script src="<?= $config->urls->templates . 'assets/js/script.js'?>"></script>
<?php
  if ($page->template->name == "layout_contacts"): ?>
    <script type="text/javascript">
      function initMap() {
        var coordinates= {lat: 57.1419482, lng: 65.5986856},
            options = {
              zoom: 16,
              disableDefaultUI: true,
              center: coordinates,
              draggable: !("ontouchend" in document)
            };
        var map = new google.maps.Map(document.getElementById('map'), options);
        $.getJSON('<?= $config->urls->templates . 'assets/json/google-map.json'?>',function(data){
          map.setOptions({styles:data});
        });
        new google.maps.Marker({map:map,position:coordinates});
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDz-fa3z3jDQhfL6rwyNt3DEJ3XHbyoUHk&callback=initMap" async></script>
<?php endif; ?>
</body>

</html>

<?php endif; ?>
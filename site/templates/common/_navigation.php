<ul>
  <li>
    <a href="javascript:void(0)">AMG</a>
    <ul>
        <?php
        foreach ($pages->find("template=layout_type_amg") as $class): ?>
            <li>
              <a href="<?= $pages->find("template=layout_type, parent={$class->id}")->first()->url ?>"><?= ($class->parent()->title != "Catalog")?$class->parent()->title . " " . $class->title:"" . $class->title ?></a>
            </li>
        <?php endforeach; ?>
    </ul>
  </li>
    <?php $i = 0;
    $catalogs = $pages->find("parent=catalog, sort=sort");
    foreach ($catalogs as $category): if ($i < 8): ?>
      <li>
        <a href="<?= $pages->find("template=layout_type, parent={$category->id}")->first()->url ?>"><?= $category->title ?></a>
        <ul>
            <?php foreach ($pages->find("parent={$category->id}") as $pge): ?>
              <li><a href="<?= $pge->url ?>"><?= $pge->title ?></a></li>
            <?php endforeach; ?>
        </ul>
      </li>
        <?php $i++; endif; endforeach; ?>
  <?php if($catalogs->count() >= 8): ?>
  <li>
    <a href="">Другие</a>
    <ul>
        <?php $i = 0;
        foreach ($catalogs as $category): if ($i >= 8): ?>
          <li>
            <a href="<?= $pages->find("template=layout_class, parent={$category->id}")->first()->url ?>"><?= $category->title ?></a>
          </li>
        <?php endif;
            $i++; endforeach; ?>
    </ul>
  </li>
  <?php endif; ?>
  <li><a href="" class="is-parent">Коммерческий транспорт</a></li>

</ul>

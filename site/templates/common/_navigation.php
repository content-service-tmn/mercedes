<ul>
  <li>
    <a href="">AMG</a>
    <ul>
        <?php
        foreach ($pages->find("template=layout_class") as $class): ?>
            <?php if ($class->isAmg): ?>
            <li>
              <a href="<?= $pages->find("template=layout_class, parent={$class->id}")->first()->url ?>"><?= ($class->parent()->title != "Catalog")?$class->parent()->title . " ":"" . $class->title ?></a>
            </li>
            <?php endif; ?>
        <?php endforeach; ?>
    </ul>
  </li>
    <?php $i = 0;
    foreach ($pages->find("parent=catalog, sort=sort") as $category): if ($i < 8): ?>
      <li>
        <a href="<?= $pages->find("template=layout_class, parent={$category->id}")->first()->url ?>"><?= $category->title ?></a>
        <ul>
            <?php foreach ($pages->find("parent={$category->id}") as $pge): ?>
              <li><a href="<?= $pge->url ?>"><?= $pge->title ?></a></li>
            <?php endforeach; ?>
        </ul>
      </li>
        <?php $i++; endif; endforeach; ?>
  <li>
    <a href="">Другие</a>
    <ul>
        <?php $i = 0;
        foreach ($pages->find("parent=catalog") as $category): if ($i >= 8): ?>
          <li>
            <a href="<?= $pages->find("template=layout_class, parent={$category->id}")->first()->url ?>"><?= $category->title ?></a>
          </li>
        <?php endif;
            $i++; endforeach; ?>
      <li><a href="" class="is-parent">Коммерческий транспорт</a></li>
      <li><a href="#benefits" class="is-parent js-smooth-scroll">Сервисное обслуживание</a></li>
      <li><a href="" class="is-parent">Оригинальные запасные части и аксессуары</a></li>
      <li><a href="" class="is-parent">Mercedes Benz Financial</a></li>
      <li><a href="#benefits-foreign" class="is-parent js-smooth-scroll">Преимущества для покупателей из других
          регионов</a></li>
    </ul>
  </li>

</ul>
<div id="cssmenu">    <?php if($menus) { ?>    <ul>        <?php foreach ($menus as $menu) { ?>        <?php if($menu['children']) { ?>        <li class="has-sub">            <a href="<?php echo $menu['href']; ?>" ><?php echo $menu['name']; ?></a>            <ul>                <?php foreach ($menu['children'] as $menu2) { ?>                <li class='has-sub'>                    <a href="<?php echo $menu2['href']; ?>"> <?php echo $menu2['name']; ?></a>                </li>                <?php } ?>            </ul>        </li>        <?php } else { ?>        <li><a href="<?php echo $menu['href']; ?>"><?php echo $menu['name']; ?></a></li>        <?php } ?>        <?php } ?>    </ul>    <?php } ?></div><script type="text/javascript"></script>
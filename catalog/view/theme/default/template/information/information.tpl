<?php echo $header; ?><?php echo $content_maintop; ?>
<div class="container">
<div class="row" style="margin-top: 20px;"><?php echo $column_left; ?><?php if ($column_left && $column_right) { ?><?php $class = 'col-sm-6'; ?><?php } elseif ($column_left || $column_right) { ?><?php $class = 'col-sm-9'; ?><?php } else { ?><?php $class = 'col-sm-12'; ?><?php } ?>
    <div id="content" class="<?php echo $class; ?>">
        <ul class="breadcrumb" style="background: none;">
            <?php foreach ($breadcrumbs as $breadcrumb) { ?>
            <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
            <?php } ?>
        </ul>
        <hr>
        <?php echo $content_top; ?><h1><?php echo $heading_title; ?></h1><?php echo $description; ?><?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div></div><?php echo $content_mainbottom; ?><?php echo $footer; ?>
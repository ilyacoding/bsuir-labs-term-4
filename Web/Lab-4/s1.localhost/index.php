<?php
include_once($_SERVER['DOCUMENT_ROOT'] . "/include/functions.php");

if (!empty($_GET['item']))
{
    echo get_page($_GET['item']);
}
else
{
    $cat_id = $_GET['cat_id'] ?? 0;
    echo get_cat($cat_id);
}

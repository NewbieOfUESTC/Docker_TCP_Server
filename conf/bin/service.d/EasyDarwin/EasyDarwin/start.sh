#!/bin/sh
basepath=$(cd `dirname $0`; pwd)
$basepath/easydarwin -c $basepath/easydarwin.xml -d

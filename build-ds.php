<?php

declare(strict_types=1);


/**
 * @param string $filename
 * @return void
 */
function unlinkFile(string $filename): void
{
    strtoupper(substr(PHP_OS, 0, 3)) === 'WIN' && is_dir($filename) ? @rmdir($filename) : @unlink($filename);
}

/**
 * @param string $path
 * @return array
 */
function scanFiles(string $path): array
{
    $results = [];
    foreach (glob($path . DIRECTORY_SEPARATOR . '*') as $filename) {
        $results[] = $filename;
        if (is_dir($filename)) {
            $results = array_merge($results, scanFiles($filename));
        }
    }
    return $results;
}

/**
 * @param string $root
 * @param string $module
 * @param string $path
 */
function linkModule(string $root, string $module, string $path): void
{
    foreach (scanFiles($path) as $filename) {
        $target = DIRECTORY_SEPARATOR . 'app' . DIRECTORY_SEPARATOR . 'code' . DIRECTORY_SEPARATOR . 'Magento' . DIRECTORY_SEPARATOR
            . $module . preg_replace('#^' . preg_quote($path) . "#", '', $filename);
        if (!file_exists(dirname($root . $target))) {
            @symlink(dirname(realpath($filename)), dirname($root . $target));
        } elseif (!file_exists($root . $target)) {
            @symlink(realpath($filename), $root . $target);
        }
    }
}

/**
 * @param string $root
 * @param string $util
 * @param string $path
 */
function linkUtils(string $root, string $util, string $path): void
{
    foreach (scanFiles($path) as $filename) {
        $target = DIRECTORY_SEPARATOR . $util .  preg_replace('#^' . preg_quote($path) . "#", '', $filename);
        if (!file_exists(dirname($root . $target))) {
            @symlink(dirname(realpath($filename)), dirname($root . $target));
        } elseif (!file_exists($root . $target)) {
            @symlink(realpath($filename), $root . $target);
        }
    }
}

/**
 * @param string $projectRoot
 */
function unlinkProject(string $projectRoot): void
{
    foreach (scanFiles($projectRoot) as $filename) {
        if (is_link($filename)) {
            unlinkFile($filename);
        }
    }
}

/**
 * @param string $repoPath
 * @param string $projectRoot
 */
function linkRepo(string $repoPath, string $projectRoot): void
{
    $topLevelElements = scandir($repoPath);
    foreach ($topLevelElements as $element) {
        $path = $repoPath . DIRECTORY_SEPARATOR . $element;
        if (
            is_dir($path)
            && file_exists($path . DIRECTORY_SEPARATOR . 'registration.php')
            && file_exists($path . DIRECTORY_SEPARATOR . 'etc/module.xml')
            && file_exists($path . DIRECTORY_SEPARATOR . 'composer.json')
        ) {
            linkModule($projectRoot, $element, $path);
            echo sprintf("Module %s linked", $element) . PHP_EOL;
        } elseif (is_dir($path) && $element == 'dev') {
            linkUtils($projectRoot, $element, $path);
            echo sprintf("Directory %s linked", $element) . PHP_EOL;
        }
    }
}

$options = getopt('', ['repoPath:', 'projectRoot:']);

$repoPaths = [];
if(isset($options['repoPath'])) {
    $repoPaths = explode(',', $options['repoPath']);
}

$projectRoot = __DIR__;
if(isset($options['projectRoot'])) {
    $projectRoot = $options['projectRoot'];
}

//unlinkProject($projectRoot);

foreach ($repoPaths as $repoPath) {
    linkRepo(trim($repoPath), $projectRoot);
}

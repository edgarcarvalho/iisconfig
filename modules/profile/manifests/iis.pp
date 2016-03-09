class profile::iis {

$app_pools = hiera('profile::iis::app_pools')
$app_sites = hiera('profile::iis::app_sites')
$virtual_apps = hiera('profile::iis::virtual_apps')

validate_hash($app_pools)
validate_hash($app_sites)
validate_hash($virtual_apps)

class{'iisconfig':
app_pools => $app_pools,
app_sites => $app_sites,
virtual_apps => $virtual_apps
}

}


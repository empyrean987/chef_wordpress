#node['wordpress']['version'] - Version of WordPress to download. Use 'latest' to download most recent version.
#node['wordpress']['parent_dir'] - Parent directory to where WordPress will be extracted. (Windows Only)
#node['wordpress']['dir'] - Location to place WordPress files.
node['wordpress']['db']['name'] = 'wordpress'
node['wordpress']['db']['host'] = 'wordpress_mysql.clevergirlcreations.com'
node['wordpress']['db']['user'] = 'wordpress'
node['wordpress']['db']['pass'] - Password of the WordPress MySQL user. By default, generated using openssl cookbook.
#node['wordpress']['db']['prefix'] - Prefix of all MySQL tables created by WordPress.
#node['wordpress']['db']['charset'] - Character set of the WordPress MySQL database tables. Defaults to 'utf8'.
#node['wordpress']['db']['collate'] - Collation of the WordPress MySQL database tables.
#node['wordpress']['allow_multisite'] - Enable multisite features (default: false).
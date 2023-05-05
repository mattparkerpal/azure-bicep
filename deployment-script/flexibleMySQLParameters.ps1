param(
  [string] $resourceGroupName, 
  [string] $serverName
)

$parameterHash = @{
  'connect_timeout' = '99999'
  'innodb_io_capacity' = '9000'
  'innodb_io_capacity_max' = '20000'
  'innodb_lock_wait_timeout' = '1073741824'
  'innodb_log_buffer_size' = '268435456'
  'innodb_purge_threads' = '2'
  'innodb_read_io_threads' = '8'
  'innodb_write_io_threads' = '8'
  'interactive_timeout' = '99999'
  'max_allowed_packet' = '943718400'
  'net_buffer_length' = '1048576'
  'net_read_timeout' = '99999'
  'net_retry_count' = '1000'
  'net_write_timeout' = '99999'
  'slow_query_log' = 'OFF'
  'wait_timeout' = '99999'
  'transaction_isolation' = 'REPEATABLE-READ'
  'binlog_expire_logs_seconds' = '2592000'
  'collation_server' = 'UTF8MB4_UNICODE_CI'
 }

foreach ($hash in $parameterHash.GetEnumerator())
{
  Update-AzMySqlFlexibleServerConfiguration -Name $($hash.Name) -ResourceGroupName $resourceGroupName -ServerName $serverName -Value $($hash.Value)
}

param(
  [string] $resourceGroupName, 
  [string] $serverName
)

Restart-AzMySqlFlexibleServer -ResourceGroupName $resourceGroupName -Name $serverName

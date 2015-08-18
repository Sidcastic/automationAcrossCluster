#automationAcrossClusters
a simple project to enable automating tasks across clusters or multiple machines

###usage:
  update_sync_unit - allows one to update the ip on to dropbox
  set_hostname - reads from the dropbox folder and updates /etc/hosts
  config - setup environment variables

###about
  #####problem statement
  we have n systems, the ip for them is dynamic
  thus if we configure ssh ( controlling one pc with another )
  after a restart its ip may change and then we have to configure it again
  so to avoid this problem we wanted to automate the process of updating ip on all the systems if it changes

  #####proposed soln:
  we took dropbox
  on all the system there is a process running which checks if the ip changed
  if it does it updates a file n the dropbox
  which is then transfered to all the other systems
  and changes are made there
  thats the basic idea

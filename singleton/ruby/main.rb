require_relative 'app1'
require_relative 'app2'

app1 = App1.new()
app2 = App2.new()

app2.do_job()
app1.do_job()

from crontab import CronTab

cron = CronTab(tabfile = 'crontabConfig.tab')
job = cron.new(command = 'python /Section_1/dataPipeline.py')
job.hour.on(1)

cron.write()

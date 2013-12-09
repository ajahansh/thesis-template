aiCont = AnalogInputCont(freq=100, numOfChannels=2)
aiCont.start('data.csv')
while True:
    sleep(10)
    l = len(aiCont.allData['time'])
    aiCont.save()
    print 'Samples Read:{}'.format(l)
aiCont.stop()
aiCont.clear()
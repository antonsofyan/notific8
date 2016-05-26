###
# @author Will Steinmetz
# Test suite for the notific8 JavaScript plug-in
# Copyright (c)2013-2016, Will Steinmetz
# Licensed under the BSD license.
# http://opensource.org/licenses/BSD-3-Clause
###

describe 'notific8 methods', ->
  it 'should set the default z-index to 5000', ->
    notific8 'zindex', 5000

    expect(notific8Defaults.zindex).toEqual 5000
    return

  it 'should destroy the notification containers', ->
    notific8 'hello world!'
    notific8 'destroy'

    containerClass = "#{notific8Defaults.namespace}-container"
    containers = document.getElementsByClassName(containerClass)

    expect(containers.length).toEqual 0
    return

  it 'should remove the current notification', ->
    notificationClass = "#{notific8Defaults.namespace}-notification"

    notific8 'hello world!'
    notifications = document.getElementsByClassName(notificationClass)
    expect(notifications.length).toEqual 1

    notific8 'remove'
    notifications = document.getElementsByClassName(notificationClass)
    expect(notifications.length).toEqual 0

    return

  xit 'should register a new module', ->
    return

  return

describe 'notific8 configruation setting', ->
  customConfig =
    life: 20000
    theme: 'atomic'
    color: 'pear'
    sticky: true
    verticalEdge: 'left'
    horizontalEdge: 'bottom'
    zindex: 1200
    icon: 'pencil'
    closeText: 'exit'
    onInit: null# @TODO
    onCreate: null# @TODO
    onClose: null# @TODO
    namespace: 'custom'
    height:
      atomic: 80
      chicchat: 80
      legacy: 80

  it 'should set the configuration via the configure method', ->
    notific8 'configure', customConfig

    expect(notific8Defaults.life).toEqual 20000
    expect(notific8Defaults.theme).toEqual 'atomic'
    expect(notific8Defaults.color).toEqual 'pear'
    expect(notific8Defaults.sticky).toEqual true
    expect(notific8Defaults.verticalEdge).toEqual 'left'
    expect(notific8Defaults.horizontalEdge).toEqual 'bottom'
    expect(notific8Defaults.zindex).toEqual 1200
    expect(notific8Defaults.icon).toEqual 'pencil'
    expect(notific8Defaults.closeText).toEqual 'exit'
    # expect(notific8Defaults.onInit).toEqual# @TODO
    # expect(notific8Defaults.onCreate).toEqual# @TODO
    # expect(notific8Defaults.onClose).toEqual# @TODO
    expect(notific8Defaults.namespace).toEqual 'custom'
    expect(notific8Defaults.height.atomic).toEqual 80
    expect(notific8Defaults.height.chicchat).toEqual 80
    expect(notific8Defaults.height.legacy).toEqual 80

    return

  it 'should set the configuration via the config method', ->
    notific8 'config', customConfig

    expect(notific8Defaults.life).toEqual 20000
    expect(notific8Defaults.theme).toEqual 'atomic'
    expect(notific8Defaults.color).toEqual 'pear'
    expect(notific8Defaults.sticky).toEqual true
    expect(notific8Defaults.verticalEdge).toEqual 'left'
    expect(notific8Defaults.horizontalEdge).toEqual 'bottom'
    expect(notific8Defaults.zindex).toEqual 1200
    expect(notific8Defaults.icon).toEqual 'pencil'
    expect(notific8Defaults.closeText).toEqual 'exit'
    # expect(notific8Defaults.onInit).toEqual# @TODO
    # expect(notific8Defaults.onCreate).toEqual# @TODO
    # expect(notific8Defaults.onClose).toEqual# @TODO
    expect(notific8Defaults.namespace).toEqual 'custom'
    expect(notific8Defaults.height.atomic).toEqual 80
    expect(notific8Defaults.height.chicchat).toEqual 80
    expect(notific8Defaults.height.legacy).toEqual 80

    return

  return

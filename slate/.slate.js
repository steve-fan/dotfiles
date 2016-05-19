S.cfga({
  "defaultToCurrentScreen" : true,
  "secondsBetweenRepeat" : 0.1,
  "checkDefaultsOnLoad" : true,
  "focusCheckWidthMax" : 3000,
  "windowHintsDuration" : 2,
  "windowHintsSpread" : true,
  "orderScreensLeftToRight" : true
});

S.bnda({
  "return:cmd" : S.op("hint"),
  ",:shift;cmd" : S.opstr("move screenOriginX;screenOriginY screenSizeX/2;screenSizeY"),
  ".:shift;cmd" : S.opstr("move screenOriginX+screenSizeX/2;screenOriginY screenSizeX/2;screenSizeY"),
  "m:shift;cmd" : S.opstr("move screenOriginX;screenOriginY screenSizeX;screenSizeY"),
  // "g:cmd": S.opstr("grid padding:5 2880x1800:6,2 2560x1600:6,2 2560x1440:6,2 1920x1080:6,2 1440x900:2,1")
});

S.on("windowFocused", function(event, win) {
  var cursor_position_info = S.shell("/usr/local/bin/cliclick p", true);
  var position_info = cursor_position_info.split(":")[1].trim()
  var position = position_info.split(",")

  var cursor_x = parseInt(position[0])
  var cursor_y = parseInt(position[1])

  var rect = win.rect();

  if((cursor_x > rect.x && cursor_x < (rect.x + rect.width)) && (cursor_y > rect.y && cursor_y < (rect.y + rect.height))) {
    S.log("cursor in current window!");
  } else {
    var x_position = rect.x + rect.width / 2;
    var y_position = rect.y + rect.height / 2;
    var command = "/usr/local/bin/cliclick m:" + x_position + "," + y_position;
    S.shell(command, true);
  }
});

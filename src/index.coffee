styles = """
/*
 * "my love gift"💕 v0.0.1
 * Authored by 石中玉
 */

body {
  background-color: #1a1c24; color: #fff;
  font-size: 1.0rem; line-height: 1.4;
  -webkit-font-smoothing: subpixel-antialiased;
}

/*
 *   💕💕💕💕💕💕💕💕💕
 *   💕翟羽佳小宝贝儿💕
 *   💕💕💕💕💕💕💕💕💕
 *
 * 我是你的石同学呀！！！
 *
 * 你知道今天是什么节日嘛！！！
 *
 * 今天是我们在一起520天哟！！！
 *
 * 不知道送你什么好，不能送你口红啥的了！！
 *
 * 就写一个网页给宝宝吧 送你一颗小心心~
 *
 * 可是~我要怎么做呢~
 *
 * 首先做一个框框来放我们的代码吧！！
 *
 * 给你直播做爱心吧！！
 *
 * 那么~我要开动啦！！
 *
 *不要眨眼！！
 */

pre {
  position: fixed;
  top: 30px; bottom: 30px;
  transition: left 500ms;
  overflow: auto;
  background-color: #313744; color: #a6c3d4;
  border: 1px solid rgba(0,0,0,0.2);
  padding: 24px 12px;
  box-sizing: border-box;
  border-radius: 3px;
  box-shadow: 0px 4px 0px 2px rgba(0,0,0,0.1);
}

/*
 * 不行不行，全是白色看代码都要看昏了
 *
 * 我需要语法高亮~
 *
 * 那我们就动手实现一下它吧~
 *
 */

pre em:not(.comment) { font-style: normal; }

.comment       { color: #707e84; }
.selector      { color: #c66c75; }
.selector .key { color: #c66c75; }
.key           { color: #c7ccd4; }
.value         { color: #d5927b; }


/*
 * 呦吼你看~代码高亮实现啦~接下来我们开工吧！
 *
 * 首先我们把这个代码框移一下吧~它太占地方啦
 *
 * 在手机上和电脑上有不同的显示效果呦！！
 *
 */

@media screen and (max-width: 768px) {
    pre { left: 6%;right: 6%;top: 50%; }
}

@media screen and (min-width: 768px) {
    pre { width: 48%;left: 50%;bottom: 30px; }
}

/*
 * 接下来用代码做一颗小心心！
 *
 */

@media screen and (max-width: 768px) {
    #heart, #echo {
        position: fixed;
        width: 300px; height: 300px;
        margin: 30px auto;
        left: 0; right: 0;
        text-align: center;
        -webkit-transform: scale(0.95);
        transform: scale(0.95);
    }
}

@media screen and (min-width: 768px) {
    #heart, #echo {
      position: fixed;
      width: 300px; height: 300px;
      top: calc(50% - 150px); left: calc(25% - 150px);
      text-align: center;
      -webkit-transform: scale(0.95);
              transform: scale(0.95);
    }
}

#heart { z-index: 8; }
#echo  { z-index: 7; }

#heart::before, #heart::after, #echo::before, #echo::after {
    content: '';
    position: absolute;
    top: 40px;
    width: 150px; height: 240px;
    background: #c66c75;
    border-radius: 150px 150px 0 0;
    -webkit-transform: rotate(-45deg);
            transform: rotate(-45deg);
    -webkit-transform-origin: 0 100%;
            transform-origin: 0 100%;
}

#heart::before, #echo::before {
  left: 150px;
}

#heart::after, #echo::after {
  left: 0;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
  -webkit-transform-origin: 100% 100%;
          transform-origin: 100% 100%;
}

/* 
 * 咱给它加上一点阴影巴拉！！
 *
 */

#heart::after {
  box-shadow:
    inset -6px -6px 0px 6px rgba(255,255,255,0.1);
}

#heart::before {
  box-shadow:
    inset 6px 6px 0px 6px rgba(255,255,255,0.1);
}

/*
 * 这可是~我给你做的的小心心~
 *
 * 这可是~我给你做的的小心心~
 *
 * 这可是~我给你做的的小心心~
 *
 * 重要的事情说三遍！！！
 *
 * 我要给它签上咱俩的名字！
 *
 * >v<
 */

#heart i::before {
  content: '翟羽佳❤石中玉';
  position: absolute;
  z-index: 9;
  width: 100%;
  top: 35%; left: 0;
  font-style: normal;
  color: rgba(255,255,255,0.8);
  font-weight: 100;
  font-size: 25px;
  text-shadow: -1px -1px 0px rgba(0,0,0,0.2);
}

/*
 * 什么？？？
 *
 * 感受不到它的跳动？？？
 *
 *
 * 感觉不真诚啊
 *
 *
 * 那我们让这颗心跳起来吧！
 *
 *
 * 你要在心里默念三遍 
 *
 *
 * 石同学我爱你 ！！！
 *
 *
 * 石同学我爱你！！！
 *
 *
 * 石同学我爱你！！！
 *
 *
 * 它就会跳动起来了！！！
 *
 *
 * 好了，我们开始吧~
 */

@-webkit-keyframes heartbeat {
  0%, 100% {
    -webkit-transform: scale(0.95);
            transform: scale(0.95);
  }
  50% {
    -webkit-transform: scale(1.00);
            transform: scale(1.00);
  }
}

@keyframes heartbeat {
  0%, 100% { transform: scale(0.95); }
  50%      { transform: scale(1.00); }
}

@-webkit-keyframes echo {
  0%   {
    opacity: 0.1;
    -webkit-transform: scale(1);
            transform: scale(1);
  }
  100% {
    opacity: 0;
    -webkit-transform: scale(1.4);
            transform: scale(1.4);
  }
}

@keyframes echo {
  0%   {
    opacity: 0.1;
    transform: scale(1);
  }
  100% {
    opacity: 0;
    transform: scale(1.4);
  }
}

/*
 * 好哒！接下来准备让它跳起来吧ww
 *
 *
 * 不要眨眼哟！！！
 *
 */

#heart, #echo {
  -webkit-animation-duration: 2000ms;
          animation-duration: 2000ms;
  -webkit-animation-timing-function:
    cubic-bezier(0, 0, 0, 1.74);
          animation-timing-function:
            cubic-bezier(0, 0, 0, 1.74);
  -webkit-animation-delay: 500ms;
          animation-delay: 500ms;
  -webkit-animation-iteration-count: infinite;
          animation-iteration-count: infinite;
  -webkit-animation-play-state: paused;
          animation-play-state: paused;
}

#heart {
  -webkit-animation-name: heartbeat;
          animation-name: heartbeat;
}
#echo {
  -webkit-animation-name: echo;
          animation-name: echo;
}

/*
 * 准备好了嘛~
 *
 */

#heart, #echo {

/*
 * ...3...
 *
 * ...2...
 *
 * ...1...
 *
 * 再等一下~略略略~
 *
 */

  -webkit-animation-play-state: running;
          animation-play-state: running;
/*
 * ...来啦!
 */
}

/*
 * 诶嘿~~
 *
 * 这样我们的小心心就做好啦~
 *
 * 怎么样~ >v< 还喜欢吗~~
 *
 * 我想说~
 *
 * ！！！我爱你！！！
 *
 * 我会努力赚钱 和你去遍你想去的每一个地方~
 *
 * 亲爱哒！在一起520天快乐！
 *
 * ❤爱你哟！！！
 *
 */
/* 
 * 谨以此网页献给我的宝宝 💕羽佳💕
 *
 * 你最可爱ww
 */
"""
finalStyle = styles
openComment = false
isOn = true

writeStyleChar = (which) ->
	# begin wrapping open comments
  if which == '/' && openComment == false
    openComment = true
    styles = $('#style-text').html() + which
  else if which == '/' && openComment == true
    openComment = false
    styles = $('#style-text').html().replace(/(\/[^\/]*\*)$/, '<em class="comment">$1/</em>')
  # wrap style declaration
  else if which == ':'
    styles = $('#style-text').html().replace(/([a-zA-Z- ^\n]*)$/, '<em class="key">$1</em>:')
  # wrap style value
  else if which == ';'
    styles = $('#style-text').html().replace(/([^:]*)$/, '<em class="value">$1</em>;')
  # wrap selector
  else if which == '{'
    styles = $('#style-text').html().replace(/(.*)$/, '<em class="selector">$1</em>{')
  else
    styles = $('#style-text').html() + which
  $('#style-text').html styles
  $('#style-tag').append which

writeStyles = (message, index, interval) ->
  if index < message.length
    pre = document.getElementById 'style-text'
    pre.scrollTop = pre.scrollHeight
    writeStyleChar message[index++]
    if isOn
      setTimeout (->
        writeStyles message, index, if openComment then commentTime else codeTime
      ), interval

skip = () ->
  isOn = false
  setTimeout (->
    $('#style-text').html finalStyle
    $('#style-tag').html finalStyle
    pre = document.getElementById 'style-text'
    pre.scrollTop = pre.scrollHeight
  ), 2*commentTime


# appending the tags I'll need.
$('body').append """
  <style id="style-tag"></style>
	<span id="echo"></span>
	<span id="heart"><i></i></span>
	<pre id="style-text"></pre>
"""


# faster typing in small iframe on codepen homepage
# time = if window.innerWidth <= 578 then 4 else 16
commentTime = 60
codeTime = 20

$(document).on 'ready page:load', ->
  $('#skipAnimation').click ->
    skip()

# starting it off
writeStyles(styles, 0, commentTime)

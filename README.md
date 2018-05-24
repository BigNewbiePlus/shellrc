shell 环境自定义
#reference
[Tmux 速成教程：技巧和调整](http://blog.jobbole.com/87584/)<br>
<br>
## tmux key point
1.1 更换快捷键前缀<br>
`unbind C-b`<br>
`set -g prefix C-a`<br>
1.2 bind a reload key
`bind R source-file ~/.tmux.conf\; display-message "Config reloaded.."`<br>
1.3 快捷键
Ctrl-b % 竖直窗格<br>
Ctrl-b " 水平窗格<br>
Ctrl-b c 创建窗格<br>
Ctrl-b 数字 切换窗格<br>
tmux new -s <name-of-my-session> 在shell中创建新会话<br>
ctrl-b : new -s <name-of-my-session> 在会话中创建新会话<br>
Ctrl-b s 罗列已有会话<br>
tmux attach 连接已开启会话<br>
1.4 文本间移动光标
`# Use vim keybindings in copy mode`<br>
`setw -g mode-keys vi`<br>


---
layout: post_puzzle  
title: 意料之外 数理之中(数理统计与管理,2003)
author: 刘乐平
categories:
- puzzle 

pdf: "/download/marily.pdf"  
slide: "/download/marily.pdf"  


---

论文中引用本文：
刘乐平. 意料之外 数理之中[J]. 数理统计与管理, 2003, 22（2）: 53-63.

网页中引用本文：
贝叶斯之道 (http://bayes-stat.github.com)




![TOB](https://bayes-stat.github.com/images/131201.jpg)

玛丽莲•沃斯•莎凡特（Marilyn vos Savant，1946年8月11日－）是截至目前（2013年）为止吉尼斯世界记录所认定拥有最高智商（IQ）的人类及女性。她于1946年出生于美国密苏里州的圣路易斯，在刚满10岁的1956年9月时初次接受史丹福-比奈智力测验，测得智商高达228。后来数十年间陆陆续续接受数次智力测试，测出的智商有167+、186、218、230等等。莎凡特从事文学创作，也编写剧本，并长期在《Parade》杂志开辟名为〈Ask Marilyn〉的专栏，专门回复读者各式各样的问题，从数学到人生都有。玛丽莲也是普罗米修斯社团（Prometheus Society）的成员之一，该社团以非高智商者不能加入而闻名。
[（Marilyn vos Savant ( born August 11, 1946) is an American magazine columnist, author, lecturer, and playwright who rose to fame through her former listing in the Guinness Book of World Records under "Highest IQ." Since 1986 she has written "Ask Marilyn," a Parade magazine Sunday column where she solves puzzles and answers questions on various subjects.）]

![TOB](https://bayes-stat.github.com/images/131202.jpg)


在“Parade Magazine”1990年的第9期上，玛利亚给出了这样一个十分简单（人人都能回答）但又非常复杂（让许多数学博士做错），且特别吸引人（引发成千上万的读者参与争论）的问题。

![TOB](https://bayes-stat.github.com/images/131203.gif)


The Monty Hall problem

咱们来打个赌！！！！

    “换” 还是“不换”？—— 面对豪华轿车和小山羊，你怎么“决择”？


![TOB](https://bayes-stat.github.com/images/131204.jpg)

“有奖竟猜”问题：假若你参加一个电视台主办的有奖竟猜节目，台上有三扇门，在其中一扇门后停着一辆豪华轿车，另外两扇门后则各有一只羊。规则很简单：你从三扇门中任意选中一扇，确认后打开，门后的奖品就归你！
竟猜游戏分两步进行：
       
      第一步：主持人先让你选中一扇门，选好后告诉他是哪一扇（便于说明，假设你选中的是第1号门）。

 完成第一步之后  

     第二步：主持人再给你一次机会，他从剩余的两扇门中打开一扇，比如第2号门（或3号门），

里面是一只羊，这时，主持人问你，你是否改变主意，换选第3号门（或2号门）。
**
“换” 还是“不换”？—— 面对豪华轿车和小山羊，你怎么“决择”？**

【Savant was asked the following question in her September 9, 1990 column:
Suppose you’re on a game show, and you’re given the choice of three doors. Behind one door is a car, behind the others, goats. You pick a door, say #1, and the host, who knows what’s behind the doors, opens another door, say #3, which has a goat. He says to you, “Do you want to pick door #2?” Is it to your advantage to switch your choice of doors?】

  —Craig F. Whitaker Columbia, Maryland,  


![TOB](https://bayes-stat.github.com/images/131205.jpg)

笔者至少问过十位数学系的研究生，结果都是“英雄所见略同”：
    逻辑十分清楚，主持人给你打开了一扇门，只剩下两扇门可供选择，轿车在每扇门后的概率都是1/2。
从概率观点来说，从长远角度（多次实验）来看，无论你坚持第1号门还是改变去选择第2号门，都有50%的机会开走轿车，50%的机会牵走山羊。“换”与“不换”是一样的！ 


![TOB](https://bayes-stat.github.com/images/131206.png)

玛利亚却给出了“意料之外”的答案 —— “换，你应该换” ！
     
     因为你第一次猜中轿车的概率是1/3，而你第二次赢得轿车的概率为2/3（不是1/2）。 


这“不可思议”的答案一经公布，立即引发了美国全国性的争论，数以千记的批评信件蜂拥而至，其中许多是来自美国各高等院所的数学博士们。

这 不可思议!的答案一经公布, 立即引发了美国全国性的争论, 数以千记的批评信件蜂拥
而至, 其中许多是来自美国各高等院所的数学博士们, 玛利亚从中摘录了一些有趣的信件刊登
在 Paradc Magazine!1991 年第2 期她的专栏里:

    我是否可以建议您在重新回答这个问题之前去找一本标准的概率书参考参考!? ( University of Florida)
   您的逻辑是错误的, 我可以肯定您一定收到了许多高中生和大学生关于这个问题的来
信, 希望你尽快更正, 我想这会对您的专栏有帮助的!。( Georgia State University)

    在与至少三位数学家讨论后, 我感到震惊, 你意然还没发现你的错误。!( Dickinson State University)

你关于有奖竞猜# 的解答是完全错误的, 我希望这场争论能引起公众对我国如此严重的数学教育危机给予重视。如果你能改正你的错误观点, 将会对这种可悲现状的解决起着积极的作用。你知道有多少愤怒的数学家在等待你的道歉吗?!( Georgetown University)

    您就是那只羊! !(Western State University)
  
您肯定是错误的。换个角度, 如果您是对的, 而其他博士们都是错误的, 那我们的国家
该是怎样一种可悲情景啊! !( U . S. Army Research Institute)


When in doubt


![TOB](https://bayes-stat.github.com/images/131207.jpg)


Ask Marilyn

![TOB](https://bayes-stat.github.com/images/131208.jpg)






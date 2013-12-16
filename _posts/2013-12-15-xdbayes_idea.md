---
layout: post_idea  
title: 现代贝叶斯分析与现代统计推断(经济理论与经济管理,2004)
author: 刘乐平 袁卫
categories:
- idea 

pdf: "/download/liulp_yuanwei_2004.pdf"  



---

论文中引用本文：
刘乐平，袁卫. 现代贝叶斯分析与现代统计推断[J]. 经济理论与经济管理, 2004, 6:64-69.

网页中引用本文：
贝叶斯之道 (http://bayes-stat.github.com)



![TOB](https://bayes-stat.github.com/images/xdbys01.jpg)

【Bayesian Fun】http://www2.isye.gatech.edu/~brani/isyebayes/jokes.html

虽然对贝叶斯分析方法至今还有许多争议，但贝叶斯统计学在统计学中的地位可用中国科学院院士陈希孺教授的一段话来形容：

“托马斯.贝叶斯……这个生性孤僻，哲学气味重于数学气味的学术怪杰，以其一篇遗作的思想重大地影响了两个世纪以后的统计学术界，顶住了统计学的半边天”。

![TOB](https://bayes-stat.github.com/images/xdbys03.jpg)

【陳希孺（1934年-2005年），中國數理統計學家，中國科學院院士】

![TOB](https://bayes-stat.github.com/images/xdbys02.jpg)

**# 目前以MCMC方法为代表的现代贝叶斯统计学已广泛应用于几乎所有的学科，并取得了显著的成果。 #**

以经济学为例，美国经济学联合会就将2002年度的“准诺贝尔经济学奖”——“杰出资深会员奖（Distinguished Fellow Award）”授予了芝加哥大学Arnold Zellner教授，

   ![TOB](https://bayes-stat.github.com/images/xdbys04.jpg)

【Arnold Zellner 1927-2010：The University of Chicago】


以表彰他在“贝叶斯方法”方面对计量经济学所做出的杰出贡献。
……



![TOB](https://bayes-stat.github.com/images/xdbys05.jpg)

【http://bayesian.org/】The International Society for Bayesian Analysis (ISBA)  was founded in 1992 to promote…


在大约三百年以前，人们开始严肃地思考这样一个问题：“当存在不确定性时，如何进行推理？”。James Bernoulli (1713)恐怕是第一个构造该问题的人（Samuel Kotz, 吴喜之， 2000）。



![TOB](https://bayes-stat.github.com/images/xdbys06.jpg)

【吴喜之（中国人民大学）】

Bernoulli 意识到在可应用于机会游戏的演绎逻辑和每日生活中的归纳逻辑之间的区别。对于他来说，这个未回答的问题在于前者的机理如何能帮助处理后者的推断问题。

![TOB](https://bayes-stat.github.com/images/xdbys07.jpg)


目前被承认的现代贝叶斯统计工具的使用，应归功于Jeffreys(1939)，Wald(1950)，Savage(1954)，Raiffa和Schlaifer(1961)，Lindly(1972)和DeFinetti(1974-1975)。在20世纪90年代，由于高维计算上的困难，贝叶斯方法的应用受到了很大的限制。

但随着计算机技术的发展和贝叶斯方法的改进，特别是MCMC方法的发展和WinBUGS软件的应用，原来复杂异常的数值计算问题如今变得非常简单，参数后验分布的模拟也趋于方便，所以现代贝叶斯理论和应用得到了迅速的发展。以下分三个方面对其进行综述。

###1. 文献、组织和会议

近年来，贝叶斯理论和应用取得了惊人的发展。
Harry Martz对位于Los Alamos国家实验室（Los Alamos National Laboratories）的SCI索引数据库（SciSearch database）进行了研究，得到了从1974年到2000年25年间，关于贝叶斯分析方面文献增长变化的数据。

从1974年到1994年，文献数量增长的趋势是线性的，大约每10年翻一倍。
而在最近5年间，无论在数量上，还是在增长速度上，关于贝叶斯分析的文献都有巨大的增长。

我们仅以关于贝叶斯统计分析的专著数的增长为例。
从1769年到1969年，200年间大概有15本著作出版，
从1970年到1989年20年间，贝叶斯统计学的书籍仅有30本，
然而从1990年到1999年的最近10年中，贝叶斯分析的专著就有60本出版，
这还不包括数十本关于贝叶斯会议的文集和参考书。



贝叶斯理论和应用的研究还体现在各种各样的有着鲜明贝叶斯特色的学术组织上，
影响最大的要数ISBA（贝叶斯分析国际学会，International Society of Bayesian Analysis），
还有美国统计学会（ASA，American Statistical  Association）
的贝叶斯统计学分会（Section on Bayesian Statistical Science），
INFORMS的决策分析学会（Decision Analysis Society of INFORMS）等。

除了以上这些学会组织的各种会议，以下这些非学会组织的贝叶斯分析会议也经久不衰，
如贝叶斯统计学巴伦西亚会议（Valencia Meetings on Bayesian Statistics）、
最大熵和贝叶斯方法会议（Conference on Maximum Entropy and Bayesian Methods）
和皇家统计学会（RSS，Royal Statistical Society）的应用贝叶斯统计会议（Conference on Practical Bayesian Statistics）等。
现在每年举行的贝叶斯统计学会议平均在10次以上。


国外关于贝叶斯理论、方法与应用的专著和文献不胜枚举，
Samuel Kotz和吴喜之在2000出版的中文著作《现代贝叶斯统计学》书后所附的参考文献就有385篇之多。

另外在网络上，在Google搜索引擎（http://www.google.com）上输入关键词“Bayesian”，立刻就可搜索到约有562,000项符合Bayesian的查询结果（2003/3/17日的数据）。

2004年5月19日，查询结果记录增至919,000项。
国内出版的关于贝叶斯统计方面的著作与教材也有数十本，
本文主要参考的贝叶斯著作按出版时间顺序依次为：
陈希孺（1981）、
林叔荣（1991）、张尧庭（1991）、廖文等译（1992）、张孝令等（1992）、
茆诗松（1996）、贾乃光译（1998）、茆诗松、王静龙等（1998、）、
陈希孺（1999）、Samuel Kotz和吴喜之（2000）等。

值得一提的是，由S.James Press（1989）年所著的“Bayes Statistics: Principles, Models, and Applications.” {中译本 《贝叶斯统计学：原理、模型及应用》}一书中除了对贝叶斯学派观点和在当时的应用实例作了充分介绍外，另一个显著特点是全文刊录了贝叶斯的论文原作，并对贝叶斯的生平作了详细的介绍。了解一下贝叶斯的生平，读一读他的原著，有助于我们亲身去体会贝叶斯的思想和方法。


###2、交叉学科中的应用

贝叶斯理论和分析还在各个领域得到应用，并发展成交叉学科。贝叶斯分析在工业和政府中的应用迅速增加，由于“保密”的原因，成果无法统计。
但是很容易在科学和工程中的许多交叉领域里找到贝叶斯分析的众多研究者。
如：考古学、大气科学、教育、流行病学、工程、遗传学、水文学、测量和化验、药学、体育、质量管理、社会科学、经济和计量经济学等。现在已很难发现一个人类的研究领域不存在某种水平的贝叶斯分析工作。


###3、统计学科中的应用

在统计学科领域内，贝叶斯统计也在很多方向取得进展。
这包括生物统计、因果关系研究、分类、判别、神经网络、列联表、决策分析和决策论、试验设计、经验贝叶斯、有穷总体抽样、广义线性模型、图方法和贝叶斯网络、多层(多水平)建模、图象处理、信息论、缺失数据、非参数统计和函数估计、顺序数据、预测性推断和模型平均、可靠性和生存分析、序贯分析、信号处理、时间序列、空间统计、检验、模型选择和变量选择等等。


美国科学院院士、Duke 大学统计与决策科学学院的统计学教授James O. Berger，可以称得上是当代国际贝叶斯统计学领域研究的顶尖人物。

![TOB](https://bayes-stat.github.com/images/xdbys08.jpg)

【http://www.stat.duke.edu/~berger/】

他是ISBA的发起者之一，他在贝叶斯理论和应用方面的做了许多重要的研究工作。
他的著作《统计决策论及贝叶斯分析》（第二版）（Statistical Decision Theory and Bayesian Analysis）已作为“现代外国统计学优秀著作译丛“之一被介绍到中国。
他于2000年在《美国统计学会期刊》（JASA：Journal of the American Statistical Association）上发表文章，对贝叶斯统计学今日的状况和明日的发展进行了综述（Berger，2000），

本节内容主要参考此文的观点进行总结。

1. 客观贝叶斯分析（Objective Bayesian Analysis）
2. 主观贝叶斯分析（Subjective Bayesian Analysis）   
3. 稳健贝叶斯分析（Robust Bayesian Analysis）   
4. 频率贝叶斯分析（Frequentist Bayesian Analysis）  
5. 拟（准）贝叶斯分析（Quasi- Bayesian Analysis）


**现代贝叶斯分析与现代统计推断**

在本节中，我们从总结国内外学者对贝叶斯思想、方法、贝叶斯分析和贝叶斯推断不同角度的论述，来简略探讨贝叶斯思想、方法以及与现代统计推断的关系。

贝叶斯方法的基本思想是：不论你做出何种推断，都只能基于后验分布，即由后验分布所决定。（陈希孺，1999）

贝叶斯方法是基于贝叶斯定理而发展起来用于系统地阐述和解决统计问题的方法。（Samuel Kotz和吴喜之，2000）

一个完全的贝叶斯分析（full Bayesian analysis）包括数据分析、概率模型的构造、先验信息和效应函数的假设和最后的决策。（Lindley,2000）

贝叶斯推断的基本方法是将关于未知参数的先验信息与样本信息综合，再根据贝叶斯定理，得出后验信息，然后根据后验信息去推断未知参数。（茆诗松，王静龙等，1998）


![TOB](https://bayes-stat.github.com/images/xdbys09.jpg)

【茆诗松（华东师范大学）】


![TOB](https://bayes-stat.github.com/images/xdbys10.jpg)

【王静龙（华东师范大学）】

袁卫（1990）从认识论的角度阐述了贝叶斯辨证推断的思想。他认为，贝叶斯公式中包含了丰富的辨证思想：

![TOB](https://bayes-stat.github.com/images/xdbys11.jpg)

【袁卫（中国人民大学）】

（1）贝叶斯公式既考虑了主观概率，又尊重了客观信息。

（2）贝叶斯公式将静态与动态结合起来，充分利用前人的知识和经验，符合认识的发展过程。

（3）人类的认识过程是一个从实践到认识，再从认识到实践这样循环往复的过程。

经典的统计理论仅仅反映了这一无限的认识链条中的一个环节，即“实践 —>认识”过程；而贝叶斯推断则反映整个认识链条中互相联系的两个环节“认识 —>实践—>认识”。其中第一个认识活动即先验知识，反映为先验分布；实践活动主要表现为样本观察；第二个认识活动是通过认识到实践再到认识的重新认识活动，是对第一次认识的补充、修改和提高。毫无疑问，历史和前人的知识对实践会起指导作用。
     
**贝叶斯统计学相关资料的网上资源:**

- [Thomas Bayes主页](http://www-groups.dcs.st-and.ac.uk/~history/Mathematicians/Bayes.html)
- [经验贝叶斯分析（Empirical Bayes Analysis）](http://www.biostat.wisc.edu/geda/ebasummary.html)
- [学术组织：ISBA](http://www.Bayesian.org)
- [ASA的贝叶斯统计学分会](http://www.stat.duke.edu/sbss/sbss.html)
- [INFORMS的决策分析学会](http://www.informs.org/society/da)
- [贝叶斯软件：
The BUGS Project](http://www.mrc-bsu.cam.ac.uk/bugs/winbugs/contents.shtml)
- [MCMC方法及其应用的文献](http://www.mcs.surrey.ac.uk/Personal/S.Brooks/MCMC/)
- [BAYESPACK](http://www.math.wsu.edu/math/faculty/genz/homepage)
- [BMA(Baysian Model Averaging)](http://www.research.att.com/~volinsky/bma.html)
- [StatLib, a repository for statistics software](http://lib.stat.cmu.edu)
- (其它网址，参阅Berger,J.(2000))


**参考文献**

- 陈希孺，《高等数理统计学》，合肥：中国科学技术大学出版社，1999：121-128.
- 陈希孺，数理统计学小史，数理统计与管理，1998，17( 5):53-58.
- 袁卫，《统计推断思想》，北京：中国统计出版社，1990. 
- 茆诗松，王静龙等：《高等数理统计》， 北京：高等教育出版社. 1998.
- 刘乐平，袁卫，现代Bayes方法在精算学中的应用及展望，统计研究，2002，8. 
- S.James Press, “Bayes statistics: Principles, Models, and Applications.” John Wiley & Sons, 1989.中译本 廖文等译：《贝叶斯统计学：原理、模型及应用》 北京：中国统计出版社, 1992.
- Samuel Kotz, 吴喜之：《现代贝叶斯统计学》，北京：中国统计出版社，2000.
- Berger J. O., “Statistical Decision Theory and Bayesian Analysis”.2nd ed. New York: Springer-Verlag, 1985.中译本： 贾乃光译. 《统计决策论及贝叶斯分析》 北京： 中国统计出版社，1998.
- 李琳，杨招军，阿诺德.泽尔纳及其计量经济学思想，经济学动态，2003，1：89-93.
- 成平，1990，对贝叶斯统计的几点看法, 数理统计与应用概率, 5（4）.
- Berger,J.(2000), “Bayesian Analysis: A Look at Today and Thoughts of Tomorrow”. Journal of the American Statistical Association., 95:1269-1276. 
- Jeffreys, H., (1957), Scientific Inference(2nd) Cambridge: Cambridge University Press.
- Liu Leping, Yuan Wei.(2002), “Bayesian Method of Moments Analysis of the General Growth Curve Model”. Abstract of Short Communication and Poster Sessions -- International Congress of Mathematicians. Beijing 2002 August 20-28.
- Lindley,D. V. (2000), “The Philosophy of Statistics.” The Statistician , 49:293-337.
- Makov, U. E., A. F. M. Smith, and Y-H. Liu.(1996), “Bayesian Methods in Actuarial Science”. The Statistician , 45:503-15.
- Scollnik, D. P. M. (2001), “Actuarial Modeling with MCMC and BUGS.” North American Actuarial Journal ,5(2):96-124.







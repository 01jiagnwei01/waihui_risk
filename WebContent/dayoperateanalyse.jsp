<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.alibaba.fastjson.*" %>
<%
StringBuffer moxingData = new StringBuffer("");
moxingData.append("[");
	moxingData.append("{\"id\":\"1\"");
	moxingData.append(",\"moXingName\":\"跳空上扬形，又称升势鹤鸦缺口\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/3tiaoKongShangYangXian.jpg\"");
	moxingData.append(",\"moXingDesc\":\"由三根K线组成，先一根大阳线，第二根阳线和第三根阴线线的最低价与第一根K线的最高价有个缺口；\"");
	moxingData.append(",\"moXingSuggest\":\"续涨信号，继续看多\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"激进型的投资者可适量买进，等再发力时加仓，稳建型的投资者等在缺口附近止跌上涨时再买进股票\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"2\"");
	moxingData.append(",\"moXingName\":\"上涨两颗星（上涨三颗星）\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/4shangZhangLiangKeXing.jpg\"");
	moxingData.append(",\"moXingDesc\":\"在涨势初期，中期出现；一大二小的K线组合，先是一根中阳线或大阳线，后面两根小阴或小十字线或小阳线，也可以是三根小阴或小阳线（跟跳空上扬形的区别主要在：第一没有跳空要求，第二要求是星星或十字线）\"");
	moxingData.append(",\"moXingSuggest\":\"续涨信号，继续看多\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"激进型的投资者可适量跟进，等再发力时加仓；稳建型的投资者可等再发力时介入\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"3\"");
	moxingData.append(",\"moXingName\":\"低位并排阳线\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/5diweibingpaiyangxian.jpg\"");
	moxingData.append(",\"moXingDesc\":\"出现在下降趋势中,阴线后紧跟两根跳空低开高走的阳线，两根阳线并肩而立。低点差不多。\"");
	moxingData.append(",\"moXingSuggest\":\"底部信号，后市看涨\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"激进型的投资者可适量建仓参与；稳建型的投资者等价格重心上移时参与\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"4\"");
	moxingData.append(",\"moXingName\":\"底部红三兵\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/6dibuhongsanbing.jpg\"");
	moxingData.append(",\"moXingDesc\":\"由三根K线组成，三根K线均为阳线，K线实体不大，每天收盘价均高于前一天收盘价，上下影线可有可无,第二、三根阳线开盘价均为高开的红三兵，上升动能较大,第二、三根阳线开盘价均在前一天阳线实体内，是慢牛的特征。当三根小阳线收于最高或接近最高点时，称为三个白色武士，3个白色武士拉升股价的作用要强于普通的红三兵。\"");
	moxingData.append(",\"moXingSuggest\":\"需要严格符合操作建议\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"股价连续下跌后，当出现底部红三兵时，第三根阳线实体一定要站在5MA、10MA之上，并且5MA向上与10MA靠拢，甚至金叉。这是红三兵买入的条件。在上涨途中，横盘整理时，出现红三兵，也要求5MA重新向上与10MA靠拢，注意10MA在股价整理时决不能走平或向下倾斜。这是涨升途中红三兵买入的条件。一般说来，按照上面讲的条件买入，后市有非常不错的涨升。关于阳线实体问题，这里需要说明一下，三根阳线实体应均匀，或者逐渐增大为好，如果第二、三根阳线实体过大、过小或上、下影线过长，均属于假红三兵，不在买入之列\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"5\"");
	moxingData.append(",\"moXingName\":\"跳空下跌三颗星\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/7tiaohongxiadiesanxing.jpg\"");
	moxingData.append(",\"moXingDesc\":\"在连续下跌途中出现，一根大阴线后跟着三根跳空低开的小阴线，如果三根小阴线后出现一根大阳线，上涨可能性就更大了\"");
	moxingData.append(",\"moXingSuggest\":\"见底信号，后市看涨\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"激进型的投资者可适量买进，稳建型的投资者可等出现阳线并弥补下跌缺口后买进\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	moxingData.append(",{\"id\":\"6\"");
	moxingData.append(",\"moXingName\":\"底部锤头线\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/8dibuchuitouxian.jpg\"");
	moxingData.append(",\"moXingDesc\":\"在市场的阶段性底部，常常会出现价位急剧下跌，创出一段时间以来的新低，但这是空方能量彻底释放了，主动性买盘开始逢低介入，在低位斩仓割肉者越来越少，以致多空力量的平衡点不断上移，最终以高于当天开盘价或略低于当日开盘价收盘，显示价格已基本上跌无可跌了.（特别是大幅下跌后出现更有实战意义）。由一根K线构成，可阴可阳；K线实体很小，一般无上影线，即使有也很短；阳锤头线比阴锤头线见底信号强烈。\"");
	moxingData.append(",\"moXingSuggest\":\"需要严格符合操作建议\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"锤子线形态是多头防守防击后形成的一种k线形态，因此容易失败从而演变成抵抗性下跌陷阱.因为，锤子线出现后要等待一个验证信号.一般来说，锤子线下影线越长，可靠性越高.锤子线的价格范围缩小到一个很小的范围可靠性往往较高.如在底部见到锤头线，激进者可试探买入，但需要K线见底的复合语言。而稳健者等量价齐升时再介入。我们看到底部锤头线的出现，对短线的朋友来说是抢先一步买入的好时机。一定要记住，如果见到双底呼应要全仓杀入，如果随后成交量急剧放大，特别是巨量出现，同时锤头与前一根K线有跳空缺口应满仓杀入。要注意下影线越长越好。\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	moxingData.append(",{\"id\":\"7\"");
	moxingData.append(",\"moXingName\":\"倒锤头线\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/9daochuitouxian.jpg\"");
	moxingData.append(",\"moXingDesc\":\"在下跌趋势持续一段时间之后，某个交易日开盘顺势跳空低开，但此时并未出现恐慌性的抛盘，市场可感觉到底部的承接力度越来越大，价格被逐步拉起，并向昨日收市价靠拢。但终因大病初愈，体力不支，收盘价又从当日高位回落到价格的低档区。K线可阴可阳，实体很小；有较长的上影线，无下影线，变化图形可有很短的下影线。\"");
	moxingData.append(",\"moXingSuggest\":\"一定要符合买入条件，再杀入抢短线，否则有被套危险.宜作短线别久留\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"倒锤头具有止跌回升的信号，但是庄家诱多的情况屡见不鲜。只有以下条件，买入九生一死。连续下跌过程中，特别是大跌后，末期下跌三连阴后出现倒锤头,倒锤头与早晨之星同时出现,倒锤头前的大阴线与倒锤头实体部分有跳空缺口,倒锤头后的K线与倒锤头实体部分有跳空缺口,倒锤头出现当日，成交量缩小.倒锤头线是次要的底部反转信号，通常表现为下跌趋势中的弱势反弹。除了要等待第二日的验证信号外，还要预先设立止损位，倒锤子线的最低价就是设立止损位的一个很好参考。倒锤头线次日的量无法跟上，无法收阳就可能是陷阱。\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	moxingData.append(",{\"id\":\"8\"");
	moxingData.append(",\"moXingName\":\"底部长十字星\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/10dibuchangshizixing.jpg\"");
	moxingData.append(",\"moXingDesc\":\"在下跌过程中出现，特别是在连续大跌后出现更有实际意义。由一根K线组成，开盘价和收盘价相同或基本等同，上下影线较长长十字星的信号比一般十字星要准确。\"");
	moxingData.append(",\"moXingSuggest\":\"符合组合条件进行买入\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"底部长十字星的典型组合非常重要。①十字星组合成早晨之星；②末期下跌三连阴后再出现底部长十字星，这两种组合见底信号比较可靠\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"9\"");
	moxingData.append(",\"moXingName\":\"底部螺旋桨\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/11dibuluoxuanjiang.jpg\"");
	moxingData.append(",\"moXingDesc\":\"在下跌过程中，由一根K线组成，可阴可阳，K线实体很小，上下影线较长，转势信号比长十字线更强\"");
	moxingData.append(",\"moXingSuggest\":\"是在连续下跌的过程中出现的，在下跌途中出现，继续看跌；在加速下跌行情中出现有见底回升的意义\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"一定要有复合见底语言的出现，如后续有成交量的放大及双底呼应的话，买入盈利成功几率更高。\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"10\"");
	moxingData.append(",\"moXingName\":\"底部T字形\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/12dibuTzixing.jpg\"");
	moxingData.append(",\"moXingDesc\":\"在大跌过程之后，上涨初期出现的。由一根K线组成，下影线较长，无上影线，即使有也非常短，T字形下影线越长，力度越大，信号越强。\"");
	moxingData.append(",\"moXingSuggest\":\"多种复合再买涨，忍受颠簸做波段。\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"底部T字线下影线越长，见底信号也越强。T字线大多情况下都是庄家所为。我们看到T字线大多出现在庄股中。底部出现的T字线，往往先打压、洗盘、吸筹，后拉升至开盘价，一般散户无法办到。为使朋友们记住这种K线语言，我们给出以下四句忠告:底部见到T字线，庄家振荡把人骗，多种复合再上轿，忍受颠簸做波段。\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"11\"");
	moxingData.append(",\"moXingName\":\"底部倒T字线\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/13dibuDaoTZiXing.jpg\"");
	moxingData.append(",\"moXingDesc\":\"在连续下跌过程中出现，由一根K线组成，可阴可阳，形状为倒T字，上影线较长。\"");
	moxingData.append(",\"moXingSuggest\":\"下跌末期出现是买入信号\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"倒T字线的上影线越长，转势力度越大，信号越可靠。倒T字线在高价区出现为出货信号。在下跌末期出现是买入信号，特别是末期下跌三连阴后出现倒T字线，或二黑夹一红后出现倒T字线，如第二天出现大阳线，组成早晨之星或身怀六甲，是一个非常好的切入点。\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	moxingData.append(",{\"id\":\"12\"");
	moxingData.append(",\"moXingName\":\"平底\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/14pingdi.jpg\"");
	moxingData.append(",\"moXingDesc\":\"下跌过程中出现,至少由两根K线组成，常见2-5根K线组成,当某根K线的最低价包括下影线在内，与后一根或相邻的K线的最低价相同时，我们就定义为平底。\"");
	moxingData.append(",\"moXingSuggest\":\"平底是见底回升的信号\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"1某根K线的最低价也可以和第三根或第四根K线相同；2平底是见底回升的信号，特别是在大跌之后出出，是一个很好的买入点。3我们看到平底在低价区出现时，往往伴随着其它见底复合的K线语言出现，是我们买入的理论根据，一般说来成功率几乎100%。为使朋友们记住这种K线语言，我们给出以下四句忠告：平底出现细观察，试探买入手不麻，复合见底信号明，加仓买入还等啥！\"");
	moxingData.append(",\"moXingOperateAble\":\"1\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	
	moxingData.append(",{\"id\":\"13\"");
	moxingData.append(",\"moXingName\":\"底部好友反攻\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/15DiBuHaoYouFanGong.jpg\"");
	moxingData.append(",\"moXingDesc\":\"连续下跌的行情中,由两根K线组成，第一根K线为大阴线或中阴线，第二根K线为大阳线或中阳线且跳空低开高走，收盘价与第一根阴线的收盘价相同或相近\"");
	moxingData.append(",\"moXingSuggest\":\"结合其他指标一起，才建议买涨操作\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"好友反攻与曙光初现的区别是阳线实体并没深入到阴线实体内，所以好友反攻的见底信号强度小于曙光初现，但是投资者见到好友反攻K线语言后应密切观察，如有其它复合见底信号出现，可进行买入操作，准确性就比较高了\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"14\"");
	moxingData.append(",\"moXingName\":\"底部尽头线\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/16dibujintouxian.jpg\"");
	moxingData.append(",\"moXingDesc\":\"跌势中出现，特别是大跌后出现更有实战意义。由两根K线组成，第一根K线为大阴线或中阴线并且都带有下影线，第二根K线为小十字星或者小阴线小阳线，依附在第一根K线下影内。注意小阴线或小阳线的实体依附在第一根阴线下影线内即可\"");
	moxingData.append(",\"moXingSuggest\":\"是个买涨的机会，但是最好结合其他指标一起看\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"第二根K线越小，见底信号越强，特别是十字星转势信号更强。如果底部尽头线后，接着出现一根中阳线或大阳线，与尽头线组成的早晨之星或早晨十字星，是短线买入的时机。如果尽头线的第一根中阴线或大阴线，又是末期下跌三连阴的第三根K线，则买入九生一死。我这里强调一下典型组合为末期下跌三连阴后，出现底部尽头线，与后面的大阳线或中阳线又同时组成早晨十字星或早晨之星，是一个极佳的买入时机。3.底部尽头线是一个不错的买点，特别是典型组合的买点，稳操胜券。\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	moxingData.append(",{\"id\":\"15\"");
	moxingData.append(",\"moXingName\":\"阳线右肩十字线\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/17yangxianyoujianshizixing.jpg\"");
	moxingData.append(",\"moXingDesc\":\"由两根K线组成,第一根K线为中阳线或大阳线，第二根K线为长十字星，位于大阳线的右肩上，十字星可阴可阳\"");
	moxingData.append(",\"moXingSuggest\":\"分类讨论，1，2类买涨，3类标示见顶\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"1这种组合如果股价处于相对底部，属于典型上攻形态，长十字星为上攻中继，起到洗盘作用，应及时介入;2这种组合如处于主升段中，充当洗盘作用，喘一口气，积聚能量，再发力上攻，此时应及时介入：3这种组合如出现在涨幅巨大的高价区，是见顶信号，应及时出局\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	
	moxingData.append(",{\"id\":\"16\"");
	moxingData.append(",\"moXingName\":\"曙光初现\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/18shuguangchuxian.jpg\"");
	moxingData.append(",\"moXingDesc\":\"出现在下跌趋势中，由两根K线组成，第一根K线为大阴线或中阴线，第二根K线为低开高走的大阳线或中阳线，阳线的实体深入到第一根阴线实体的50%以上\"");
	moxingData.append(",\"moXingSuggest\":\"不要急于操作，复合出现双底，全线杀入，其他观望为好，错过就错过\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"第二根大阳线或中阳线能吃掉第一根阴线实体50%以上，说明多方能量在增大，阳线实体深入阴线实体的部分越多转势信号越强，黑暗即将过去，黎明即将来临，这就是曙光初现的含义。\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	moxingData.append(",{\"id\":\"17\"");
	moxingData.append(",\"moXingName\":\"旭日东升\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/19xuridongsheng.jpg\"");
	moxingData.append(",\"moXingDesc\":\"出现在连续下跌的过程中，由两根K线组成，第一根K线为大阴线或中阴线，第二根K线为大阳线或中阳线，且为高开高走，阳线的收盘价高于第一根阴线的开盘价。\"");
	moxingData.append(",\"moXingSuggest\":\"见底反转信号加强，但是买点需要结合其他指标确定，低买高卖短线操作。\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"第二根阳线的实体高出阴线开盘价越多转势信号就越强，这说明连续下跌使空方能量释放完毕，多方开始反击，吃掉阴线，高开高走，前景光明，这就是旭日东升的含义\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	moxingData.append(",{\"id\":\"18\"");
	moxingData.append(",\"moXingName\":\"底部穿头破脚\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/20dibuchuantoupojiao.jpg\"");
	moxingData.append(",\"moXingDesc\":\"在下跌过程中出现，特别是跌幅巨大时出现更有实战意义。由两根K线构成，第一根K线为阴线也可为阳线，第二根K线为阳线，第二根阳线的实体必须吃掉第一根阴线的实体（上下影线不算）\"");
	moxingData.append(",\"moXingSuggest\":\"切记下跌过程中出现，结合其他指标分析买涨点。低买高卖，短线操作\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"止跌回升的信号，底部穿头破脚的二根K线的长度越悬殊，即阳线实体越大，阴线实体越小，上升的力度就越大\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"19\"");
	moxingData.append(",\"moXingName\":\"底部身怀六甲\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/21dibushenhuailiujia.jpg\"");
	moxingData.append(",\"moXingDesc\":\"在连续下跌过程中出现,由两根K线组成，第一根K线为大阳线或中阳线也可以是大阴线或中阴线，第二根K线为实体较短的阳线或阴线；第一根K线实体实例包容了第二根K线的实体，如第二根K线为十字星则为底部十字胎。\"");
	moxingData.append(",\"moXingSuggest\":\"是见底信号，但是要结合其他指标等随后的价量齐升再加仓买入\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"底部身怀六甲的出现，后面一定要有其它的复合见底K线语言，等随后的价量齐升再加仓买入\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"20\"");
	moxingData.append(",\"moXingName\":\"底部镊子线\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/23dibuniezixian.jpg\"");
	moxingData.append(",\"moXingDesc\":\"出现在跌势中,由两大一小三根K线组成,在跌势中出现的镊子线第一根为中、大阴线，第二根为小阴线，最后一根为中、大阳线，最低价几乎处在同一水平位置上。\"");
	moxingData.append(",\"moXingSuggest\":\"在跌势中出现为底部信号，如果是短暂下跌过程中，出现则反弹力度较小。在升势中观望为好\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"在升势途中，当出现左阳右阴两根稍长K线中间夹一根小K线，且顶端三个价位大致相同，表明虽然散户是不怕涨的，但机构有些犹豫，不敢把行情想的那样好，因此会出现短时的回档而非反转。此后发现，没有什么利空因素，过不了几天行情仍会沿原升势续升。反之，在跌势途中，当大家都害怕会继续下跌，反向思维操作者就会利用人们的这一心理，进场抢反弹。\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"21\"");
	moxingData.append(",\"moXingName\":\"多头尖兵\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/27duotoujianbing.jpg\"");
	moxingData.append(",\"moXingDesc\":\"在上升途中出现，特别是在上升初期出现更有实战意义.第一根K线为中阳线或大阳线，带有上影线，上影线一般为阳线实体的1/3左右，随后价格回落整理；当多方发动进攻，价格上穿前面第一根阳线的上影线时，就形成多方尖兵的K线组合。\"");
	moxingData.append(",\"moXingSuggest\":\"与其他指标组合，增强看涨趋势\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"多方在发动大规模上攻前，曾做一试探性上攻，在K线上留下一根较长的上影线，有人把它叫做深入敌方阵地的尖兵，所以我们定义为多方尖兵。一般说来，多方尖兵的出现，表明股价继续上涨，但是短期均线系统一定要多头排列，同时有成交量的放大。完成多方尖兵的当天，成交量应有温和放大（与前几日比）。短期均线系统为多头排列\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	
	
	
	moxingData.append(",{\"id\":\"22\"");
	moxingData.append(",\"moXingName\":\"低档五阳线\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/24shangshengsanbuqu.jpg\"");
	moxingData.append(",\"moXingDesc\":\"下跌行情中，大阴线或中阴线后连续5跟小阳线(有时不止5根，可能6根7根)\"");
	moxingData.append(",\"moXingSuggest\":\"见底信号，后市看涨.重心价格重心上移时参与买进\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"激进型的投资者可适量买进,稳建型的投资者可等重心价格重心上移时参与买进\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	
	moxingData.append(",{\"id\":\"23\"");
	moxingData.append(",\"moXingName\":\"连续跳空三阴线\"");
	moxingData.append(",\"moXingImg\":\"/resources/appimg/30lianxutiaokongsanyinxian.jpg\"");
	moxingData.append(",\"moXingDesc\":\"下跌行情中，阴线开盘一个比一个低，形成了3个向下的跳空缺口，如果是在大幅下挫的情况下出现，见底的可能性更大；见底信号，后市看涨\"");
	moxingData.append(",\"moXingSuggest\":\"激进型的投资者可以适量买进建仓；稳建型的投资者可以等股价企稳后再介入\"");
	moxingData.append(",\"moXingOperateKeyPoint\":\"\"");
	moxingData.append(",\"moXingOperateAble\":\"0.5\"");
	moxingData.append(",\"moXingRelativePoint\":\"10\"");
	moxingData.append(",\"moXingStopLessRange\":\"10-20\"");
	moxingData.append(",\"moXingProfitRange\":\"10-20\"");
	moxingData.append("}");
	//http://www.forex.com.cn/html/c257/2012-03/2270421p12.htm
moxingData.append("]");

JSONArray jsonArrayData = JSONArray.parseArray(moxingData.toString());
%>
 <!DOCTYPE html>
<html>
  <head>
    <title>日分析行情</title>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap.min.css">
	
	<!-- 可选的Bootstrap主题文件（一般不用引入） -->
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
	
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

     <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
     <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
     <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
     <![endif]-->
     <style type="text/css">
     	.hide {
     		display:none;
     	}
     	.show {
     		display:block;
     	}
     </style>
     
  </head>
<body>
<nav class="navbar navbar-default" role="navigation">
      <ul class="nav navbar-nav">
   		<li style="width: 200px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
         <li> 
         	 <div class="btn-group" role="group" aria-label="...">
				  <button type="button" class="btn btn-primary" onclick="doAnalyse()">分析结果</button>
				  <button type="button" class="btn btn-success" onclick="resetFn()">重置</button>
			</div>
         </li>
      </ul> 
</nav>
<table class="table table-condensed table-striped  table-bordered  table-hover   ">
	   <caption>回答问题进行分析</caption>
	   <thead>
	      <tr>
	         <th style="width:10%">模型</th>
	         <th style="width:10%">图形</th>
	         <th style="width:20%">图形描述</th>
	         <th style="width:5%">是该状态吗?</th>
	         <th style="width:10%">信号分析</th>
	         <th style="width:5%">操作</th>
	         <th style="width:20%">操盘要略</th>
	         
	         <th style="width:5%">系统设置相对前日收盘点的购买点</th>
	         <th style="width:5%">建议购买点</th>
	         <th style="width:5%">止损点范围</th>
	         <th style="width:5%">止盈点范围</th>
	      </tr>
	   </thead>
	   <tbody>
	   
	   	<%
	   		int length = jsonArrayData.size();
	   		JSONObject json  = null;
	   		String id = null;
	   		String moXingName = null;
	   		String moXingImg = null;
	   		String moXingDesc = null;
	   		String moXingSuggest = null;
	   		String moXingOperateKeyPoint = null;
	   		String moXingOperateAble = null;
	   		String moXingRelativePoint = null;
	   		String  moXingStopLessRange = null;
	   		String moXingProfitRange = null;
	   		for (int i=0;i<length;i++){
	   			json = jsonArrayData.getJSONObject(i);
	   			id = json.getString("id");
	   			moXingName = json.getString("moXingName");
	   			moXingImg = json.getString("moXingImg");
	   			moXingDesc = json.getString("moXingDesc");
	   			moXingSuggest = json.getString("moXingSuggest");
	   			moXingOperateKeyPoint = json.getString("moXingOperateKeyPoint");
	   			moXingOperateAble = json.getString("moXingOperateAble");
	   			moXingRelativePoint =  json.getString("moXingRelativePoint");
	   			moXingStopLessRange =  json.getString("moXingStopLessRange");
	   			moXingProfitRange =   json.getString("moXingProfitRange");
	   			%>
	   			<tr id="tr_<%=id%>"><!-- class="info"  active,success,warning,danger-->
			         <td id="model_<%=id%>"><%=moXingName%></td>
			         <td><img alt="" src="<%=request.getContextPath() %><%=moXingImg%>"></td>
			         <td><%=moXingDesc%></td> 
			         <td><select id="sel_<%=id%>"><option value="-1">请回答</option><option value="0">否</option><option value="1">是</option></select></td>
			         <td ><span id="fenxi_<%=id%>" class="hide"><%=moXingSuggest%></span></td>
			         <td ><span id="operateAble_<%=id%><%=id%>" class="hide"><%if("1".equals(moXingOperateAble)){out.print("可以操作");}else {out.print("不建议操作");} %></span></td>
			         <td><span id="operateKeyPoint_<%=id%>" class="hide"><%=moXingOperateKeyPoint%></span></td>
			         <td id="relative_point_<%=id%>"><%=moXingRelativePoint %></td>
			         <td ><span id="buypoint_<%=id%>" class="hide"></span></td>
			         <td ><span id="stop_less_range_<%=id%>" class="hide"><%=moXingStopLessRange %></span></td>
			         <td ><span id="profit_range_<%=id%>" class="hide"><%=moXingProfitRange %></span></td>
			      </tr>
	   			<%
	   		}
	   	
	   	
	   	%>
	      
         </tbody>
</table>
</body>
</html>
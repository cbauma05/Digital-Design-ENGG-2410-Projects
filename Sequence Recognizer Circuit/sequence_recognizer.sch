<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_13" />
        <signal name="XLXN_14" />
        <signal name="XLXN_20" />
        <signal name="XLXN_22" />
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_15" />
        <signal name="Clk" />
        <signal name="BTN" />
        <signal name="XLXN_35" />
        <signal name="Reset" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_44" />
        <signal name="XLXN_46" />
        <signal name="XLXN_45" />
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_65" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="y" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79" />
        <signal name="XLXN_80" />
        <signal name="XLXN_81" />
        <signal name="Z" />
        <port polarity="Input" name="Clk" />
        <port polarity="Input" name="BTN" />
        <port polarity="Input" name="Reset" />
        <port polarity="Input" name="y" />
        <port polarity="Output" name="Z" />
        <blockdef name="dbounce">
            <timestamp>2023-11-7T13:53:22</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
        </blockdef>
        <blockdef name="fdc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="dbounce" name="XLXI_1">
            <blockpin signalname="BTN" name="push_bt" />
            <blockpin signalname="Clk" name="cclk" />
            <blockpin signalname="XLXN_15" name="debounce_out" />
        </block>
        <block symbolname="fdc" name="XLXI_2">
            <blockpin signalname="XLXN_15" name="C" />
            <blockpin signalname="Reset" name="CLR" />
            <blockpin signalname="XLXN_7" name="D" />
            <blockpin signalname="XLXN_37" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_3">
            <blockpin signalname="XLXN_15" name="C" />
            <blockpin signalname="Reset" name="CLR" />
            <blockpin signalname="XLXN_8" name="D" />
            <blockpin signalname="XLXN_45" name="Q" />
        </block>
        <block symbolname="fdc" name="XLXI_4">
            <blockpin signalname="XLXN_15" name="C" />
            <blockpin signalname="Reset" name="CLR" />
            <blockpin signalname="XLXN_9" name="D" />
            <blockpin signalname="XLXN_54" name="Q" />
        </block>
        <block symbolname="and4" name="XLXI_5">
            <blockpin signalname="y" name="I0" />
            <blockpin signalname="XLXN_54" name="I1" />
            <blockpin signalname="XLXN_45" name="I2" />
            <blockpin signalname="XLXN_44" name="I3" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_6">
            <blockpin signalname="y" name="I0" />
            <blockpin signalname="XLXN_67" name="I1" />
            <blockpin signalname="XLXN_73" name="I2" />
            <blockpin signalname="XLXN_74" name="I3" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_7">
            <blockpin signalname="XLXN_66" name="I0" />
            <blockpin signalname="XLXN_64" name="I1" />
            <blockpin signalname="XLXN_45" name="I2" />
            <blockpin signalname="XLXN_65" name="I3" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_8">
            <blockpin signalname="y" name="I0" />
            <blockpin signalname="XLXN_62" name="I1" />
            <blockpin signalname="XLXN_63" name="I2" />
            <blockpin signalname="XLXN_37" name="I3" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_9">
            <blockpin signalname="y" name="I0" />
            <blockpin signalname="XLXN_54" name="I1" />
            <blockpin signalname="XLXN_70" name="I2" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_10">
            <blockpin signalname="XLXN_71" name="I0" />
            <blockpin signalname="XLXN_45" name="I1" />
            <blockpin signalname="XLXN_72" name="I2" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_11">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_12">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_3" name="I2" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_13">
            <blockpin signalname="XLXN_60" name="I0" />
            <blockpin signalname="XLXN_61" name="I1" />
            <blockpin signalname="XLXN_37" name="I2" />
            <blockpin signalname="Z" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_14">
            <blockpin signalname="XLXN_37" name="I" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="XLXN_37" name="I" />
            <blockpin signalname="XLXN_72" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="XLXN_54" name="I" />
            <blockpin signalname="XLXN_71" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="XLXN_37" name="I" />
            <blockpin signalname="XLXN_70" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_18">
            <blockpin signalname="XLXN_37" name="I" />
            <blockpin signalname="XLXN_74" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_19">
            <blockpin signalname="XLXN_45" name="I" />
            <blockpin signalname="XLXN_73" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_20">
            <blockpin signalname="XLXN_54" name="I" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="XLXN_37" name="I" />
            <blockpin signalname="XLXN_65" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_22">
            <blockpin signalname="XLXN_54" name="I" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_23">
            <blockpin signalname="y" name="I" />
            <blockpin signalname="XLXN_66" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_24">
            <blockpin signalname="XLXN_45" name="I" />
            <blockpin signalname="XLXN_63" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_25">
            <blockpin signalname="XLXN_54" name="I" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_26">
            <blockpin signalname="XLXN_45" name="I" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_27">
            <blockpin signalname="XLXN_54" name="I" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2608" y="2192" name="XLXI_1" orien="R0">
        </instance>
        <instance x="2368" y="784" name="XLXI_2" orien="R0" />
        <instance x="2368" y="1264" name="XLXI_3" orien="R0" />
        <instance x="2368" y="1744" name="XLXI_4" orien="R0" />
        <instance x="768" y="560" name="XLXI_5" orien="R0" />
        <instance x="752" y="1920" name="XLXI_6" orien="R0" />
        <instance x="768" y="2208" name="XLXI_7" orien="R0" />
        <instance x="768" y="2528" name="XLXI_8" orien="R0" />
        <instance x="768" y="1456" name="XLXI_9" orien="R0" />
        <instance x="784" y="1232" name="XLXI_10" orien="R0" />
        <instance x="1184" y="1312" name="XLXI_11" orien="R0" />
        <instance x="1264" y="2128" name="XLXI_12" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1264" y1="2368" y2="2368" x1="1024" />
            <wire x2="1264" y1="2064" y2="2368" x1="1264" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1136" y1="2048" y2="2048" x1="1024" />
            <wire x2="1136" y1="2000" y2="2048" x1="1136" />
            <wire x2="1264" y1="2000" y2="2000" x1="1136" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1264" y1="1760" y2="1760" x1="1008" />
            <wire x2="1264" y1="1760" y2="1936" x1="1264" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1104" y1="1104" y2="1104" x1="1040" />
            <wire x2="1104" y1="1104" y2="1184" x1="1104" />
            <wire x2="1184" y1="1184" y2="1184" x1="1104" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1104" y1="1328" y2="1328" x1="1024" />
            <wire x2="1104" y1="1248" y2="1328" x1="1104" />
            <wire x2="1184" y1="1248" y2="1248" x1="1104" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1696" y1="400" y2="400" x1="1024" />
            <wire x2="1696" y1="400" y2="528" x1="1696" />
            <wire x2="2368" y1="528" y2="528" x1="1696" />
        </branch>
        <instance x="1216" y="2672" name="XLXI_13" orien="R0" />
        <branch name="XLXN_8">
            <wire x2="1904" y1="1216" y2="1216" x1="1440" />
            <wire x2="1904" y1="1008" y2="1216" x1="1904" />
            <wire x2="2368" y1="1008" y2="1008" x1="1904" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1936" y1="2000" y2="2000" x1="1520" />
            <wire x2="1936" y1="1488" y2="2000" x1="1936" />
            <wire x2="2368" y1="1488" y2="1488" x1="1936" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="2368" y1="656" y2="656" x1="2288" />
            <wire x2="2288" y1="656" y2="1136" x1="2288" />
            <wire x2="2368" y1="1136" y2="1136" x1="2288" />
            <wire x2="2288" y1="1136" y2="1616" x1="2288" />
            <wire x2="2368" y1="1616" y2="1616" x1="2288" />
            <wire x2="2288" y1="1616" y2="1760" x1="2288" />
            <wire x2="3056" y1="1760" y2="1760" x1="2288" />
            <wire x2="3056" y1="1760" y2="2096" x1="3056" />
            <wire x2="3056" y1="2096" y2="2096" x1="2992" />
        </branch>
        <branch name="Clk">
            <wire x2="2608" y1="2160" y2="2160" x1="2576" />
        </branch>
        <branch name="BTN">
            <wire x2="2608" y1="2096" y2="2096" x1="2576" />
        </branch>
        <branch name="Reset">
            <wire x2="2352" y1="1712" y2="1712" x1="2128" />
            <wire x2="2368" y1="1712" y2="1712" x1="2352" />
            <wire x2="2368" y1="752" y2="752" x1="2352" />
            <wire x2="2352" y1="752" y2="1232" x1="2352" />
            <wire x2="2368" y1="1232" y2="1232" x1="2352" />
            <wire x2="2352" y1="1232" y2="1712" x1="2352" />
        </branch>
        <instance x="496" y="336" name="XLXI_14" orien="R0" />
        <instance x="512" y="1072" name="XLXI_15" orien="R0" />
        <instance x="496" y="1216" name="XLXI_16" orien="R0" />
        <instance x="496" y="1296" name="XLXI_17" orien="R0" />
        <instance x="464" y="1696" name="XLXI_18" orien="R0" />
        <instance x="480" y="1776" name="XLXI_19" orien="R0" />
        <instance x="480" y="1840" name="XLXI_20" orien="R0" />
        <instance x="512" y="1984" name="XLXI_21" orien="R0" />
        <instance x="512" y="2112" name="XLXI_22" orien="R0" />
        <instance x="512" y="2192" name="XLXI_23" orien="R0" />
        <instance x="512" y="2368" name="XLXI_24" orien="R0" />
        <instance x="512" y="2432" name="XLXI_25" orien="R0" />
        <instance x="960" y="2576" name="XLXI_26" orien="R0" />
        <instance x="960" y="2640" name="XLXI_27" orien="R0" />
        <iomarker fontsize="28" x="2576" y="2160" name="Clk" orien="R180" />
        <iomarker fontsize="28" x="2576" y="2096" name="BTN" orien="R180" />
        <iomarker fontsize="28" x="2128" y="1712" name="Reset" orien="R180" />
        <branch name="XLXN_37">
            <wire x2="432" y1="192" y2="304" x1="432" />
            <wire x2="496" y1="304" y2="304" x1="432" />
            <wire x2="432" y1="304" y2="1040" x1="432" />
            <wire x2="512" y1="1040" y2="1040" x1="432" />
            <wire x2="432" y1="1040" y2="1264" x1="432" />
            <wire x2="432" y1="1264" y2="1664" x1="432" />
            <wire x2="464" y1="1664" y2="1664" x1="432" />
            <wire x2="432" y1="1664" y2="1952" x1="432" />
            <wire x2="512" y1="1952" y2="1952" x1="432" />
            <wire x2="432" y1="1952" y2="2272" x1="432" />
            <wire x2="768" y1="2272" y2="2272" x1="432" />
            <wire x2="432" y1="2272" y2="2480" x1="432" />
            <wire x2="1216" y1="2480" y2="2480" x1="432" />
            <wire x2="496" y1="1264" y2="1264" x1="432" />
            <wire x2="2816" y1="192" y2="192" x1="432" />
            <wire x2="2816" y1="192" y2="528" x1="2816" />
            <wire x2="2816" y1="528" y2="528" x1="2752" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="768" y1="304" y2="304" x1="720" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="352" y1="128" y2="368" x1="352" />
            <wire x2="768" y1="368" y2="368" x1="352" />
            <wire x2="352" y1="368" y2="1104" x1="352" />
            <wire x2="784" y1="1104" y2="1104" x1="352" />
            <wire x2="352" y1="1104" y2="1744" x1="352" />
            <wire x2="480" y1="1744" y2="1744" x1="352" />
            <wire x2="352" y1="1744" y2="2016" x1="352" />
            <wire x2="768" y1="2016" y2="2016" x1="352" />
            <wire x2="352" y1="2016" y2="2336" x1="352" />
            <wire x2="512" y1="2336" y2="2336" x1="352" />
            <wire x2="352" y1="2336" y2="2544" x1="352" />
            <wire x2="960" y1="2544" y2="2544" x1="352" />
            <wire x2="2880" y1="128" y2="128" x1="352" />
            <wire x2="2880" y1="128" y2="1008" x1="2880" />
            <wire x2="2880" y1="1008" y2="1008" x1="2752" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="288" y1="64" y2="432" x1="288" />
            <wire x2="768" y1="432" y2="432" x1="288" />
            <wire x2="288" y1="432" y2="1184" x1="288" />
            <wire x2="496" y1="1184" y2="1184" x1="288" />
            <wire x2="288" y1="1184" y2="1328" x1="288" />
            <wire x2="288" y1="1328" y2="1808" x1="288" />
            <wire x2="480" y1="1808" y2="1808" x1="288" />
            <wire x2="288" y1="1808" y2="2080" x1="288" />
            <wire x2="512" y1="2080" y2="2080" x1="288" />
            <wire x2="288" y1="2080" y2="2400" x1="288" />
            <wire x2="512" y1="2400" y2="2400" x1="288" />
            <wire x2="288" y1="2400" y2="2608" x1="288" />
            <wire x2="960" y1="2608" y2="2608" x1="288" />
            <wire x2="768" y1="1328" y2="1328" x1="288" />
            <wire x2="2960" y1="64" y2="64" x1="288" />
            <wire x2="2960" y1="64" y2="1504" x1="2960" />
            <wire x2="2848" y1="1488" y2="1488" x1="2752" />
            <wire x2="2848" y1="1488" y2="1504" x1="2848" />
            <wire x2="2960" y1="1504" y2="1504" x1="2848" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="1216" y1="2608" y2="2608" x1="1184" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="1216" y1="2544" y2="2544" x1="1184" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="768" y1="2400" y2="2400" x1="736" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="768" y1="2336" y2="2336" x1="736" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="768" y1="2080" y2="2080" x1="736" />
        </branch>
        <branch name="XLXN_65">
            <wire x2="768" y1="1952" y2="1952" x1="736" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="768" y1="2160" y2="2160" x1="736" />
            <wire x2="768" y1="2144" y2="2160" x1="768" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="720" y1="1808" y2="1808" x1="704" />
            <wire x2="720" y1="1792" y2="1808" x1="720" />
            <wire x2="752" y1="1792" y2="1792" x1="720" />
        </branch>
        <branch name="XLXN_70">
            <wire x2="768" y1="1264" y2="1264" x1="720" />
        </branch>
        <branch name="XLXN_71">
            <wire x2="784" y1="1184" y2="1184" x1="720" />
            <wire x2="784" y1="1168" y2="1184" x1="784" />
        </branch>
        <branch name="XLXN_72">
            <wire x2="784" y1="1040" y2="1040" x1="736" />
        </branch>
        <branch name="XLXN_73">
            <wire x2="720" y1="1744" y2="1744" x1="704" />
            <wire x2="720" y1="1728" y2="1744" x1="720" />
            <wire x2="752" y1="1728" y2="1728" x1="720" />
        </branch>
        <branch name="XLXN_74">
            <wire x2="752" y1="1664" y2="1664" x1="688" />
        </branch>
        <branch name="y">
            <wire x2="256" y1="496" y2="496" x1="176" />
            <wire x2="752" y1="496" y2="496" x1="256" />
            <wire x2="768" y1="496" y2="496" x1="752" />
            <wire x2="256" y1="496" y2="1392" x1="256" />
            <wire x2="768" y1="1392" y2="1392" x1="256" />
            <wire x2="256" y1="1392" y2="1856" x1="256" />
            <wire x2="752" y1="1856" y2="1856" x1="256" />
            <wire x2="256" y1="1856" y2="2160" x1="256" />
            <wire x2="512" y1="2160" y2="2160" x1="256" />
            <wire x2="256" y1="2160" y2="2464" x1="256" />
            <wire x2="768" y1="2464" y2="2464" x1="256" />
        </branch>
        <iomarker fontsize="28" x="176" y="496" name="y" orien="R180" />
        <branch name="Z">
            <wire x2="1504" y1="2544" y2="2544" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="1504" y="2544" name="Z" orien="R0" />
    </sheet>
</drawing>
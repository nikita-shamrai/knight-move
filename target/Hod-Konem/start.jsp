<%--
  Created by IntelliJ IDEA.
  User: Slims
  Date: 23.08.2022
  Time: 11:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <%--<link href="css.css" rel="stylesheet">--%>
    <title>Start Game</title>
    <style>
        .game-name {
            text-align: center;
            display: inline-block;
            position: relative;
            width: 100%;
            font-family: Montserrat, serif;
        }

        .game-rules {
            text-align: center;
            display: inline-block;
            position: relative;
            width: 100%;
            font-family: Montserrat, serif;
            margin-bottom: 10px;
        }
        .rules-for-stupid{
            text-align: center;
            display: inline-block;
            position: relative;
            width: 100%;
            font-family: Montserrat, serif;
            margin-bottom: 0px;
        }
        .game-start {
            text-align: center;
            display: inline-block;
            position: relative;
            width: 100%;
            font-family: Montserrat, serif;
            margin-bottom: 20px;
            margin-top: auto;
        }

        .available {
            background-color: lightgreen;

        }

        .current-cell {
            border: 3px solid red;
            font-weight: bolder;
        }

       .table-div{
           display: flex;
           justify-content: center;
       }

       .restart-button{
           text-align: center;
           display: inline-block;
           position: relative;
           font-family: Montserrat, serif;
           font-weight: bold;
       }
       .button-div{
           text-align: center;
           width: 100%;
       }

        table, td {
            /* margin-left: 40px;*/
            border: 1px solid black;
            border-collapse: collapse;
            align-content: center;
            text-align: center;
            font-family: Montserrat, serif;
            font-weight: bold;

        }

        td {
            height: 40px;
            width: 40px;
            background-color: lightgray;
        }
        .GameOver{
            position: fixed;
            right: 0;
            left: 0;
            top:0;
            bottom: 0;
            padding: 0;
            margin-left: auto;
            margin-right: auto;
            margin-top:auto;
            margin-bottom:auto;
            width: 300px;
            height: 0;
            background-color: whitesmoke;
            border: 0;
            align-content: center;
            text-align: center;
            font-family: Montserrat, serif;
            font-weight: bold;
        }
        .results{
            text-align: center;
            display: inline-block;
            position: relative;
            width: 100%;
            font-family: Montserrat, serif;
        }
    </style>
</head>
<body>
<h1 class="game-name">Ход ♞</h1>
<h4 class="rules-for-stupid">После первого хода ты сможешь двигаться по полю только так, как ходит шахматный конь.<br>
Твоя задача - пройти все клетки поля, заполняя его цифрами.</h4>
<h3 class="game-rules">Сможешь заполнить все 100 клеток?</h3>
<h4 class="game-start">Нажми на клетку, с которой хочешь начать игру.</h4>
<div class="table-div">
    <table id="table">
        <%@ page import="Field.Field" %>
        <%@ page import="Counter.StaticCounter" %>
        <% Field field = (Field) session.getAttribute("field");%>
        <tr>
            <td id="cell-0" onclick="window.location='/move?cell=0'"><%=field.getFieldMap().get(0)%>
            </td>
            <td id="cell-1" onclick="window.location='/move?cell=1'"><%=field.getFieldMap().get(1)%>
            </td>
            <td id="cell-2" onclick="window.location='/move?cell=2'"><%=field.getFieldMap().get(2)%>
            </td>
            <td id="cell-3" onclick="window.location='/move?cell=3'"><%=field.getFieldMap().get(3)%>
            </td>
            <td id="cell-4" onclick="window.location='/move?cell=4'"><%=field.getFieldMap().get(4)%>
            </td>
            <td id="cell-5" onclick="window.location='/move?cell=5'"><%=field.getFieldMap().get(5)%>
            </td>
            <td id="cell-6" onclick="window.location='/move?cell=6'"><%=field.getFieldMap().get(6)%>
            </td>
            <td id="cell-7" onclick="window.location='/move?cell=7'"><%=field.getFieldMap().get(7)%>
            </td>
            <td id="cell-8" onclick="window.location='/move?cell=8'"><%=field.getFieldMap().get(8)%>
            </td>
            <td id="cell-9" onclick="window.location='/move?cell=9'"><%=field.getFieldMap().get(9)%>
            </td>
        </tr>
        <tr>
            <td id="cell-10" onclick="window.location='/move?cell=10'"><%=field.getFieldMap().get(10)%>
            </td>
            <td id="cell-11" onclick="window.location='/move?cell=11'"><%=field.getFieldMap().get(11)%>
            </td>
            <td id="cell-12" onclick="window.location='/move?cell=12'"><%=field.getFieldMap().get(12)%>
            </td>
            <td id="cell-13" onclick="window.location='/move?cell=13'"><%=field.getFieldMap().get(13)%>
            </td>
            <td id="cell-14" onclick="window.location='/move?cell=14'"><%=field.getFieldMap().get(14)%>
            </td>
            <td id="cell-15" onclick="window.location='/move?cell=15'"><%=field.getFieldMap().get(15)%>
            </td>
            <td id="cell-16" onclick="window.location='/move?cell=16'"><%=field.getFieldMap().get(16)%>
            </td>
            <td id="cell-17" onclick="window.location='/move?cell=17'"><%=field.getFieldMap().get(17)%>
            </td>
            <td id="cell-18" onclick="window.location='/move?cell=18'"><%=field.getFieldMap().get(18)%>
            </td>
            <td id="cell-19" onclick="window.location='/move?cell=19'"><%=field.getFieldMap().get(19)%>
            </td>
        </tr>
        <tr>
            <td id="cell-20" onclick="window.location='/move?cell=20'"><%=field.getFieldMap().get(20)%>
            </td>
            <td id="cell-21" onclick="window.location='/move?cell=21'"><%=field.getFieldMap().get(21)%>
            </td>
            <td id="cell-22" onclick="window.location='/move?cell=22'"><%=field.getFieldMap().get(22)%>
            </td>
            <td id="cell-23" onclick="window.location='/move?cell=23'"><%=field.getFieldMap().get(23)%>
            </td>
            <td id="cell-24" onclick="window.location='/move?cell=24'"><%=field.getFieldMap().get(24)%>
            </td>
            <td id="cell-25" onclick="window.location='/move?cell=25'"><%=field.getFieldMap().get(25)%>
            </td>
            <td id="cell-26" onclick="window.location='/move?cell=26'"><%=field.getFieldMap().get(26)%>
            </td>
            <td id="cell-27" onclick="window.location='/move?cell=27'"><%=field.getFieldMap().get(27)%>
            </td>
            <td id="cell-28" onclick="window.location='/move?cell=28'"><%=field.getFieldMap().get(28)%>
            </td>
            <td id="cell-29" onclick="window.location='/move?cell=29'"><%=field.getFieldMap().get(29)%>
            </td>
        </tr>
        <tr>
            <td id="cell-30" onclick="window.location='/move?cell=30'"><%=field.getFieldMap().get(30)%>
            </td>
            <td id="cell-31" onclick="window.location='/move?cell=31'"><%=field.getFieldMap().get(31)%>
            </td>
            <td id="cell-32" onclick="window.location='/move?cell=32'"><%=field.getFieldMap().get(32)%>
            </td>
            <td id="cell-33" onclick="window.location='/move?cell=33'"><%=field.getFieldMap().get(33)%>
            </td>
            <td id="cell-34" onclick="window.location='/move?cell=34'"><%=field.getFieldMap().get(34)%>
            </td>
            <td id="cell-35" onclick="window.location='/move?cell=35'"><%=field.getFieldMap().get(35)%>
            </td>
            <td id="cell-36" onclick="window.location='/move?cell=36'"><%=field.getFieldMap().get(36)%>
            </td>
            <td id="cell-37" onclick="window.location='/move?cell=37'"><%=field.getFieldMap().get(37)%>
            </td>
            <td id="cell-38" onclick="window.location='/move?cell=38'"><%=field.getFieldMap().get(38)%>
            </td>
            <td id="cell-39" onclick="window.location='/move?cell=39'"><%=field.getFieldMap().get(39)%>
            </td>
        </tr>
        <tr>
            <td id="cell-40" onclick="window.location='/move?cell=40'"><%=field.getFieldMap().get(40)%>
            </td>
            <td id="cell-41" onclick="window.location='/move?cell=41'"><%=field.getFieldMap().get(41)%>
            </td>
            <td id="cell-42" onclick="window.location='/move?cell=42'"><%=field.getFieldMap().get(42)%>
            </td>
            <td id="cell-43" onclick="window.location='/move?cell=43'"><%=field.getFieldMap().get(43)%>
            </td>
            <td id="cell-44" onclick="window.location='/move?cell=44'"><%=field.getFieldMap().get(44)%>
            </td>
            <td id="cell-45" onclick="window.location='/move?cell=45'"><%=field.getFieldMap().get(45)%>
            </td>
            <td id="cell-46" onclick="window.location='/move?cell=46'"><%=field.getFieldMap().get(46)%>
            </td>
            <td id="cell-47" onclick="window.location='/move?cell=47'"><%=field.getFieldMap().get(47)%>
            </td>
            <td id="cell-48" onclick="window.location='/move?cell=48'"><%=field.getFieldMap().get(48)%>
            </td>
            <td id="cell-49" onclick="window.location='/move?cell=49'"><%=field.getFieldMap().get(49)%>
            </td>
        </tr>
        <tr>
            <td id="cell-50" onclick="window.location='/move?cell=50'"><%=field.getFieldMap().get(50)%>
            </td>
            <td id="cell-51" onclick="window.location='/move?cell=51'"><%=field.getFieldMap().get(51)%>
            </td>
            <td id="cell-52" onclick="window.location='/move?cell=52'"><%=field.getFieldMap().get(52)%>
            </td>
            <td id="cell-53" onclick="window.location='/move?cell=53'"><%=field.getFieldMap().get(53)%>
            </td>
            <td id="cell-54" onclick="window.location='/move?cell=54'"><%=field.getFieldMap().get(54)%>
            </td>
            <td id="cell-55" onclick="window.location='/move?cell=55'"><%=field.getFieldMap().get(55)%>
            </td>
            <td id="cell-56" onclick="window.location='/move?cell=56'"><%=field.getFieldMap().get(56)%>
            </td>
            <td id="cell-57" onclick="window.location='/move?cell=57'"><%=field.getFieldMap().get(57)%>
            </td>
            <td id="cell-58" onclick="window.location='/move?cell=58'"><%=field.getFieldMap().get(58)%>
            </td>
            <td id="cell-59" onclick="window.location='/move?cell=59'"><%=field.getFieldMap().get(59)%>
            </td>
        </tr>
        <tr>
            <td id="cell-60" onclick="window.location='/move?cell=60'"><%=field.getFieldMap().get(60)%>
            </td>
            <td id="cell-61" onclick="window.location='/move?cell=61'"><%=field.getFieldMap().get(61)%>
            </td>
            <td id="cell-62" onclick="window.location='/move?cell=62'"><%=field.getFieldMap().get(62)%>
            </td>
            <td id="cell-63" onclick="window.location='/move?cell=63'"><%=field.getFieldMap().get(63)%>
            </td>
            <td id="cell-64" onclick="window.location='/move?cell=64'"><%=field.getFieldMap().get(64)%>
            </td>
            <td id="cell-65" onclick="window.location='/move?cell=65'"><%=field.getFieldMap().get(65)%>
            </td>
            <td id="cell-66" onclick="window.location='/move?cell=66'"><%=field.getFieldMap().get(66)%>
            </td>
            <td id="cell-67" onclick="window.location='/move?cell=67'"><%=field.getFieldMap().get(67)%>
            </td>
            <td id="cell-68" onclick="window.location='/move?cell=68'"><%=field.getFieldMap().get(68)%>
            </td>
            <td id="cell-69" onclick="window.location='/move?cell=69'"><%=field.getFieldMap().get(69)%>
            </td>
        </tr>
        <tr>
            <td id="cell-70" onclick="window.location='/move?cell=70'"><%=field.getFieldMap().get(70)%>
            </td>
            <td id="cell-71" onclick="window.location='/move?cell=71'"><%=field.getFieldMap().get(71)%>
            </td>
            <td id="cell-72" onclick="window.location='/move?cell=72'"><%=field.getFieldMap().get(72)%>
            </td>
            <td id="cell-73" onclick="window.location='/move?cell=73'"><%=field.getFieldMap().get(73)%>
            </td>
            <td id="cell-74" onclick="window.location='/move?cell=74'"><%=field.getFieldMap().get(74)%>
            </td>
            <td id="cell-75" onclick="window.location='/move?cell=75'"><%=field.getFieldMap().get(75)%>
            </td>
            <td id="cell-76" onclick="window.location='/move?cell=76'"><%=field.getFieldMap().get(76)%>
            </td>
            <td id="cell-77" onclick="window.location='/move?cell=77'"><%=field.getFieldMap().get(77)%>
            </td>
            <td id="cell-78" onclick="window.location='/move?cell=78'"><%=field.getFieldMap().get(78)%>
            </td>
            <td id="cell-79" onclick="window.location='/move?cell=79'"><%=field.getFieldMap().get(79)%>
            </td>
        </tr>
        <tr>
            <td id="cell-80" onclick="window.location='/move?cell=80'"><%=field.getFieldMap().get(80)%>
            </td>
            <td id="cell-81" onclick="window.location='/move?cell=81'"><%=field.getFieldMap().get(81)%>
            </td>
            <td id="cell-82" onclick="window.location='/move?cell=82'"><%=field.getFieldMap().get(82)%>
            </td>
            <td id="cell-83" onclick="window.location='/move?cell=83'"><%=field.getFieldMap().get(83)%>
            </td>
            <td id="cell-84" onclick="window.location='/move?cell=84'"><%=field.getFieldMap().get(84)%>
            </td>
            <td id="cell-85" onclick="window.location='/move?cell=85'"><%=field.getFieldMap().get(85)%>
            </td>
            <td id="cell-86" onclick="window.location='/move?cell=86'"><%=field.getFieldMap().get(86)%>
            </td>
            <td id="cell-87" onclick="window.location='/move?cell=87'"><%=field.getFieldMap().get(87)%>
            </td>
            <td id="cell-88" onclick="window.location='/move?cell=88'"><%=field.getFieldMap().get(88)%>
            </td>
            <td id="cell-89" onclick="window.location='/move?cell=89'"><%=field.getFieldMap().get(89)%>
            </td>
        </tr>
        <tr>
            <td id="cell-90" onclick="window.location='/move?cell=90'"><%=field.getFieldMap().get(90)%>
            </td>
            <td id="cell-91" onclick="window.location='/move?cell=91'"><%=field.getFieldMap().get(91)%>
            </td>
            <td id="cell-92" onclick="window.location='/move?cell=92'"><%=field.getFieldMap().get(92)%>
            </td>
            <td id="cell-93" onclick="window.location='/move?cell=93'"><%=field.getFieldMap().get(93)%>
            </td>
            <td id="cell-94" onclick="window.location='/move?cell=94'"><%=field.getFieldMap().get(94)%>
            </td>
            <td id="cell-95" onclick="window.location='/move?cell=95'"><%=field.getFieldMap().get(95)%>
            </td>
            <td id="cell-96" onclick="window.location='/move?cell=96'"><%=field.getFieldMap().get(96)%>
            </td>
            <td id="cell-97" onclick="window.location='/move?cell=97'"><%=field.getFieldMap().get(97)%>
            </td>
            <td id="cell-98" onclick="window.location='/move?cell=98'"><%=field.getFieldMap().get(98)%>
            </td>
            <td id="cell-99" onclick="window.location='/move?cell=99'"><%=field.getFieldMap().get(99)%>
            </td>
        </tr>
    </table>
</div>
<h1 class="GameOver"></h1>
<h2 class="results"></h2>
<hr>
<div class="button-div">
<button class="restart-button" onclick=window.location="/restart">RESTART</button>
</div>
<script>
    $(document).ready(function () {
        $("td").removeClass("available").removeClass("current-cell");
        const list = (<%=session.getAttribute("available-cells")%>)
        for (const id of list) {
            $("#cell-" + id).addClass("available");
        }
        const currentCell = (<%=session.getAttribute("current-cell")%>);
        if (currentCell !== -1){
            $(".game-start").text("");
            $(".rules-for-stupid").text("");
        }
        $("#cell-" + currentCell).addClass("current-cell")

        if (list.length === 0 && currentCell !== -1) {
            const score = <%=StaticCounter.count%>
                grow(0);
                $(".results").text("Ты заполнил: " + (score - 1) + " клеток.")
        }
    })
    var $foo = $('.GameOver');

    grow = function (size) {
        $foo.css('height', 70 + 'px');
        $foo.css('border', 3 + 'px solid black')
        $foo.css('padding', 5 +'px')
        $foo.css('padding-top', 20 +'px')
        $(".GameOver").text("GAME OVER")
    }



</script>
</body>
</html>
